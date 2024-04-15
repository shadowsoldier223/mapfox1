local config = 
 {
  pontaDeCima = {x=441, y=547, z=7},   -- Localização da ponta do tapete que tem no templo   << /\.
   pontaDeBaixo = {x=443, y=549, z=7},   -- Localização da ponta do tapete que tem no templo   >> \/.
  toPosC = {x=305, y=497, z=7},   -- Para onde o player será teleportado após falar !arena.
  toPosU = {x=305, y=488, z=7},   -- Para onde o player será teleportado após falar !arena.
  toPosD = {x=305, y=510, z=7},   -- Para onde o player será teleportado após falar !arena.
  toPosL = {x=291, y=497, z=7},   -- Para onde o player será teleportado após falar !arena.
  toPosR = {x=319, y=497, z=7},   -- Para onde o player será teleportado após falar !arena.
 minLevel = 100   -- Level mínimo para entrar na arena usando o comando.
}

local function isInRange(position, fromPosition, toPosition)
 return (position.x >= fromPosition.x and position.y >= fromPosition.y and position.z >= fromPosition.z and position.x <= toPosition.x and position.y <= toPosition.y and position.z <= toPosition.z)
end

function onSay(cid, words, param, channel)
 if getPlayerLevel(cid) >= config.minLevel then
  if not isInRange(getCreaturePosition(cid), config.pontaDeCima, config.pontaDeBaixo) then
   doPlayerSendCancel(cid, "Voc\ê não está nos SQMs brancos do templo para entrar na Arena PVP Livre.")
    else
      lugar = math.random(1,5)
      if lugar == 1 then 
        doTeleportThing(cid, config.toPosC, TRUE)
          elseif lugar == 2 then
            doTeleportThing(cid, config.toPosU, TRUE)
              elseif lugar == 3 then
                doTeleportThing(cid, config.toPosD, TRUE)
                  elseif lugar == 4 then
                    doTeleportThing(cid, config.toPosL, TRUE)
                      elseif lugar == 5 then
                        doTeleportThing(cid, config.toPosR, TRUE)
      end
      doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "BAIXA O SARRAFO NELES!")
      doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
     end
    else
   doPlayerSendCancel(cid, "Voc\ê precisa ser level "..config.minLevel.." para entrar na arena.")
  end
 return TRUE
end