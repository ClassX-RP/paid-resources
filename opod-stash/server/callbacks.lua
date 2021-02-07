ESX = nil
TE(Config.SharedObject, function(SharedObject)
	ESX = SharedObject
end)

ESX.RegisterServerCallback('opod-stash:GetStashes', function(source, cb)
	while Opod.StashHouses == nil do Citizen.Wait(0) end
	cb(Opod.StashHouses)
end)

ESX.RegisterServerCallback('opod-stash:TryPurchase', function(source, cb, identifier, placeId, price)
	local result = nil
	MySQL.Async.fetchAll("SELECT * FROM opod_stash WHERE placeId = @id", {
		["@id"] = placeId
	}, function(result)
		if result[1] ~= nil then
			if result[1].owner == '0' then
				local xPlayer = ESX.GetPlayerFromId(source)
				Opod:PurchaseWarehouse(xPlayer, function(bought)
					if bought then
						result = 'purchased'
					end
				end, placeId, identifier, price)
			else
				result = 'taken'
			end
		else
			result = 'error'
		end
		cb(result)
	end)
end)

ESX.RegisterServerCallback('opod-stash:TryUpgrade', function(source, cb, identifier, placeId, price)
	local result = nil
	MySQL.Async.fetchAll("SELECT * FROM opod_stash WHERE placeId = @id", {
		["@id"] = placeId
	}, function(result)
		if result[1] ~= nil then
			if result[1].owner == identifier then
				local xPlayer = ESX.GetPlayerFromId(source)
				if xPlayer.getMoney() - price > 0 then
					result = 'upgraded'
				end
			else
				result = 'taken'
			end
		else
			result = 'error'
		end
		cb(result)
	end)
end)

ESX.RegisterServerCallback('opod-stash:TrySell', function(source, cb, placeId, code, price, index)
	local msg = nil
	local xPlayer = ESX.GetPlayerFromId(source)
	MySQL.Async.fetchAll('SELECT * FROM opod_stash WHERE placeId = @id AND owner = @owner', {
		['@id'] = placeId,
		["@owner"] = xPlayer.identifier
	}, function(result)
		if result[1] ~= nil then
			TriggerClientEvent('opod-stash:DeleteBlips', xPlayer.source, index)
			Opod:SellWarehouse(xPlayer, function(sold)
				if sold then
					msg = 'sold'
					xPlayer.addMoney(price)
				end
			end, placeId, identifier, code, price)
		else
			msg = 'not_owned'
			print(xPlayer.identifier .. ' has tried to sell a property that isnt theirs')
		end
		cb(msg)
	end)
end)

ESX.RegisterServerCallback('opod-stash:CheckIfOnline', function(source, cb, targetId)
	local canRaid = false
	for _, v in ipairs(ESX.GetPlayers()) do
		local xPlayer = ESX.GetPlayerFromId(v)
		if xPlayer.identifier == targetId and xPlayer.job.name ~= Config.PoliceJob then
			TriggerClientEvent('opod-stash:ShowNotification', xPlayer.source, _U('being_raided'), 'error')
			canRaid = true
			break
		end
	end
	cb(canRaid or false)
end)

ESX.RegisterServerCallback('opod-stash:CheckCooldown', function(source, cb)
	local result = nil
	if Opod.Cooldown ~= 0 and os.time() - Opod.Cooldown < Config.RaidSettings.Cooldown * 60 then
		result = false
	else
		result = true
	end

	cb(result, Opod.Cooldown - os.time())
end)

ESX.RegisterServerCallback('opod-stash:getStashInventory', function(source, cb, target)
	local blackMoney = 0
	local cash 		 = 0
	local items      = {}
	local weapons    = {}

	TriggerEvent('esx_addonaccount:getSharedAccount', 'stash_black_money_' .. target, function(account)
		blackMoney = account.money
	end)

	TriggerEvent('esx_addonaccount:getSharedAccount', 'stash_cash_' .. target, function(account)
		cash = account.money
	end)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'stash_' .. target, function(inventory)
		items = inventory.items
	end)

	TriggerEvent('esx_datastore:getSharedDataStore', 'stash_' .. target, function(store)
		weapons = store.get('weapons') or {}
	end)

	cb({
		blackMoney = blackMoney,
		items      = items,
		weapons    = weapons,
		cashMoney  = cash
	})
end)