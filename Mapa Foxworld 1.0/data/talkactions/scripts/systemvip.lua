local timenow = os.time()

local quantity = math.floor((getPlayerStorageValue(player, 13500) - timenow)/(24 * 60 * 60))
local quantityh = math.floor((getPlayerStorageValue(player, 13500) - timenow)/(1 * 60 * 60))
doPlayerPopupFYI(cid, "O jogador tem ".. (quantityh < 0 and 0 or quantityh) .." horas de VIP no character, dando o total de ".. (quantity < 0 and 0 or quantity) .." dias.")
return TRUE
end


elseif(words == "/delvip") then
if getPlayerAccess(cid) == 5 then
local dec = MESSAGE_INFO_DESCR
if(param == "") then return TRUE,doPlayerSendTextMessage(cid,18,"Command param required.")
end
local C,t = {},string.explode(param, ",")
C.pos = getPlayerPosition(cid)
C.uid = getCreatureByName(t[1])
C.time = ((tonumber(t[2]) == nil) and 1 or tonumber(t[2]))*3600*24 --Tempo da vip por dia.
C.days = (tonumber(t[2]) == nil) and 1 or tonumber(t[2]) --Dias de vip.
local pid = getPlayerByNameWildcard(t[1])
if(not pid or (isPlayerGhost(pid) and getPlayerAccess(pid) > getPlayerAccess(cid))) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player with this name doesn\'t exist or is offline.")
return TRUE
end

if(getPlayerStorageValue(C.uid,13500) < C.time)then
doPlayerSendTextMessage(cid,dec,'O jogador '..t[1]..' não possui '..C.days..' dias de vip.')
else
doPlayerSendTextMessage(cid,dec,'Você removeu '..C.days..' dias de vip do player '..t[1]..'.')
setPlayerStorageValue(C.uid,13500,getPlayerStorageValue(C.uid,13500)-C.days)
end
doSendMagicEffect(C.pos, math.random(28,30))
end
end

return TRUE
end