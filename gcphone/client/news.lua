local PlayerData = {}
local wait = 1000
local newsMenu = Config.newsBlip
local delNews = {}

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)


Citizen.CreateThread(function()
    local blip = AddBlipForCoord(newsMenu)
    SetBlipSprite (blip, 135)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.7)
    SetBlipColour (blip, 49)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Weazel News")
    EndTextCommandSetBlipName(blip)
    while true do
        local sleep = 1000
        local coords = GetEntityCoords(PlayerPedId())
        local distance = #(coords - newsMenu)
        if distance < 5.0 then
            wait = 0
            DrawMarker(20, newsMenu, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0,0, 100, false, true, 2, false, false, false, false)
            if distance < 2.0 then
                DrawText3D(newsMenu.x, newsMenu.y, newsMenu.z+0.60, "Appuyez sur [E] pour écrire un article", 0.45)
                if IsControlJustPressed(1, 38) then
                    ESX.TriggerServerCallback('crew-phone:get-news', function(news)
                        delNews = {}
                        for i=1, #news, 1 do
                            print(json.decode(news[i].alldata).name)
                            table.insert(delNews, {label = json.decode(news[i].alldata).name, value = json.decode(news[i].id)})
                        end
                    end)
                    FreezeEntityPosition(PlayerPedId(), true)
                    openNewsMenu()
                end
            end
        end
        Citizen.Wait(wait)
    end
end)

local NewsMenu = false

openNewsMenu = function()
    local newsMenu = RageUI.CreateMenu("", "Weazel News")
    local newsDelMenu = RageUI.CreateSubMenu(newsMenu, "", "Weazel News")
    newsMenu.Closed = function()
        FreezeEntityPosition(PlayerPedId(), false)
        NewsMenu = false
        RageUI.Visible(newsMenu, false)
    end
    if NewsMenu then
        NewsMenu = false
        RageUI.Visible(newsMenu, false)
    else
        NewsMenu = true
        RageUI.Visible(newsMenu, true)
        while NewsMenu do
            RageUI.IsVisible(newsMenu, function()
                RageUI.Item.Button('Publier article', nil, { RightLabel = "→→→" }, true, {
                    onSelected = function()
                        title = KeyboardInput('Titre', '', 30)
                        if title ~= nil then
                            acticle = KeyboardInput('Texte', '', 1000)
                            if acticle ~= nil then
                                img = KeyboardInput('Image', '', 100)
                                if img ~= nil then
                                    vid = KeyboardInput('Video', '', 100)
                                    if vid ~= nil then
                                        TriggerServerEvent("crew-phone:new-news", title, acticle, img, vid)
                                    else
                                        TriggerServerEvent("crew-phone:new-news", title, acticle, img, "")
                                    end
                                else
                                    ESX.ShowNotification("Pas d'image")
                                end
                            else
                                ESX.ShowNotification("Pas de texte")
                            end
                        else
                            ESX.ShowNotification("Pas de titre")
                        end
                    end,
                });
                RageUI.Item.Button('Supprimer article', nil, { RightLabel = "→→→" }, true, {}, newsDelMenu);
            end)
            RageUI.IsVisible(newsDelMenu, function()
                print(json.encode(delNews))
                if json.encode(delNews) == "[]" then
                    RageUI.Item.Separator("Aucun article disponible")
                else
                    for k,v in pairs(delNews) do
                        RageUI.Item.Button(v.label, nil, { RightLabel = "→→→" }, true, {
                            onSelected = function()
                                verif = KeyboardInput('Pour supprimer tappez: '..v.value, '', 5)
                                if verif ~= nil then
                                    if v.value == tonumber(verif) then
                                        TriggerServerEvent("crew-phone:delete-news", verif)
                                        ESX.ShowNotification("L'article "..v.label.." a bien été supprimé.")
                                        NewsMenu = false
                                        RageUI.CloseAll()
                                        Wait(350)
                                        openNewsMenu()
                                    else
                                        ESX.ShowNotification("Impossible de supprimer l'article")
                                    end
                                else
                                    ESX.ShowNotification("Impossible de supprimer l'article")
                                end
                            end,
                        });
                    end
                end
            end)
            Citizen.Wait(1)
        end
    end
end

function DrawText3D(x, y, z, text, scale)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local pX, pY, pZ = table.unpack(GetGameplayCamCoords())

	SetTextScale(scale, scale)
	SetTextFont(4)

	SetTextEntry("STRING")
	SetTextCentre(1)
	SetTextColour(255, 255, 255, 215)

	AddTextComponentString(text)
	DrawText(_x, _y)

	local factor = (string.len(text)) / 180
	DrawRect(_x, _y + 0.0150, 0.0 + factor, 0.035, 41, 11, 41, 100)
end

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)
	AddTextEntry('NEWS_TXT', TextEntry) 
	DisplayOnscreenKeyboard(1, "NEWS_TXT", "", ExampleText, "", "", "", MaxStringLenght) 
	blockinput = true
	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
		Citizen.Wait(0)
	end
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500) 
		blockinput = false 
		return result 
	else
		Citizen.Wait(500) 
		blockinput = false 
		return nil 
	end
end

RegisterNUICallback('crew-phone:getNews', function(data, cb)
    ESX.TriggerServerCallback('crew-phone:get-news', function(news)
        SendNUIMessage({event = 'news_updateNews', news = news})
    end)
end)

RegisterNUICallback('crewPhone:getWanted', function(data, cb)
    ESX.TriggerServerCallback('crewPhone:getWanted', function(wanted)
        SendNUIMessage({event = 'updateWanted', wanted = wanted})
    end)
end)