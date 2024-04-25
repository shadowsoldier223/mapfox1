local function atk(pos1, pos2)
    doSendDistanceShoot(pos1, pos2, 37) -- Alterado de 3 para 37
end

local function atkAroundPlayer(cid)
    local function atkLoop(i)
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
                positions[2], -- 9
                positions[3], -- 3
                positions[4], -- 1
                positions[1]  -- 7
            }

            -- Envia um disparo
            atk(positions[i], nextPositions[i])

            -- Próximo turno
            i = i + 1
            if i > 4 then
                i = 1
            end

            -- Chama a função atkLoop novamente após um atraso de 100ms
            addEvent(function() atkLoop(i) end, 200)
        end
    end

    -- Inicia o loop
    atkLoop(1)
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.8, -200, -1.2, -250)

local area = createCombatArea(AREA_TOWER)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    atkAroundPlayer(cid)

    return doCombat(cid, combat, var)
end

function onDistanceShoot(creature, variant)
    addEvent(function()
        return true -- Ignora o tratamento padrão do distanceshoot após um pequeno atraso
    end, 300)
end
