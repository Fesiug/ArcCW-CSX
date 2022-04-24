SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"K&M AG63"
SWEP.Trivia_Class			= "Battle Rifle"
SWEP.Trivia_Desc			= "Heavy 7.62mm battle rifle. Fully automatic, with punishing recoil. Effective at long range. Slow fire rate."
SWEP.Trivia_Manufacturer    = "K&M"
SWEP.Trivia_Calibre         = "7.62x51mm"
SWEP.Trivia_Mechanism       = "Roller-Delayed Blowback"
SWEP.Trivia_Country         = "Germany"
SWEP.Trivia_Year			= 1964

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/g3/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, 1, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	35
SWEP.DamageMin			=	25
SWEP.RangeMin			=	18
SWEP.Range				=	60
SWEP.Penetration		=	12
SWEP.Primary.Ammo		=	"ar2"

SWEP.ShellModel		=	"models/shells/shell_556.mdl"
SWEP.ShellScale		=	1.5
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	3
SWEP.SightTime			=	0.5
SWEP.Primary.ClipSize	=	20
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_5"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	1.5
SWEP.RecoilSide			=	1.3

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["rifle_heavy"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["rifle_heavy"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["rifle_heavy"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopR",
		"CSX.G3.Fire",
		"CSX.UMP.Dist",
		"CSX.AK47.LFE",
	},
	["fire_sil"] = {
		"CSX.AK47.Silenced",
		"CSX.GenbopR",
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
SWEP.AttachmentElements = {
	["rail_optic"] = {
		VMBodygroups = {{ind = 1, bg = 1}},
	},
	["rail_underbarrel"] = {
		VMBodygroups = {{ind = 4, bg = 2}},
	}
}
SWEP.Animations = {}

SWEP.IronSightStruct = {
	Pos = Vector(-2.15, -2, 0.75),
	Ang = Angle(0, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.1052
SWEP.Firemodes = {
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

SWEP.NPCWeaponType	=	{"weapon_ar2"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
	},
	["ready"] = {
		Source = "reg_draw_first",
		SoundTable = {
			{ s = "weapons/ak47/ak47_boltpull.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 21/30 },
		},
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.4,
		LHIKEaseIn = 0,
		LHIKEaseOut = 0.5,
	},
	["draw"] = {
		Source = "reg_draw",
		SoundTable = {
		}
	},
	["holster"] = {
		Source = "reg_holster",
		SoundTable = {
		}
	},
	["fire"] = {
		Source = "reg_fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "reg_fire_ads_scope",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reg_reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/sg550/sg550_clipout.wav", t = 0.3 },
			{ s = "weapons/sg550/sg550_clipin.wav", t = 1.5 },
		},
		LHIK = true,
		LHIKIn = 0.2,
		LHIKOut = 0.4,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.5,
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		MinProgress = 3.1,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/sg550/sg550_boltpull.wav", t = 0.1 },
			{ s = "weapons/sg550/sg550_clipout.wav", t = 0.7 },
			{ s = "weapons/sg550/sg550_clipin.wav", t = 2 },
			{ s = "weapons/galil/galil_boltpull.wav", t = 3.0 },
		},
		LHIK = true,
		LHIKIn = 0.2,
		LHIKOut = 0.4,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.5,
	},
}

SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "optic",
		Bone = "tag_weapon",
		InstalledEles = {"rail_optic"},
		Offset = {
			vpos = Vector(3, 0, 6),
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
			vpos = Vector(23.7, 0, 3.63),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Underbarrel",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_underbarrel_foregrip" },
		Bone = "tag_weapon",
		InstalledEles = {"rail_underbarrel"},
		Offset = {
			vpos = Vector(12, 0, 2.5),
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