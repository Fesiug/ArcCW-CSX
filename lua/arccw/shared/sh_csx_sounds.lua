
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
		name = "CSX.USP.Silenced",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = { "weapons/arccw/usp/usp_01.wav", "weapons/arccw/usp/usp_02.wav", "weapons/arccw/usp/usp_03.wav" },
		killme = true
	},
	{
		name = "CSX.USP.Dist",
		channel = CHAN_STATIC,
		volume = 0.1,
		level = 100,
		pitch = {95, 105},
		sound = "arccw_csx/wep/_util/decay_ext.wav",
		killme = false
	},
	// -- Deagle
	{
		name = "CSX.Deagle.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 95},
		sound = "arccw_csx/weapons/deagle/fire.wav",
		killme = false
	},
	// -- Elite
	{
		name = "CSX.Elite.FireFirst",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "weapons/arccw/elite/elites_01.wav",
		killme = false
	},
	{
		name = "CSX.Elite.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "weapons/arccw/elite/elites_02.wav",
		killme = true
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
		sound = "arccw_csx/wep/m27/fire_sil.wav",
		killme = false
	},
	{
		name = "CSX.Glock.Dist",
		channel = CHAN_STATIC,
		volume = 0.1,
		level = 100,
		pitch = {95, 105},
		sound = "arccw_csx/wep/_util/decay_ext.wav",
		killme = false
	},
	{
		name = "CSX.Glock.LFE",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/wep/mp7/fire_lfe.wav",
		killme = false
	},
	{
		name = "CSX.Cloth.S",
		channel = CHAN_STATIC,
		volume = 0.2,
		level = 65,
		pitch = {95, 105},
		sound = {
			"arccw_csx/wep/fly/cloth/short/0.wav",
			"arccw_csx/wep/fly/cloth/short/1.wav",
			"arccw_csx/wep/fly/cloth/short/2.wav",
			"arccw_csx/wep/fly/cloth/short/3.wav",
			"arccw_csx/wep/fly/cloth/short/4.wav",
			"arccw_csx/wep/fly/cloth/short/5.wav",
			"arccw_csx/wep/fly/cloth/short/6.wav",
		},
		killme = true
	},
	{
		name = "CSX.Glock.R.Futz",
		channel = CHAN_ITEM,
		volume = 0.05,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/wep/ak47/futz.wav",
		killme = true
	},
	{
		name = "CSX.Glock.R.Magout",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/wep/_assault/magout.wav",
		killme = false
	},
	{
		name = "CSX.Glock.R.Magin",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/wep/_assault/magin.wav",
		killme = false
	},
	{
		name = "CSX.Glock.R.Boltback",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/wep/_assault/bb.wav",
		killme = false
	},
	{
		name = "CSX.Glock.R.Boltforward",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/wep/_assault/bf.wav",
		killme = false
	},
	// -- P90
	{
		name = "CSX.P90.FireFirst",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 95},
		sound = "arccw_csx/weapons/p90/firefirst.wav",
		killme = false
	},
	{
		name = "CSX.P90.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {100, 105},
		sound = "arccw_csx/weapons/p90/fire.wav",
		killme = true
	},
	// -- DB
	{
		name = "CSX.DB.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 95},
		sound = "arccw_csx/weapons/db/fire.wav",
		killme = true
	},
	// -- Super 90
	{
		name = "CSX.Super90.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 100},
		sound = "arccw_csx/weapons/super90/fire.wav",
		killme = true
	},
	// -- M3
	{
		name = "CSX.M3.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {105, 110},
		sound = "arccw_csx/weapons/m3/fire.wav",
		killme = true
	},
	{
		name = "CSX.M3.Silenced",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {105, 110},
		sound = "weapons/arccw/m590_suppressed_tp.wav",
		killme = true
	},
	{
		name = "CSX.M3.R.Boltback",
		channel = CHAN_STATIC,
		volume = 0.5,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/weapons/m3/pumpback.wav",
		killme = false
	},
	{
		name = "CSX.M3.R.Boltforward",
		channel = CHAN_ITEM,
		volume = 0.5,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/weapons/m3/pumpforward.wav",
		killme = false
	},
	{
		name = "CSX.M3.R.Shellinsert",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = {
			"arccw_csx/weapons/m3/rl_1.wav",
			"arccw_csx/weapons/m3/rl_2.wav",
			"arccw_csx/weapons/m3/rl_3.wav",
			"arccw_csx/weapons/m3/rl_4.wav",
		},
		killme = false
	},
	// -- TMP
	{
		name = "CSX.TMP.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 100},
		sound = "arccw_csx/weapons/tmp/fire.wav",
		killme = true
	},
	// -- MAC-10
	{
		name = "CSX.MAC10.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {145, 155},
		sound = "weapons/arccw/mac10/mac10_03.wav",
		killme = true
	},
	{
		name = "CSX.MAC10.FireFirst",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {145, 155},
		sound = "weapons/arccw/mac10/mac10_02.wav",
		killme = true
	},
	// -- MP5
	{
		name = "CSX.MP5.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {100, 110},
		sound = "arccw_csx/weapons/mp5/fire.wav",
		killme = true
	},
	{
		name = "CSX.MP5.Silenced",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {100, 110},
		sound = "weapons/arccw/mp5/mp5_01.wav",
		killme = true
	},
	{
		name = "CSX.MP5.Dist",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 100,
		pitch = {95, 105},
		sound = "arccw_csx/weapons/mp5/falloff.wav",
		killme = false
	},
	// -- UMP
	{
		name = "CSX.UMP.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 110},
		sound = "arccw_csx/weapons/ump/fire.wav",
		killme = true
	},
	{
		name = "CSX.UMP.Dist",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 100,
		pitch = {95, 105},
		sound = "arccw_csx/weapons/ump/falloff.wav",
		killme = false
	},
	// -- AUG
	{
		name = "CSX.AUG.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/weapons/aug/fire.wav",
		killme = true
	},
	// -- Scout
	{
		name = "CSX.Scout.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 100},
		sound = "weapons/arccw/ssg08/ssg08_01.wav",
		killme = true
	},
	{
		name = "CSX.Scout.Dist",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 100,
		pitch = {95, 105},
		sound = "weapons/arccw/ssg08/ssg08-1-distant.wav",
		killme = false
	},
	// -- G3
	{
		name = "CSX.G3.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 100},
		sound = { "weapons/arccw/g3sg1/g3sg1_01.wav", "weapons/arccw/g3sg1/g3sg1_02.wav", "weapons/arccw/g3sg1/g3sg1_03.wav" },
		killme = true
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
		name = "CSX.AK47.Silenced",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {90, 100},
		sound = "weapons/arccw/m4a1/m4a1_silencer_01.wav",
		killme = true
	},
	{
		name = "CSX.AK47.Dist",
		channel = CHAN_STATIC,
		volume = 0.1,
		level = 100,
		pitch = {95, 105},
		sound = "arccw_csx/wep/_util/decay_ext.wav",
		killme = false
	},
	{
		name = "CSX.AK47.LFE",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/wep/mp7/fire_lfe.wav",
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
		volume = 0.5,
		level = 65,
		pitch = {95, 105},
		sound = "arccw_csx/fire/bop.wav",
		killme = true
	},
	{
		name = "CSX.GenbopR",
		channel = CHAN_STATIC,
		volume = 0.5,
		level = 65,
		pitch = {80, 95},
		sound = "arccw_csx/fire/bop.wav",
		killme = true
	},
	{
		name = "CSX.GenbopS",
		channel = CHAN_STATIC,
		volume = 0.4,
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



