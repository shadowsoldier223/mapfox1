local combatPremium = createCombatObject()
local combatFree = createCombatObject()

function onCastSpell(cid, var)
    local newSpeed = 20000 -- Defina a nova velocidade aqui

    doChangeSpeed(cid, newSpeed) -- Altera a velocidade do jogador

    if getPlayerStorageValue(cid, 10005) >= 1 then
        return doCombat(cid, combatPremium, var)
    else
        return doCombat(cid, combatFree, var)
    end
end
