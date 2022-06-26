Config = {}

Config.Debug = false
Config.JobBusy = false

Config.MarkerData = {
    ["type"] = 6,
    ["size"] = vector3(2.0, 2.0, 2.0),
    ["color"] = vector3(0, 255, 150)
}



Config.Invincible = true 
Config.Frozen = true 
Config.Stoic = true 
Config.FadeIn = true 
Config.DistanceSpawn = 20.0 

Config.MinusOne = true 

Config.GenderNumbers = { 
	['male'] = 4,
	['female'] = 5
}

Config.Zones = { 
    {['x'] = 3558.16, ['y'] = 5272.92, ['z'] = 0.01}
}

Config.PedList = { 
	-- Легален
	{
		model = `s_m_y_chef_01`, 
		coords = vector4(-3428.1, 952.1, 8.35, 359.24), 
		gender = 'male' 
	},

    --Нелегален
    {
		model = `s_m_m_migrant_01`, 
		coords = vector4(-3047.55, 590.24, 7.77, 18.34), 
		gender = 'male' 
	},


}

Config.Fishes = {
    ["fish"]  = 5,
    ["stingraymeat"] = 25,
    ["salmon"] = 50,
    ["turtle"] = 69, 
    ["dolphin"] = 20,  
    ["octopus"] = 100, 
}

Config.Kelp = {
    ["kelp"]  = 50,
    ["anchor"]  = 100,
    ["fishingtin"]  = 5,
    ["fishingboot"]  = 15,
}


Config.BankMoney = math.random(150,250)

Config.FishingItems = {
    ["rod"] = {
        ["name"] = "fishingrod",
        ["label"] = "Въдица"
    },
    ["bait"] = {
        ["name"] = "fishingbait",
        ["label"] = "Стръв"
    },
   
}


Config.Items = {
    label = "Рибен магазин",
    slots = 2,
    items = {
        [1] = { name = "fishingrod", price = 800, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "fishingbait", price = 5, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "fishicebox", price = 150, amount = 50, info = {}, type = "item", slot = 3, },
    }
}


Config.BoatSpawn = vector4(-3441.51, 945.51, -0.2, 183.06)


Config.AmountTreasure = 1

