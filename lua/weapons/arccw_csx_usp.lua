SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"K&M SP40"
SWEP.Trivia_Class			= "Pistol"
SWEP.Trivia_Desc			= ".40 S&W semi-automatic pistol. Commonly used among police and popular with civilians for its reliability. FBI loves this caliber, I hear! Zenith does not."
SWEP.Trivia_Manufacturer	= "Auschen Waffenfabrik"
SWEP.Trivia_Calibre			= ".40 S&W"
SWEP.Trivia_Mechanism		= "Short Recoil"
SWEP.Trivia_Country			= "Austria"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	1
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_usp.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "01"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.334
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.SightTime			=	0.2
SWEP.Primary.ClipSize	=	12
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_m14"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.Genbop",
		"CSX.USP.Fire",
		"CSX.Glock.LFE",
		"CSX.Genbop",
	},
	["fire_sil"] = {
		"CSX.USP.Fire_Silenced",
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
	Pos = Vector(-2, 3, 1.6),
	Ang = Angle(-1.2, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.075
SWEP.Firemodes = {
	{
		Mode = 1,
	},
	{
		Mode = 0
	}
}

SWEP.NPCWeaponType	=	{"weapon_pistol"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "idle",--"base.idle"
	},
	["ready"] = {
		Source = "pullout",--"base.pullout_first",
		SoundTable = {
			{ s = "CSX.Glock.R.Boltback", t = 22/30 },
			{ s = "CSX.Glock.R.Boltrelease", t = 26/30 },
			{ s = "CSX.Glock.R.Boltback", t = 29/30 },
			{ s = "CSX.Glock.R.Boltrelease", t = 35/30 },
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
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.Glock.R.Magout", t = 14/30 },
			{ s = "CSX.Glock.R.Futz", t = 39/30 },
			{ s = "CSX.Glock.R.Magin", t = 42/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty",--"base.reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.Glock.R.Magout", t = 14/30 },
			{ s = "CSX.Glock.R.Futz", t = 39/30 },
			{ s = "CSX.Glock.R.Magin", t = 42/30 },
			{ s = "CSX.Glock.R.Boltback", t = 60/30 },
			{ s = "CSX.Glock.R.Boltrelease", t = 65/30 },
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