att.PrintName			=	"Dual Stage Auto"
att.Icon				=	Material("entities/acwatt_csx_fcg_dualstage.png", "mips smooth")
att.Description			=	"Two-stage automatic trigger that reduces RPM when sighted. Fires faster than automatic conversion FCGs when not sighted."
att.Desc_Neutrals		=
{
	"Semi/burst version",
	"Has better performance on automatic weapons",
}
att.Desc_Pros			=
{
	"Fully automatic fire"
}
att.Desc_Cons			=
{
	"-50% Fire rate when sighted",
	"+20% Recoil when not sighted"
}
att.AutoStats			=	true
att.Slot				=	"csx_fcg"
att.InvAtt				=	"fcg_dualstage"
att.SortOrder			=	8

att.Override_Firemodes	=
{
	{
		Mode = 2,
	},
	{
		Mode = 1,
	},
	{
		Mode = 0
	}
}


att.Hook_ModifyRPM = function(wep, delay)
	if wep:GetCurrentFiremode().Mode == 2 and wep:GetState() == ArcCW.STATE_SIGHTS then
		return delay * (1 / 0.5)
	end
end

att.Hook_ModifyRecoil = function(wep)
	if not (wep:GetCurrentFiremode().Mode == 2 and wep:GetState() == ArcCW.STATE_SIGHTS) then
		return {Recoil = 1.2, RecoilSide = 1, VisualRecoilMult = 1}
	end
end

att.Hook_Compatible = function(wep)
	-- Only available if the weapon does not have full auto.
	for i, v in pairs(wep.Firemodes) do
		if !v then continue end
		if v.Mode == 2 then
			return false
		end
	end

	return
end

att.Hook_FiremodeName = function(wep)
	if wep:GetCurrentFiremode().Mode != 2 then return nil end
	if wep:GetInUBGL() then return nil end

	local power = wep:GetState() == ArcCW.STATE_SIGHTS and "+" or "-"

	return ( ArcCW.GetTranslation("fcg.auto") .. power )
end