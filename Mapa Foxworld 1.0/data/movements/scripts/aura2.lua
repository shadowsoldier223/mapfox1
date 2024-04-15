function onDeEquip(cid, item, slot)
if isPlayer(cid) then
        doRemoveItem(item.uid)
        doSendMagicEffect(getCreaturePosition(cid), 29)
end
        return TRUE
end