SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"CV Type 2"
SWEP.Trivia_Class			= "Assault Rifle"
SWEP.Trivia_Desc			= "An early assault rifle pattern, copied and used all around the world. Designed by a Soviet tank mechanic in response to the need for a more versatile infantry weapon. Packs a serious punch at the cost of poor accuracy."
SWEP.Trivia_Manufacturer    = "CV Concern"
SWEP.Trivia_Calibre         = "7.62x39mm"
SWEP.Trivia_Mechanism       = "Gas-Operated"
SWEP.Trivia_Country         = "Russia"
SWEP.Trivia_Year			= 1946

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/arccw_csx/vm/c_csx_akm.mdl"
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
SWEP.ShellScale		=	1.334
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	10
SWEP.SightTime			=	0.4
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_ak47"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	1.1
SWEP.RecoilSide			=	1.0

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["rifle_heavy"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["rifle_heavy"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["rifle_heavy"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopR",
		"CSX.AK47.Fire",
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
	Pos = Vector(-2.335, -3, 0.52),
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
		}
	},
	["draw"] = {
		Source = "reg_draw",
	},
	["holster"] = {
		Source = "reg_holster",
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
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 12/30 },
			{ s = "weapons/ak47/ak47_clipout.wav", t = 12/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 47/30 },
			{ s = "weapons/ak47/ak47_clipin.wav", t = 54/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.6,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.2,
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 12/30 },
			{ s = "weapons/ak47/ak47_clipout.wav", t = 12/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 47/30 },
			{ s = "weapons/ak47/ak47_clipin.wav", t = 54/30 },
			{ s = "weapons/ak47/ak47_boltpull.wav", t = 76/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 1.4,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.2,
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
			vpos = Vector(4, 0, 4.32),
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
			vpos = Vector(22.9, 0, 2.7),
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
			vpos = Vector(12, 0, 1.6),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Tactical",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_tactical" },
		Bone = "tag_weapon",
		InstalledEles = {"rail_underbarrel"},
		Offset = {
			vpos = Vector(13.7, 0.87, 2.6),
			vang = Angle(0, 0, -90),
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