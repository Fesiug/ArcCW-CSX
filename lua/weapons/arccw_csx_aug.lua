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
SWEP.ViewModelFOV	=	75
SWEP.ViewModel      =   "models/weapons/ma85_mw2cr/aug/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_rif_ak47.mdl"
SWEP.ActivePos = Vector(0.75, 2, 0.75)
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
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_ak47"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.6
SWEP.RecoilSide			=	0.6

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["rifle"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["rifle"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["rifle"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.AUG.Fire",
		"CSX.UMP.Dist",
	},
	["fire_sil"] = {
		"CSX.AK47.Silenced",
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
SWEP.AttachmentElements = {
	["rail_optic"] = {
		VMBodygroups = {{ind = 1, bg = 1}},
	},
}
SWEP.Animations = {}

SWEP.IronSightStruct = {
	Pos = Vector(-2.52, -6.026, 0.4),
	Ang = Angle(0, 0, 0),
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
		Source = "reg_idle",
	},
	["ready"] = {
		Source = "reg_draw_first",
		SoundTable = {
			{ s = "weapons/aug/aug_boltslap.wav", t = 9/30 },
			{ s = "arccw_csx/fance/ak47_clipin-2.wav", t = 12/30 },
		}
	},
	["draw"] = {
		Source = "reg_draw",
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
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 19/30 },
			{ s = "weapons/aug/aug_clipout.wav", t = 23/30 },
			{ s = "arccw_csx/fance/fl1.wav", t = 48/30 },
			{ s = "weapons/aug/aug_clipin.wav", t = 71/30 },
			{ s = "arccw_csx/fance/mp5_slideback-2.wav", t = 90/30 },
		}
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
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
		InstalledEles = {"rail_optic"},
		Offset = {
			vpos = Vector(2.6, 0, 5.0),
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
			vpos = Vector(16.3, 0, 3.2),
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
			vpos = Vector(3.8, 1, 3.25),
			vang = Angle(0, 0, -150),
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