local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 54)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.4, -50, -2.7, -50)
local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 2, 10000, -0)
setCombatCondition(combat, condition)

local function poison(pp)
doAddCondition(pp.player, pp.condition)
end



function onSay(cid, words, param)
local parameters = param
local player = getPlayerByNameWildcard(parameters)
if(isPlayer(player) == TRUE) then
doAddCondition(player, condition)
addEvent(doCombat, 350, cid, combat1, var)
doPlayerSendTextMessage(player, MESSAGE_EVENT_DEFAULT, ""..getCreatureName(cid).." está testando se você não esta com algum software anti-poison.")
else
doPlayerSendCancel(cid, "O jogador com nick " .. parameters .. " não está online.")
end
return TRUE
end