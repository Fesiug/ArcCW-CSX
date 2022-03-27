SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"K&M MPS-45"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "Ubiquitous sub-machine gun. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time. In .45, the heavy caliber allows it to pack a greater punch in short range while remaining controllable with a lower fire rate."
SWEP.Trivia_Manufacturer	= "K&M"
SWEP.Trivia_Calibre			= ".45 ACP"
SWEP.Trivia_Mechanism		= "Straight Blowback"
SWEP.Trivia_Country			= "Germany"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_ump45_1.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 2, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	35
SWEP.DamageMin			=	22
SWEP.RangeMin			=	12
SWEP.Range				=	40
SWEP.Penetration		=	6
SWEP.Primary.Ammo		=	"pistol"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.334
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	0
SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	25
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_mp5"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

-- up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change
SWEP.CSX_Recoil			=	{	0.4,	0.2,	0.18,	0.15,	5,	2,	4	}

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.UMP.Fire",
		"CSX.FAMAS.FireClack",
		"CSX.UMP.Dist",
	},
	["fire_sil"] = {
		"Weapon_TMP.Single",
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
    Pos = Vector(-2.29, -3.477, 1),
    Ang = Angle(0.699, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.107
SWEP.Firemodes = {
	{
		Mode = 2,
	},
	{
		Mode = -2,
		Mult_RPM = 1.5,
		PostBurstDelay = 0.12,
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
		Source = "idle",
	},
	["ready"] = {
		Source = "pullout",
		SoundTable = {
		}
	},
	["draw"] = {
		Source = "pullout",
		SoundTable = {
		},
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["holster"] = {
		Source = "putaway",
		SoundTable = {
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["fire"] = {
		Source = "fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "fire_ads",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/ump45/ump45_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 32/30 },
			{ s = "weapons/ump45/ump45_clipin.wav", t = 52/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["reload_empty"] = {
		Source = "reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/ump45/ump45_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 32/30 },
			{ s = "weapons/ump45/ump45_clipin.wav", t = 52/30 },
			{ s = "weapons/ump45/ump45_boltslap.wav", t = 70/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.4,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
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
			vpos = Vector(3, 0, 2.1),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_muzzle_suppressor",
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(14.5, 0, 0.11),
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
			vpos = Vector(10, 0, -0.9),
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