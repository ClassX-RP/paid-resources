phone = false
phoneId = 0

RegisterNetEvent('camera:open')
AddEventHandler('camera:open', function()
    CreateMobilePhone(0)
	CellCamActivate(true, true)
	phone = true
    PhonePlayOut()
end)

frontCam = false

function CellFrontCamActivate(activate)
	return Citizen.InvokeNative(0x2491A93618B7D838, activate)
end

Citizen.CreateThread(function()
	DestroyMobilePhone()
	while true do
		local sleep = 500
		if phone then
			sleep = 0
			if IsControlJustPressed(1, 177) then -- CLOSE PHONE
				DestroyMobilePhone()
				phone = false
				CellCamActivate(false, false)
				if firstTime == true then 
					firstTime = false 
					Citizen.Wait(2500)
					displayDoneMission = true
				end
			end
			
			if IsControlJustPressed(1, 27) then -- SELFIE MODE
				frontCam = not frontCam
				CellFrontCamActivate(frontCam)
			end
				
			HideHudComponentThisFrame(7)
			HideHudComponentThisFrame(8)
			HideHudComponentThisFrame(9)
			HideHudComponentThisFrame(6)
			HideHudComponentThisFrame(19)
			HideHudAndRadarThisFrame()

			ren = GetMobilePhoneRenderId()
			SetTextRenderId(ren)
			-- Everything rendered inside here will appear on your phone.
			SetTextRenderId(1) -- NOTE: 1 is default
		end
		Citizen.Wait(sleep)
	end
end)
