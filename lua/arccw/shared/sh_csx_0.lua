
--[[
	ArcCW CS×
	CS+ recreated using high-resolution assets
	
	Credits
		-	Fesiug
		-	rzen1th
		
	Assets used
		-	this nuts
]]

ArcCW.CSX = {}

ArcCW.CSX.NoFlash = true

ArcCW.CSX.Att_DefaultName = "Nil"
ArcCW.CSX.Att_DefaultIcon = Material("entities/noattfes.png", "mips smooth")

ArcCW.CSX.MoveSpeeds = {
	["pistol"] = {
		["SpeedMult"]			=	1,
		["SightedSpeedMult"]	=	1,
		["ShootSpeedMult"]		=	1,
	},
		["pistol_heavy"] = {
			["SpeedMult"]			=	0.98,
			["SightedSpeedMult"]	=	0.95,
			["ShootSpeedMult"]		=	0.8,
		},
	["smg"] = {
		["SpeedMult"]			=	0.95,
		["SightedSpeedMult"]	=	0.9,
		["ShootSpeedMult"]		=	0.95,
	},
		["smg_heavy"] = {
			["SpeedMult"]			=	0.9,
			["SightedSpeedMult"]	=	0.8,
			["ShootSpeedMult"]		=	0.9,
		},
	["rifle"] = {
		["SpeedMult"]			=	0.9,
		["SightedSpeedMult"]	=	0.8,
		["ShootSpeedMult"]		=	0.85,
	},
		["rifle_heavy"] = {
			["SpeedMult"]			=	0.86,
			["SightedSpeedMult"]	=	0.78,
			["ShootSpeedMult"]		=	0.8,
		},
	["shotgun"] = {
		["SpeedMult"]			=	0.85,
		["SightedSpeedMult"]	=	0.8,
		["ShootSpeedMult"]		=	0.6,
	},
}

ArcCW.CSX.DamageMults = {
    [HITGROUP_HEAD] = 3,

    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,

    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,

    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}