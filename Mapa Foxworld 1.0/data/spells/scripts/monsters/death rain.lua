local area = createCombatArea(AREA_CIRCLE2X2)
function onCastSpell(cid, var) 
local target = getCreatureTarget(cid)
for x = 1, 4 do
    addEvent(furyAttackTarget,250*x+500,cid,target,{x = getCreaturePosition(target).x + math.random(-1,1), y = getCreaturePosition(target).y + math.random(-1,1), z = getCreaturePosition(target).z})
end
end
function furyAttackTarget(cid,target,pos)
if isCreature(cid) == TRUE and isCreature(target) == TRUE then
   doSendDistanceShoot({x = getCreaturePosition(target).x - math.random(4,6), y = getCreaturePosition(target).y - 5, z = getCreaturePosition(target).z},pos,3)
   doAreaCombatHealth(cid,COMBAT_FIREDAMAGE,pos,area,-1,-200,36)
   doAreaCombatHealth(cid,COMBAT_FIREDAMAGE,pos,area,-1,-500,36)
end
end