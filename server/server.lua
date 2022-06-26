QBCore = exports['qb-core']:GetCoreObject()



QBCore.Functions.CreateCallback('elite-fishing:GetItemData', function(source, cb, itemName)
	local retval = false
	local Player = QBCore.Functions.GetPlayer(source)
	if Player ~= nil then 
		if Player.Functions.GetItemByName(itemName) ~= nil then
			retval = true
		end
	end
	
	cb(retval)
end)	



RegisterServerEvent('elite-fishing:receiveFish', function(cabin, house)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemFound = true
    local itemCount = 1
    local chance = math.random(1,100)
    if itemFound then
        for i = 1, itemCount, 1 do
            local randomItem = Config.FishingItems["type"]math.random(1, 2)
            local itemInfo = QBCore.Shared.Items[randomItem]
            if chance < 15 then
                randomItem = "octopus"
                itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerClientEvent('elite-fishing:client:spawnFish', src, 1)
            elseif chance < 25 then
				randomItem = "stingraymeat"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerClientEvent('elite-fishing:client:spawnFish', src, 1)
			elseif chance < 50 then
				randomItem = "salmon"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerClientEvent('elite-fishing:client:spawnFish', src, 1)
            elseif chance < 45 then
				randomItem = "turtle"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerClientEvent('elite-fishing:client:spawnFish', src, 1)
            elseif chance < 35 then
				randomItem = "dolphin"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerClientEvent('elite-fishing:client:spawnFish', src, 1)
			elseif chance < 89 then
				randomItem = "fish"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerClientEvent('elite-fishing:client:spawnFish', src, 1)
            elseif chance <= 100 then
				randomItem = "piratetreasure"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            elseif chance >= 100 then
				randomItem = "anchor"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            elseif chance >= 100 then
				randomItem = "fishingtin"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            elseif chance >= 100 then
				randomItem = "fishingboot"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            end
            Wait(500)
        end
    end
end)



RegisterServerEvent('elite-fishing:sellFish')
AddEventHandler('elite-fishing:sellFish', function()
    local src = source        
    local Player = QBCore.Functions.GetPlayer(src)    
    local price = 0
	if Player ~= nil then
        if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
            for k, v in pairs(Player.PlayerData.items) do 
                if Player.PlayerData.items[k] ~= nil then 
                    if Config.Fishes[Player.PlayerData.items[k].name] ~= nil then 
                        price = price + (Config.Fishes[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                        Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    end
                end
            end 
            Player.Functions.AddMoney("cash", price, "sold-items")
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'ТИ ПРОДАДЕ СТОКАТА НА ЧОВЕКА!' })
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НЯМАШ НИЩО ИНТЕРЕСНО ЗА МЕН!' })
        end
	end
    Wait(10)
end)


RegisterServerEvent('elite-fishing:illegalsellFish')
AddEventHandler('elite-fishing:illegalsellFish', function()
    local src = source        
    local Player = QBCore.Functions.GetPlayer(src)    
    local price = 0
	if Player ~= nil then
        if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
            for k, v in pairs(Player.PlayerData.items) do 
                if Player.PlayerData.items[k] ~= nil then 
                    if Config.Kelp[Player.PlayerData.items[k].name] ~= nil then 
                        price = price + (Config.Kelp[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                        Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    end
                end
            end 
            Player.Functions.AddMoney("cash", price, "sold-items")
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'ЗА ТОЛКОВА СТОКА - ТОЛКОВА ПАРИ ТИ ДАВАМ!' })
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НЯМАШ НИЩО ИНТЕРЕСНО ЗА МЕН!' })
        end
	end
    Wait(10)
end)







