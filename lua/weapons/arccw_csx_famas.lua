SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"CANIN C6"
SWEP.Trivia_Class			= "Assault Rifle"
SWEP.Trivia_Desc			= "Bullpup 3-round burst assault rifle. Bullpup configuration allows for manuverability in close range, while remaining a well-rounded option for medium to long range battle."
SWEP.Trivia_Manufacturer    = "CANIN Materials & Manufacturing"
SWEP.Trivia_Calibre         = "5.56x45mm"
SWEP.Trivia_Mechanism       = "Lever-Delayed Blowback"
SWEP.Trivia_Country         = "France"
SWEP.Trivia_Year			= 1971

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mw2cr/famas/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, 0, 1)
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

SWEP.AccuracyMOA		=	4
SWEP.SightTime			=	0.4
SWEP.Primary.ClipSize	=	25
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_3"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.7
SWEP.RecoilSide			=	0.7

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["rifle"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["rifle"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["rifle"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopR",
		"CSX.FAMAS.Fire",
		"CSX.FAMAS.FireClack",
		"CSX.UMP.Dist",
		"CSX.AK47.LFE",
	},
	["fire_sil"] = {
		"CSX.AK47.Silenced",
		"CSX.GenbopR",
	},
	["fire_first"] = {
		"CSX.GenbopR",
		"CSX.FAMAS.FireFirst",
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
		VMBodygroups = {{ind = 1, bg = 1}},
	},
}
SWEP.Animations = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.54, -3, -0.43),
    Ang = Angle(0, 0, 0),
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
		MinProgress = 2.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 12/30 },
			{ s = "weapons/famas/famas_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/fl1.wav", t = 38/30 },
			{ s = "arccw_csx/fance/fl2.wav", t = 41/30 },
			{ s = "arccw_csx/fance/ak47_clipin.wav", t = 59/30 },
			{ s = "weapons/famas/famas_clipin.wav", t = 62/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.4,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		MinProgress = 2.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 12/30 },
			{ s = "weapons/famas/famas_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/fl1.wav", t = 38/30 },
			{ s = "arccw_csx/fance/fl2.wav", t = 41/30 },
			{ s = "arccw_csx/fance/ak47_clipin.wav", t = 59/30 },
			{ s = "weapons/famas/famas_clipin.wav", t = 62/30 },
			{ s = "weapons/famas/famas_forearm.wav", t = 72/30 },
			{ s = "arccw_csx/fance/mp5_slideback-2.wav", t = 71/30 },
			{ s = "arccw_csx/fance/fl2.wav", t = 90/30 },
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
			vpos = Vector(2.2, 0, 5.45),
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
			vpos = Vector(13, 0, 2.7),
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
			vpos = Vector(6.5, 0, 1.35),
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