--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--

local ring = 8979

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1.9, -200, -2.0, -250)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -2.4, -200, -2.0, -250)
local condition2 = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 2000)
--setConditionParam(condition2, CONDITION_PARAM_SPEED, -50)
setConditionFormula(condition2, -0.8, 0, -0.8, 0)
setCombatCondition(combat2, condition2)

local arr1 = {
{0, 0, 0},
{0, 3, 0},
{0, 0, 0},
}

local arr2 = {
{0, 0, 0},
{0, 3, 0},
{0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end


function onCastSpell(cid, var)
if getPlayerSlotItem(cid, 9).itemid == ring then
return doCombat(cid, combat2, var)

else
return doCombat(cid, combat1, var)

end
end