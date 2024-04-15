-- Script Made By: Sonkis (Gabriel Lisboa)
-- Start Config --
local topos = {x=572, y=967, z=10} -- Posição para onde o player será teleportado.
-- End Config --
 
function onUse(cid)
   if doTeleportThing(cid, topos) then
  doPlayerSendTextMessage(cid,20,"You have been teleported to NAME.") -- Mude o NAME para o nome do local que o player será teleportado.
 end
end