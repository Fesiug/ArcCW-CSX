att.PrintName			=	"Flashlight"
att.Icon				=	Material("entities/thisnuts.png", "mips smooth")
att.Description			=	"Medium flashlight."
att.Desc_Pros			=
{
}
att.Desc_Cons			=
{
	"con.beam"
}
att.AutoStats			=	true
att.Slot				=	{ "csx_tactical" }
att.SortOrder			=	4

att.Model				=	"models/csx/atts/p90light.mdl"
att.ModelScale			=	Vector(1.3, 1.3, 1.3)
att.ModelOffset			=	Vector(-0.5, 0, 0)


att.Flashlight					=	false
att.FlashlightFOV				=	50
att.FlashlightFarZ				=	1024 -- how far it goes
att.FlashlightNearZ				=	1 -- how far away it starts
att.FlashlightAttenuationType	=	ArcCW.FLASH_ATT_LINEAR -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor				=	Color(255, 242, 229)
att.FlashlightTexture			=	"effects/flashlight001"
att.FlashlightBrightness		=	3
att.FlashlightBone				=	"1"

att.ToggleStats = {
    {
        PrintName = "On",
        Flashlight = true
    },
    {
        PrintName = "Off",
        Flashlight = false,
    }
}

att.Mult_HipDispersion	=	0.8