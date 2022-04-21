SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Gavel .50AE"
SWEP.Trivia_Class			= "Pistol"
SWEP.Trivia_Desc			= "Monster pistol designed for self-defense against large wild animals such as grizzly bears. A rotating-bolt gas-operated design makes it able to handle the huge round, resembling an assault rifle more than a handgun."
SWEP.Trivia_Manufacturer	= "Gryphon Arms"
SWEP.Trivia_Calibre			= ".50 Action Express"
SWEP.Trivia_Mechanism		= "Gas Operated"
SWEP.Trivia_Country			= "USA/Isarel"
SWEP.Trivia_Year			= 1991

SWEP.Slot			=	1
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel		=	"models/weapons/arccw/fesiugmw2/c_desert_eagle_3.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "10000000"

SWEP.Damage				=	45
SWEP.DamageMin			=	27
SWEP.RangeMin			=	12
SWEP.Range				=	32
SWEP.Penetration		=	4
SWEP.Primary.Ammo		=	"357"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.5
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	0
SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	7
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_pistol_deagle"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

-- up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change
SWEP.CSX_Recoil			=	{	3,	2,	1,	1,	8,	8,	1	}

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.Deagle.Fire",
		"CSX.Glock.LFE",
	},
	["fire_sil"] = {
		"Weapon_M4A1.Silenced",
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

SWEP.Delay = (60/270)
SWEP.Firemodes = {
	{
		Mode = 1,
	},
	{
		Mode = 0
	}
}

SWEP.NPCWeaponType	=	{"weapon_357"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["ready"] = {
		Source = "pullout",
		SoundTable = {
		}
	},
	["draw"] = {
		Source = "pullout",
		Time = 0.5,
		SoundTable = {
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
	},
	["fire_iron"] = {
		Source = "fire_ads",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/deagle/de_clipout.wav", t = 12/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 26/30 },
			{ s = "weapons/deagle/de_clipin.wav", t = 34/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 6/30 },
			{ s = "weapons/deagle/de_clipout.wav", t = 12/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 26/30 },
			{ s = "weapons/deagle/de_clipin.wav", t = 34/30 },
		}
	},
}

SWEP.Attachments = {
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_muzzle_device_pistol", "csx_muzzle_suppressor_pistol", "csx_muzzle_suppressor" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(6.7, 0, 1.1),
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