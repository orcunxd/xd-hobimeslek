local QBCore = exports['qb-core']:GetCoreObject()


-- Karpuz
RegisterNetEvent("xdKarpuzToplama")
AddEventHandler("xdKarpuzToplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("karpuz", math.random(Config.MeslekMin,Config.MeslekMax))
end)

RegisterNetEvent("xdKarpuzIsleme")
AddEventHandler("xdKarpuzIsleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("karpuz", Config.KarpuzIslemeMiktar) then
            xPlayer.Functions.AddItem("karpuzsuyu", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Karpuzun suyunu sıktın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince karpuzun yok!', length = 2500})
    end
end)

RegisterNetEvent("xdKarpuzSatis")
AddEventHandler("xdKarpuzSatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("karpuzsuyu", Config.KarpuzsatisMiktar) then
        xPlayer.Functions.AddMoney(Config.MeslekOdeme, Config.KarpuzFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Karpuz suyunu sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince karpuz suyun yok!', length = 2500})
    end
end)

-- Portakal
RegisterNetEvent("xdPortakalToplama")
AddEventHandler("xdPortakalToplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("portakal", math.random(Config.MeslekMin,Config.MeslekMax))
end)

RegisterNetEvent("xdPortakalIsleme")
AddEventHandler("xdPortakalIsleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("portakal", Config.PortakalIslemeMiktar) then
            xPlayer.Functions.AddItem("portakalsuyu", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Portakalın suyunu sıktın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince portakalın yok!', length = 2500})
    end
end)

RegisterNetEvent("xdPortakalSatis")
AddEventHandler("xdPortakalSatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("portakalsuyu", Config.PortakalSatisMiktar) then
        xPlayer.Functions.AddMoney(Config.MeslekOdeme, Config.PortakalFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Portakal sularını sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince portakal suyun yok!', length = 2500})
    end
end)
