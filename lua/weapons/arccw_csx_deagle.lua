SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Gavel .50AE"
SWEP.Trivia_Class			= "Pistol"
SWEP.Trivia_Desc			= "Monster pistol designed for self-defense against large wild animals such as grizzly bears. A rotating-bolt gas-operated design makes it able to handle the huge round, resembling an assault rifle more than a handgun."
SWEP.Trivia_Manufacturer	= "Gavel MI"
SWEP.Trivia_Calibre			= ".50 Action Express"
SWEP.Trivia_Mechanism		= "Gas-Operated"
SWEP.Trivia_Country			= "USA/Israel"
SWEP.Trivia_Year			= 1991

SWEP.Slot			=	1
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel		=	"models/weapons/ma85_mwr/weapons/deagle/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 1, 0.75)
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

SWEP.AccuracyMOA		=	10
SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	7
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_pistol_deagle"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	3.0
SWEP.RecoilSide			=	1.0

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["pistol_heavy"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["pistol_heavy"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["pistol_heavy"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.Deagle.Fire",
		"CSX.Glock.LFE",
	},
	["fire_sil"] = {
		"CSX.AK47.Silenced",
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
	Pos = Vector(-1.57, 2, 1.1),
	Ang = Angle(0, 0, 0),
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
		Source = "reg_idle",
	},
	["draw"] = {
		Source = "reg_draw",
		Time = 0.5,
	},
	["holster"] = {
		Source = "reg_holster",
		Time = 0.5,
	},
	["fire"] = {
		Source = "reg_fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "reg_fire_ads",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reg_reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/deagle/de_clipout.wav", t = 12/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 26/30 },
			{ s = "weapons/deagle/de_clipin.wav", t = 34/30 },
		}
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
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
		PrintName = "Optic",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "optic", "optic_pistol" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(5, 0, 3.1),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_muzzle_device_pistol", "csx_muzzle_suppressor_pistol", "csx_muzzle_suppressor" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(7.6, 0, 2.6),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Tactical",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_tactical" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(4.95, 0, 1.6),
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