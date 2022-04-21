att.PrintName			=	"Flash Hider"
att.Icon				=	Material("entities/thisnuts.png", "mips smooth")
att.Description			=	"Muzzle device which hides muzzle flash while improving hipfire characteristics."
att.Desc_Pros			=
{
}
att.Desc_Cons			=
{
}
att.AutoStats			=	true
att.Slot				=	{ "csx_muzzle_device_pistol", "csx_muzzle_device", "csx_muzzle_device_shotgun" }
att.SortOrder			=	5

att.Model				=	"models/weapons/arccw/atts/muzz_flashhider.mdl"
att.ModelScale			=	Vector(0.75, 0.9, 0.9)

att.IsMuzzleDevice		=	false
att.Override_MuzzleEffect	=	"muzzleflash_pistol"
att.FlashHider			=	true

att.Mult_ShootPitch		=	1.02
att.Mult_SightTime		=	1.05
att.Mult_HipDispersion	=	0.75
att.Add_BarrelLength	=	4
