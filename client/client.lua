local QBCore = exports['qb-core']:GetCoreObject()

cachedData = {}
local JobBusy = false
local blips = {
     {title="Морски бар", colour=67, id=68, x = -3428.1, y = 952.1, z = 8.35},
	 {title="Морски магазин", colour=67, id=68, x = -3047.66, y = 590.94, z = 7.75} 
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.8)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


	

function DeleteBlips()
	if DoesBlipExist(coords) then
		RemoveBlip(coords)
	end
end




RegisterNetEvent("elite-fishing:tryToFish", function()
	TryToFish() 
end)

RegisterNetEvent("elite-fishing:calculatedistances", pos, function()

end)




CreateThread(function()
	Wait(500)
	while true do
		local sleepThread = 500
		local ped = cachedData["ped"]
		if DoesEntityExist(cachedData["storeOwner"]) then
			local pedCoords = GetEntityCoords(ped)
			local dstCheck = #(pedCoords - GetEntityCoords(cachedData["storeOwner"]))
	
		end
		Wait(sleepThread)
	end
end)

CreateThread(function()
	while true do
		Wait(1500)

		local ped = PlayerPedId()

		if cachedData["ped"] ~= ped then
			cachedData["ped"] = ped
		end
	end
end)

RegisterNetEvent('elite-fishing:Shop')
AddEventHandler('elite-fishing:Shop',function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "shop", Config.Items)
end)
