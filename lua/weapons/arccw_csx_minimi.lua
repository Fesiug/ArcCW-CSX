SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"ES M2000"
SWEP.Trivia_Class			= "Machine Gun"
SWEP.Trivia_Desc			= "Air-cooled, belt-fed, extremely smooth fully automatic squad assault weapon. Capable of laying down sustained suppressive fire."
SWEP.Trivia_Manufacturer    = "ES"
SWEP.Trivia_Calibre         = "5.56x45mm"
SWEP.Trivia_Mechanism       = "Gas-Actuated Open Bolt"
SWEP.Trivia_Country         = "USA"
SWEP.Trivia_Year			= 1984

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/m249/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_mach_m249para.mdl"
SWEP.ActivePos = Vector(0.5, 0, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	30
SWEP.DamageMin			=	20
SWEP.RangeMin			=	20
SWEP.Range				=	60
SWEP.Penetration		=	8
SWEP.Primary.Ammo		=	"smg1"

SWEP.ShellModel		=	"models/shells/shell_556.mdl"
SWEP.ShellScale		=	1
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	16
SWEP.SightTime			=	0.4
SWEP.Primary.ClipSize	=	100
SWEP.ChamberSize		=	0
SWEP.MuzzleEffect		=	"muzzleflash_minimi"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.7
SWEP.RecoilSide			=	1.4

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["shotgun"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["shotgun"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["shotgun"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopS",
		"weapons/arccw/negev/negev-1.wav",
		"CSX.UMP.Dist",
		"CSX.AK47.LFE",
	},
	["fire_sil"] = {
		"CSX.AK47.Silenced",
		"CSX.GenbopS",
	},
	["fire_first"] = {
		"CSX.GenbopS",
		"weapons/arccw/m249/m249-1.wav",
		"CSX.UMP.Dist",
		"CSX.AK47.LFE",
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
		VMBodygroups = {{ind = 2, bg = 1}},
	}
}
SWEP.Animations = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.86, -2, 1.42),
    Ang = Angle(0, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/700)
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

SWEP.NPCWeaponType	=	{"weapon_smg1"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
	},
	["draw"] = {
		Source = "reg_draw",
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["holster"] = {
		Source = "reg_holster",
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["fire"] = {
		Source = "reg_fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "reg_fire_ads",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reg_reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/m249/m249_coverup.wav", t = 0.3 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 0.5 },
			{ s = "weapons/sg550/sg550_clipout.wav", t = 1.5 },
			{ s = "weapons/m249/m249_boxin.wav", t = 3 },
			{ s = "arccw_csx/fance/fl2.wav", t = 3.2 },
			{ s = "weapons/m249/m249_chain.wav", t = 3.4 },
			{ s = "arccw_csx/fance/ak47_clipin.wav", t = 4.2 },
			{ s = "weapons/famas/famas_clipin.wav", t = 4.4 },
			{ s = "weapons/famas/famas_forearm.wav", t = 5.4 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 2,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 2,
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
			vpos = Vector(0.7, 0, 5.3),
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
			vpos = Vector(22.8, 0, 3.84),
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
			vpos = Vector(10.5, 0, 0.87),
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