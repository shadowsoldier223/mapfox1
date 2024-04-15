local config = {
        storage = 25, -- storage que salva o delay da magia
        time = 200, -- tempo que deve esperar para usar a magia em segundos
        player = true, -- funciona com player true/false
        monster = false, -- funciona com monstros true/false
        npc = false, -- funciona com npc true/false
        manapercent = 0.40, -- quantidade de mana
}

function onCastSpell(cid, var)

    
        local function doSend(pos1, pos2, num)

                if getPlayerLevel(getCreatureTarget(cid)) > 100 then
 
                doSendDistanceShoot(getCreaturePosition(pos1), getCreaturePosition(pos2), 4)
                doSendMagicEffect(getCreaturePosition(pos2),47)
                doSendDistanceShoot(getCreaturePosition(pos2), getCreaturePosition(pos1), 4)
                doSendMagicEffect(getCreaturePosition(pos2),47)
                doSendDistanceShoot(getCreaturePosition(pos2), getCreaturePosition(pos1), 4)
                doSendMagicEffect(getCreaturePosition(pos1),47)
                doSendDistanceShoot(getCreaturePosition(pos1), getCreaturePosition(pos2), 4)
                doSendMagicEffect(getCreaturePosition(pos1),47)
                if type(num) == "number" and num == 1 then
                                local pp1 = getCreaturePosition(pos1)
                                local pp2 = getCreaturePosition(pos2)
                                doTeleportThing(pos2, pp1)
                                doTeleportThing(pos1, pp2)
                                doSendMagicEffect(getCreaturePosition(pos1), 10)
                                doSendMagicEffect(getCreaturePosition(pos2), 10)
                end

                else
                                return false
                end 

                return true
        end
        
        local target = getCreatureTarget(cid)
        
        if type(target) ~= "number" or target == 0 then
                doPlayerSendCancel(cid, "Você precisa selecionar algum oponente para fazer isso.")
                return false
        end
        
        if getPlayerLevel(target) > 80 then
        else
                doPlayerSendCancel(cid, "Você não pode fazer isso com essa criatura, apenas com players.")
                return false
        end
        
        if getPlayerStorageValue(cid, config.storage) > os.time() then
                doPlayerSendCancel(cid, "Você tem que esperar "..getPlayerStorageValue(cid, config.storage) - os.time().." segundos para usar essa magia novamente.")
                                return false
        else
               if getPlayerMana(cid) >= (config.manapercent * getCreatureMaxMana(cid)) then
               doPlayerAddMana(cid, -(config.manapercent * getCreatureMaxMana(cid)))
                        for i = 1, 20 do
                                addEvent(doSend, i*100, cid, target, 0)
                        end
                        addEvent(doSend, 2000, cid, target, 1)
                        setPlayerStorageValue(cid, config.storage, os.time() + config.time)
              else
                     doPlayerSendCancel(cid, "Você não possuí mana suficiente.")
              end
        end

      
return true
end