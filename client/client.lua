require('../config.lua')

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        -- Set traffic and Ped density
        SetTrafficDensity(Traffic_Density)  -- 0.0 min, 1.0 max
        SetPedDensity(Ped_Density) -- 0.0 min, 1.0 max
    end
end)

function SetTrafficDensity(density)
    SetParkedVehicleDensityMultiplierThisFrame(density)
    SetVehicleDensityMultiplierThisFrame(density)
    SetRandomVehicleDensityMultiplierThisFrame(density)
end

function SetPedDensity(density)
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDensityMultiplierThisFrame(density)
end