QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("fish", function(source, item)
    local chance = math.random(1,100)
	local amount = 1
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) and chance < 75 then
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
        xPlayer.Functions.AddItem("kelp", amount, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["kelp"], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'РАЗФАСОВА УСПЕШНО И ПОЛУЧИ КЕЛП!'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НИЩО НЕ ПОЛУЧИ!'})
    end
    
end)

QBCore.Functions.CreateUseableItem("stingraymeat", function(source, item)
    local chance = math.random(1,100)
	local amount = 2
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) and chance < 35 then
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
        xPlayer.Functions.AddItem("kelp", amount, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["kelp"], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'РАЗФАСОВА УСПЕШНО И ПОЛУЧИ КЕЛП!'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НИЩО НЕ ПОЛУЧИ!'})
    end
    
end)

QBCore.Functions.CreateUseableItem("salmon", function(source, item)
    local chance = math.random(1,100)
	local amount = 2
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) and chance < 45 then
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
        xPlayer.Functions.AddItem("kelp", amount, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["kelp"], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'РАЗФАСОВА УСПЕШНО И ПОЛУЧИ КЕЛП!'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НИЩО НЕ ПОЛУЧИ!'})
    end
    
end)

QBCore.Functions.CreateUseableItem("turtle", function(source, item)
    local chance = math.random(1,100)
	local amount = 5
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) and chance < 15 then
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
        xPlayer.Functions.AddItem("kelp", amount, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["kelp"], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'РАЗФАСОВА УСПЕШНО И ПОЛУЧИ КЕЛП!'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НИЩО НЕ ПОЛУЧИ!'})
    end
    
end)

QBCore.Functions.CreateUseableItem("dolphin", function(source, item)
    local chance = math.random(1,100)
	local amount = 5
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) and chance < 25 then
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
        xPlayer.Functions.AddItem("kelp", amount, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["kelp"], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'РАЗФАСОВА УСПЕШНО И ПОЛУЧИ КЕЛП!'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НИЩО НЕ ПОЛУЧИ!'})
    end
    
end)

QBCore.Functions.CreateUseableItem("octopus", function(source, item)
    local chance = math.random(1,100)
	local amount = 5
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) and chance < 15 then
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
        xPlayer.Functions.AddItem("kelp", amount, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["kelp"], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'РАЗФАСОВА УСПЕШНО И ПОЛУЧИ КЕЛП!'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НИЩО НЕ ПОЛУЧИ!'})
    end
    
end)

QBCore.Functions.CreateUseableItem("piratetreasure", function(source, item)
    local chance = math.random(1,100)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) and chance < 50 then
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
        xPlayer.Functions.AddItem("rolex", Config.AmountTreasure, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["rolex"], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'ВЪТРЕ ИМАШЕ НЕЩО ЛЪСКАВО И СКЪПО!'})
        
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'НЯМАШЕ НИЩО ВЪТРЕ!'})
    end
       
end)

QBCore.Functions.CreateUseableItem("fishicebox", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		TriggerClientEvent('fishing:client:useFishingBox', source, item.info.boxid)  
    end
end)

QBCore.Functions.CreateUseableItem("fishingrod", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)

    TriggerClientEvent('elite-fishing:tryToFish', source)
end)


