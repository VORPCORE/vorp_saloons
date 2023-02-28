VORPcore = {}
local VORPInv = {}

VORPInv = exports.vorp_inventory:vorp_inventoryApi()

TriggerEvent("getCore", function(core)
    VORPcore = core
end)

RegisterNetEvent("vorpSaloon:GetJobs")
AddEventHandler("vorpSaloon:GetJobs", function()
    local _source = source
    local Character = VORPcore.getUser(_source).getUsedCharacter
    local job = Character.job
    TriggerClientEvent("vorpSaloon:UpdateJob", _source, job)
end)

RegisterNetEvent("vorpSaloon:GetInventory")
AddEventHandler("vorpSaloon:GetInventory", function(id)
    local _source = source
    VORPInv.OpenInv(_source, id)
end)

Citizen.CreateThread(function ()
    for k, loc in pairs(Config.Locations) do
        VORPInv.registerInventory(loc.Job, loc.Name, 5000, false, true, true)
    end

    for key, location in pairs(Config.Locations) do
        local loc = location.CraftLocation
        TriggerEvent("vorp:AddCraftLocation", loc)
    end

    for ind, meal in pairs(Config.Meals) do
        TriggerEvent("vorp:AddRecipes", meal)
    end
end)