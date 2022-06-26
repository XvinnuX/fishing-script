QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('elite-bikerental:spawnboat')
AddEventHandler('elite-bikerental:spawnboat', function(data)
    local model = data.model
    local player = PlayerPedId()
    QBCore.Functions.SpawnVehicle(model, function(vehicle)
        SetEntityHeading(vehicle, 340.0)
        TaskWarpPedIntoVehicle(player, vehicle, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
        SetVehicleEngineOn(vehicle, true, true)
        SpawnVehicle = true
    end, Config.BoatSpawn, true)
    Wait(1000)
    local vehicle = GetVehiclePedIsIn(player, false)
    local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
    vehicleLabel = GetLabelText(vehicleLabel)
    local plate = GetVehicleNumberPlateText(vehicle)
    exports['mythic_notify']:DoCustomHudText('inform', 'Взе лодката успешно! После да не забравиш да я върнеш! ', 10000)
end)

RegisterNetEvent('elite-boatrental:return')
AddEventHandler('elite-boatrental:return', function()
    if SpawnVehicle then
        local Player = QBCore.Functions.GetPlayerData()
        exports['mythic_notify']:DoCustomHudText('inform', 'ТИ ВЪРНА ЛОДКАТА!', 5000)
        local car = GetVehiclePedIsIn(PlayerPedId(),true)
        NetworkFadeOutEntity(car, true,false)
        Citizen.Wait(2000)
        QBCore.Functions.DeleteVehicle(car)
    else 
        exports['mythic_notify']:DoCustomHudText('error', 'НЯМА ЛОДКА НА БЛИЗО ЗА ВРЪЩАНЕ!', 5000)
    end
    SpawnVehicle = false
end)

function boatrental()
    local sendMenu = {}
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = "Dinghy",
        txt = "Лодка под наем",
        params = { 
            event = "elite-bikerental:spawnboat",
            args = {
                model = 'dinghy',
            }
        }
    })
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = "Jetmax",
        txt = "Лодка под наем",
        params = { 
            event = "elite-bikerental:spawnboat",
            args = {
                model = 'jetmax',
            }
        }
    })
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = "Marquis",
        txt = "Яхта под наем",
        params = { 
            event = "elite-bikerental:spawnboat",
            args = {
                model = 'marquis',
            }
        }
    })
    
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = "Tug",
        txt = "Кораб под наем",
        params = { 
            event = "elite-bikerental:spawnboat",
            args = {
                model = 'tug',
            }
        }
    })
    
    TriggerEvent('nh-context:sendMenu', sendMenu)
end

function boatreturn()
    local sendMenu = {}
    table.insert(sendMenu,{
        id = 1,
        header = "<h6>Връщане на лодката</h6>",
        txt = "Върнете лодката ,която взехте под наем",
        width = 35
    })
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = "Върни лодка",
        txt = "",
        params = { 
            event = "elite-boatrental:return",
            args = {}
        }
    })
    
    TriggerEvent('nh-context:sendMenu', sendMenu)
end


