local area = createCombatArea(AREA_CIRCLE2X2)

function onCastSpell(cid, var) 
    local playerPos = getCreaturePosition(cid) -- Obter posição inicial do jogador que lançou a magia
    if playerPos then
        addEvent(followPlayerAndAttack, 100, cid, playerPos) -- Iniciar o acompanhamento do jogador
    else
        return false -- Parar o lançamento da magia se a posição do jogador não for encontrada
    end
end

function followPlayerAndAttack(cid, playerPos)
    if isCreature(cid) then
        if playerPos then -- Verificar se playerPos não é nil
            local newPlayerPos = getCreaturePosition(cid) -- Obter a posição atualizada do jogador
            if newPlayerPos then
                for i = 1, 4 do -- Lançar 4 ataques a cada iteração
                    addEvent(furyAttack, 250 * i, cid, newPlayerPos) -- Chamar a função de ataque
                end
            else
                print("Player morreu durante a execução da magia.")
            end
        end
    end
end

function furyAttack(cid, playerPos)
    if isCreature(cid) then
        local finalPos = {x = playerPos.x + math.random(-1, 1), y = playerPos.y + math.random(-1, 1), z = playerPos.z} -- Definindo uma posição aleatória próxima ao jogador
        doSendDistanceShoot({x = playerPos.x - math.random(4, 6), y = playerPos.y - 5, z = playerPos.z}, finalPos, 3) -- Enviar o ataque em direção ao jogador
        doAreaCombatHealth(cid, COMBAT_FIREDAMAGE, finalPos, area, -1, -90, 36)
        doAreaCombatHealth(cid, COMBAT_FIREDAMAGE, finalPos, area, -1, -70, 36)
    end
    addEvent(followPlayerAndAttack, 100, cid, playerPos) -- Atualizar continuamente a posição do jogador
end
