local QBCore = exports['qb-core']:GetCoreObject()


-- target interactions
CreateThread(function()
    exports['qb-target']:AddTargetModel('s_m_y_chef_01', {
        options = {

            {
                action = function()
                    boatrental()
                end,
                icon = "fas fa-car",
                label = "Наеми лодка"
            },
            {
                action = function()
                    boatreturn()
                end,
                icon = "fas fa-car",
                label = "Върни лодка"
            },
           
            
        },
        distance = 2.5
    }) 
    exports['qb-target']:AddTargetModel('s_m_m_migrant_01', {
        options = {
            {
                type = "server",
                event = "elite-fishing:sellFish",
                icon = "fas fa-fish",
                label = "Продай рибите",
            },
            {
                type = "server",
                event = "elite-fishing:illegalsellFish",
                icon = "fas fa-fish",
                label = "Продай предмети",
            },
            {
                type = "client",
                event = "elite-fishing:Shop",
                icon = "fas fa-fish",
                label = "Магазин",
            },
            
        },
        distance = 2.5
    }) 

    
end)


RegisterNetEvent('fishing:client:useFishingBox', function(BoxId)
	TriggerServerEvent("inventory:server:OpenInventory", "stash", 'Хладилна чанта', {maxweight = 200000, slots = 10})
	TriggerEvent("inventory:client:SetCurrentStash", 'Хладилна чанта') 
end) 

