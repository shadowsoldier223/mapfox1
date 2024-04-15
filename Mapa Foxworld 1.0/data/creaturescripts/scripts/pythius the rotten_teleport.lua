--- Created by Darkhaos

function onDeath(cid, corpse, killer)

registerCreatureEvent(cid, "ThalasTeleport")

local creaturename = getCreatureName(cid)
local in_pos = {x=648, y=807, z=12, stackpos=2}
local checkIID = getThingfromPos(in_pos)
local to_pos = {x=648, y=809, z=12, stackpos=1}
local time_to_pass = 30 -- in seconds
local tpID = 1387

if creaturename == 'thalas' then

teleport = doCreateTeleport(tpID, to_pos, in_pos)

doSendMagicEffect(in_pos, CONST_ME_TELEPORT)

doCreatureSay(cid, "Você tem 30 segundos para entrar no teletransporte antes de ser fechada.", TALKTYPE_ORANGE_1)
addEvent(removeTeleport, (1000*time_to_pass))


end
end

function removeTeleport()
if getThingfromPos({x=648, y=807, z=12, stackpos=1}).itemid == 1387 then
doRemoveItem(getThingfromPos({x=648, y=807, z=12, stackpos=1}).uid,1)
doSendMagicEffect({x=648, y=807, z=12, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end 