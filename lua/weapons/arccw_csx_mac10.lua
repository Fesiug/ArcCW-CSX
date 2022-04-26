SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Mk. 201"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "A compact submachine gun. Often handcrafted and known for its incredibly low price at the cost of almost all else. It shoots, shoots too damn quick, and that's about the best thing going for it."
SWEP.Trivia_Manufacturer	= "Schmidt"
SWEP.Trivia_Calibre			= ".45 ACP"
SWEP.Trivia_Mechanism		= "Straight Blowback"
SWEP.Trivia_Country			= "USA"
SWEP.Trivia_Year			= 1972

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/mac10/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_smg_tmp.mdl"
SWEP.ActivePos = Vector(0.5, -1, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	35
SWEP.DamageMin			=	22
SWEP.RangeMin			=	12
SWEP.Range				=	30
SWEP.Penetration		=	6
SWEP.Primary.Ammo		=	"pistol"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.2
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	16
SWEP.SightTime			=	0.2
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_smg"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.8
SWEP.RecoilSide			=	0.8

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["smg"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["smg"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["smg"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopS",
		"CSX.MAC10.Fire",
		"CSX.MP5.Dist",
	},
	["fire_sil"] = {
		"CSX.MP5.Silenced",
		"CSX.GenbopS",
	},
	["fire_first"] = {
		"CSX.GenbopS",
		"CSX.MAC10.FireFirst",
		"CSX.MP5.Dist",
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
		VMBodygroups = {{ind = 1, bg = 1}},
	},
}
SWEP.Animations = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.2, 0, 1.2),
    Ang = Angle(0.25, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/930)
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
	["draw"] = {
		Source = "reg_draw",
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["holster"] = {
		Source = "reg_holster",
		LHIK = true,
		LHIKIn = 0.3,
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
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 0 },
			{ s = "weapons/scout/scout_clipout.wav",	t = 0.2 },
			{ s = "arccw_csx/fance/ak47_clipout.wav",	t = 1.7 },
			{ s = "weapons/scout/scout_clipin.wav",		t = 1.9 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.3,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.2,
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/ak47/ak47_boltpull.wav",		t = 0.4 },
			{ s = "weapons/scout/scout_clipout.wav",	t = 0.2 + 0.9 },
			{ s = "arccw_csx/fance/ak47_clipout.wav",	t = 1.7 + 0.9 },
			{ s = "weapons/scout/scout_clipin.wav",		t = 1.9 + 0.9 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.3,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.25,
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
			vpos = Vector(-2, 0, 3.75),
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
			vpos = Vector(7, 0, 2.4),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Underbarrel",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_underbarrel_foregrip" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(5, 0, 1.3),
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
			vpos = Vector(3, 0.9, 2.9),
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