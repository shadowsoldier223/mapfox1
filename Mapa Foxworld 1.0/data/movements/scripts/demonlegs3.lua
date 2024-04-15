function onStepOut(cid, item, pos)
uniqueid = 1393
stonepos = {x=452, y=44, z=11, stackpos=1}
if item.uid == 1393 then
doSendMagicEffect(stonepos,28)
doCreateItem(1304,1,stonepos)
end
end