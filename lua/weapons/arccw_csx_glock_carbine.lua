SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"VI Carbine"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "Exotic .357 ROLAND 4-round burst carbine."
SWEP.Trivia_Manufacturer	= "Vienna Manufacturing"
SWEP.Trivia_Calibre			= ".357 ROLAND"
SWEP.Trivia_Mechanism		= "Short Recoil"
SWEP.Trivia_Country			= "Austria"
SWEP.Trivia_Year			= 1999

SWEP.Slot			=	1
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mwr/weapons/psd9/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_glock18.mdl"
SWEP.ActivePos = Vector(0.75, 0, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	25
SWEP.DamageMin			=	18
SWEP.RangeMin			=	10
SWEP.Range				=	30
SWEP.Penetration		=	4
SWEP.Primary.Ammo		=	"pistol"

SWEP.ShellModel		=	"models/shells/shell_9mm.mdl"
SWEP.ShellScale		=	1.1
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	20
SWEP.SightTime			=	0.2
SWEP.Primary.ClipSize	=	28
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_pistol"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.7
SWEP.RecoilSide			=	0.5

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["smg"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["smg"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["smg"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopS",
		"CSX.Glock.Fire",
		--"FBO2.HK416.Dist",
		--"FBO2.HK416.LFE",
	},
	["fire_sil"] = {
		"Weapon_USP.SilencedShot",
	},
	["fire_first"] = {
		"CSX.Genbop",
		"CSX.Glock.FireFirst",
		--"FBO2.HK416.Dist",
		--"FBO2.HK416.LFE",
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
	Pos = Vector(-2.8, 0, 0.8),
	Ang = Angle(-0.4, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = 0.069
SWEP.Firemodes = {
	{
		Mode = -4,
        PostBurstDelay = 0.12,
		RunawayBurst = true,
	},
	{
		Mode = 1,
	},
	{
		Mode = 0
	}
}

SWEP.NPCWeaponType	=	{"weapon_pistol"}
SWEP.NPCWeight		=	100

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
	},
	["idle_empty"] = {
		Source = "reg_idle_empty",
	},
	["ready"] = {
		Source = "reg_draw_first",
		SoundTable = {
		}
	},
	["draw"] = {
		Source = "reg_draw",
		Time = 0.5,
	},
	["draw_empty"] = {
		Source = "reg_draw_empty",
		Time = 0.5,
	},
	["holster"] = {
		Source = "reg_holster",
		Time = 0.5,
	},
	["holster_empty"] = {
		Source = "reg_holster_empty",
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
	["fire_empty"] = {
		Source = "reg_fire_empty",
		ShellEjectAt = 0,
	},
	["fire_iron_empty"] = {
		Source = "reg_fire_ads_empty",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reg_reload",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 6/30 },
			{ s = "weapons/glock/glock_clipout.wav", t = 12/30 },
			{ s = "weapons/glock/glock_clipin.wav", t = 35/30 },
		}
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 6/30 },
			{ s = "weapons/glock/glock_clipout.wav", t = 12/30 },
			{ s = "weapons/glock/glock_clipin.wav", t = 28/30 },
			{ s = "weapons/glock/glock_sliderelease.wav", t = 72/30 },
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
			vpos = Vector(6.3, 0, 2.8),
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
			vpos = Vector(5.3, 0, 2.1),
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