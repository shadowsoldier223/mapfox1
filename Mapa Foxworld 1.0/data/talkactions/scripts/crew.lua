function onSay(cid, words, param)

local config =
 {
  seconds = 5,
  storage = 19,
  msg = "Você não consegue fazer na velocidade 5.",
}

local function useAgain(cid)
 setPlayerStorageValue(cid, config.storage, 2)
 return TRUE
end

local playerPos = getCreaturePosition(cid)

   if getPlayerLookDir(cid) == 0 then
            position = {x = playerPos.x, y = playerPos.y-1, z = playerPos.z, stackpos = 253}
   elseif getPlayerLookDir(cid) == 1 then
            position = {x = playerPos.x+1, y = playerPos.y, z = playerPos.z, stackpos = 253}
   elseif getPlayerLookDir(cid) == 2 then
            position = {x = playerPos.x, y = playerPos.y+1, z = playerPos.z, stackpos = 253}
   elseif getPlayerLookDir(cid) == 3 then
            position = {x = playerPos.x-1, y = playerPos.y, z = playerPos.z, stackpos = 253}
   end

   local alvo = getThingfromPos(position)
   local direcalvo = getPlayerLookDir(alvo.uid)
   local direcself = getPlayerLookDir(cid)

   if isCreature(alvo.uid) == TRUE then
            if isPlayer(alvo.uid) == TRUE then
                        if direcself == direcalvo then
                                    if getPlayerStorageValue(cid, config.storage) == -1 then
                                    setPlayerStorageValue(cid, config.storage, os.time()-config.seconds)
                                    end
                                    if config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage)) > 0 then
                                    doPlayerSendCancel(cid, string.format(config.msg, config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage))))
                                    return TRUE
                                    end
                                    setPlayerStorageValue(cid, config.storage, os.time())
                                    doSendAnimatedText(getPlayerPosition(cid), "CREEEU!", TEXTCOLOR_RED)
                                    doSendAnimatedText(getPlayerPosition(alvo.uid), "AII!", TEXTCOLOR_ORANGE)
                                    return TRUE
                        else
                                    doPlayerSendCancel(cid, "Precisa estar de costas para você.")
                        end
            else
                        doPlayerSendCancel(cid, "Isso não é um player õO'.")
            end
   else
   doPlayerSendCancel(cid, "Não tem ninguém na sua frente.")
   end

return TRUE
end