function onSay(cid, words, param)
if getTilePzInfo(getCreaturePosition(cid)) == FALSE then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"voc� precisa estar em protection zone pra poder teleportar.")
else
doRemoveCreature(cid)
end
end