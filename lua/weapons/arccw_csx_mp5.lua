SWEP.Base			=	"arccw_csxbase"
SWEP.Spawnable		=	true

SWEP.Category		=	"ArcCW - CSX"
SWEP.PrintName		=	"K&M SF5"
SWEP.Trivia_Class			= "Submachine Gun"
SWEP.Trivia_Desc			= "Light 9x19mm SMG predating the MPS. One of the most widely used submachine guns in the world. Renowned for its use in the Iranian Embassy siege. Despite being more expensive, it still proves appealing to many over its cheaper brother, the MPS."
SWEP.Trivia_Manufacturer	= "K&M"
SWEP.Trivia_Calibre			= "9x19mm"
SWEP.Trivia_Mechanism		= "Roller-Delayed Blowback"
SWEP.Trivia_Country			= "Germany"
SWEP.Trivia_Year			= 1956

SWEP.Slot			=	2
SWEP.SlotPos		=	0

SWEP.UseHands		=	true
SWEP.ViewModelFOV	=	75
SWEP.ViewModel		=	"models/weapons/ma85_mwr/weapons/mp5/viewmodel.mdl"
SWEP.WorldModel		=	"models/weapons/w_pist_usp.mdl"
SWEP.ActivePos = Vector(0.5, 1, 0.75)
SWEP.ActiveAng = Angle(0, 0, 0)
SWEP.DefaultBodygroups = "00000000"

SWEP.Damage				=	30
SWEP.DamageMin			=	20
SWEP.RangeMin			=	10
SWEP.Range				=	40
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
SWEP.SightTime			=	0.3
SWEP.Primary.ClipSize	=	30
SWEP.ChamberSize		=	1
SWEP.MuzzleEffect		=	"muzzleflash_mp5"
SWEP.NoFlash			=	ArcCW.CSX.NoFlash
SWEP.BodyDamageMults	=	ArcCW.CSX.DamageMults

SWEP.Recoil				=	0.7
SWEP.RecoilSide			=	0.7

SWEP.SpeedMult			=	ArcCW.CSX.MoveSpeeds["smg"].SpeedMult
SWEP.SightedSpeedMult	=	ArcCW.CSX.MoveSpeeds["smg"].SightedSpeedMult
SWEP.ShootSpeedMult		=	ArcCW.CSX.MoveSpeeds["smg"].ShootSpeedMult

SWEP.ShootSoundInfo = {
	["fire"] = {
		"CSX.GenbopS",
		"CSX.MP5.Fire",
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
	["csx_muz_sup_mp5"] = {
		VMBodygroups = {{ind = 2, bg = 1}},
	}
}
SWEP.Animations = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.11, -3.79, 1),
    Ang = Angle(0.5, 0, 0),
	Magnification = 65/50,
	CrosshairInSights = false,
}

SWEP.Delay = (60/756)
SWEP.Firemodes = {
	{
		Mode = 2,
	},
	{
		Mode = -3,
        Mult_RPM = 1.2,
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

SWEP.Hook_TranslateSequence = function( wep, seq )
	if wep:CheckFlags({}, { "csx_muz_sup_mp5" }) then
		return "sd_" .. string.sub(seq, 5, #seq)
	end
end

SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
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
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/ump45/ump45_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 39/30 },
			{ s = "weapons/ump45/ump45_clipin.wav", t = 42/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.5,
		LHIKEaseIn = 0.3,
		LHIKEaseOut = 0.3,
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		MinProgress = 1.4,
		SoundTable = {
			{ s = "CSX.Cloth.S", t = 1/30 },
			{ s = "weapons/ump45/ump45_clipout.wav", t = 14/30 },
			{ s = "arccw_csx/fance/ak47_clipout.wav", t = 39/30 },
			{ s = "weapons/ump45/ump45_clipin.wav", t = 42/30 },
			{ s = "weapons/ump45/ump45_boltslap.wav", t = 65/30 },
		},
		LHIK = true,
		LHIKIn = 0.4,
		LHIKOut = 0.55,
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
			vpos = Vector(2.5, 0, 6.55),
			vang = Angle(0, 0, 0),
		},
	},
	{
		PrintName = "Muzzle",
		DefaultAttName = ArcCW.CSX.Att_DefaultName,
		DefaultAttIcon = ArcCW.CSX.Att_DefaultIcon,
		Slot = { "csx_muzzle_device", "csx_muzzle_suppressor", "csx_muzzle_mp5" },
		Bone = "tag_weapon",
		Offset = {
			vpos = Vector(15, 0, 4.05),
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
			vpos = Vector(9, 0, 3),
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