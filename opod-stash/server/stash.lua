RNE('opod-stash:getItem', function(owner, type, item, count, target)
	local _source      = source
	local xPlayer      = ESX.GetPlayerFromId(_source)

	if type == 'item_standard' then


        TE('esx_addoninventory:getSharedInventory', 'stash_' .. target, function(inventory)
            local inventoryItem = inventory.getItem(item)
			if count > 0 and inventoryItem.count >= count then
				local canCarry = true
				if Config.UseWeightLimits then
					if Config.UseESX_1_2 then
						canCarry = xPlayer.canCarryItem(item, count)
					else
						canCarry = xPlayer.getInventoryItem(item)['count'] + count <= xPlayer.getInventoryItem(item)['limit']
					end
				end
				if canCarry then
					inventory.removeItem(item, count)
					xPlayer.addInventoryItem(item, count)
				else
					TCE('opod-stash:ShowNotification', xPlayer.source, _U('cannot_carry'))
				end
			else
				TCE('opod-stash:ShowNotification', xPlayer.source, _U('invalid_amount'))
			end
        end)
		
	elseif type == 'item_account' then
		
        TE('esx_addonaccount:getSharedAccount', 'stash_' .. item .. '_' .. target, function(account)
            local stashAccountMoney = account.money
			
			if stashAccountMoney >= count then
				account.removeMoney(count)
				xPlayer.addAccountMoney(item, count)
			else
				TCE('opod-stash:ShowNotification', xPlayer.source, _U('invalid_amount'))
			end
        end)
		
	elseif type == 'item_weapon' then
		
        TE('esx_datastore:getSharedDataStore', 'stash_' .. target, function(store)
            local storeWeapons = store.get('weapons') or {}
			local weaponName   = nil
			local ammo         = nil
			
			for i=1, #storeWeapons, 1 do
				if storeWeapons[i].name == item then
					weaponName = storeWeapons[i].name
					ammo       = storeWeapons[i].ammo
					
					table.remove(storeWeapons, i)
					break
				end
			end
			
			store.set('weapons', storeWeapons)
			xPlayer.addWeapon(weaponName, ammo or 999)
        end)
		
    elseif type == 'item_money' then
		
        TE('esx_addonaccount:getSharedAccount', 'stash_' .. item .. '_' .. target, function(account)
            local stashAccountMoney = account.money
			
			if stashAccountMoney >= count then
				account.removeMoney(count)
				xPlayer.addMoney(count)
			else
				TCE('opod-stash:ShowNotification', xPlayer.source, _U('invalid_amount'))
			end
        end)
		
	end
end)

RNE('opod-stash:putItem', function(owner, type, item, count, target, targetPed)
	local _source      = source
	local xPlayer      = ESX.GetPlayerFromId(_source)
	
	if targetPed then xPlayer = ESX.GetPlayerFromId(targetPed) end
    
	if type == 'item_standard' then
		
		local playerItemCount = xPlayer.getInventoryItem(item).count
		if playerItemCount >= count and count > 0 then

			TE('esx_addoninventory:getSharedInventory', 'stash_' .. target, function(inventory)
                xPlayer.removeInventoryItem(item, count)
                inventory.addItem(item, count)
            end)
		else
			TCE('opod-stash:ShowNotification', xPlayer.source, _U('invalid_amount'))
		end
		
	elseif type == 'item_account' then
		
		local playerAccountMoney = xPlayer.getAccount(item).money
		
		if playerAccountMoney >= count and count > 0 then
			xPlayer.removeAccountMoney(item, count)
            
            TE('esx_addonaccount:getSharedAccount',  'stash_' .. item .. '_' .. target, function(account)
                account.addMoney(count)
            end)
		else
			TCE('opod-stash:ShowNotification', xPlayer.source, _U('invalid_amount'))
		end
		
    elseif type == 'item_weapon' then
        
        TE('esx_datastore:getSharedDataStore', 'stash_' .. target, function(store)
            local weapons = store.get('weapons') or {}
			
			table.insert(weapons, {
				name = item,
				ammo = count
        	})
			
			store.set('weapons', weapons)
			xPlayer.removeWeapon(item)
        end)
		
    elseif type == 'item_money' then
		
		local playerAccountMoney = xPlayer.getMoney()
		
		if playerAccountMoney >= count and count > 0 then
			xPlayer.removeMoney(count)
            TE('esx_addonaccount:getSharedAccount',  'stash_' .. item .. '_' .. target, function(account)
                account.addMoney(count)
            end)
		else
			TCE('opod-stash:ShowNotification', xPlayer.source, _U('invalid_amount'))
		end

	end
end)