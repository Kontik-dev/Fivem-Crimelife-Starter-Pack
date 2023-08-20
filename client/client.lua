Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
end) 

RegisterNUICallback("exit", function(data)
  SetDisplay(false)
end)

RegisterCommand("starter", function()
  SetDisplay(true)
end)

function SetDisplay(bool)
  display = bool
  SetNuiFocus(bool, bool)
  SendNUIMessage({
      type = "ui",
      status = bool,
  })
end

RegisterNUICallback('join', function(data, cb)
  TriggerServerEvent("kontikstarterauflock")
end)