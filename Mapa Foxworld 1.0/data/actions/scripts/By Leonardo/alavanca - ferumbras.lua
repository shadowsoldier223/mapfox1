function onUse(cid, item, fromPosition, itemEx, toPosition)

basinpos = {x=259, y=630, z=4, stackpos=1}
basin = getThingfromPos(basinpos)

if item.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1) 

      if basin.itemid == 2604 then
            doRemoveItem(basin.uid,1)
            doSendMagicEffect(basinpos,28)
      elseif item.uid == 1223 and item.itemid == 1946 then
            if isCreature(basin.uid) == FALSE then
            end
      else
      end

else
doTransformItem(item.uid,item.itemid-1)
end

return TRUE
end