local SPELL_DELAY = 350 -- Tempo entre cada lançamento do feitiço
local SPELL_STORAGE = 12345 -- Valor do storage para ativar o feitiço
local TIMER_INTERVAL = 5000 -- Intervalo de verificação dos jogadores (em milissegundos)

local function atk(cid)
    local playerPos = getCreaturePosition(cid)
    if not playerPos then
        print("Erro: posição do jogador não encontrada.")
        return
    end
    
    local shootPositions = {
        {x=playerPos.x - 1, y=playerPos.y, z=playerPos.z},
        {x=playerPos.x, y=playerPos.y - 1, z=playerPos.z},
        {x=playerPos.x + 1, y=playerPos.y, z=playerPos.z},
        {x=playerPos.x, y=playerPos.y + 1, z=playerPos.z},
    }

    local nextPosIndex = 1
    local function sendNextShoot()
        if nextPosIndex > #shootPositions then
            nextPosIndex = 1 -- Reinicie o índice se todos os disparos foram enviados
        end

        local currentPos = shootPositions[nextPosIndex]
        local nextPos = shootPositions[nextPosIndex % #shootPositions + 1]
        doSendDistanceShoot(currentPos, nextPos, 37)
        nextPosIndex = nextPosIndex + 1

        -- Configure um temporizador para enviar o próximo disparo após o intervalo de tempo
        addEvent(sendNextShoot, SPELL_DELAY)
    end

    -- Envie o primeiro disparo
    sendNextShoot()
end

function onLogin(cid)
    local playerStorage = getPlayerStorageValue(cid, SPELL_STORAGE)
    if playerStorage == 1 then
        -- Inicia o feitiço se o jogador tiver o storage
        atk(cid)
    end
end
