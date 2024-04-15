local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10*1000)

local function paralyze(lala)
doAddCondition(lala.player, lala.condition)
end



function onSay(cid, words, param)
local parameters = param
local player = getPlayerByNameWildcard(parameters)
if(isPlayer(player) == TRUE) then
doAddCondition(player, condition)
addEvent(paralyze, 1*1000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*2000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*3000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*4000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*5000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*6000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*7000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*8000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*9000, {cid = cid, player = player, condition = condition})
addEvent(paralyze, 1*10000, {cid = cid, player = player, condition = condition})
doPlayerSendCancel(cid, "Voc� acaba de lan�ar paralyze no jogador " .. parameters .. " .")
doPlayerSendTextMessage(player, MESSAGE_EVENT_DEFAULT, ""..getCreatureName(cid).." est� testando se voc� n�o esta com algum software anti-paralyze.")
else
doPlayerSendCancel(cid, "O jogador com nick " .. parameters .. " n�o est� online.")
end
return TRUE
end