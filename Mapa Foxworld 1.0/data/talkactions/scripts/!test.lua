function onSay(cid, words, param)
config = {
pid=getPlayerGUID(cid), -- não mecha
skull="yes", -- players com white skull podem teleportar? ("yes" or "no").
redskull="yes", -- players com red skull podem teleportar ("yes" or "no").
prot="yes", -- players precisam estar em protection zone pra teleportar ("yes" or "no").
bat="yes" --players precisam estar sem fight pra teleportar ("yes" or "no").
}


if(config.skull == "no") and (getCreatureSkullType(cid) == 3) then
doPlayerSendTextMessage(cid,22,"apenas players sem white skull usar este comando.")
return TRUE
end

if(config.redskull == "no") and (getCreatureSkullType(cid) == 4) then
doPlayerSendTextMessage(cid,22,"apenas player sem red skull podem usar este comando.")
return TRUE
end

if(config.prot == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendTextMessage(cid,22,"você precisa estar em protection zone pra poder usar este comando.")
return TRUE
end

if(config.bat == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
doPlayerSendTextMessage(cid,22,"você precisa estar sem battler pra poder usar este comando.")
return TRUE
end

doTeleportThing(cid, {x=248, y=197, z=10})
end