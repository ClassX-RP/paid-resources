--
--  LEAKED BY S3NTEX -- 
--  https://discord.gg/aUDWCvM -- 
--  fivemleak.com -- 
--  fkn crew -- 
ESX.RegisterServerCallback("gcPhone:getCars", function(a, b)
    local c = ESX.GetPlayerFromId(a)
    if not c then
        return
    end;
    MySQL.Async.fetchAll("SELECT Plate, Props, Stored FROM users_vehicles WHERE Identifier = @cid", {["@cid"] = c.identifier}, function(d)
        local e = {} for f, g in ipairs(d) do
            table.insert(e, {["garage"] = g["Stored"], ["plate"] = g["Plate"], ["props"] = json.decode(g["Props"])})
        end;
        b(e)
    end)
end)
RegisterServerEvent("gcPhone:finish")
AddEventHandler("gcPhone:finish", function(a)
    local b = source;
    local c = ESX.GetPlayerFromId(b)
    TriggerClientEvent("esx:showNotification", b, Config.valetPrice .. _U("valet_succ"))
    c.removeAccountMoney("bank", Config.valetPrice)
end)
RegisterServerEvent("gcPhone:valet-car-set-outside")
AddEventHandler("gcPhone:valet-car-set-outside", function(a)
    local b = source;
    local c = ESX.GetPlayerFromId(b)
    if c then
        MySQL.Async.insert("UPDATE users_vehicles SET Stored = @stored WHERE Plate = @plate", {["@plate"] = a, ["@stored"] = 0})
    end
end)
