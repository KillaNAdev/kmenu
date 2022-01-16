--- MenuV Menu
---@type Menu
local prevVehicle = nil
local menu = MenuV:CreateMenu(' ', 'Main Menu', 'topcenter', 30, 144, 255, 'size-150', 'example', 'menuv', 'default')
local menu2 = MenuV:CreateMenu('Vehicle Menu', 'Vehicle Menu', 'topcenter', 30, 144, 255,'size-150')
local menu1 = MenuV:CreateMenu('Teleport Menu', 'Teleport Menu', 'topcenter', 30, 144, 255,'size-150')
local menu3 = MenuV:CreateMenu('Weather Menu', 'Weather Menu', 'topcenter', 30, 144, 255,'size-150')
local menu4 = MenuV:CreateMenu('Time & Settings', 'Time & Settings', 'topcenter', 30, 144, 255,'size-150')

local menu_button1 = menu:AddButton({ icon = '➡️', label = 'Teleport Menu', value = menu1, description = 'Teleport Menu' })
local menu_button2 = menu:AddButton({ icon = '🚘', label = 'Vehicle Menu', value = menu2, description = 'Vehicle Menu' })
local menu_button3 = menu:AddButton({ icon = '🌡️', label = 'Weather Menu', value = menu3, description = 'Weather Menu' })
local menu_button4 = menu:AddButton({ icon = '⌚', label = 'Time & Settings', value = menu4, description = 'Time & Settings' })
local checkbox = menu:AddCheckbox({ icon = '🔫', label = 'Spawn AP Pistol', value = 'n' })

Print = print
--Banana

checkbox:On('change', function(item, newValue, oldValue)
    local ped = PlayerPedId()
    if newValue == true then
        ExecuteCommand('ap')
    else
        RemoveAllPedWeapons(ped, true)
    end
end)



menu1:On('open', function(item)
    menu1:ClearItems() 
    local elements = {
        [1] = {
            icon = '🔴',
            label = 'RedZone',
            value = "1",
            description = 'SELECT TO TELEPORT TO REDZONE'
        },
        [2] = {
            icon = '💊',
            label = 'Opium',
            value = "2",
            description = 'SELECT TO TELEPORT TO OPIUM'
        },
        [3] = {
            icon = '🍀',
            label = 'Weed Ramp',
            value = "3",
            description = 'SELECT TO TELEPORT TO WEED RAMP'
        },
        [4] = {
            icon = '🏞️',
            label = 'Park Ramp',
            value = "4",
            description = 'SELECT TO TELEPORT TO PARK RAMP'
        },
     
     
        [5] = {
            icon = '✈️',
            label = 'Airport Ramps',
            value = "5",
            description = 'SELECT TO TELEPORT TO AIRPORT RAMPS'
        },
        [6] = {
            icon = '🏜️',
            label = '4V4 Arena',
            value = "6",
            description = 'SELECT TO TELEPORT TO 4V4 ARENA'
        },
    
        [7] = {
            icon = '🔫',
            label = 'Mini [FFA]',
            value = "7",
            description = 'SELECT TO TELEPORT TO MINI FFA'
        },
        [8] = {
            icon = '🔫',
            label = 'Soccer Arena',
            value = "8",
            description = 'SELECT TO TELEPORT TO SOCCER'
        },
        [9] = {
            icon = '🔫',
            label = '1V1s',
            value = "9",
            description = 'SELECT TO TELEPORT TO Sky Ramps'
        },
    } 
    for k,v in ipairs(elements) do
        menu1:AddButton({icon = v.icon,label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            openTeleport(selection.value)
        end})
    end
end)
menu4:On('open', function(item)
    menu4:ClearItems() 
    local elements = {
        [1] = {
            icon = '🌄',
            label = 'Sunny',
            value = "1",
            description = 'Changed Time To Sunny. "CLIENT SIDED ONLY"'
        },

        [2] = {
            icon = '🌌',
            label = 'Night',
            value = "2",
            description = 'Changed Time To Night. "CLIENT SIDED ONLY"'
        },

        [3] = {
            icon = '🌅',
            label = 'Morning',
            value = "3",
            description = 'Changed Time To Morning. "CLIENT SIDED ONLY"'
        },

        [4] = {
            icon = '🌆',
            label = 'Dusk',
            value = "4",
            description = 'Changed Time To Dusk. "CLIENT SIDED ONLY"'
        },

        [5] = {
            icon = '🌌',
            label = 'Earlier Morning',
            value = "5",
            description = 'Changed Time To Earlier Morning. "CLIENT SIDED ONLY"'
        },

    } 
    for k,v in ipairs(elements) do
        menu4:AddButton({icon = v.icon,label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            iseeyou(selection.value)
        end})
    end
end)
menu3:On('open', function(item)
    menu3:ClearItems() 
    local elements = {
        [1] = {
            icon = '☀️',
            label = 'Sunny',
            value = "1",
            description = 'Change Weather To Sunny. "CLIENT SIDED ONLY"'
        },
        [2] = {
            icon = '☃️',
            label = 'Snowy',
            value = "2",
            description = 'Change Weather To Snowy. "CLIENT SIDED ONLY"'
        },
        [3] = {
            icon = '☔',
            label = 'Rain',
            value = "3",
            description = 'Change Weather To Rain. "CLIENT SIDED ONLY"'
        },
        [4] = {
            icon = '🌫️',
            label = 'Foggy',
            value = "4",
            description = 'Change Weather To Foggy. "CLIENT SIDED ONLY"'
        },
        [5] = {
            icon = '🌇',
            label = 'Clear',
            value = "5",
            description = 'Change Weather To Clear. "CLIENT SIDED ONLY"'
        },

        [6] = {
            icon = '👻',
            label = 'Halloween',
            value = "6",
            description = 'Change Weather To Halloween. "CLIENT SIDED ONLY"'
        },
       
    } 
    for k,v in ipairs(elements) do
        menu3:AddButton({icon = v.icon,label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            Usage(selection.value)
        end})
    end
end)

menu2:On('open', function(item)
    menu2:ClearItems() 
    local elements = {
        [1] = {
            icon = '🚗',
            label = 'Divo',
            value = "divo",
            description = 'SELECT TO SPAWN IN A DIVO'
        },
        [2] = {
            icon = '🚗',
            label = 'Adder',
            value = "adder",
            description = 'SELECT TO SPAWN IN A Adder'
        },

        [3] = {
            icon = '🚇',
            label = 'Bus',
            value = "bus",
            description = 'SELECT TO SPAWN IN A BUS'
        },
    } 
    for k,v in ipairs(elements) do
        menu2:AddButton({icon = v.icon,label = v.label,value = v,description = v.description,select = function(btn)
            local selection = btn.Value
            carro(selection.value)
        end})
    end
end)
function Notification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	DrawNotification(true, true)
end

function carro(carro)
    local Playercoords = GetEntityCoords(PlayerPedId())
    local redZoneDist = GetDistanceBetweenCoords(Playercoords, vector3(217.0712,-2547.9802,6.1853))
    if redZoneDist <= 100 then
        RequestModel(GetHashKey(carro))
        while not HasModelLoaded(GetHashKey(carro)) do
            Citizen.Wait(100)
        end
        local playerPed = PlayerPedId()
        local pos = GetEntityCoords(playerPed)
        local vehicle = CreateVehicle(GetHashKey(carro), pos.x, pos.y, pos.z, GetEntityHeading(playerPed), true, false)
        SetPedIntoVehicle(playerPed, vehicle, -1)
        if prevVehicle ~= nil then
            SetEntityAsMissionEntity(prevVehicle, true, true)
            DeleteVehicle(prevVehicle)
        end
        prevVehicle = vehicle
    else
        Notification('~w~You cannot spawn a vehicle in this location.')
    end
end

function openTeleport(value)
    local ped = PlayerPedId()
    if value == '1' then
        SetEntityCoords(ped, 1407.5122, 3079.0706, 128.5744)
    elseif value == '2' then
        SetEntityCoords(ped, 217.0712,-2547.9802,6.1853)
    elseif value == '3' then
        SetEntityCoords(ped, -239.33, -1576.631, 33.73)
    elseif value == '4' then
        SetEntityCoords(ped, -958.5878, -780.1922, 17.836)
    elseif value == '5' then
        SetEntityCoords(ped, -1028.86, -3466.86, 14.15)
    elseif value == '6' then
        SetEntityCoords(ped, 2002.58, 2784.13, 52.92)
    elseif value == '7' then
        SetEntityCoords(ped, -2175.542, 6287.413, 434.205)
    elseif value == '8' then
        SetEntityCoords(ped, 771.3105, -233.3794, 68.11452)
    elseif value == '9' then
        SetEntityCoords(ped, -2110.932, -1639.801, 606.256    )
    end
end
 --
RegisterCommand("ap", function()
    GiveWeaponToPed(PlayerPedId(), "WEAPON_APPISTOL", 9999, false, true)
end)
RegisterCommand("banana", function()
    GiveWeaponToPed(PlayerPedId(), "WEAPON_COMBATPISTOL", 9999, false, true)
end)
--banana
function iseeyou(value)
    local ped = PlayerPedId()
    if value == '1' then
        NetworkOverrideClockTime(hour or 12, minute or 1, 0)
        Print("Time Changing.")
        Notification("Time Changing.")
    elseif value == '2' then
        NetworkOverrideClockTime(hour or 1, minute or 0, 0)

            Print("Time Changing.")
            Notification("Time Changing.")

    elseif value == '3' then
        NetworkOverrideClockTime(hour or 8, minute or 0, 0)
            Print("Time Changing.")
            Notification("Time Changing.")   
         elseif value == '4' then
            NetworkOverrideClockTime(hour or 19, minute or 0, 0)

        Print("Time Changing.")
        Notification("Time Changing.")
           elseif value == '5' then
            NetworkOverrideClockTime(hour or 6, minute or 0, 0)
        Print("Time Changing.")
        Notification("Time Changing.")
        end
end
function Usage(value)
    local ped = PlayerPedId()
    if value == '1' then
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypePersist("EXRTASUNNY")
        SetWeatherTypeNow("EXRTASUNNY")
        SetWeatherTypeNowPersist("EXRTASUNNY")
        Print("Weather Changing.")
        Notification("Weather Changing.")
    elseif value == '2' then
        Print("Weather Changing.")
        ClearOverrideWeather()
            ClearWeatherTypePersist()
            SetWeatherTypePersist("XMAS")
            SetWeatherTypeNow("XMAS")
            SetWeatherTypeNowPersist("XMAS")
            Notification("Weather Changing.")

    elseif value == '3' then
        Print("Weather Changing.")
        ClearOverrideWeather()
            ClearWeatherTypePersist()
            SetWeatherTypePersist("RAIN")
            SetWeatherTypeNow("RAIN")
            SetWeatherTypeNowPersist("RAIN")
            Notification("Weather Changing.")
    elseif value == '4' then
        Print("Weather Changing.")
        NetworkOverrideClockTime(hour or 19, minute or 0, 0)
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypePersist("FOGGY")
        SetWeatherTypeNow("FOGGY")
        SetWeatherTypeNowPersist("FOGGY") 
        Notification("Weather Changing.")
       elseif value == '5' then
        Print("Weather Changing.")
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypePersist("CLEAR")
        SetWeatherTypeNow("CLEAR")
        SetWeatherTypeNowPersist("CLEAR") 
        Notification("Weather Changing.")
       elseif value == '6' then 
        Print("Weather Changing.")
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypePersist("HALLOWEEN")
        SetWeatherTypeNow("HALLOWEEN")
        SetWeatherTypeNowPersist("HALLOWEEN") 
        Notification("Weather Changing.")
    end
end



menu:OpenWith('KEYBOARD', 'K') 