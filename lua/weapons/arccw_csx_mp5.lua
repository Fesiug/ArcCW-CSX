SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"K&M NP5"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "Light 9mm SMG predating the MPS. One of the most widely used submachine guns in the world. Renowned for its use in the Iranian Embassy siege. Despite being more expensive, it still proves appealing to many over its cheaper brother, the MPS."
--"Light 9mm SMG predating the MPS. It's obviously extremely iconic, and its crisp handling still proves appealing to many."
-- HELP NEED TO WRITE GOOD DESCRIPTION A LITTLE HARD
SWEP.Trivia_Manufacturer	= "K&M"
SWEP.Trivia_Calibre			= "9x19mm"
SWEP.Trivia_Mechanism		= "Roller-Delayed Blowback"
SWEP.Trivia_Country			= "Germany"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_mp5k.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.5, 2, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = ""

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.2
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_mp5"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopS",
		"CSX.MP5.Fire",
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
        Mult_RPM = 1.2,
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

SWEP.NPCWeaponType	=	{"weapon_smg1"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "idle".."_nofg",--"base.idle"
	},
	["ready"] = {
		Source = "pullout_first".."_nofg",--"base.pullout_first",
		SoundTable = {
			{ s = "CSX.Glock.R.Boltback", t = 22/30 },
			{ s = "CSX.Glock.R.Boltrelease", t = 26/30 },
			{ s = "CSX.Glock.R.Boltback", t = 29/30 },
			{ s = "CSX.Glock.R.Boltrelease", t = 35/30 },
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
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "CSX.Glock.R.Magout", t = 14/30 },
			{ s = "CSX.Glock.R.Futz", t = 39/30 },
			{ s = "CSX.Glock.R.Magin", t = 42/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty".."_nofg",--"base.reload_empty",
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