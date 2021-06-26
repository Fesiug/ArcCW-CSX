SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Type 2"
SWEP.Trivia_Class			= "Assault Rifle"
SWEP.Trivia_Desc			= "An early assault rifle pattern, copied and used all around the world. Designed by a Soviet tank mechanic in response to the need for a more versatile infantry weapon. Packs a serious punch at the cost of poor accuracy."
SWEP.Trivia_Manufacturer    = nil--"Kremen Oruzhiye" jeez, who knows who made this one
SWEP.Trivia_Calibre         = "7.62x39mm"
SWEP.Trivia_Mechanism       = "Gas-Operated"
SWEP.Trivia_Country         = "Soviet Union"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel      =   "models/weapons/arccw/fesiugmw2_2/c_ak47_1a.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, 2, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "1"

SWEP.Damage				=	28
SWEP.DamageMin			=	14
SWEP.RangeMin			=	8
SWEP.Range				=	50
SWEP.Penetration		=	4
SWEP.Primary.Ammo		=	"ar2"

SWEP.ShellModel		=	"models/shells/shell_556.mdl"
SWEP.ShellScale		=	1.334
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.SightTime			=	0.4
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_ak47"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopR",
		"CSX.AK47.Fire",
		"CSX.UMP.Dist",
		"CSX.AK47.LFE",
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

SWEP.Delay = 0.1052
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

SWEP.NPCWeaponType	=	{"weapon_ar2"}
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