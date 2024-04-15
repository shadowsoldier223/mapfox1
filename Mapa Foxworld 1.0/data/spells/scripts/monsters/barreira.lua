local combati = createCombatObject()
setCombatParam(combati, COMBAT_PARAM_AGGRESSIVE, 0)

local conditioni = createConditionObject(CONDITION_OUTFIT)
setConditionParam(conditioni, CONDITION_PARAM_TICKS, 3600000)
addOutfitCondition(conditioni, 3766, 0, 0, 0, 0, 0)
setCombatCondition(combati, conditioni)


local combatq = createCombatObject()
setCombatParam(combatq, COMBAT_PARAM_AGGRESSIVE, 0)

local conditionq = createConditionObject(CONDITION_OUTFIT)
setConditionParam(conditionq, CONDITION_PARAM_TICKS, 3600000)
addOutfitCondition(conditionq, 3767, 0, 0, 0, 0, 0)
setCombatCondition(combatq, conditionq)

local area = createCombatArea(AREA_BEAM1)

setCombatArea(combati, area)

setCombatArea(combatq, area)



local function onCastSpelli(parameters)

doCombat(parameters.cid, parameters.combati, parameters.var)

end



local function onCastSpellq(parameters)

doCombat(parameters.cid, parameters.combatq, parameters.var)

end




function onCastSpell(cid, var)

local parameters = { cid = cid, var = var, combati = combati, combatq = combatq }

if getCreatureHealth(cid)  > 50000 then
return doCombat(cid, combati, var)
else
return doCombat(cid, combatq, var)
end


end