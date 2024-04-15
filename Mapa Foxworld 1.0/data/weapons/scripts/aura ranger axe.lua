local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 68)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 29)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0, -200, -0, -250)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -0, -100, -0, -150)

arr1 = {
{3}}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr1)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
local function onUseWeapon1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end
local function onUseWeapon2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end
function onUseWeapon(cid, var)
local parameters = { cid = cid, var = var,combat1 = combat1,combat2 = combat2 }
addEvent(onUseWeapon1, 0, parameters)
addEvent(onUseWeapon2, 0, parameters)
end
