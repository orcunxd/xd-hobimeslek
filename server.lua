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

-- Mandalin
RegisterNetEvent("xdMandalinToplama")
AddEventHandler("xdMandalinToplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("mandalin", math.random(Config.MeslekMin,Config.MeslekMax))
end)

RegisterNetEvent("xdMandalinIsleme")
AddEventHandler("xdMandalinIsleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("mandalin", Config.MandalinIslemeMiktar) then
            xPlayer.Functions.AddItem("mandalinsuyu", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Mandalinin suyunu sıktın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince mandalinin yok!', length = 2500})
    end
end)

RegisterNetEvent("xdMandalinSatis")
AddEventHandler("xdMandalinSatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("mandalinsuyu", Config.MandalinsatisMiktar) then
        xPlayer.Functions.AddMoney(Config.MeslekOdeme, Config.MandalinFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Mandalin suyunu sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince mandalin suyun yok!', length = 2500})
    end
end)


-- Bal
RegisterNetEvent("xdBalToplama")
AddEventHandler("xdBalToplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("Bal", math.random(Config.MeslekMin,Config.MeslekMax))
end)

RegisterNetEvent("xdBalIsleme")
AddEventHandler("xdBalIsleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("bal", Config.BalIslemeMiktar) then
            xPlayer.Functions.AddItem("kavanozbal", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Balı kavanozladın', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince balın yok!', length = 2500})
    end
end)

RegisterNetEvent("xdBalSatis")
AddEventHandler("xdBalSatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("kavanozbal", Config.BalsatisMiktar) then
        xPlayer.Functions.AddMoney(Config.MeslekOdeme, Config.BalFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Kavanoz balı sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince kavanoz balın yok!', length = 2500})
    end
end)
