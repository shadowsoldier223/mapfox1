function onStepIn(cid, item, pos)

room = {x=145, y=561, z=15}
hell_pos = {x=145, y=561, z=15}
a_pos = {x=139, y=565, z=15}
b_pos = {x=151, y=565, z=15}
c_pos = {x=145, y=570, z=15}
d_pos = {x=145, y=562, z=15}
e_pos = {x=145, y=561, z=15}
f_pos = {x=141, y=564, z=15}
g_pos = {x=149, y=567, z=15}
doTeleportThing(cid, room)
doSummonCreature("hell lord soldier",hell_pos)
doSummonCreature("demon",a_pos)
doSummonCreature("warlock",b_pos)
doSummonCreature("hellfire fighter",c_pos)
doSummonCreature("warlock",d_pos)
doSummonCreature("demon",e_pos)
doSummonCreature("hellfire fighter",f_pos)
doSummonCreature("demon",g_pos)

return true
end