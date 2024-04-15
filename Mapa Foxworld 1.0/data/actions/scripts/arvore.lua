--arvore do R$ by kung lao
function onUse(cid, item, frompos, item2, topos)
if item.itemid == 8636 then
doTransformItem(item.uid,8636)
doPlayerAddItem(cid,8636,100)
doDecayItem(item.uid)
end
return 1 
end