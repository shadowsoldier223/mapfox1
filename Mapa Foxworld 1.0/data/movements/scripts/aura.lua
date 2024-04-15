function onAddItem(moveItem, tileItem, position, cid)
if isPlayer(cid) then
doRemoveItem(moveItem.uid)
        doSendMagicEffect(getCreaturePosition(cid), 29)
end
end