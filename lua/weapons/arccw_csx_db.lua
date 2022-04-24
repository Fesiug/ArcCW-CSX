SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Rinceller Partner"
SWEP.Trivia_Class			= "Shotgun"
SWEP.Trivia_Desc			= "Double-barrel shotgun manufactured as an entry-level hunting weapon. The sawn-off barrel allows for hip fire characteristics, at the cost of increased spread and hampered range."
SWEP.Trivia_Manufacturer	= "Rinceller Weapons Company"
SWEP.Trivia_Calibre			= "12 Gauge"
SWEP.Trivia_Mechanism		= "Break-Action"
SWEP.Trivia_Country			= "USA"
SWEP.Trivia_Year			= 1972

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel		=	"models/weapons/ma85_mw2cr/ranger/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.5, 0, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	29
SWEP.DamageMin			=	14
SWEP.RangeMin			=	10
SWEP.Range				=	25
SWEP.Penetration		=	4
SWEP.Primary.Ammo		=	"buckshot"

SWEP.ShellModel		=	"models/shells/shell_12gauge.mdl"
SWEP.ShellScale		=	1.2
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	50
SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	2
SWEP.ChamberSize		=	0
SWEP.MuzzleEffect		=	"muzzleflash_shotgun"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	5.0
SWEP.RecoilSide			=	3.0

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["shotgun"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["shotgun"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["shotgun"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.DB.Fire",
		"CSX.MP5.Dist",
	},
	["fire_sil"] = {
		"CSX.MP5.Fire_Silenced",
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
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/450)
SWEP.Firemodes = {
	{
		Mode = 1,
	},
	{
		Mode = 2,
	},
	{
		Mode = 0
	}
}

SWEP.ShotgunReload = false
SWEP.ManualAction = false

SWEP.Num = 7

SWEP.NPCWeaponType	=	{"weapon_shotgun"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
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
	},
	["reload"] = {
		Source = "reg_reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/deagle/de_clipout.wav", t = 14/30 },
			{ s = "CSX.Glock.R.Futz", t = 24/30 },
			{ s = "CSX.M3.R.Shellinsert", t = 34/30 },
			{ s = "CSX.M3.R.Shellinsert", t = 42/30 },
			{ s = "weapons/deagle/de_clipin.wav", t = 52/30 },
		},
		LHIK = true,
		LHIKIn = 0.2,
		LHIKOut = 0.5,
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
		Bone = "j_reload",
		Offset = {
			vpos = Vector(-1, 0, 1.95),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_muzzle_barrel" },
		Bone = "j_reload",
		Offset = {
			vpos = Vector(8.6, 0, 1.3),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Underbarrel",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_underbarrel_foregrip" },
		Bone = "j_reload",
		Offset = {
			vpos = Vector(2, 0, -0.6),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Ammotype",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_ammotype_shotgun",
	},
	{
		PrintName = "Perk",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_perk",
	},
}