SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"Schmidt Bullpup"
SWEP.Trivia_Class			= "Assault Rifle"
SWEP.Trivia_Desc			= "Bullpup assault rifle, whose design puts the mechanism behind the grip, allowing for a longer barrel without extending the effective length of the weapon. Alongside this, it comes equipped with a dual-stage trigger, which some may find to be a downside."
SWEP.Trivia_Manufacturer    = "Schmidt"
SWEP.Trivia_Calibre         = "5.56x45mm"
SWEP.Trivia_Mechanism       = "Gas-Operated"
SWEP.Trivia_Country         = "Austria"
SWEP.Trivia_Year			= 1978

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	65
SWEP.ViewModel      =   "models/weapons/arccw/fesiugmw2/c_steyr.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, 2, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "11000000"

SWEP.Damage				=	30
SWEP.DamageMin			=	20
SWEP.RangeMin			=	20
SWEP.Range				=	60
SWEP.Penetration		=	8
SWEP.Primary.Ammo		=	"smg1"

SWEP.ShellModel		=	"models/shells/shell_556.mdl"
SWEP.ShellScale		=	1.334
SWEP.ShellPitch		=	100
SWEP.ShellSounds	=	"autocheck"

SWEP.HoldtypeHolstered	= "normal"
SWEP.HoldtypeActive		= "pistol"
SWEP.HoldtypeSights		= "revolver"
SWEP.AnimShoot			= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.AccuracyMOA		=	0
SWEP.SightTime			=	0.4
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_ak47"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash

-- up_base, lateral_base, up_modifier, lateral_modifier, up_max, lateral_max, direction_change
SWEP.CSX_Recoil			=	{	1.0,	0.3,	0.03,	0.05,	5,	2,	7	}

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.AUG.Fire",
		"CSX.UMP.Dist",
	},
	["fire_sil"] = {
		"Weapon_M4A1.Silenced",
		"CSX.GenbopR",
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
	Pos = Vector(-3.04, -6.026, 0.68),
	Ang = Angle(0.203, 0, 0),
	ViewModelFOV = 65 / (65/50),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/650)
SWEP.Firemodes = {
	{
		Mode = 2,
		CustomBars = "---_-",
		PrintName = "DUAL-STAGE",
		M_Hook_Mult_RPM = function(wep, data)
			if wep:GetBurstCount() == 0 and wep:GetState() != ArcCW.STATE_CUSTOMIZE then
				data.mult = data.mult * (1/2)
			end
		end,
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
		Source = "idle_fgrip",
	},
	["ready"] = {
		Source = "pullout_first",
		SoundTable = {
			{ s = "weapons/aug/aug_boltslap.wav", t = 9/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 12/30 },
		}
	},
	["draw"] = {
		Source = "pullout_fgrip",
		SoundTable = {
		}
	},
	["holster"] = {
		Source = "putaway_fgrip",
		SoundTable = {
		}
	},
	["fire"] = {
		Source = "fire_fgrip",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "fire_ads_fgrip",
		ShellEjectAt = 0,
	},
	["reload"] = {
		Source = "reload_fgrip",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 19/30 },
			{ s = "weapons/aug/aug_clipout.wav", t = 23/30 },
			{ s = "arccw_csx/fance/fl1.wav", t = 48/30 },
			{ s = "weapons/aug/aug_clipin.wav", t = 71/30 },
			{ s = "arccw_csx/fance/mp5_slideback-2.wav", t = 90/30 },
		}
	},
	["reload_empty"] = {
		Source = "reload_empty_fgrip",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 19/30 },
			{ s = "weapons/aug/aug_clipout.wav", t = 23/30 },
			{ s = "arccw_csx/fance/fl1.wav", t = 48/30 },
			{ s = "weapons/aug/aug_clipin.wav", t = 71/30 },
			{ s = "weapons/aug/aug_boltslap.wav", t = 92/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 105/30 },
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
		Offset = {
			vpos = Vector(1, 0, 3.4),
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
			vpos = Vector(14, 0, 1.72),
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