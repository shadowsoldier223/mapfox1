local pos = {
   {x = 19, y = 956, z = 12},
   {x = 63, y = 956, z = 12},
   {x = 63, y = 1000, z = 12},
   {x = 19, y = 1000, z = 12},
}
 
function onStepIn(cid)
   doTeleportThing(cid, pos[math.random(#pos)])
   return true
end