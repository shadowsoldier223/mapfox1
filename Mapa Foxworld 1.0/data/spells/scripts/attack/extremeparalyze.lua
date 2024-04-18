-- Função para lançar a condição de paralisia
local function launchParalyze(creature)
    creature:addCondition(CONDITION_PARALYZE)
    creature:getPosition():sendMagicEffect(CONST_ME_ICEATTACK)
end

-- Função para lançar uma onda de meteoro de gelo
local function launchIceWave(player, position)
    local iceSpell = 2285 -- ID da spell de gelo
    local explosionEffects = {52, 43} -- Efeitos de explosão

    for x = -7, 7 do
        for y = -5, 5 do
            local tile = Tile(position:getPositionX() + x, position:getPositionY() + y, position:getPositionZ())
            if tile then
                local creature = tile:getTopCreature()
                if creature and creature:isPlayer() then
                    local randomEffect = explosionEffects[math.random(#explosionEffects)]
                    creature:addSpellCondition(iceSpell, 1, 20 * 1000)
                    creature:getPosition():sendMagicEffect(randomEffect)
                end
            end
        end
    end
end

-- Função vazia para lidar com o evento de lançamento de feitiço
function onCastSpell(creature, variant)
    -- Esta função não faz nada
    return true
end

