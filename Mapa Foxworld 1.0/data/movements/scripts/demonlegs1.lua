function onStepOut(cid, item, pos)
uniqueid = 1391
stonepos = {x=452, y=44, z=11, stackpos=1}
if item.uid == 1391 then
doSendMagicEffect(stonepos,28)
doCreateItem(1304,1,stonepos)
end
end