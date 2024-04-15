local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_CAKE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_CAKE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0, -200, -0, -400)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end