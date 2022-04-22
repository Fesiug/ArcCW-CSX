SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Leone Defender"
SWEP.Trivia_Class			= "Shotgun"
SWEP.Trivia_Desc			= "12 gauge pistol grip pump-action shotgun."
SWEP.Trivia_Manufacturer    = "Leone"
SWEP.Trivia_Calibre         = "12 Gauge"
SWEP.Trivia_Mechanism       = "Describe"
SWEP.Trivia_Country         = "Italy"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/w1200/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, -1, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	20
SWEP.DamageMin			=	10
SWEP.RangeMin			=	15
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

SWEP.AccuracyMOA		=	50
SWEP.SightTime			=	0.4
SWEP.Primary.ClipSize	=	6
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_ak47"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

-- up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change
SWEP.CSX_Recoil			=	{	4,	0.1,	0.05,	0.05,	10,	10,	2	}

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.M3.Fire",
		"CSX.UMP.Dist",
	},
	["fire_sil"] = {
		"CSX.AK47.Fire_Silenced",
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
	Pos = Vector(-2.345, -2.012, 0.659),
	Ang = Angle(0.3, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.4
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
SWEP.ManualAction = true

SWEP.Num = 15

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
		MinProgress = 0.2,
	},
	["fire_iron"] = {
		Source = "reg_fire_ads",
		MinProgress = 0.2,
	},
	["cycle"] = {
		Source = "reg_rechamber",
		Time = 0.7,
		ShellEjectAt = 0,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.M3.R.Boltback", t = 1/30 },
			{ s = "CSX.M3.R.Boltforward", t = 8/30 },
		}
	},
	["sgreload_start"] = {
		Source = "reg_reload_start",
		RestoreAmmo = 1,
		MinProgress = 0.67,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.Glock.R.Futz", t = 19/30 },
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
		Time = 0.8,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.M3.R.Boltback", t = 8/30 },
			{ s = "CSX.M3.R.Boltforward", t = 14/30 },
			{ s = "CSX.Glock.R.Futz", t = 20/30 },
		}
	},
}