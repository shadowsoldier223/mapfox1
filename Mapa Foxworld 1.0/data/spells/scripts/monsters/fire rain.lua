local area = createCombatArea(AREA_SQUARE1X1)
function onCastSpell(cid, var) 
local target = getCreatureTarget(cid)
doSendDistanceShoot(getCreaturePosition(cid),{x = getCreaturePosition(cid).x - math.random(4,6), y = getCreaturePosition(cid).y - 5, z = getCreaturePosition(cid).z},31)
for x = 1, 5 do
    addEvent(furyAttackTarget,400*x+500,cid,target,{x = getCreaturePosition(target).x + math.random(-1,1), y = getCreaturePosition(target).y + math.random(-1,1), z = getCreaturePosition(target).z})
end
end
function furyAttackTarget(cid,target,pos)
if isCreature(cid) == TRUE and isCreature(target) == TRUE then
   doSendDistanceShoot({x = getCreaturePosition(target).x - math.random(4,6), y = getCreaturePosition(target).y - 5, z = getCreaturePosition(target).z},pos,49)
end
return TRUE
end