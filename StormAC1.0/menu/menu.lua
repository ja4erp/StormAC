Storm_AC = {}

local menu = MenuV:CreateMenu(' ', 'Admin menu ', 'topleft', 255, 0, 0, 'size-150', 'default_native', 'menuv', 'admin_namespace')

local dv = menu:AddButton({ icon = '', label = '❌|Delete Vehicle', value = false })
local heal = menu:AddButton({ icon = '', label = '❤️|Heal Player', value = false })
local deleteGun = menu:AddCheckbox({ icon = '', label = '♻️|Delete things', value = false })
local noclip = menu:AddCheckbox({ icon = '', label = '🚀|Noclip', value = false })
local clearloadout = menu:AddButton({ label = '🔫|Clear Loadout'})
local coords = menu:AddButton({ label = '📍|Get Coords'})
--#######################################################################################################################################################################
-- delete Vehicle
dv:On('select', function(i)
    TriggerEvent( "R1-DeleteVehicle:deleteVehicle" )
end)
-- eal
heal:On('select', function(i)
    SetEntityHealth(PlayerPedId(), 200)
    notify("Player Healed")
end)



coords:On('select', function(i)
    local coords = GetEntityCoords(GetPlayerPed(-1))
    notify(coords .. "")
    clipboard(coords)
end)
  

clearloadout:On('select', function(i)
    RemoveAllPedWeapons(GetPlayerPed(-1), p1)
end)


RegisterNetEvent('permission')
AddEventHandler('permission', function(permission)
    if permission then
        MenuV:OpenMenu(menu)
        notify("Admin Menu")
    else
        TriggerEvent('chat:addMessage', {
            args = { 'You do not have permission ;)' }
        })
    end
end)
---------------------------------------------------------------

RegisterCommand("Stormmenu", function(source, args, rawCommand)
    TriggerServerEvent('verifyPermission')
end)




function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end
--delete car
AddEventHandler("R1-DeleteVehicle:deleteVehicle", function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= 0 then
        SetEntityAsMissionEntity(vehicle, true, true)
        DeleteVehicle(vehicle)
    end
end)

--delete things
local deleteGunEnabled = false

deleteGun:On('check', function(item)
    GiveWeaponToPed(GetPlayerPed(-1), `WEAPON_PISTOL`, 250, false, true)
    deleteGunEnabled = true
    notify("Delete things Enabled")
end)

deleteGun:On('uncheck', function(item)
    RemoveWeaponFromPed(GetPlayerPed(-1), `WEAPON_PISTOL`)
    deleteGunEnabled = false
    notify("Delete things Disabled")
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if deleteGunEnabled and IsPedShooting(GetPlayerPed(-1)) then
            local entity = getEntityPlayerIsAimingAt(PlayerId())
            if entity then
                SetEntityAsMissionEntity(entity, true, true)
                DeleteEntity(entity)
            end
        end
    end
end)

function getEntityPlayerIsAimingAt(player)
    local _, entity = GetEntityPlayerIsFreeAimingAt(player)
    return entity
end
--noclip
local noclipEnabled = false
local noclipSpeed = 1.0

noclip:On('check', function(item)
    noclipEnabled = true
    notify("Noclip Enabled")
end)

noclip:On('uncheck', function(item)
    noclipEnabled = false
    notify("Noclip Disabled")
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if noclipEnabled then
            local playerPed = PlayerPedId()
            local x, y, z = getPosition()
            local dx, dy, dz = getCamDirection()
            local speed = noclipSpeed

            -- check if shift key or sprint key is pressed
            if IsControlPressed(0, 21) or IsControlPressed(0, 22) then
                speed = noclipSpeed * 3
            end

            -- reset velocity
            SetEntityVelocity(playerPed, 0.0001, 0.0001, 0.0001)

            -- forward
            if IsControlPressed(0, 32) then
                x = x + speed * dx
                y = y + speed * dy
                z = z + speed * dz
            end

            -- backward
            if IsControlPressed(0, 269) then
                x = x - speed * dx
                y = y - speed * dy
                z = z - speed * dz
            end

            SetEntityCoordsNoOffset(playerPed, x, y, z, true, true, true)
            SetEntityVisible(playerPed, false, false)
            SetEntityCollision(playerPed, false, false)
        else
            SetEntityVisible(PlayerPedId(), true, false)
            SetEntityCollision(PlayerPedId(), true, true)
        end
    end
end)

function getPosition()
    local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
    return x,y,z
end

function getCamDirection()
    local heading = GetGameplayCamRelativeHeading()+GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()

    pitch = pitch + 2.0

    local x = -math.sin(heading*math.pi/180.0)
    local y = math.cos(heading*math.pi/180.0)
    local z = math.sin(pitch*math.pi/180.0)

    local len = math.sqrt(x*x+y*y+z*z)
    if len ~= 0 then
        x = x/len
        y = y/len
        z = z/len
    end

    return x,y,z
end 
RegisterKeyMapping('stormmenu', "Admin Menu", 'keyboard', 'INSERT')





