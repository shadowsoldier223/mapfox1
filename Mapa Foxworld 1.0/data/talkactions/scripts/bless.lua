local bless = {1, 2, 3, 4, 5}
local cost = 250000
function onSay(cid, words, param)
for i = 1, table.maxn(bless) do
if(getPlayerBlessing(cid, bless[i])) then
doPlayerSendCancel(cid, "Você ja tem todas as bless.")
doSendMagicEffect(getPlayerPosition(cid), 2)
return TRUE
end
end

if(doPlayerRemoveMoney(cid, cost) == TRUE) then
for i = 1, table.maxn(bless) do
doPlayerAddBlessing(cid, bless[i])
end
doCreatureSay(cid, "Bless!" ,19)
doSendMagicEffect(getPlayerPosition(cid), 49)
doSendMagicEffect(getPlayerPosition(cid), 48)
else
doPlayerSendCancel(cid, "Você precisa de 250k para comprar bless.")
end
return TRUE
end