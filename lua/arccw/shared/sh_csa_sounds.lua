
local sounds_to_make = {
	{
		name = "CSA.HK416.Fire",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/m27/fire.wav",
		killme = false
	},
	{
		name = "CSA.HK416.Fire_Silenced",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/m27/fire_sil.wav",
		killme = false
	},
	{
		name = "CSA.HK416.Dist",
		channel = CHAN_STATIC,
		volume = 0.1,
		level = 100,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_util/decay_ext.wav",
		killme = false
	},
	{
		name = "CSA.HK416.LFE",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/mp7/fire_lfe.wav",
		killme = false
	},
	{
		name = "CSA.Laser",
		channel = CHAN_ITEM,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/mp7/fire_lfe.wav",
		killme = true
	},
	{
		name = "CSA.Cloth.S",
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
		name = "CSA.Laser",
		channel = CHAN_ITEM,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/laser.wav",
		killme = true
	},
	{
		name = "CSA.MMS.FlipUp",
		channel = CHAN_ITEM,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_util/mms_flipup.wav",
		killme = true
	},
	{
		name = "CSA.HK416.R.Futz",
		channel = CHAN_ITEM,
		volume = 0.05,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/ak47/futz.wav",
		killme = true
	},
	{
		name = "CSA.HK416.R.Magout",
		channel = CHAN_ITEM,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_gen-assault/magout.wav",
		killme = true
	},
	{
		name = "CSA.HK416.R.Magin",
		channel = CHAN_ITEM,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_gen-assault/magin.wav",
		killme = true
	},
	{
		name = "CSA.HK416.R.Boltback",
		channel = CHAN_ITEM,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_gen-assault/bb.wav",
		killme = true
	},
	{
		name = "CSA.HK416.R.Boltforward",
		channel = CHAN_ITEM,
		volume = 1.0,
		level = 65,
		pitch = {95, 105},
		sound = "fesiug_bo2/wep/_gen-assault/bf.wav",
		killme = true
	},
} 

ArcCW.CSA.SoundTab = {}

for i, v in ipairs(sounds_to_make) do
	sound.Add(v)
	ArcCW.CSA.SoundTab[v.name] = v
	if v.killme then
		ArcCW.CSA.SoundTab[v.name].killme = v.killme
	end
end



