local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(condition, -0.7, 0, -0.7, 0)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
if (getPlayerVocation(cid) == 3) or (getPlayerVocation(cid) == 7) then
    if (getCreatureMana(cid) >= 0) then
    doPlayerAddMana(cid, -0)
    else
    doPlayerSendCancel(cid, "You do not have enough mana.")
    return true
    end
else
   if (getCreatureMana(cid) >= 0) then
   doPlayerAddMana(cid, 0)
   else
   doPlayerSendCancel(cid, "You do not have enough mana.")
   return true
   end
end
	return doCombat(cid, combat, var)
end
