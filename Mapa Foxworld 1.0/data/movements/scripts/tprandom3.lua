local pos = { 
   {x = 75, y = 987, z = 12}, 
   {x = 50, y = 1012, z = 12}, 
   {x = 32, y = 1012, z = 12}, 
   {x = 7, y = 987, z = 12}, 
   {x = 7, y = 969, z = 12}, 
   {x = 32, y = 944, z = 12}, 
   {x = 50, y = 944, z = 12},
   {x = 75, y = 969, z = 12},
   {x = 41, y = 965, z = 12}, 
   {x = 54, y = 978, z = 12},
   {x = 41, y = 991, z = 12},
   {x = 28, y = 978, z = 12},
   {x = 148, y = 1001, z = 12},
}
 
function onStepIn(cid)
   doTeleportThing(cid, pos[math.random(#pos)])
   return true
end