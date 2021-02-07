local targetStash = nil
local shellType = nil
RegisterNetEvent("esx_inventoryhud:openStashInventory")
AddEventHandler(
    "esx_inventoryhud:openStashInventory",
    function(data, name, target, shell)
        targetStash = target
        shellType = shell
        setStashInventoryData(data, name)
        refreshStashInventory()
        openStashInventory()
    end
)

function refreshStashInventory()
    ESX.TriggerServerCallback(
        "opod-stash:getStashInventory",
        function(inventory)
            setStashInventoryData(inventory)
        end, targetStash)
end

function setStashInventoryData(data, name)
    items = {}

    local blackMoney = data.blackMoney
    local stashItems = data.items
    local cash       = data.cashMoney
    local stashWeapons = data.weapons

    if blackMoney > 0 then
        local accountData = {
            label = _U("black_money"),
            count = blackMoney,
            type = "item_account",
            name = "black_money",
            usable = false,
            rare = false,
            weight = -1,
            canRemove = false
        }
        table.insert(items, accountData)
    end

    if cash > 0 then
        local accountData = {
            label = _U("cash"),
            count = cash,
            type = "item_money",
            name = "cash",
            usable = false,
            rare = false,
            weight = -1,
            canRemove = false
        }
        table.insert(items, accountData)
    end

    for i = 1, #stashItems, 1 do
        local item = stashItems[i]
        local label  = item['label'] or string.gsub(item.name, '_', ' '):gsub('-', ' '):gsub("(%l)(%w*)", function(a,b) return string.upper(a)..b end)

        if item.count > 0 then
            item.type = "item_standard"
            item.usable = false
            item.rare = false
            item.weight = -1
            item.canRemove = false
            item.label = label

            table.insert(items, item)
        end
    end

    for i = 1, #stashWeapons, 1 do
        local weapon = stashWeapons[i]

        if stashWeapons[i].name ~= "WEAPON_UNARMED" then
            table.insert(
                items,
                {
                    label = ESX.GetWeaponLabel(weapon.name),
                    count = weapon.ammo,
                    weight = -1,
                    type = "item_weapon",
                    name = weapon.name,
                    usable = false,
                    rare = false,
                    canRemove = false
                }
            )
        end
    end

    SendNUIMessage(
        {
            action = "setInfoText",
            text = name
        }
    )
    SendNUIMessage(
        {
            action = "setSecondInventoryItems",
            itemList = items
        }
    )
end

function openStashInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
        {
            action = "display",
            type = "stash"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback(
    "PutIntoStash",
    function(data, cb)
        local canPut, eLimit = true, 0
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end        

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            local count = tonumber(data.number)
            TriggerEvent('opod-stash:checkSpace', function(space, limit)
                canPut = space
                eLimit = limit
            end, count, targetStash, shellType)
            if data.item.type == "item_weapon" then
                count = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name))
            end
            Wait(150)
            if canPut then
                TriggerServerEvent("opod-stash:putItem", ESX.GetPlayerData().identifier, data.item.type, data.item.name, count, targetStash)
            else
                -- NOTIFY
            end
        end

        Wait(150)
        refreshStashInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNUICallback(
    "TakeFromStash",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end
        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("opod-stash:getItem", ESX.GetPlayerData().identifier, data.item.type, data.item.name, tonumber(data.number), targetStash)
            openStashInventory()
        end

        Wait(150)
        refreshStashInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)
