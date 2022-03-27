att.PrintName			=	"Sputter"
att.Icon				=	Material("entities/acwatt_csx_fcg_sputter.png", "mips smooth")
att.Description			=	"Firemode conversion designed to circumvent early machine gun regulations by making the gun fire continuously until empty."
att.Desc_Pros			=
{
	"Sputter mode"
}
att.Desc_Cons			=
{
	"Fires until magazine is empty",
	"No safety and semi-auto"
}
att.AutoStats			=	true
att.Slot				=	"csx_fcg"
att.SortOrder			=	0

att.Mult_RPM			=	1.25

att.Override_Firemodes	=
{
	{
		Mode = -1000,
		RunawayBurst = true,
		PrintName = "SPUTTER",
		CustomBars = "!!!!!",
	}
}
