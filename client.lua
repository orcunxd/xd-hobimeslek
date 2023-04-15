local availableActions = {}
--Toplama

--Karpuz Toplama
local cord = Config.KarpuzToplama
local sonKarpuz = 1

Citizen.CreateThread(function()
    while true do
        local sleep = 2000
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local dst = GetDistanceBetweenCoords(playercoords, Config.KarpuzToplama[sonKarpuz].x, Config.KarpuzToplama[sonKarpuz].y, Config.KarpuzToplama[sonKarpuz].z, true)
        local dst2 = GetDistanceBetweenCoords(playercoords, Config.KarpuzToplama[sonKarpuz].x, Config.KarpuzToplama[sonKarpuz].y, Config.KarpuzToplama[sonKarpuz].z, true)
        if dst2 < 4 then
            sleep = 2
            DrawMarker(2, Config.KarpuzToplama[sonKarpuz].x, Config.KarpuzToplama[sonKarpuz].y, Config.KarpuzToplama[sonKarpuz].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 100, 0, 254, 150, 0, 0, 0, 0, 0, 0, 0)
            DrawText3Ds(Config.KarpuzToplama[sonKarpuz].x, Config.KarpuzToplama[sonKarpuz].y, Config.KarpuzToplama[sonKarpuz].z + 0.3, '[E] Karpuz Topla')
            if dst2 < 1 then
                if IsControlJustReleased(0, 38) then
                    sonKarpuz = math.random(1, #Config.KarpuzToplama)
                    KarpuzTopla()
                end
            end
        end
        Citizen.Wait(sleep)
    end
end)

function KarpuzTopla()
    if not topluyormu then
        topluyormu = true
        exports['progressbar']:Progress({
            name = "KarpuzTopla",
            duration = 2000,
            label = 'Karpuz topluyorsun...',
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "mp_arresting",
                anim = "a_uncuff",
                flags = 49,
            },
        }, function(cancelled)
            if not cancelled then
                TriggerServerEvent('xdKarpuzToplama')
                topluyormu = false
            else
            end
        end)
    end
end

-- Portakal Toplama
local cord = Config.PortakalToplama
local sonPortakal = 1

Citizen.CreateThread(function()
    while true do
        local sleep = 2000
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local dst = GetDistanceBetweenCoords(playercoords, Config.PortakalToplama[sonPortakal].x, Config.PortakalToplama[sonPortakal].y, Config.PortakalToplama[sonPortakal].z, true)
        local dst2 = GetDistanceBetweenCoords(playercoords, Config.PortakalToplama[sonPortakal].x, Config.PortakalToplama[sonPortakal].y, Config.PortakalToplama[sonPortakal].z, true)
        if dst2 < 4 then
            sleep = 2
            DrawMarker(2, Config.PortakalToplama[sonPortakal].x, Config.PortakalToplama[sonPortakal].y, Config.PortakalToplama[sonPortakal].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 100, 0, 254, 150, 0, 0, 0, 0, 0, 0, 0)
            DrawText3Ds(Config.PortakalToplama[sonPortakal].x, Config.PortakalToplama[sonPortakal].y, Config.PortakalToplama[sonPortakal].z + 0.3, '[E] Portakal Topla')
            if dst2 < 1 then
                if IsControlJustReleased(0, 38) then
                    sonPortakal = math.random(1, #Config.PortakalToplama)
                    PortakalTopla()
                end
            end
        end
        Citizen.Wait(sleep)
    end
end)

function PortakalTopla()
    if not topluyormu then
        topluyormu = true
        exports['progressbar']:Progress({
            name = "PortakalTopla",
            duration = 2000,
            label = 'Portakal topluyorsun...',
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "mp_arresting",
                anim = "a_uncuff",
                flags = 49,
            },
        }, function(cancelled)
            if not cancelled then
                TriggerServerEvent('xdPortakalToplama')
                topluyormu = false
            else
            end
        end)
    end
end

--İşleme

--Karpuz
local cord = Config.xdKarpuzIsleme

Citizen.CreateThread(function()
    local sleep = 2000
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
        if distance < 5 then
            sleep = 0
            DrawMarker(22,cord.x, cord.y, cord.z,0.0, 0.0, 0.0, 0.0, 0, 0.0, Config.markerboyutu, Config.markerboyutu, Config.markerboyutu, 255, 255, 0, 50, false, true, 2, nil, nil, false)
            if distance < 2 then
                DrawText3D(cord.x,cord.y,cord.z, '[E] Karpuzların Suyunu Sık!')
                if IsControlJustReleased(0, 38) then
                    exports['ps-ui']:Circle(function(success)
                        if success then
                            TriggerServerEvent("xdKarpuzIsleme")
                        end
                    end)
                end
            else
                sleep = 1000
            end
        end
        Wait(sleep)
    end
end)

-- Portakal
local cord = Config.xdPortakalIsleme

Citizen.CreateThread(function()
    local sleep = 2000
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
        if distance < 5 then
            sleep = 0
            DrawMarker(22,cord.x, cord.y, cord.z,0.0, 0.0, 0.0, 0.0, 0, 0.0, Config.markerboyutu, Config.markerboyutu, Config.markerboyutu, 255, 255, 0, 50, false, true, 2, nil, nil, false)
            if distance < 2 then
                DrawText3D(cord.x,cord.y,cord.z, '[E] Portakalların Suyunu Sık!')
                if IsControlJustReleased(0, 38) then
                    exports['ps-ui']:Circle(function(success)
                        if success then
                            TriggerServerEvent("xdPortakalIsleme")
                        end
                    end)
                end
            else
                sleep = 1000
            end
        end
        Wait(sleep)
    end
end)


-- Satış

--Karpuz
local cord = Config.xdKarpuzSatis

Citizen.CreateThread(function()
    local sleep = 2000
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
        if distance < 5 then
            sleep = 0
            DrawMarker(22,cord.x, cord.y, cord.z,0.0, 0.0, 0.0, 0.0, 0, 0.0, Config.markerboyutu, Config.markerboyutu, Config.markerboyutu, 255, 255, 0, 50, false, true, 2, nil, nil, false)
            if distance < 2 then
                DrawText3D(cord.x,cord.y,cord.z, '[E] Karpuz Sularını Sat')
                if IsControlJustReleased(0, 38) then
                    exports['ps-ui']:Circle(function(success)
                        if success then
                            TriggerServerEvent("xdKarpuzsatis")
                        end
                    end)
                end
            else
                sleep = 1000
            end
        end
        Wait(sleep)
    end
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end

--Portakal
local cord = Config.xdPortakalSatis

Citizen.CreateThread(function()
    local sleep = 2000
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
        if distance < 5 then
            sleep = 0
            DrawMarker(22,cord.x, cord.y, cord.z,0.0, 0.0, 0.0, 0.0, 0, 0.0, Config.markerboyutu, Config.markerboyutu, Config.markerboyutu, 255, 255, 0, 50, false, true, 2, nil, nil, false)
            if distance < 2 then
                DrawText3D(cord.x,cord.y,cord.z, '[E] Portakal Sularını Sat')
                if IsControlJustReleased(0, 38) then
                    exports['ps-ui']:Circle(function(success)
                        if success then
                            TriggerServerEvent("xdPortakalSatis")
                        end
                    end)
                end
            else
                sleep = 1000
            end
        end
        Wait(sleep)
    end
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end


--blips

if Config.xdblipac then
    --Karpuz
    CreateThread(function()
        local blip = AddBlipForCoord(Config.KarpuzToplamaBlip.x, Config.KarpuzToplamaBlip.y, Config.KarpuzToplamaBlip.z)
        SetBlipSprite(blip, 238)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.KarpuzToplamaBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
    CreateThread(function()
        local blip = AddBlipForCoord(Config.KarpuzIslemeBlip.x, Config.KarpuzIslemeBlip.y, Config.KarpuzIslemeBlip.z)
        SetBlipSprite(blip, 238)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.KarpuzIslemeBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
    CreateThread(function()
        local blip = AddBlipForCoord(Config.KarpuzSatisBlip.x, Config.KarpuzSatisBlip.y, Config.KarpuzSatisBlip.z)
        SetBlipSprite(blip, 238)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.KarpuzSatisBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
    --Portakal
    CreateThread(function()
        local blip = AddBlipForCoord(Config.PortakalToplamaBlip.x, Config.PortakalToplamaBlip.y, Config.PortakalToplamaBlip.z)
        SetBlipSprite(blip, 238)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.PortakalToplamaBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
    CreateThread(function()
        local blip = AddBlipForCoord(Config.PortakalIslemeBlip.x, Config.PortakalIslemeBlip.y, Config.PortakalIslemeBlip.z)
        SetBlipSprite(blip, 238)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.PortakalIslemeBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
    CreateThread(function()
        local blip = AddBlipForCoord(Config.PortakalSatisBlip.x, Config.PortakalSatisBlip.y, Config.PortakalSatisBlip.z)
        SetBlipSprite(blip, 238)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.PortakalSatisBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
end


-- NPC
-- Karpuz NPC
local NPC = Config.KarpuzSatisNPC
Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_autoshop_01")) -- ped kodu
    npc = CreatePed(1, GetHashKey("s_m_m_autoshop_01"), NPC.x, NPC.y, NPC.z -1, false, true) -- ped kodu ve kordinatı
    SetEntityHeading(npc, NPC.w)
    SetPedCombatAttributes(npc, 46, true)              
    SetPedFleeAttributes(npc, 0, 0)              
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
end)
local NPC = Config.KarpuzIslemeNPC
Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_autoshop_01")) -- ped kodu
    npc = CreatePed(1, GetHashKey("s_m_m_autoshop_01"), NPC.x, NPC.y, NPC.z -1, false, true) -- ped kodu ve kordinatı
    SetEntityHeading(npc, NPC.w)
    SetPedCombatAttributes(npc, 46, true)              
    SetPedFleeAttributes(npc, 0, 0)              
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
end)

-- Portakal NPC
local NPC = Config.PortakalSatisNPC
Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_autoshop_01")) -- ped kodu
    npc = CreatePed(1, GetHashKey("s_m_m_autoshop_01"), NPC.x, NPC.y, NPC.z -1, false, true) -- ped kodu ve kordinatı
    SetEntityHeading(npc, NPC.w)
    SetPedCombatAttributes(npc, 46, true)              
    SetPedFleeAttributes(npc, 0, 0)              
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
end)
local NPC = Config.PortakalIslemeNPC
Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_autoshop_01")) -- ped kodu
    npc = CreatePed(1, GetHashKey("s_m_m_autoshop_01"), NPC.x, NPC.y, NPC.z -1, false, true) -- ped kodu ve kordinatı
    SetEntityHeading(npc, NPC.w)
    SetPedCombatAttributes(npc, 46, true)              
    SetPedFleeAttributes(npc, 0, 0)              
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
end)
