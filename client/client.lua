local job = nil

-----------------------------------------------------------------------------------------
---------------------------------UIPrompt------------------------------------------------
UIPrompt = {}

local promptGroup = GetRandomIntInRange(0, 0xffffff)

UIPrompt.activate = function(title)
    local label = CreateVarString(10, 'LITERAL_STRING', title)
    PromptSetActiveGroupThisFrame(promptGroup, label)
end

UIPrompt.initialize = function()
    local str = _U('Press')
    SaloonPrompt = PromptRegisterBegin()
    PromptSetControlAction(SaloonPrompt, Config.Key)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(SaloonPrompt, str)
    PromptSetEnabled(SaloonPrompt, 1)
    PromptSetVisible(SaloonPrompt, 1)
    PromptSetStandardMode(SaloonPrompt, 1)
    PromptSetGroup(SaloonPrompt, promptGroup)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, SaloonPrompt, true)
    PromptRegisterEnd(SaloonPrompt)
end


-----------------------------------------------------------------------------------------
---------------------------------PlayerSpawn---------------------------------------------
RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function()
    TriggerServerEvent("vorpSaloon:GetJobs")
end)

-----------------------------------------------------------------------------------------
---------------------------------BLIPS---------------------------------------------------
function AddBlips()
    if Config.BlipsActive then
        for k, v in pairs(Config.Locations) do
            Config.Locations[k].BlipHandler = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.Blipcoords.x,
                v.Blipcoords.y, v.Blipcoords.z)
            if (Config.Locations[k].Blipsprite) then
                SetBlipSprite(Config.Locations[k].BlipHandler, Config.Locations[k].Blipsprite, 1)
            else
                SetBlipSprite(Config.Locations[k].BlipHandler, Config.Blipsprite, 1)
            end
            SetBlipScale(Config.Locations[k].BlipHandler, 0.2)

            local blipName = CreateVarString(10, 'LITERAL_STRING', Config.Locations[k].Name);
            Citizen.InvokeNative(0x9CB1A1623062F402, Config.Locations[k].BlipHandler, blipName)
        end
    end
end

function RemoveBlips()
    for k, v in pairs(Config.Locations) do
        RemoveBlip(v.BlipHandler)
    end
end

-----------------------------------------------------------------------------------------
---------------------------------JOB HANDLER---------------------------------------------
RegisterNetEvent("vorpSaloon:UpdateJob")
AddEventHandler("vorpSaloon:UpdateJob", function(rjob)
    job = rjob
end)

-----------------------------------------------------------------------------------------
---------------------------------INVENTORIES---------------------------------------------
Citizen.CreateThread(function()
    AddBlips()
    UIPrompt.initialize()

    while job == nil do
        Wait(100)
    end

    while true do
        Wait(1)
        
        for index, location in pairs(Config.Locations) do
            if job == location.Job then
                local playerPosition = GetEntityCoords(GetPlayerPed(PlayerId()))
                local InventoryPosition = vector3(location.StoragePosition.x, location.StoragePosition.y,
                    location.StoragePosition.z)
                local dist = #(playerPosition - InventoryPosition)

                if dist < 1.0 then
                    UIPrompt.activate(_U("OpenInventory") .. location.Name)
                    if Citizen.InvokeNative(0xC92AC953F0A982AE, SaloonPrompt) then
                        TriggerServerEvent("vorpSaloon:GetInventory", location.Job)
                    end
                end
            end
        end
    end
end)
