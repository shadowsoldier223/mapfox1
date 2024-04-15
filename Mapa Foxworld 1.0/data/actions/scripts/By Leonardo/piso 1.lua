-- [( XTibia.com )] --
function onStepIn(cid, item, position, fromPosition)

local teleport = {x=489, y=335, z=7} -- Posição do teleport.
local effect = 10 -- Efeito do teleport.

if isPremium(cid) == TRUE then
doTeleportThing(cid, teleport)
doSendMagicEffect(getPlayerPosition(cid), effect)
else
doPlayerSendText(cid, 23, "Sorry, you need a premium.")
end
return TRUE
end