local combatpremium = createCombatObject()
setCombatParam(combatpremium, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combatpremium, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatFormula(combatpremium, COMBAT_FORMULA_LEVELMAGIC, -3.4, -200, -3.5, -220)


local combatfree = createCombatObject()

setCombatParam(combatfree, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combatfree, COMBAT_PARAM_EFFECT, 5)

setCombatFormula(combatfree, COMBAT_FORMULA_LEVELMAGIC, -2.7, -150, -2.8, -200)



local areapremium = createCombatArea(AREA_CROSS5X5)

setCombatArea(combatpremium, areapremium)



local areafree = createCombatArea(AREA_CROSS5X5)

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

return doCombat(cid, combatpremium, var)


else


return doCombat(cid, combatfree, var)


end


end