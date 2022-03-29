SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Infilitrator"
SWEP.Trivia_Class			= "Pistol"
SWEP.Trivia_Desc			= ".45 caliber pistol designed to be as silent as absolutely possible. A bolt action allows it to reduce its report by eliminating bolt carrier noise.."
SWEP.Trivia_Manufacturer	= "Auschen Waffenfabrik"
SWEP.Trivia_Calibre			= ".45 ACP"
SWEP.Trivia_Mechanism		= "Bolt-Action"
SWEP.Trivia_Country			= "Great Britain"
SWEP.Trivia_Year			= 1942

SWEP.Slot			=	1
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_glock.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "01000000"

SWEP.Damage				=	40
SWEP.DamageMin			=	28
SWEP.RangeMin			=	10
SWEP.Range				=	30
SWEP.Penetration		=	4
SWEP.Primary.Ammo		=	"pistol"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.334
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	0
SWEP.SightTime			=	0.2
SWEP.Primary.ClipSize	=	12
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_m14"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

-- up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change
SWEP.CSX_Recoil			=	{	2,	1,	0,	0.05,	4,	3,	1	}

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.Genbop",
		"CSX.USP.Fire",
		"CSX.Glock.LFE",
		"CSX.Genbop",
	},
	["fire_sil"] = {
		"Weapon_USP.SilencedShot",
		"CSX.Genbop",
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

SWEP.Delay = (60/400)
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

SWEP.ManualAction = true
SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["ready"] = {
		Source = "pullout_first",
		SoundTable = {
			{ s = "weapons/arccw/welrod/bolt1.wav", t = 8/30 },
			{ s = "weapons/arccw/welrod/bolt2.wav", t = 14/30 },
		}
	},
	["draw"] = {
		Source = "pullout_first",
		SoundTable = {
			{ s = "weapons/arccw/welrod/bolt1.wav", t = 8/30 },
			{ s = "weapons/arccw/welrod/bolt2.wav", t = 14/30 },
		}
	},
	["holster"] = {
		Source = "putaway",
		Time = 0.5,
		SoundTable = {
		}
	},
	["fire"] = {
		Source = "fire",
		ShellEjectAt = 0,
		MinProgress = 0.2,
	},
	["fire_iron"] = {
		Source = "fire_ads",
		ShellEjectAt = 0,
		MinProgress = 0.2,
	},
	["cycle"] = {
		Source = "pullout_first",
		Time = 0.8,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/arccw/welrod/bolt1.wav", t = 6/30 },
			{ s = "weapons/arccw/welrod/bolt2.wav", t = 12/30 },
		}
	},
	["reload"] = {
		Source = "reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/arccw/welrod/clipout.wav", t = 12/30 },
			{ s = "weapons/arccw/welrod/clipin.wav", t = 48/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 6/30 },
			{ s = "weapons/arccw/welrod/clipout.wav", t = 12/30 },
			{ s = "weapons/arccw/welrod/clipin.wav", t = 48/30 },
			{ s = "weapons/arccw/welrod/bolt2.wav", t = 64/30 },
			{ s = "weapons/arccw/welrod/bolt3.wav", t = 70/30 },
		}
	},
}

SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "optic_lp",
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(-0.1, 0, 1.3),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_muzzle_device", "csx_muzzle_suppressor" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(4.7, 0, 1.1),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Tactical",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "tac_pistol",
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(3, 0, 0.1),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Firegroup",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_fcg",
	},
	{
		PrintName = "Ammotype",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_ammotype",
	},
	{
		PrintName = "Perk",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "csx_perk",
	},
}