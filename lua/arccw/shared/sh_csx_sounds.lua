
local sounds_to_make = {
	// -- USP
	{
		name = "CSX.USP.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/fire/pistol/usp.wav",
		killme = true
	},
	{
		name = "CSX.USP.Dist",
		channel = CHAN_STATIC,
		volume = 0.1,
		level = 100,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_util/decay_ext.wav",
		killme = false
	},
	// -- Glock
	{
		name = "CSX.Glock.FireFirst",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/fire/pistol/glock-1.ogg",
		killme = false
	},
	{
		name = "CSX.Glock.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/fire/pistol/glock-2.ogg",
		killme = true
	},
	{
		name = "CSX.Glock.Fire_Silenced",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/m27/fire_sil.wav",
		killme = false
	},
	{
		name = "CSX.Glock.Dist",
		channel = CHAN_STATIC,
		volume = 0.1,
		level = 100,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_util/decay_ext.wav",
		killme = false
	},
	{
		name = "CSX.Glock.LFE",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/mp7/fire_lfe.wav",
		killme = false
	},
	{
		name = "CSX.Cloth.S",
		channel = CHAN_ITEM,
		volume = 0.2,
		level = 65,
		pitch = {95, 105},
		sound = {
			"fesiug_bo2/fly/cloth/short/0.wav",
			"fesiug_bo2/fly/cloth/short/1.wav",
			"fesiug_bo2/fly/cloth/short/2.wav",
			"fesiug_bo2/fly/cloth/short/3.wav",
			"fesiug_bo2/fly/cloth/short/4.wav",
			"fesiug_bo2/fly/cloth/short/5.wav",
			"fesiug_bo2/fly/cloth/short/6.wav",
		},
		killme = true
	},
	{
		name = "CSX.Glock.R.Futz",
		channel = CHAN_ITEM,
		volume = 0.05,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/ak47/futz.wav",
		killme = true
	},
	{
		name = "CSX.Glock.R.Magout",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_assault/magout.wav",
		killme = false
	},
	{
		name = "CSX.Glock.R.Magin",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_assault/magin.wav",
		killme = false
	},
	{
		name = "CSX.Glock.R.Boltback",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_assault/bb.wav",
		killme = false
	},
	{
		name = "CSX.Glock.R.Boltforward",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_assault/bf.wav",
		killme = false
	},
	// -- MP5
	{
		name = "CSX.MP5.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {100, 110},
		sound = "arccw_csx/fire/smg/mp5.wav",
		killme = true
	},
	{
		name = "CSX.MP5.Dist",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 100,
		pitch = {95, 105},
		sound = "arccw_csx/fire/smg/_falloff.wav",
		killme = false
	},
	// -- UMP
	{
		name = "CSX.UMP.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 110},
		sound = "arccw_csx/fire/smg/ump45.wav",
		killme = true
	},
	{
		name = "CSX.UMP.Dist",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 100,
		pitch = {95, 105},
		sound = "arccw_csx/fire/smg/ump45_falloff.wav",
		killme = false
	},
	// -- AK47
	{
		name = "CSX.AK47.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 100},
		sound = "arccw_csx/fire/rifle/ak47.wav",
		killme = true
	},
	{
		name = "CSX.AK47.Dist",
		channel = CHAN_STATIC,
		volume = 0.1,
		level = 100,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_util/decay_ext.wav",
		killme = false
	},
	{
		name = "CSX.AK47.LFE",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/mp7/fire_lfe.wav",
		killme = false
	},
	// -- FAMAS
	{
		name = "CSX.FAMAS.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 110},
		sound = "arccw_csx/fire/rifle/famas.wav",
		killme = true
	},
	{
		name = "CSX.FAMAS.FireClack",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 110},
		sound = {"arccw_csx/fire/rifle/famas_clack1.wav","arccw_csx/fire/rifle/famas_clack2.wav"},
		killme = false
	},
	{
		name = "CSX.FAMAS.FireFirst",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {85, 100},
		sound = "arccw_csx/fire/rifle/famas.wav",
		killme = true
	},
	{
		name = "CSX.Genbop",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/fire/bop.wav",
		killme = true
	},
	{
		name = "CSX.GenbopR",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {80, 95},
		sound = "arccw_csx/fire/bop.wav",
		killme = true
	},
	{
		name = "CSX.GenbopS",
		channel = CHAN_STATIC,
		volume = 0.3,
		level = 65,
		pitch = {80, 95},
		sound = "arccw_csx/fire/bop.wav",
		killme = true
	},
} 

ArcCW.CSX.SoundTab = {}

for i, v in ipairs(sounds_to_make) do
	sound.Add(v)
	ArcCW.CSX.SoundTab[v.name] = v
	if v.killme then
		ArcCW.CSX.SoundTab[v.name].killme = v.killme
	end
end



