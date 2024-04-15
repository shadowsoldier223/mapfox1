local combatpremium = createCombatObject()
setCombatParam(combatpremium, COMBAT_PARAM_EFFECT, 14)
setCombatParam(combatpremium, COMBAT_PARAM_AGGRESSIVE, 0)

local conditionpremium = createConditionObject(CONDITION_HASTE)
setConditionParam(conditionpremium, CONDITION_PARAM_TICKS, 27000)
setConditionFormula(conditionpremium, 0.7, -56, 0.8, -56)
setCombatCondition(combatpremium, conditionpremium)


local combatfree = createCombatObject()
setCombatParam(combatfree, COMBAT_PARAM_EFFECT, 14)
setCombatParam(combatfree, COMBAT_PARAM_AGGRESSIVE, 0)

local conditionfree = createConditionObject(CONDITION_HASTE)
setConditionParam(conditionfree, CONDITION_PARAM_TICKS, 18000)
setConditionFormula(conditionfree, 0.6, -38, 0.7, -38)
setCombatCondition(combatfree, conditionfree)

local areapremium = createCombatArea(AREA_BEAM1)

setCombatArea(combatpremium, areapremium)



local areafree = createCombatArea(AREA_BEAM1)

setCombatArea(combatfree, areafree)



local function onCastSpellpremium(parameters)

doCombat(parameters.cid, parameters.combatpremium, parameters.var)

end



local function onCastSpellfree(parameters)

doCombat(parameters.cid, parameters.combatfree, parameters.var)

end




function onCastSpell(cid, var)

local parameters = { cid = cid, var = var, combatpremium = combatpremium, combatfree = combatfree }

if getPlayerStorageValue(cid,10005) >= 1 then

if getPlayerLookDir(cid) == 0 then
pos1 = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y +3, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x -1, y=getCreaturePosition(cid).y +3, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x +1, y=getCreaturePosition(cid).y +3, z=getCreaturePosition(cid).z}
elseif getPlayerLookDir(cid) == 1 then
pos1 = {x=getCreaturePosition(cid).x -3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x -3, y=getCreaturePosition(cid).y +1, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x -3, y=getCreaturePosition(cid).y -1, z=getCreaturePosition(cid).z}
elseif getPlayerLookDir(cid) == 2 then
pos1 = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y -3, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x -1, y=getCreaturePosition(cid).y -3, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x +1, y=getCreaturePosition(cid).y -3, z=getCreaturePosition(cid).z}
elseif getPlayerLookDir(cid) == 3 then
pos1 = {x=getCreaturePosition(cid).x +3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x +3, y=getCreaturePosition(cid).y +1, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x +3, y=getCreaturePosition(cid).y -1, z=getCreaturePosition(cid).z}
end
doSendDistanceShoot(getPlayerLookPos(cid), pos1, 40)
doSendDistanceShoot(getPlayerLookPos(cid), pos2, 40)
doSendDistanceShoot(getPlayerLookPos(cid), pos3, 40)

return doCombat(cid, combatpremium, var)


else


return doCombat(cid, combatfree, var)


end


end
