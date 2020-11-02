RegisterNetEvent("syn:haycube")
AddEventHandler("syn:haycube", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                --TaskAnimalInteraction(Ped, Cavallo, -224471938, true, true) --Animazione
                TaskAnimalInteraction(Ped, Cavallo, -224471938, GetHashKey("s_horsnack_haycube01x"), 0)
                
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 15)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 15)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 15)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end
                Citizen.Wait(1000)
        --end
        
        end
end)

RegisterNetEvent("syn:carrot")
AddEventHandler("syn:carrot", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                TaskAnimalInteraction(Ped, Cavallo, -224471938, GetHashKey("p_carrot02x"), 0) --Animazione
                
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 30)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 30)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 25)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end
                Citizen.Wait(1000)
        --end
        
        end
end)

RegisterNetEvent("syn:horsestimulant")
AddEventHandler("syn:horsestimulant", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                --TaskAnimalInteraction(PlayerPedId(), Cavallo,-1355254781, 0, 0) --stem
                TaskAnimalInteraction(PlayerPedId(), Cavallo, -1355254781, GetHashKey("p_cs_syringe01x"), 0)

                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 35)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 35)


                Citizen.InvokeNative(0xF6A7C08DF2E28B28, Cavallo, 0, 1000.0)
                Citizen.InvokeNative(0xF6A7C08DF2E28B28, Cavallo, 1, 1000.0)
                    
                Citizen.InvokeNative(0x50C803A4CD5932C5, true) --core
                Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) --core
                PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
end)
        

RegisterNetEvent('syn:brush')
AddEventHandler('syn:brush', function(source)
    local _source = source
    local Ped = PlayerPedId()
    local Cavallo = Citizen.InvokeNative(0x4C8B59171957BCF7, PlayerPedId())
    TriggerEvent("StressaPlayer", 10)
    local pCoords = GetEntityCoords(Ped)
    local cCoords = GetEntityCoords(Cavallo)
    local Distanza = GetDistanceBetweenCoords(pCoords, cCoords)
        if Distanza < 1.0 then
        TriggerEvent("vorp:TipRight", "You used the brush", 5000)
        --TaskAnimalInteraction(Ped, Cavallo, 1968415774, GetHashKey("P_BRUSHHORSE02X"), 0)
        TaskAnimalInteraction(Ped, Cavallo, 554992710, GetHashKey("P_BRUSHHORSE02X"), 0)
         
        local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0) -- Controlla la vita del cavallo
        if not tonumber(valueHealth) then valueHealth = 0 end
        Citizen.Wait(3000)
        Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 5) -- Cura il cavallo di poco (5)
        Citizen.InvokeNative(0x6585D955A68452A5, Cavallo) -- Pulisce il cavallo
        Citizen.InvokeNative(0xB5485E4907B53019, Cavallo) -- Setta il cavallo bagnato
        
        else
        TriggerEvent("vorp:TipRight", "You are not near your horse", 3000) 
        Wait(0)
        end
end)
