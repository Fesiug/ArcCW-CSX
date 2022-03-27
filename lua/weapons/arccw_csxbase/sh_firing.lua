

function SWEP:PrimaryAttack()
    local owner = self:GetOwner()

    self.Primary.Automatic = true

    if !self:CanPrimaryAttack() then return end

    local clip = self:Clip1()
    local aps = self:GetBuff("AmmoPerShot")

    if self:HasBottomlessClip() then
        clip = self:Ammo1()
        if self:HasInfiniteAmmo() then
            clip = math.huge
        end
    end

    if clip < aps then
        self:SetBurstCount(0)
        self:DryFire()

        self.Primary.Automatic = false

        return
    end

    local dir = (owner:EyeAngles() + ( self:GetGunPunch() * 2 ) + self:GetFreeAimOffset()):Forward() --owner:GetAimVector()
    local src = self:GetShootSrc()

	local ModPunch = { self.CSX_Recoil[1], self.CSX_Recoil[2], self.CSX_Recoil[3], self.CSX_Recoil[4], self.CSX_Recoil[5], self.CSX_Recoil[6], self.CSX_Recoil[7] }
	--[[
		[1] up_base
		[2] lateral_base
		[3] up_modifier
		[4] lateral_modifier
		[5] up_max
		[6] lateral_max
		[7] direction_change
	]]

	ModPunch[1] = ( ModPunch[1] + self:GetBuff_Add("Add_Recoil") ) * self:GetBuff_Mult("Mult_Recoil")
	ModPunch[2] = ( ModPunch[2] + self:GetBuff_Add("Add_RecoilSide") ) * self:GetBuff_Mult("Mult_Recoil")
	
	ModPunch[5] = ( ModPunch[5] + self:GetBuff_Add("Add_Recoil") ) * self:GetBuff_Mult("Mult_Recoil")
	ModPunch[6] = ( ModPunch[6] + self:GetBuff_Add("Add_RecoilSide") ) * self:GetBuff_Mult("Mult_Recoil")

	self:GunPunch( unpack(ModPunch) )

    if bit.band(util.PointContents(src), CONTENTS_WATER) == CONTENTS_WATER and !(self.CanFireUnderwater or self:GetBuff_Override("Override_CanFireUnderwater")) then
        self:DryFire()
        return
    end

    if self:GetMalfunctionJam() then
        self:DryFire()
        return
    end

    -- Try malfunctioning
    local mal = self:DoMalfunction(false)
    if mal == true then
        local anim = "fire_jammed"
        self:PlayAnimation(anim, 1, true, 0, true)
        return
    end

    self:GetBuff_Hook("Hook_PreFireBullets")

    local desync = GetConVar("arccw_desync"):GetBool()
    local desyncnum = (desync and math.random()) or 0
    math.randomseed(math.Round(util.SharedRandom(self:GetBurstCount(), -1337, 1337, !game.SinglePlayer() and self:GetOwner():GetCurrentCommand():CommandNumber() or CurTime()) * (self:EntIndex() % 30241)) + desyncnum)

    self.Primary.Automatic = true

    local spread = ArcCW.MOAToAcc * self:GetBuff("AccuracyMOA")
    local disp = self:GetDispersion() * ArcCW.MOAToAcc / 10

    --dir:Rotate(Angle(0, ArcCW.StrafeTilt(self), 0))
    --dir = dir + VectorRand() * disp

    self:ApplyRandomSpread(dir, disp)

    if (CLIENT or game.SinglePlayer()) and GetConVar("arccw_dev_shootinfo"):GetInt() >= 3 and disp > 0 then
        local dev_tr = util.TraceLine({
            start = src,
            endpos = src + owner:GetAimVector() * 33000,
            mask = MASK_SHOT,
            filter = {self, self:GetOwner()}
        })
        local dist = (dev_tr.HitPos - src):Length()
        local r = dist / (1 / math.tan(disp)) -- had to google "trig cheat sheet to figure this one out"
        local a = owner:GetAimVector():Angle()
        local r_sqrt = r / math.sqrt(2)
        debugoverlay.Line(dev_tr.HitPos - a:Up() * r, dev_tr.HitPos + a:Up() * r, 5, color_white, true)
        debugoverlay.Line(dev_tr.HitPos - a:Right() * r, dev_tr.HitPos + a:Right() * r, 5, color_white, true)
        debugoverlay.Line(dev_tr.HitPos - a:Right() * r_sqrt - a:Up() * r_sqrt, dev_tr.HitPos + a:Right() * r_sqrt + a:Up() * r_sqrt, 5, color_white, true)
        debugoverlay.Line(dev_tr.HitPos - a:Right() * r_sqrt + a:Up() * r_sqrt, dev_tr.HitPos + a:Right() * r_sqrt - a:Up() * r_sqrt, 5, color_white, true)
        debugoverlay.Text(dev_tr.HitPos, math.Round(self:GetDispersion(), 1) .. "MOA (" .. math.Round(disp, 3) .. "°)", 5)
    end

    local delay = self:GetFiringDelay()

    local curtime = CurTime()
    local curatt = self:GetNextPrimaryFire()
    local diff = curtime - curatt

    if diff > engine.TickInterval() or diff < 0 then
        curatt = curtime
    end

    self:SetNextPrimaryFire(curatt + delay)
    self:SetNextPrimaryFireSlowdown(curatt + delay) -- shadow for ONLY fire time

    local num = self:GetBuff_Override("Override_Num") or self.Num

    num = num + self:GetBuff_Add("Add_Num")

    local tracer = self:GetBuff_Override("Override_Tracer", self.Tracer)
    local tracernum = self:GetBuff_Override("Override_TracerNum", self.TracerNum)
    local lastout = self:GetBuff_Override("Override_TracerFinalMag", self.TracerFinalMag)
    if lastout >= clip then
        tracernum = 1
        tracer = self:GetBuff_Override("Override_TracerFinal", self.TracerFinal) or self:GetBuff_Override("Override_Tracer", self.Tracer)
    end

    local dmgtable = self.BodyDamageMults
    dmgtable = self:GetBuff_Override("Override_BodyDamageMults") or dmgtable

    -- drive by is cool
    src = ArcCW:GetVehicleFireTrace(self:GetOwner(), src, dir) or src

    local bullet      = {}
    bullet.Attacker   = owner
    bullet.Dir        = dir
    bullet.Src        = src
    bullet.Spread     = Vector(0, 0, 0) --Vector(spread, spread, spread)
    bullet.Damage     = 0
    bullet.Num        = num

    local sglove = math.ceil(num / 3)
    bullet.Force      = math.Clamp( ( (50 / sglove) / ( (self:GetBuff("Damage") + self:GetBuff("DamageMin")) / (self:GetBuff("Num") * 2) ) ) * sglove, 1, 3 )
                        -- Overperforming weapons get the jerf, underperforming gets boost
    bullet.Distance   = 33000
    bullet.AmmoType   = self.Primary.Ammo
    bullet.HullSize   = self:GetBuff("HullSize")
    bullet.Tracer     = tracernum or 0
    bullet.TracerName = tracer
    bullet.Weapon     = self
    bullet.Callback = function(att, tr, dmg)
        CSXBulletCallback(att, tr, dmg, self)
    end

    local shootent = self:GetBuff("ShootEntity", true) --self:GetBuff_Override("Override_ShootEntity", self.ShootEntity)
    local shpatt   = self:GetBuff_Override("Override_ShotgunSpreadPattern", self.ShotgunSpreadPattern)
    local shpattov = self:GetBuff_Override("Override_ShotgunSpreadPatternOverrun", self.ShotgunSpreadPatternOverrun)

    local extraspread = AngleRand() * self:GetDispersion() * ArcCW.MOAToAcc / 10

    local projectiledata = {}

    if shpatt or shpattov or shootent then
        if shootent then
            projectiledata.ent = shootent
            projectiledata.vel = self:GetBuff("MuzzleVelocity") * ArcCW.HUToM
            --(self:GetBuff_Override("Override_MuzzleVelocity") or self.MuzzleVelocity) * ArcCW.HUToM * self:GetBuff_Mult("Mult_MuzzleVelocity")
        end

        bullet = self:GetBuff_Hook("Hook_FireBullets", bullet)

        if !bullet then return end

        local doent = shootent and num or bullet.Num
        local minnum = shootent and 1 or 0

        if doent > minnum then
            for n = 1, bullet.Num do
                bullet.Num = 1

                local dispers = self:GetBuff_Override("Override_ShotgunSpreadDispersion") or self.ShotgunSpreadDispersion
                local offset  = self:GetShotgunSpreadOffset(n)
                local calcoff = dispers and (offset * self:GetDispersion() * ArcCW.MOAToAcc / 10) or (offset + extraspread)

                local ang = owner:EyeAngles() + self:GetFreeAimOffset()
                local ang2 = Angle(ang)
                ang2:RotateAroundAxis(ang:Right(), -1 * calcoff.p)
                ang2:RotateAroundAxis(ang:Up(), calcoff.y)
                ang2:RotateAroundAxis(ang:Forward(), calcoff.r)

                if !self:GetBuff_Override("Override_NoRandSpread") then -- Needs testing
                    ang2 = ang2 + AngleRand() * spread / 5
                end

                if shootent then
                    projectiledata.ang = ang2

                    self:DoPrimaryFire(true, projectiledata)
                else
                    bullet.Dir = ang2:Forward()

                    self:DoPrimaryFire(false, bullet)
                end
            end
        elseif shootent then
            local ang = owner:EyeAngles() + self:GetFreeAimOffset()

            if !self:GetBuff_Override("Override_NoRandSpread") then
               -- ang = (dir + VectorRand() * spread / 5):Angle()

                local newdir = Vector(dir)
                self:ApplyRandomSpread(newdir, spread / 5)
                ang = newdir:Angle()
            end

            projectiledata.ang = ang

            self:DoPrimaryFire(true, projectiledata)
        end
    else
        if !bullet then return end

        for n = 1, bullet.Num do
            bullet.Num = 1
            math.randomseed(math.Round(util.SharedRandom(n, -1337, 1337, !game.SinglePlayer() and self:GetOwner():GetCurrentCommand():CommandNumber() or CurTime()) * (self:EntIndex() % 30241)) + desyncnum)
            if !self:GetBuff_Override("Override_NoRandSpread") then
                self:ApplyRandomSpread(dir, spread)
                bullet.Dir = dir
            end
            bullet = self:GetBuff_Hook("Hook_FireBullets", bullet) or bullet

            self:DoPrimaryFire(false, bullet)
        end
    end

    --self:DoRecoil()

    self:SetNthShot(self:GetNthShot() + 1)

    owner:DoAnimationEvent(self:GetBuff_Override("Override_AnimShoot") or self.AnimShoot)

    local shouldsupp = SERVER and !game.SinglePlayer()

    if shouldsupp then SuppressHostEvents(owner) end

    self:DoEffects()

    self:SetBurstCount(self:GetBurstCount() + 1)

    self:TakePrimaryAmmo(aps)

    self:DoShootSound()
    self:DoPrimaryAnim()

    if self:GetCurrentFiremode().Mode < 0 and self:GetBurstCount() == self:GetBurstLength() then
        local postburst = (self:GetCurrentFiremode().PostBurstDelay or 0)
        self:SetWeaponOpDelay(CurTime() + postburst * self:GetBuff_Mult("Mult_PostBurstDelay") + self:GetBuff_Add("Add_PostBurstDelay"))
    end

    if (self:GetIsManualAction()) and !(self.NoLastCycle and self:Clip1() == 0) then
        local fireanim = self:GetBuff_Hook("Hook_SelectFireAnimation") or self:SelectAnimation("fire")
        local firedelay = self.Animations[fireanim].MinProgress or 0
        self:SetNeedCycle(true)
        self:SetWeaponOpDelay(CurTime() + firedelay)
        self:SetNextPrimaryFire(CurTime() + 0.1)
    end

    self:ApplyAttachmentShootDamage()

    self:AddHeat(1)

    mal = self:DoMalfunction(true)
    if mal == true then
        local anim = "fire_jammed"
        self:PlayAnimation(anim, 1, true, 0, true)
    end

    self:GetBuff_Hook("Hook_PostFireBullets")

    if shouldsupp then SuppressHostEvents(nil) end
end


function CSXBulletCallback(att, tr, dmg, bullet, phys)
    local wep = phys and bullet.Weapon or bullet
    local hitpos, hitnormal = tr.HitPos, tr.HitNormal
    local trent = tr.Entity

    local dist = (phys and bullet.Travelled or (hitpos - tr.StartPos):Length() ) * ArcCW.HUToM
    local pen  = phys and bullet.Penleft or wep:GetBuff("Penetration")

    if GetConVar("arccw_dev_shootinfo"):GetInt() >= 1 then
        debugoverlay.Cross(hitpos, 5, 5, SERVER and Color(255, 0, 0) or Color(0, 0, 255), true)
    end

    local randfactor = IsValid(wep) and wep:GetBuff("DamageRand") or 0
    local mul = 1
    if randfactor > 0 then
        mul = mul * math.Rand(1 - randfactor, 1 + randfactor)
    end

    local delta = phys and math.Clamp(bullet.Travelled / (bullet.Range / ArcCW.HUToM), 0, 1) or wep:GetRangeFraction(dist)
    local calc_damage = (phys and Lerp(delta, bullet.DamageMax, bullet.DamageMin) or wep:GetDamage(dist, true)) * mul
    local dmgtyp = phys and bullet.DamageType or wep:GetBuff_Override("Override_DamageType", wep.DamageType)

    local hit   = {}
    hit.att     = att
    hit.tr      = tr
    hit.dmg     = dmg
    hit.range   = dist
    hit.damage  = calc_damage
    hit.dmgtype = dmgtyp
    hit.penleft = pen

    if IsValid(wep) then
        hit = wep:GetBuff_Hook("Hook_BulletHit", hit)

        if !hit then return end
    end

    if phys and bullet.Damaged[tr.Entity:EntIndex()] then
        dmg:SetDamage(0)
    else
        dmg:SetDamageType(hit.dmgtype)
        dmg:SetDamage(hit.damage)
    end

    if dmgtable then
        local hg = tr.HitGroup
        local gam = ArcCW.LimbCompensation[engine.ActiveGamemode()] or ArcCW.LimbCompensation[1]
        if dmgtable[hg] then
            dmg:ScaleDamage(dmgtable[hg])

            -- cancelling gmod's stupid default values (but only if we have a multiplier)
            if GetConVar("arccw_bodydamagemult_cancel"):GetBool() and gam[hg] then dmg:ScaleDamage(gam[hg]) end
        end
    end

    local effect = phys and bullet.ImpactEffect or wep:GetBuff_Override("Override_ImpactEffect", wep.ImpactEffect)
    local decal  = phys and bullet.ImpactDecal or wep:GetBuff_Override("Override_ImpactDecal", wep.ImpactDecal)

    -- Do our handling of damage types, if not ignored by the gun or some attachment
    if !wep:GetBuff_Override("Override_DamageTypeHandled", wep.DamageTypeHandled) then
        local _, maxrng = wep:GetMinMaxRange()
        -- ignite target
        if dmg:IsDamageType(DMG_BURN) and hit.range <= maxrng then
            dmg:SetDamageType(dmg:GetDamageType() - DMG_BURN)

            effect = "arccw_incendiaryround"
            decal  = "FadingScorch"

            if SERVER then
                if vFireInstalled then
                    CreateVFire(trent, hitpos, hitnormal, hit.damage * 0.02)
                else
                    trent:Ignite(1, 0)
                end
            end
        end
        -- explode target
        if dmg:IsDamageType(DMG_BLAST) then
            if dmg:GetDamage() >= 200 then
                effect = "Explosion"
                decal  = "Scorch"
            else
                effect = "arccw_incendiaryround"
                decal  = "FadingScorch"
            end
            dmg:ScaleDamage(0.5) -- half applied as explosion and half done to hit target
            util.BlastDamageInfo(dmg, tr.HitPos, math.Clamp(dmg:GetDamage(), 48, 256))
            dmg:SetDamageType(dmg:GetDamageType() - DMG_BLAST)
        end
        -- damage helicopters
        if dmg:IsDamageType(DMG_BULLET) and !dmg:IsDamageType(DMG_AIRBOAT)
                and IsValid(hit.tr.Entity) and hit.tr.Entity:GetClass() == "npc_helicopter" then
            dmg:SetDamageType(dmg:GetDamageType() + DMG_AIRBOAT)
            dmg:ScaleDamage(0.1) -- coostimizable?
        elseif dmg:GetDamageType() != DMG_BLAST and IsValid(hit.tr.Entity) and hit.tr.Entity:GetClass() == "npc_combinegunship" then
            dmg:SetDamageType(DMG_BLAST)
            dmg:ScaleDamage(0.05)
            -- there is a damage threshold of 50 for damaging gunships
            if dmg:GetDamage() < 50 and dmg:GetDamage() / 200 >= math.random() then
                dmg:SetDamage(50)
            end
        end

        -- pure DMG_BUCKSHOT do not create blood decals, somehow
        if dmg:GetDamageType() == DMG_BUCKSHOT then
            dmg:SetDamageType(dmg:GetDamageType() + DMG_BULLET)
        end
    end

    if SERVER then wep:TryBustDoor(trent, dmg) end

    -- INCONSISTENCY: For physbullet, the entire bullet is copied; hitscan bullets reset some attributes in SWEP:DoPenetration (most notably damage)
    -- For now, we just reset some changes as a temporary workaround
    if phys then
        bullet.Damage = calc_damage
        bullet.DamageType = dmgtyp
        ArcCW:DoPenetration(tr, hit.damage, bullet, bullet.Penleft, true, bullet.Damaged)
    else
        wep:DoPenetration(tr, hit.penleft, { [trent:EntIndex()] = true })
    end

    if effect then
        local ed = EffectData()
        ed:SetOrigin(hitpos)
        ed:SetNormal(hitnormal)
        util.Effect(effect, ed)
    end

    if decal then
        util.Decal(decal, tr.StartPos, hitpos - (hitnormal * 16), wep:GetOwner())
    end

    if (CLIENT or game.SinglePlayer()) and (!phys or SERVER) and GetConVar("arccw_dev_shootinfo"):GetInt() >= 1 then
        local str = string.format("%ddmg/%dm(%d%%)", math.floor(dmg:GetDamage()), dist, math.Round((1 - delta) * 100))
        debugoverlay.Text(hitpos, str, 10)
        print(str)
    end

    if IsValid(wep) then
        wep:GetBuff_Hook("Hook_PostBulletHit", hit)
    end
end

function SWEP:GunPunch(up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change)
	local flKickUp = 0
	local flKickLateral = 0

	local m_iShotsFired = self:GetBurstCount()

	local Clone = self:GetGunPunch()

	if (m_iShotsFired == 1) then
		flKickUp = up_base
		flKickLateral = lateral_base
	else
		flKickUp = m_iShotsFired * up_modifier + up_base
		flKickLateral = m_iShotsFired * lateral_modifier + lateral_base
	end

	Clone.x = Clone.x - flKickUp
	if Clone.x < -up_max then
		Clone.x = -up_max
	end

	if (self:GetGunPunchDir()) then
		Clone.y = Clone.y + flKickLateral
		if Clone.y > lateral_max then
			Clone.y = lateral_max
		end
	else
		Clone.y = Clone.y - flKickLateral
		if Clone.y < -lateral_max then
			Clone.y = -lateral_max
		end
	end

	if math.random( 0, direction_change ) == 0 then
		self:SetGunPunchDir( !self:GetGunPunchDir() )
	end

	self:SetGunPunch( Clone )

	return true
end
