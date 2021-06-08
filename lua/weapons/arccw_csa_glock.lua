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
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_glock17_1.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_glock18.mdl"

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = "autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.Primary.ClipSize	=	17
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_pistol"
SWEP.NoFlash			=	true

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSA.Glock.Fire",
		--"FBO2.HK416.Dist",
		--"FBO2.HK416.LFE",
	},
	["fire_sil"] = {
		"FBO2.HK416.Fire_Silenced",
	},
	["fire_first"] = {
		"CSA.Glock.FireFirst",
		--"FBO2.HK416.Dist",
		--"FBO2.HK416.LFE",
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
		Source = "idle",--"base.idle"
	},
	["ready"] = {
		Source = "pullout",--"base.pullout_first",
		SoundTable = {
			{ s = "CSA.Glock.R.Boltback", t = 22/30 },
			{ s = "CSA.Glock.R.Boltrelease", t = 26/30 },
			{ s = "CSA.Glock.R.Boltback", t = 29/30 },
			{ s = "CSA.Glock.R.Boltrelease", t = 35/30 },
		}
	},
	["draw"] = {
		Source = "pullout",--"base.pullout",
		SoundTable = {
		}
	},
	["holster"] = {
		Source = "putaway",--"base.putaway",
		SoundTable = {
		}
	},
	["fire"] = {
		Source = "fire",--"base.fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "fire_ads",--"base.fire_ads",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reload",--"base.reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSA.Cloth.S", t = 1/30 },
			{ s = "CSA.Glock.R.Magout", t = 14/30 },
			{ s = "CSA.Glock.R.Futz", t = 39/30 },
			{ s = "CSA.Glock.R.Magin", t = 42/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty",--"base.reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSA.Cloth.S", t = 1/30 },
			{ s = "CSA.Glock.R.Magout", t = 14/30 },
			{ s = "CSA.Glock.R.Futz", t = 39/30 },
			{ s = "CSA.Glock.R.Magin", t = 42/30 },
			{ s = "CSA.Glock.R.Boltback", t = 60/30 },
			{ s = "CSA.Glock.R.Boltrelease", t = 65/30 },
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