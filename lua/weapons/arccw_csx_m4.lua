SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Cobra Mk. 4"
SWEP.Trivia_Class			= "Assault Rifle"
SWEP.Trivia_Desc			= "America's pride and joy. Shortened carbine-length version of the Mk. 16 rifle, designed for use in situations where a shorter or lighter weapon is required. After the turn of the millennium, many armies began adopting carbines as their main infantry weapons."
SWEP.Trivia_Manufacturer    = "Cobra"
SWEP.Trivia_Calibre         = "5.56x45mm"
SWEP.Trivia_Mechanism       = "Gas-Operated"
SWEP.Trivia_Country         = "USA"
SWEP.Trivia_Year			= 1994

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/m4/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(1, 1, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	30
SWEP.DamageMin			=	20
SWEP.RangeMin			=	20
SWEP.Range				=	60
SWEP.Penetration		=	8
SWEP.Primary.Ammo		=	"smg1"

SWEP.ShellModel		=	"models/shells/shell_556.mdl"
SWEP.ShellScale		=	1
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	5
SWEP.SightTime			=	0.4
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_m14"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.8
SWEP.RecoilSide			=	0.9

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["rifle"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["rifle"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["rifle"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopS",
		"weapons/arccw/m4a1/m4a1_us_01.wav",
		"CSX.UMP.Dist",
		"CSX.AK47.LFE",
	},
	["fire_sil"] = {
		"CSX.AK47.Silenced",
		"CSX.GenbopS",
	},
	["fire_first"] = {
		"CSX.GenbopS",
		"weapons/arccw/m4a1/m4a1_us_04.wav",
		"CSX.UMP.Dist",
		"CSX.AK47.LFE",
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
SWEP.AttachmentElements = {
	["rail_optic"] = {
		VMBodygroups = {{ind = 1, bg = 2}},
	},
	["rail_underbarrel"] = {
		VMBodygroups = {{ind = 2, bg = 2}},
	}
}
SWEP.Animations = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.56, 0, -0.16),
    Ang = Angle(0, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/670)
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

SWEP.NPCWeaponType	=	{"weapon_smg1"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
	},
	["ready"] = {
		Source = "reg_draw",
		SoundTable = {
		}
	},
	["draw"] = {
		Source = "reg_draw",
		SoundTable = {
		},
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["holster"] = {
		Source = "reg_holster",
		SoundTable = {
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
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
		Time = 2.1,
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 12/30 },
			{ s = "weapons/famas/famas_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/fl1.wav", t = 28/30 },
			{ s = "arccw_csx/fance/fl2.wav", t = 31/30 },
			{ s = "arccw_csx/fance/ak47_clipin.wav", t = 38/30 },
			{ s = "weapons/famas/famas_clipin.wav", t = 42/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.4,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		Time = 2.5,
		MinProgress = 2.0,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 12/30 },
			{ s = "weapons/famas/famas_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/fl1.wav", t = 28/30 },
			{ s = "arccw_csx/fance/fl2.wav", t = 31/30 },
			{ s = "arccw_csx/fance/ak47_clipin.wav", t = 44/30 },
			{ s = "weapons/famas/famas_clipin.wav", t = 48/30 },
			{ s = "weapons/famas/famas_forearm.wav", t = 58/30 },
			{ s = "arccw_csx/fance/mp5_slideback-2.wav", t = 61/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.3,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
}

SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = "optic",
		Bone = "tag_weapon",
		InstalledEles = {"rail_optic"},
		Offset = {
			vpos = Vector(3, 0, 4.25),
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
			vpos = Vector(18.9, 0, 3.2),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Underbarrel",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_underbarrel_foregrip" },
		Bone = "tag_weapon",
		InstalledEles = {"rail_underbarrel"},
		Offset = {
			vpos = Vector(9, 0, 2.2),
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
			vpos = Vector(10, 0.95, 3.15),
			vang = Angle(0, 0, -90),
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