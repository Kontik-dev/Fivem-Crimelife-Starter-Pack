ESX = nil  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('kontikstarterauflock"')
AddEventHandler('kontikstarterauflock"', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.hasWeapon('weapon_appistol') and xPlayer.hasWeapon('weapon_advancedrifle') then
        TriggerEvent("notifications", "STARTERPACKET", 'Du hast diese Waffen bereits!', "fa-regular fa-bell")
    else
        TriggerEvent("notifications", "STARTERPACKET", 'Du hast dir dein Starter Paket abgeholt!', "fa-regular fa-bell")
        xPlayer.addWeapon('weapon_appistol', 660)
     xPlayer.addWeapon('weapon_advancedrifle', 660)
    end
end)