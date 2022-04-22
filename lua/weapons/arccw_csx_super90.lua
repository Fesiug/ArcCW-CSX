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
SWEP.ViewModelFOV	=	65
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/m1014/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, -1, 0.75)
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

-- up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change
SWEP.CSX_Recoil			=	{	6,	0.5,	0.2,	0.2,	10,	10,	2	}

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.Super90.Fire",
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
	["ready"] = {
		Source = "reg_draw",
		SoundTable = {
		}
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