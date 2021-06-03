SWEP.Base			=	"arccw_csabase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CS+ Anniversary"
SWEP.PrintName		=	"VI Sidearm"
SWEP.Trivia_Class			= "Machine Pistol"
SWEP.Trivia_Desc			= "9mm fully automatic police machine pistol. Low damage, but a sophisticated recoil control system allows for excellent automatic performance."
SWEP.Trivia_Manufacturer	= "Auschen Waffenfabrik"
SWEP.Trivia_Calibre			= "9x19mm Para"
SWEP.Trivia_Mechanism		= "Short Recoil"
SWEP.Trivia_Country			= "Austria"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_glock18.mdl"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.Primary.ClipSize	=	17
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_pistol"
SWEP.NoFlash			=	true

SWEP.ShootSoundInfo = {
	[1] = {
		"FBO2.HK416.Fire",
		"FBO2.HK416.Dist",
		"FBO2.HK416.LFE",
	},
	[2] = {
		"FBO2.HK416.Fire_Silenced",
	},
	[1001] = {
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
	Pos = Vector(0, 0, 0),
	Ang = Angle(0, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.075
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

SWEP.NPCWeaponType	=	{"weapon_pistol"}
SWEP.NPCWeight		=	80

SWEP.Animations = {
	["idle"] = {
		Source = "base.idle"
	},
	["ready"] = {
		Source = "base.pullout_first",
		SoundTable = {
			{ s = "FBO2.HK416.R.Boltback", t = 22/30 },
			{ rumble = "reload_small", t = 24/30 },
			{ s = "FBO2.HK416.R.Boltrelease", t = 26/30 },
			{ s = "FBO2.HK416.R.Boltback", t = 29/30 },
			{ rumble = "reload_small", t = 33/30 },
			{ s = "FBO2.HK416.R.Boltrelease", t = 35/30 },
			{ rumble = "reload_medium", t = 38/30 },
		}
	},
	["ready_dbal"] = {
		Source = "base.pullout_first_dbal",
		SoundTable = {
			{ laser = false, t = 3/30 },
			{ s = "FBO2.Laser", t = 20/30 },
			{ rumble = "reload_small", t = 20/30 },
			{ laser = true, t = 20/30 },
		}
	},
	["ready_mms"] = {
		Source = "base.pullout_first_mms",
		SoundTable = {
			{ s = "FBO2.MMS.FlipUp", t = 11/30 },
			{ rumble = "reload_small", t = 25/30 },
		}
	},
	["draw"] = {
		Source = "base.pullout",
		SoundTable = {
			{ rumble = "reload_medium", t = 17/30 },
		}
	},
	["draw_quick"] = {
		Source = "base.pullout_quick",
		SoundTable = {
			{ s = "FBO2.Melee.Regrip", t = 16/30 },
		}
	},
	["holster"] = {
		Source = "base.putaway",
		SoundTable = {
			{ rumble = "reload_medium", t = 17/30 },
		}
	},
	["fire"] = {
		Source = "base.fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "base.fire_ads",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "base.reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "FBO2.Cloth.S", t = 1/30 },
			{ s = "FBO2.HK416.R.Magout", rumble = "reload_large", t = 14/30 },
			{ s = "FBO2.HK416.R.Futz", t = 39/30 },
			{ s = "FBO2.HK416.R.Magin", t = 42/30 },
			{ rumble = "reload_large", t = 43/30 },
		}
	},
	["reload_empty"] = {
		Source = "base.reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "FBO2.Cloth.S", t = 1/30 },
			{ s = "FBO2.HK416.R.Magout", rumble = "reload_large", t = 14/30 },
			{ s = "FBO2.HK416.R.Futz", t = 39/30 },
			{ s = "FBO2.HK416.R.Magin", t = 42/30 },
			{ rumble = "reload_large", t = 43/30 },
			{ s = "FBO2.HK416.R.Boltback", t = 60/30 },
			{ rumble = "reload_small", t = 62/30 },
			{ s = "FBO2.HK416.R.Boltrelease", t = 65/30 },
			{ rumble = "reload_medium", t = 67/30 },
		}
	},
	["enter_sprint"] = {
		Source = "base.sprint_in"
	},
	["idle_sprint"] = {
		Source = "base.sprint_loop"
	},
	["exit_sprint"] = {
		Source = "base.sprint_out"
	},
}