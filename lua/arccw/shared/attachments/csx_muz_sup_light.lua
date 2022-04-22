att.PrintName			=	"Light Suppressor"
att.Icon				=	Material("entities/thisnuts.png", "mips smooth")
att.Description			=	"Lightweight and compact weapon suppressor. Slightly impacts ballistic performance."
att.Desc_Pros			=
{
}
att.Desc_Cons			=
{
}
att.AutoStats			=	true
att.Slot				=	{ "csx_muzzle_suppressor_pistol", "csx_muzzle_suppressor" }
att.SortOrder			=	10

att.Model				=	"models/weapons/ma85_mwr/atts/silencer_pistol.mdl"
att.ModelScale			=	Vector(0.9, 0.9, 0.9)--Vector(0.8, 0.9, 0.9)
att.OffsetAng			=	Angle(0, -90, 0)

att.Silencer			=	true
att.Override_MuzzleEffect	=	"muzzleflash_suppressed"
att.IsMuzzleDevice		=	true

att.Mult_ShootPitch		=	1.1
att.Mult_ShootVol		=	0.9
att.Mult_HipDispersion	=	1.1
att.Mult_AccuracyMOA	=	1.1
att.Mult_Range			=	0.85
att.Add_BarrelLength	=	6