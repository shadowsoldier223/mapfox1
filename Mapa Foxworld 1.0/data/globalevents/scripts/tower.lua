function onThink(interval, lastExecution)
        local gradepos = {x=498, y=235, z=11, stackpos=1}
        local back = {x=498, y=238, z=11}
        local grade = getThingfromPos(gradepos)

        if isCreature(grade.uid) == TRUE then
            doTeleportThing(grade.uid, back)
            doCreateItem(1547,1,gradepos)
        elseif grade.itemid > 0 and grade.itemid ~= 1547 then
            doRemoveItem(grade.uid,1)
            doCreateItem(1547,1,gradepos)
        elseif grade.itemid == 1547 then
            doRemoveItem(grade.uid,1)
        end

        local iniciopos = {x=1158, y=1123, z=6, stackpos=1}

        for i = 1,6 do
            barrierpos = {x=1143, y=1120 + i, z=5, stackpos=1}
            barrier = getThingfromPos(barrierpos)
                if isCreature(barrier.uid) == TRUE then
                    if getCreatureName(barrier.uid) ~= "Barrier" then
                          doTeleportThing(barrier.uid,iniciopos)
                          doSummonCreature("barrier",barrierpos)
                    end
               else
                   if barrier.itemid > 0 then
                       doRemoveItem(barrier.uid,1)
                   end
                   doSummonCreature("Barrier",barrierpos) 
               end
        end                                 
                  
        for i = 1,6 do
            barrierpos = {x=1149, y=1120 + i, z=5, stackpos=1}
            barrier = getThingfromPos(barrierpos)
                if isCreature(barrier.uid) == TRUE then
                    if getCreatureName(barrier.uid) ~= "Barrier" then
                          doTeleportThing(barrier.uid,iniciopos)
                          doSummonCreature("barrier",barrierpos)
                    end
               else
                   if barrier.itemid > 0 then
                       doRemoveItem(barrier.uid,1)
                   end
                   doSummonCreature("Barrier",barrierpos) 
               end
        end

        for i = 1,6 do
            barrierpos = {x=1167, y=1120 + i, z=5, stackpos=1}
            barrier = getThingfromPos(barrierpos)
                if isCreature(barrier.uid) == TRUE then
                    if getCreatureName(barrier.uid) ~= "Barrier" then
                          doTeleportThing(barrier.uid,iniciopos)
                          doSummonCreature("barrier",barrierpos)
                    end
               else
                   if barrier.itemid > 0 then
                       doRemoveItem(barrier.uid,1)
                   end
                   doSummonCreature("Barrier",barrierpos) 
               end
        end

        for i = 1,6 do
            barrierpos = {x=1174, y=1120 + i, z=5, stackpos=1}
            barrier = getThingfromPos(barrierpos)
                if isCreature(barrier.uid) == TRUE then
                    if getCreatureName(barrier.uid) ~= "Barrier" then
                          doTeleportThing(barrier.uid,iniciopos)
                          doSummonCreature("barrier",barrierpos)
                    end
               else
                   if barrier.itemid > 0 then
                       doRemoveItem(barrier.uid,1)
                   end
                   doSummonCreature("Barrier",barrierpos) 
               end
        end

        towerpos = {x=1158, y=1123 , z=5, stackpos=1}
        tower = getThingfromPos(towerpos)
        if isCreature(tower.uid) == TRUE or tower.itemid == 1498 then
        else
            doCreateMonster("Gran Tower",towerpos)
        end

return TRUE
end