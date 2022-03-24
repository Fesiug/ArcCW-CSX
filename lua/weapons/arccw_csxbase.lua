SWEP.Base			=	"arccw_base"
SWEP.Spawnable		=	false

SWEP.PrintName		=	".base"
SWEP.Category		=	"ArcCW - CSX"
SWEP.Slot			=	0
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/c_smg1.mdl"
SWEP.WorldModel		=	"models/weapons/w_smg1.mdl"

SWEP.Damage				=	25
SWEP.DamageMin			=	15
SWEP.RangeMin			=	10
SWEP.Range				=	60
SWEP.Penetration		=	4
SWEP.DamageType			=	DMG_BULLET
SWEP.DamageTypeHandled	=	false
SWEP.Primary.Ammo		=	"pistol"

SWEP.Attachments = {
}
SWEP.AttachmentElements = {
}
SWEP.Animations = {}

SWEP.Delay = 0.1
SWEP.Num = 1
SWEP.Firemodes = {}

SWEP.NPCWeaponType	=	nil
SWEP.NPCWeight		=	nil

-- unused
SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 0
SWEP.MoveDispersion = 0
SWEP.SightsDispersion = 0
SWEP.JumpDispersion = 0
SWEP.Override_ShellEffect = "arccw_shelleffect_csx"

SWEP.Recoil = 0
SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0
SWEP.RecoilPunchBackMax = 0

SWEP.BarrelLength = 0

SWEP.BashPreparePos = Vector(2.187, -4.117, -7.14)
SWEP.BashPrepareAng = Angle(32.182, -3.652, -19.039)

SWEP.BashPos = Vector(8.876, 0, 0)
SWEP.BashAng = Angle(-16.524, 70, -11.046)

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ReloadPos = nil
SWEP.ReloadAng = nil

SWEP.CrouchPos = Vector(0.2, 2, 0)
SWEP.CrouchAng = Angle(0, 0, -2)

SWEP.HolsterPos = Vector(0, -6, 0)
SWEP.HolsterAng = Angle(-4, 36, 0)

SWEP.SprintPos = Vector(-1, 0, 0)
SWEP.SprintAng = Angle(-5, 5, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetCrouch = nil
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(4, 0, -1)
SWEP.CustomizeAng = Angle(12, 30, 0)

SWEP.InBipodPos = Vector(-8, 0, -4)
SWEP.InBipodMult = Vector(2, 1, 1)

function SWEP:DoShootSound()
	local who = "fire"

	if self.ShootSoundInfo[who .. "_sil"] and self:GetBuff_Override("Silencer") then
		who = who .. "_sil"
	end

	if self.ShootSoundInfo[who .. "_first"] and self:GetBurstCount() == 1 then
		who = who .. "_first"
	end

	self:SoundEngine(self.ShootSoundInfo[who])
end

-- not an engine, just like a
function SWEP:SoundEngine( snde )
	for i, v in ipairs(snde) do
		if istable(v) then
			if !v.s then return end
			self:EmitSound(v.s, v.l, (v.pmi and v.pma) and math.Rand(v.pmi, v.pma) or v.p, v.v, v.c)
		else
			if ArcCW.CSX.SoundTab[v] and ArcCW.CSX.SoundTab[v].killme then self:StopSound(v) end
			self:EmitSound(v)
		end
	end
end

function SWEP:GetFiremodeName()
	if self:GetBuff_Hook("Hook_FiremodeName") then return self:GetBuff_Hook("Hook_FiremodeName") end

	if self:GetInUBGL() then
		return self:GetBuff_Override("UBGL_PrintName") and self:GetBuff_Override("UBGL_PrintName") or ArcCW.GetTranslation("fcg.ubgl")
	end

	local fm = self:GetCurrentFiremode()

	if fm.PrintName then return ArcCW.GetTranslation("fcg." .. string.lower(fm.PrintName)) or ArcCW.TryTranslation(fm.PrintName) end

	local mode = fm.Mode

	if mode == 0 then return "Safety" end
	if mode == 1 then return "Semi-auto" end
	if mode >= 2 then return "Automatic" end
	if mode < 0 then return string.format("%d-round burst", tostring(-mode)) end
end

function SWEP:GetFiremodeBars()
	if self:GetBuff_Hook("Hook_FiremodeBars") then return self:GetBuff_Hook("Hook_FiremodeBars") end

	if self:GetInUBGL() then
		return "____-"
	end

	local fm = self:GetCurrentFiremode()

	if fm.CustomBars then return fm.CustomBars end

	local mode = fm.Mode

	if mode == 0 then return "___" end
	if mode == 1 then return "_-_" end
	if mode >= 2 then return "---" end

	if mode < 0 then
		local f = -mode
		local r = ""
		for i=1, f do
			r = r .. "-"
		end

		return r
	end

	return "-_-__-_-___"
end

function SWEP:CalcView(ply, pos, ang, fov)
	if !CLIENT then return end

	if GetConVar("arccw_vm_coolview"):GetBool() then
		self:CoolView(ply, pos, ang, fov)
	end

	local thing = ( math.max(self:GetNextPrimaryFireSlowdown() - CurTime(), 0) / self:GetFiringDelay()) * 0.02 * 0.1

	local hrn = 99
	ang = ang + ( Angle(math.sin(CurTime()*hrn), math.cos(CurTime()*hrn), math.sin(CurTime()*hrn) ) * thing * 100 )

	ang = ang + (self.ViewPunchAngle * 10)

	pos = pos - ang:Forward()*thing*100
	fov = fov - (thing*200)

	return pos, ang, fov
end