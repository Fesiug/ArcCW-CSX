SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Leone YG1265"
SWEP.Trivia_Class			= "Shotgun"
SWEP.Trivia_Desc			= "12 gauge semi-automatic tube-fed shotgun. Weapon of the pointman. Adopted by the United States in 1999. Used by the British Armed Forces as the L128A1."
SWEP.Trivia_Manufacturer    = "Leone"
SWEP.Trivia_Calibre         = "12 Gauge"
SWEP.Trivia_Mechanism       = "Auto-Regulating Gas-Operated"
SWEP.Trivia_Country         = "Italy"
SWEP.Trivia_Year			= 1998

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/m1014/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.25, 1, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	15
SWEP.DamageMin			=	8
SWEP.RangeMin			=	10
SWEP.Range				=	25
SWEP.Penetration		=	4
SWEP.Primary.Ammo		=	"buckshot"

SWEP.ShellModel		=	"models/shells/shell_12gauge.mdl"
SWEP.ShellScale		=	1.5
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	60
SWEP.SightTime			=	0.5
SWEP.Primary.ClipSize	=	7
SWEP.ChamberSize		=	1
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
		"CSX.Super90.Fire",
		"CSX.UMP.Dist",
	},
	["fire_sil"] = {
		"CSX.M3.Silenced",
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
	Pos = Vector(-2.82, -2.012, 1.31),
	Ang = Angle(0.3, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.3
SWEP.Firemodes = {
	{
		PrintName = "PUMP",
		Mode = 1,
	},
	{
		Mode = 0
	}
}

SWEP.ShotgunReload = true
SWEP.ManualAction = false

SWEP.Num = 15

SWEP.NPCWeaponType	=	{"weapon_shotgun"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
	},
	["draw"] = {
		Source = "reg_draw",
	},
	["holster"] = {
		Source = "reg_holster",
	},
	["fire"] = {
		Source = "reg_fire",
		MinProgress = 0.2,
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "reg_fire_ads",
		MinProgress = 0.2,
		ShellEjectAt = 0,
	},
	["sgreload_start"] = {
		Source = "reg_reload_start",
		RestoreAmmo = 1,
		MinProgress = 0.67,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.Glock.R.Futz", t = 7/30 },
			{ s = "CSX.M3.R.Shellinsert", t = 22/30 },
		}
	},
	["sgreload_insert"] = {
		Source = "reg_reload_loop",
		MinProgress = 0.67,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.Glock.R.Futz", t = 2/30 },
			{ s = "CSX.M3.R.Shellinsert", t = 7/30 },
		}
	},
	["sgreload_finish"] = {
		Source = "reg_reload_end",
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.Glock.R.Futz", t = 10/30 },
		}
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
			vpos = Vector(6, 0, 4.1),
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
			vpos = Vector(24.7, 0, 3.2),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Underbarrel",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_underbarrel_foregrip" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(12, 0, 1.4),
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
		Slot = "csx_ammotype_shotgun",
	},
	{
		PrintName = "Perk",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_perk",
	},
}