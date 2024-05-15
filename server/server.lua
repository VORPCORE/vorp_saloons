local Core = exports.vorp_core:GetCore()

RegisterNetEvent("vorpSaloon:GetInventory", function(location)
    local _source = source
    local id = location.Job
    local Character = Core.getUser(_source).getUsedCharacter
    local job = Character.job
    if job == id then
        exports.vorp_inventory:openInventory(_source, id)
    end
end)

CreateThread(function()
    for k, loc in pairs(Config.Locations) do
        local data = {
            id = loc.Job,
            name = loc.Name,
            limit = 5000,
            acceptWeapons = false,
            shared = true,
            ignoreItemStackLimit = true,
            whitelistItems = false,
            UsePermissions = false,
            UseBlackList = false,
            whitelistWeapons = false
        }
        exports.vorp_inventory:registerInventory(data)
    end
end)

AddEventHandler("vorp:SelectedCharacter", function(source)
    -- this makes no sense, why not adding it to the script it self?
    for key, location in pairs(Config.Locations) do
        local loc = location.CraftLocation
        TriggerClientEvent("vorp:AddCraftLocation", source, loc)
    end
end)
