SWEP.Base			=	"arccw_csabase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CS+ Anniversary"
SWEP.PrintName		=	"K&M SP5"
SWEP.Trivia_Class			= "Pistol"
SWEP.Trivia_Desc			= ".40 S&W semi-automatic pistol. Commonly used among police and popular with civilians for its reliability. FBI loves this caliber, I hear! Zenith does not."
SWEP.Trivia_Manufacturer	= "Auschen Waffenfabrik"
SWEP.Trivia_Calibre			= ".40 S&W"
SWEP.Trivia_Mechanism		= "Short Recoil"
SWEP.Trivia_Country			= "Austria"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_slog_mp5n.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.334
SWEP.ShellPitch = 100
SWEP.ShellSounds = "autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_mp5"
SWEP.NoFlash			=	ArcCW.CSA.NoFlash

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSA.MP5.Fire",
		"CSA.MP5.Dist",
	},
	["fire_sil"] = {
		"CSA.MP5.Fire_Silenced",
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
	Pos = Vector(-2, 0, 1.55),
	Ang = Angle(-0.75, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.085
SWEP.Firemodes = {
	{
		Mode = 2,
	},
	{
		Mode = -3,
        PostBurstDelay = 0.1,
        Mult_RPM = 1.2,
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
		Source = "idle".."_nofg",--"base.idle"
	},
	["ready"] = {
		Source = "pullout_first".."_nofg",--"base.pullout_first",
		SoundTable = {
			{ s = "CSA.Glock.R.Boltback", t = 22/30 },
			{ s = "CSA.Glock.R.Boltrelease", t = 26/30 },
			{ s = "CSA.Glock.R.Boltback", t = 29/30 },
			{ s = "CSA.Glock.R.Boltrelease", t = 35/30 },
		}
	},
	["draw"] = {
		Source = "pullout".."_nofg",--"base.pullout",
		SoundTable = {
		}
	},
	["holster"] = {
		Source = "putaway".."_nofg",--"base.putaway",
		SoundTable = {
		}
	},
	["fire"] = {
		Source = "fire".."_nofg",--"base.fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "fire_ads".."_nofg",--"base.fire_ads",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reload".."_nofg",--"base.reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSA.Cloth.S", t = 1/30 },
			{ s = "CSA.Glock.R.Magout", t = 14/30 },
			{ s = "CSA.Glock.R.Futz", t = 39/30 },
			{ s = "CSA.Glock.R.Magin", t = 42/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty".."_nofg",--"base.reload_empty",
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