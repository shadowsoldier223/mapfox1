function onThink(interval, lastExecution)

local wallpos = {x=438, y=556, z=8, stackpos=1}
local wall = getThingfromPos(wallpos)
if os.date("%A") == "Saturday" then
      if (os.date("%X") == "17:00:00") or (os.date("%X") == "17:00:05") then
          if wall.itemid == 1515 then
               broadcastMessage(" removida! ", MESSAGE_EVENT_ADVANCE)  
               doRemoveItem(wall.uid,1)
          end
      elseif (os.date("%X") == "18:00:00") or (os.date("%X") == "18:00:05") then
          broadcastMessage(" recriada! ", MESSAGE_EVENT_ADVANCE)
          if wall.itemid ~= 1515 then  
               doCreateItem(1515,wallpos)
          end
      end 
end

return TRUE
end
