local config = 
 {
  pontaDeCima = {x=441, y=547, z=7},   -- Localização da ponta do tapete que tem no templo   << /\.
   pontaDeBaixo = {x=443, y=549, z=7},   -- Localização da ponta do tapete que tem no templo   >> \/.
  toPos = {x=237, y=793, z=3},   -- Para onde o player será teleportado após falar !arena.
 minLevel = 100   -- Level mínimo para entrar na arena usando o comando.
}

local function isInRange(position, fromPosition, toPosition)
 return (position.x >= fromPosition.x and position.y >= fromPosition.y and position.z >= fromPosition.z and position.x <= toPosition.x and position.y <= toPosition.y and position.z <= toPosition.z)
end

function onSay(cid, words, param, channel)
 if getPlayerLevel(cid) >= config.minLevel then
  if not isInRange(getCreaturePosition(cid), config.pontaDeCima, config.pontaDeBaixo) then
   doPlayerSendCancel(cid, "Voc\ê não está nos SQMs brancos do templo para entrar na city do Evento.")
    else
     doTeleportThing(cid, config.toPos, TRUE)
     doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Pegue o maximo de Pvp Coin dropados dos Alvos A, B e C que puder !")
      doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
     end
    else
   doPlayerSendCancel(cid, "Voc\ê precisa ser level "..config.minLevel.." para participar do evento.")
  end
 return TRUE
end