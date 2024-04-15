local condition = createConditionObject(CONDITION_MUTED)
setConditionParam(condition, CONDITION_PARAM_TICKS, 120*1000)

function onSay(cid, words, param)

jogador = getPlayerByName(param)
if getPlayerGroupId(cid) >= 3 then     
     if getPlayerGroupId(jogador) <= 2 then
     doPlayerSendCancel(cid, "Você acaba de mutar por 2 minutos o jogador " .. jogador .. " .")
     doAddCondition(jogador, condition)
     elseif getPlayerGroupId(jogador) >= 3 then
     doPlayerSendCancel(cid, "Você não pode usar esse comando nesse jogador.")
     else
     doPlayerSendCancel(cid, "Este Player não está online, ou não existe.")
     end
else
doPlayerSendCancel(cid, "Somente membros da Staff podem usar este comando.")
end

return TRUE
end