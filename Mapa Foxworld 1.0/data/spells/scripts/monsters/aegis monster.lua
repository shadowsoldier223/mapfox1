local function atk(pos1, pos2)
    doSendDistanceShoot(pos1, pos2, 37) -- Alterado de 3 para 37
end

local function atkAroundPlayer(cid, index)
    local playerPos = getCreaturePosition(cid)
    if playerPos then
        local playerX, playerY = playerPos.x, playerPos.y
        local positions = {
            {x=playerX - 1, y=playerY - 1, z=playerPos.z}, -- 7
            {x=playerX + 1, y=playerY - 1, z=playerPos.z}, -- 9
            {x=playerX + 1, y=playerY + 1, z=playerPos.z}, -- 3
            {x=playerX - 1, y=playerY + 1, z=playerPos.z}  -- 1
        }
        local nextPositions = {
            positions[2], -- Próxima posição para 9
            positions[3], -- Próxima posição para 3
            positions[4], -- Próxima posição para 1
            positions[1]  -- Próxima posição para 7
        }

        -- Envia o disparo
        atk(positions[index], nextPositions[index])
        
        -- Calcula o próximo índice
        local nextIndex = index + 1
        if nextIndex <= 4 then
            -- Chama a função novamente com um atraso de 200ms, passando o próximo índice
            addEvent(function() atkAroundPlayer(cid, nextIndex) end, 200)
        end
    end
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
-- Removi a fórmula de dano
setCombatFormula(combat, COMBAT_FORMULA_MANADAMAGE, 0, 0, 0, 0)

local area = createCombatArea(AREA_TOWER)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    -- Inicia o primeiro disparo
    atkAroundPlayer(cid, 1)

    -- Retorna o combate
    return doCombat(cid, combat, var)
end

function onDistanceShoot(creature, variant)
    return true -- Ignora o tratamento padrão do distanceshoot
end
