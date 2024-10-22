att.PrintName			=	"Automatic"
att.Icon				=	Material("entities/acwatt_csx_fcg_auto.png", "mips smooth")
att.Description			=	"Firemode conversion allowing for full-auto and semi-auto fire modes."
att.Desc_Pros			=
{
	"Full automatic fire"
}
att.Desc_Cons			=
{
}
att.AutoStats			=	true
att.Slot				=	"csx_fcg"
att.SortOrder			=	15

att.Mult_Recoil			=	1.15
att.Mult_RPM			=	0.90

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

att.Hook_Compatible = function(wep)
	-- Search for any non-full auto firemodes. If there are none, this isn't applicable
	for i, v in pairs(wep.Firemodes) do
		if !v then continue end
		if v.Mode == 2 then
			return false
		end
	end

	return
end