SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"LIN Infilitrator"
SWEP.Trivia_Class			= "Pistol"
SWEP.Trivia_Desc			= ".45 ACP pistol designed to be as silent as absolutely possible. A bolt action allows it to reduce its report by eliminating bolt carrier noise."
SWEP.Trivia_Manufacturer	= "LIN"
SWEP.Trivia_Calibre			= ".45 ACP"
SWEP.Trivia_Mechanism		= "Bolt-Action"
SWEP.Trivia_Country			= "Great Britain"
SWEP.Trivia_Year			= 1942

SWEP.Slot			=	1
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel		=	"models/weapons/ma85_mwr/weapons/luger/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.75, 1, 0.75)
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

SWEP.AccuracyMOA		=	5
SWEP.SightTime			=	0.2
SWEP.Primary.ClipSize	=	7
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_pistol"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	1.1
SWEP.RecoilSide			=	1.1

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["pistol"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["pistol"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["pistol"].ShootSpeedMult

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
	Pos = Vector(-1.76, 3, 1.17),
	Ang = Angle(0, 0, 0),
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

SWEP.ManualAction = true
SWEP.NoLastCycle = true

SWEP.NPCWeaponType	=	{"weapon_pistol"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
	},
	["idle_empty"] = {
		Source = "reg_idle_empty",
	},
	["draw"] = {
		Source = "reg_draw_first",
		SoundTable = {
			{ s = "weapons/arccw/welrod/bolt1.wav", t = 8/30 },
			{ s = "weapons/arccw/welrod/bolt2.wav", t = 14/30 },
		}
	},
	["holster"] = {
		Source = "reg_holster",
		Time = 0.5,
	},
	["fire"] = {
		Source = "reg_fire_last",
		Time = 0.8,
		MinProgress = 0.2,
	},
	["fire_iron"] = {
		Source = "reg_fire_ads_last",
		Time = 0.8,
		MinProgress = 0.2,
	},
	["cycle"] = {
		Source = "reg_draw_first",
		Time = 0.8,
		MinProgress = 0.6,
		ShellEjectAt = 0.3,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/arccw/welrod/bolt1.wav", t = 6/30 },
			{ s = "weapons/arccw/welrod/bolt2.wav", t = 12/30 },
		}
	},
	["reload"] = {
		Source = "reg_reload",
		Time = 2.0,
		MinProgress = 1.2,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 0.2 },
			{ s = "weapons/arccw/welrod/clipout.wav", t = 0.4 },
			{ s = "weapons/arccw/welrod/clipin.wav", t = 1.1 },
		}
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		Time = 2.6,
		MinProgress = 1.2,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 0.2 },
			{ s = "weapons/arccw/welrod/clipout.wav", t = 0.4 },
			{ s = "weapons/arccw/welrod/clipin.wav", t = 1.0 },
			{ s = "weapons/arccw/welrod/bolt1.wav", t = 1.7 },
			{ s = "weapons/arccw/welrod/bolt2.wav", t = 1.9 },
		}
	},
}

SWEP.Attachments = {
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_muzzle_device", "csx_muzzle_suppressor" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(6.85, 0, 2.45),
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
			vpos = Vector(5.2, 0, 2.1),
			vang = Angle(0, 0, 0),
		},
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