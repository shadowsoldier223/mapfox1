local config = {
    storage = 13, -- storage que salva o delay da magia
    time = 3, -- tempo que deve esperar para usar a magia em segundos
    player = true, -- funciona com player true/false
    monster = false, -- funciona com monstros true/false
    npc = false, -- funciona com npc true/false
    manapercent = 0, -- porcentagem da mana máxima que será consumida
}

function onCastSpell(cid, var)
    local function doSend(pos1, pos2, num)
        if getPlayerLevel(getCreatureTarget(cid)) > 100 then
            doSendDistanceShoot(getCreaturePosition(pos1), getCreaturePosition(pos2), 24)
            doSendMagicEffect(getCreaturePosition(pos2), 6)
            if type(num) == "number" and num == 1 then
                local pp1 = getCreaturePosition(pos1)
                local pp2 = getCreaturePosition(pos2)
                doTeleportThing(pos1, pp2)
                doSendMagicEffect(getCreaturePosition(pos1), 6)
                doSendDistanceShoot(getCreaturePosition(pos1), getCreaturePosition(pos2), 24)
            end
        else
            return false
        end
        return true
    end

    local target = getCreatureTarget(cid)

    if type(target) ~= "number" or target == 0 then
        doPlayerSendCancel(cid, "Você precisa de um alvo.")
        return false
    end

    if getPlayerLevel(target) > 80 then
    else
        doPlayerSendCancel(cid, "Você não pode fazer isso com essa criatura, apenas com players.")
        return false
    end

    if getPlayerStorageValue(cid, config.storage) > os.time() then
        doPlayerSendCancel(cid, "Você tem que esperar " .. getPlayerStorageValue(cid, config.storage) - os.time() .. " segundos para usar essa magia novamente.")
        return false
    else
        if getPlayerMana(cid) >= (config.manapercent * getCreatureMaxMana(cid)) then
            doPlayerAddMana(cid, -(config.manapercent * getCreatureMaxMana(cid)))
            for i = 1, 20 do
                addEvent(doSend, i * 0, cid, target, 0)
            end
            addEvent(doSend, 100, cid, target, 1)
            local damage = math.random(4500, 5500) -- Gera um valor aleatório entre 2500 e 3500 para o dano
            doTargetCombatHealth(cid, target, COMBAT_FIREDAMAGE, -damage, -damage, CONST_ME_HITBYFIRE) -- Aplica o dano do tipo fogo ao alvo
            setPlayerStorageValue(cid, config.storage, os.time() + config.time)
        else
            doPlayerSendCancel(cid, "Você não possui mana suficiente.")
        end
    end
    return true
end
