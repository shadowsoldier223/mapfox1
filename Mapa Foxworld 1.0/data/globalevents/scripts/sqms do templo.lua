function onThink(interval, lastExecution)

pisoesquerda = {x=441, y=553, z=7, stackpos=0}
pisodireita = {x=443, y=553, z=7, stackpos=0}
grama = {x=494, y=549, z=7, stackpos=0}

      if getThingfromPos(pisoesquerda).itemid == 406 then
            doCreateItem(4540,1,{x=494, y=549, z=7, stackpos=0})
            doCreateItem(407,1,{x=441, y=551, z=7, stackpos=0})
            doCreateItem(407,1,{x=441, y=552, z=7, stackpos=0})
            doCreateItem(407,1,{x=441, y=553, z=7, stackpos=0})
            doCreateItem(407,1,{x=441, y=554, z=7, stackpos=0})
            doCreateItem(407,1,{x=441, y=555, z=7, stackpos=0})
            doCreateItem(407,1,{x=443, y=551, z=7, stackpos=0})
            doCreateItem(406,1,{x=442, y=552, z=7, stackpos=0})
            doCreateItem(406,1,{x=442, y=554, z=7, stackpos=0})
            doCreateItem(406,1,{x=442, y=555, z=7, stackpos=0})
      elseif getThingfromPos(grama).itemid == 4540 then
            doCreateItem(4526,1,{x=494, y=549, z=7, stackpos=0})   
            doCreateItem(407,1,{x=442, y=552, z=7, stackpos=0})    
            doCreateItem(407,1,{x=442, y=554, z=7, stackpos=0})   
            doCreateItem(407,1,{x=442, y=555, z=7, stackpos=0}) 
            doCreateItem(406,1,{x=441, y=551, z=7, stackpos=0})
            doCreateItem(406,1,{x=443, y=551, z=7, stackpos=0})
            doCreateItem(406,1,{x=443, y=552, z=7, stackpos=0})
            doCreateItem(406,1,{x=443, y=553, z=7, stackpos=0})
            doCreateItem(406,1,{x=443, y=554, z=7, stackpos=0}) 
            doCreateItem(406,1,{x=443, y=555, z=7, stackpos=0})
      elseif getThingfromPos(pisodireita).itemid == 406 then 
            doCreateItem(407,1,{x=441, y=551, z=7, stackpos=0})  
            doCreateItem(407,1,{x=443, y=551, z=7, stackpos=0}) 
            doCreateItem(407,1,{x=443, y=552, z=7, stackpos=0}) 
            doCreateItem(407,1,{x=443, y=553, z=7, stackpos=0}) 
            doCreateItem(407,1,{x=443, y=554, z=7, stackpos=0}) 
            doCreateItem(407,1,{x=443, y=555, z=7, stackpos=0}) 
            doCreateItem(406,1,{x=442, y=552, z=7, stackpos=0})
            doCreateItem(406,1,{x=442, y=554, z=7, stackpos=0})  
            doCreateItem(406,1,{x=442, y=555, z=7, stackpos=0})
      elseif getThingfromPos(grama).itemid == 4526 then
            doCreateItem(4540,1,{x=495, y=549, z=7, stackpos=0})  
            doCreateItem(407,1,{x=442, y=552, z=7, stackpos=0})    
            doCreateItem(407,1,{x=442, y=554, z=7, stackpos=0})    
            doCreateItem(407,1,{x=442, y=555, z=7, stackpos=0})    
            doCreateItem(406,1,{x=441, y=551, z=7, stackpos=0})
            doCreateItem(406,1,{x=441, y=552, z=7, stackpos=0})
            doCreateItem(406,1,{x=441, y=553, z=7, stackpos=0})
            doCreateItem(406,1,{x=441, y=554, z=7, stackpos=0})
            doCreateItem(406,1,{x=441, y=555, z=7, stackpos=0})
            doCreateItem(406,1,{x=443, y=551, z=7, stackpos=0})
      end

return TRUE
end