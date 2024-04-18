local function Teleport(cid)

doSendAnimatedText(getPlayerPosition(cid), "Aaaaah...", TEXTCOLOR_BLUE)

local templo = {x=442, y=549, z=7}

for j = 0, 60 do
   starting = {x=839 + j, y=952, z=7, stackpos=253}

      for i = 0, 60 do
         checking={x=starting.x, y=starting.y + i, z=starting.z, stackpos=starting.stackpos}
         creature= getThingfromPos(checking)

         if isPlayer(creature.uid) == TRUE then
              doTeleportThing(creature.uid, templo)
         end

      end

end

for j = 0, 61 do 
   starting = {x=1128 + j, y=1120, z=6, stackpos=253}

      for i = 0, 6 do
         checking={x=starting.x, y=starting.y + i, z=starting.z, stackpos=starting.stackpos}
         creature= getThingfromPos(checking)

         if isPlayer(creature.uid) == TRUE then
              doTeleportThing(creature.uid,templo)
         end

      end

end

for j = 0, 14 do 
   starting = {x=1151 + j, y=1115, z=6, stackpos=253}

      for i = 0, 5 do
         checking={x=starting.x, y=starting.y + i, z=starting.z, stackpos=starting.stackpos}
         creature= getThingfromPos(checking)

         if isPlayer(creature.uid) == TRUE then
              doTeleportThing(creature.uid,templo)
         end

      end

end

 for j = 0, 14 do 
   starting = {x=1151 + j, y=1127, z=6, stackpos=253}

      for i = 0, 5 do
         checking={x=starting.x, y=starting.y + i, z=starting.z, stackpos=starting.stackpos}
         creature= getThingfromPos(checking)

         if isPlayer(creature.uid) == TRUE then
              doTeleportThing(creature.uid,templo)
         end

      end

end 

for j = 0, 49 do 
   starting = {x=1134 + j, y=1120, z=5, stackpos=253}

      for i = 0, 6 do
         checking={x=starting.x, y=starting.y + i, z=starting.z, stackpos=starting.stackpos}
         creature= getThingfromPos(checking)

         if isPlayer(creature.uid) == TRUE then
              doTeleportThing(creature.uid,templo)
         end

      end

end

for j = 0, 14 do 
   starting = {x=1151 + j, y=1115, z=5, stackpos=253}

      for i = 0, 5 do
         checking={x=starting.x, y=starting.y + i, z=starting.z, stackpos=starting.stackpos}
         creature= getThingfromPos(checking)

         if isPlayer(creature.uid) == TRUE then
              doTeleportThing(creature.uid,templo)
         end

      end

end

 for j = 0, 14 do 
   starting = {x=1151 + j, y=1127, z=5, stackpos=253}

      for i = 0, 5 do
         checking={x=starting.x, y=starting.y + i, z=starting.z, stackpos=starting.stackpos}
         creature= getThingfromPos(checking)

         if isPlayer(creature.uid) == TRUE then
              doTeleportThing(creature.uid,templo)
         end

      end

end 

return TRUE
end  

function onKill(cid, target, lastHit)

local monstros ={"Zabolick","zabolick"}

   if getCreatureTarget(cid) ~= 0 then
        if isMonster(target) == TRUE then
           for i = 1, 2 do
                  nome = getCreatureName(getCreatureTarget(cid))
                  if (nome == monstros[i]) then
                       if getPlayerStorageValue(cid, 10007) ~= 1 then
                             setPlayerStorageValue(cid,10005,1)
                             setPlayerStorageValue(cid,10002,1)
                             setPlayerStorageValue(cid,10007,1)
                             setPlayerStorageValue(cid,10001,1)
                             doSendMagicEffect(getCreaturePosition(cid), 47)
                             broadcastMessage("O player ".. getPlayerName(cid) .." derrotou o Boss ".. nome ..", e por isso recebeu Aura Full!", MESSAGE_EVENT_ADVANCE)
                       end
                  addEvent(Teleport, 1000, cid)
                  end
           end                                
        end
   end

	return TRUE
end