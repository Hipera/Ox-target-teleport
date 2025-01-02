ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local function teleportPlayer(coords)
    local playerPed = PlayerPedId()
    SetEntityCoords(playerPed, coords.x, coords.y, coords.z, false, false, false, true)
    TriggerEvent('esx:showNotification', 'You have been teleported!')
end


exports['ox_target']:addSphereZone({
    coords = vector3(200.0, -1000.0, 30.0),
    radius = 1.5,
    options = {
        {
            name = 'teleport',
            label = 'Teleport to Location',
            icon = 'map',
            onSelect = function()
                local teleportCoords = vector3(500.0, -500.0, 30.0)
                teleportPlayer(teleportCoords)
            end
        }
    }
})

exports['ox_target']:addSphereZone({
    coords = vector3(195.6024, -997.7037, 30.0919),
    radius = 1.5,
    options = {
        {
            name = 'teleport',
            label = 'Teleport to Location',
            icon = 'map',
            onSelect = function()
                local teleportCoords = vector3(500.0, -500.0, 30.0)
                teleportPlayer(teleportCoords)
            end
        }
    }
})
