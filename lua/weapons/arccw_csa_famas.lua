SWEP.Base			=	"arccw_csabase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CS+ Anniversary"
SWEP.PrintName		=	"CANIN C6"
SWEP.Trivia_Class			= "Assault Rifle"
SWEP.Trivia_Desc			= "Bullpup 3-round burst assault rifle. Bullpup configuration allows for manuverability in close range, while remaining a well-rounded option for medium to long range battle."
SWEP.Trivia_Manufacturer    = nil--"Kremen Oruzhiye" jeez, who knows who made this one
SWEP.Trivia_Calibre         = "5.56x45mm"
SWEP.Trivia_Mechanism       = "Lever-Delayed Blowback"
SWEP.Trivia_Country         = "Soviet Union"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel      =   "models/weapons/arccw/fesiugmw2_2/c_famas_1.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = ""

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.1
SWEP.ShellPitch = 100
SWEP.ShellSounds = "autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.Primary.ClipSize	=	25
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_pistol"
SWEP.NoFlash			=	ArcCW.CSA.NoFlash

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSA.GenbopR",
		"CSA.FAMAS.Fire",
		"CSA.FAMAS.FireClack",
		"CSA.UMP.Dist",
		"CSA.AK47.LFE",
	},
	["fire_sil"] = {
		"CSA.AK47.Fire_Silenced",
	},
	["fire_first"] = {
		"CSA.GenbopR",
		"CSA.FAMAS.FireFirst",
		"CSA.UMP.Dist",
		"CSA.AK47.LFE",
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
    Pos = Vector(-3.04, -4.512, -0.179),
    Ang = Angle(0, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.068
SWEP.Firemodes = {
	{
		Mode = -3,
        PostBurstDelay = 0.15,
		RunawayBurst = true,
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
		MinProgress = 2.4,
		SoundTable = {
			{ s = "CSA.Cloth.S", t = 1/30 },
			{ s = "CSA.Glock.R.Magout", t = 14/30 },
			{ s = "CSA.Glock.R.Futz", t = 39/30 },
			{ s = "CSA.Glock.R.Magin", t = 42/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty",--"base.reload_empty",
		MinProgress = 2.4,
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