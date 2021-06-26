SWEP.Base			=	"arccw_csabase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CS+ Anniversary"
SWEP.PrintName		=	"K&M MPS-45"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "Ubiquitous sub-machine gun. Created as a response to the need for a faster-firing and more reliable submachine gun than existing options at the time. In .45, the heavy caliber allows it to pack a greater punch in short range while remaining controllable with a lower fire rate."
SWEP.Trivia_Manufacturer	= "K&M"
SWEP.Trivia_Calibre			= ".45 ACP"
SWEP.Trivia_Mechanism		= "Straight Blowback" -- correct if wrong
SWEP.Trivia_Country			= "Germany"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_ump45_1.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 2, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.334
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	25
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_mp5"
SWEP.NoFlash			=	ArcCW.CSA.NoFlash

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSA.GenbopS",
		"CSA.UMP.Fire",
		"CSA.FAMAS.FireClack",
		"CSA.UMP.Dist",
		"CSA.Glock.LFE",
	},
	["fire_sil"] = {
		"CSA.UMP.Fire_Silenced",
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
    Pos = Vector(-2.29, -3.477, 1),
    Ang = Angle(0.699, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.107
SWEP.Firemodes = {
	{
		Mode = 2,
	},
	{
		Mode = -2,
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