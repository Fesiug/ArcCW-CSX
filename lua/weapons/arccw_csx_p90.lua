SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"ES NXm"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "Personal defense weapon developed to arm rear-line soldiers in need of a more effective weapon to combat enemy paratroopers wearing body armor. Offers high fire rate with excellent damage characteristics retained at long range. 'NXM' stands for 'New eXperimental sub Machine gun'."
SWEP.Trivia_Manufacturer	= "ES"
SWEP.Trivia_Calibre			= "5.7x28mm"
SWEP.Trivia_Mechanism		= "Straight Blowback"
SWEP.Trivia_Country			= "Belgium"
SWEP.Trivia_Year			= 1989

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel		=	"models/weapons/ma85_mwr/weapons/p90/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.5, 1, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	19
SWEP.DamageMin			=	14
SWEP.RangeMin			=	10
SWEP.Range				=	40
SWEP.Penetration		=	4
SWEP.Primary.Ammo		=	"smg1"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.2
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	16
SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	50
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_smg"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.7
SWEP.RecoilSide			=	0.7

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["smg_heavy"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["smg_heavy"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["smg_heavy"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		--"CSX.GenbopS",
		"CSX.P90.Fire",
		"CSX.MP5.Dist",
	},
	["fire_first"] = {
		--"CSX.GenbopS",
		"CSX.P90.FireFirst",
		"CSX.MP5.Dist",
	},
	["fire_sil"] = {
		"CSX.MP5.Silenced",
		"CSX.GenbopS",
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
    Pos = Vector(-3.18, -3.79, -0.5),
    Ang = Angle(2, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/1100)
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
		Source = "reg_draw_first",
		SoundTable = {
			{ s = "weapons/p90/p90_boltpull.wav", t = 11/30 },
			{ s = "arccw_csx/fance/fl2.wav", t = 22/30 },
		}
	},
	["draw"] = {
		Source = "reg_draw",
		SoundTable = {
			{ s = "weapons/arccw/p90/p90_draw.wav", t = 0 },
		}
	},
	["holster"] = {
		Source = "reg_holster",
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
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 8/30 },
			{ s = "weapons/p90/p90_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 39/30 },
			{ s = "weapons/p90/p90_clipin.wav", t = 53/30 },
		}
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 8/30 },
			{ s = "weapons/p90/p90_clipout.wav", t = 14/30 },
			{ s = "weapons/p90/p90_clipin.wav", t = 53/30 },
			{ s = "weapons/p90/p90_boltpull.wav", t = 87/30 },
			{ s = "arccw_csx/fance/fl2.wav", t = 100/30 },
		}
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
			vpos = Vector(3, 0, 5.3),
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
			vpos = Vector(6.55, -0.05, 2.4),
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