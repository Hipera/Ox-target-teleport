-- YOU CAN ADD MULTIPLE TELEPORTS

ESX = exports["es_extended"]:getSharedObject()

-- Get ESX instance
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- Function to teleport the player
local function teleportPlayer(coords)
    local playerPed = PlayerPedId()
    SetEntityCoords(playerPed, coords.x, coords.y, coords.z, false, false, false, true)
    TriggerEvent('esx:showNotification', 'You have been teleported!')
end

-- Targeting setup for teleportation
exports['ox_target']:addSphereZone({
    coords = vector3(200.0, -1000.0, 30.0), -- Location where the target will be
    radius = 1.5,
    options = {
        {
            name = 'teleport',
            label = 'Teleport to Location',
            icon = 'map', -- Changed to a map icon
            onSelect = function()
                local teleportCoords = vector3(500.0, -500.0, 30.0) -- location that you will teleport to
                teleportPlayer(teleportCoords)
            end
        }
    }
})

exports['ox_target']:addSphereZone({
    coords = vector3(195.6024, -997.7037, 30.0919), -- Location where the target will be
    radius = 1.5,
    options = {
        {
            name = 'teleport',
            label = 'Teleport to Location',
            icon = 'map', -- Changed to a map icon
            onSelect = function()
                local teleportCoords = vector3(500.0, -500.0, 30.0) -- location that you will teleport to
                teleportPlayer(teleportCoords)
            end
        }
    }
})
