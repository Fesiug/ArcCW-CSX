SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"K&M NP5C"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "Light 9x19mm SMG predating the MPS. One of the most widely used submachine guns in the world. Renowned for its use in the Iranian Embassy siege. Despite being more expensive, it still proves appealing to many over its cheaper brother, the MPS."
--"Light 9mm SMG predating the MPS. It's obviously extremely iconic, and its crisp handling still proves appealing to many."
-- HELP NEED TO WRITE GOOD DESCRIPTION A LITTLE HARD
SWEP.Trivia_Manufacturer	= "K&M"
SWEP.Trivia_Calibre			= "9x19mm"
SWEP.Trivia_Mechanism		= "Roller-Delayed Blowback"
SWEP.Trivia_Country			= "Germany"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_mp5k.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.5, 2, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	30
SWEP.DamageMin			=	20
SWEP.RangeMin			=	10
SWEP.Range				=	40
SWEP.Penetration		=	6
SWEP.Primary.Ammo		=	"pistol"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.2
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	0
SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_mp5"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

-- up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change
SWEP.CSX_Recoil			=	{	0.6,	0.25,	0.2,	0.09,	6,	4,	3	}

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopS",
		"CSX.MP5.Fire",
		"CSX.MP5.Dist",
	},
	["fire_sil"] = {
		"Weapon_TMP.Single",
		"CSX.GenbopS",
	},
	["dry"] = {
		{
			s = "fesiug_bo2/wep/m27/dry.wav",
			c = CHAN_WEAPON
		}
	},
}

SWEP.MuzzleEffectAttachment	=	1
SWEP.CaseEffectAttachment	=	2
SWEP.CamAttachment			=	nil

SWEP.Attachments = {}
SWEP.AttachmentElements = {}
SWEP.Animations = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.91, -3.79, 0.95),
    Ang = Angle(-0.278, 0.008, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/756)
SWEP.Firemodes = {
	{
		Mode = 2,
	},
	{
		Mode = -3,
        Mult_RPM = 1.2,
        PostBurstDelay = 0.15,
		RunawayBurst = true,
	},
	{
		Mode = 1,
	},
	{
		Mode = 0
	}
}

SWEP.NPCWeaponType	=	{"weapon_smg1"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "idle".."_nofg",
	},
	["ready"] = {
		Source = "pullout_first".."_nofg",
		SoundTable = {
			{ s = "weapons/ump45/ump45_boltslap.wav", t = 13/30 },
		}
	},
	["draw"] = {
		Source = "pullout".."_nofg",
		SoundTable = {
		},
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["holster"] = {
		Source = "putaway".."_nofg",
		SoundTable = {
		},
		LHIK = true,
		LHIKIn = 0.3,
		LHIKOut = 0,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["fire"] = {
		Source = "fire".."_nofg",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "fire_ads".."_nofg",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reload".."_nofg",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/ump45/ump45_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 39/30 },
			{ s = "weapons/ump45/ump45_clipin.wav", t = 42/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["reload_empty"] = {
		Source = "reload_empty".."_nofg",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/ump45/ump45_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 39/30 },
			{ s = "weapons/ump45/ump45_clipin.wav", t = 42/30 },
			{ s = "weapons/ump45/ump45_boltslap.wav", t = 65/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.55,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.25,
	},
}

SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "optic",
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(3, 0, 3.9),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_muzzle_device", "csx_muzzle_suppressor" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(11, 0, 2),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Underbarrel",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "foregrip",
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(7, 0, 1),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Firegroup",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_fcg",
	},
	{
		PrintName = "Ammotype",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_ammotype",
	},
	{
		PrintName = "Perk",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_perk",
	},
}