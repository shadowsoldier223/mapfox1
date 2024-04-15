function onThink(interval, lastExecution)
stone = {x=498, y=538, z=6, stackpos=1}

      if getThingfromPos(stone).itemid == 1355 then
            doSendMagicEffect({x=434, y=546, z=7, stackpos=1},28)
            doCreateItem(1354,1,stone) 
      elseif getThingfromPos(stone).itemid == 1354 then     
            doSendMagicEffect({x=434, y=546, z=7, stackpos=1},29) 
            doCreateItem(1353,1,stone) 
      elseif getThingfromPos(stone).itemid == 1353 then 
            doSendMagicEffect({x=434, y=546, z=7, stackpos=1},30)
            doCreateItem(1355,1,stone)  
      end    

return TRUE
end