function onStepOut(cid, item, pos)
uniqueid = 3221
basinpos = {x=259, y=630, z=4, stackpos=1}
if item.uid == 3221 then
doSendMagicEffect(basinpos,28)
doCreateItem(2604,1,basinpos)
end
end