function onSay(cid, words, param)
if(words == "!vipdays") then
local timenow = os.time()
local quantity = math.floor((getPlayerStorageValue(cid, 13500) - timenow)/(24 * 60 * 60))
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voc� tem ".. (quantity < 0 and 0 or quantity) .." dias de vip no seu character.")

elseif(words == "/addvip") then
if getPlayerAccess(cid) == 5 then
local t = string.explode(param, ",")
if not t[2] then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Par�metro inv�lido.")
end

local player = getPlayerByName(t[1])
local days = t[2]
local pid = getPlayerByNameWildcard(t[1])
if(not pid or (isPlayerGhost(pid) and getPlayerAccess(pid) > getPlayerAccess(cid))) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O jogador com esse nome n�o existe ou n�o est� online.")
return TRUE
end

local daysvalue = days*3600*24
local storageplayer = getPlayerStorageValue(player, 13500)
local timenow = os.time()

local time = storageplayer <= 0 and (timenow + daysvalue)

doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "Foram adicionados "..days.." dias de VIP no seu character.")
setPlayerStorageValue(player, 13500, time)
local quantity = math.floor((getPlayerStorageValue(player,13500) - timenow)/(3600*24))
doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "Voc� tem "..quantity.." dias de VIP restantes.")
end

elseif(words == "/checkvip") then
if getPlayerAccess(cid) == 5 then
if not param then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Par�metro inv�lido.")
end

local player = getPlayerByName(param)
local pid = getPlayerByNameWildcard(param)
if(not pid or (isPlayerGhost(pid) and getPlayerAccess(pid) > getPlayerAccess(cid))) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O jogador com esse nome n�o existe ou n�o est� online.")
return TRUE
end

local timenow = os.time()

local quantity = math.floor((getPlayerStorageValue(player, 13500) - timenow)/(24 * 3600))
local quantityh = math.floor((getPlayerStorageValue(player, 13500) - timenow)/(3600))
doPlayerPopupFYI(cid, "O jogador tem ".. (quantityh < 0 and 0 or quantityh) .." horas de VIP no character, dando o total de ".. (quantity < 0 and 0 or quantity) .." dias.")
return TRUE
end


elseif(words == "/delvip") then
if getPlayerAccess(cid) == 5 then
local dec = MESSAGE_INFO_DESCR
if(param == "") then return TRUE,doPlayerSendTextMessage(cid,18,"Command param required.")
end

local timenow = os.time()

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
doPlayerSendTextMessage(cid,dec,'O jogador '..t[1]..' n�o possui '..C.days..' dias de vip.')
else
doPlayerSendTextMessage(cid,dec,'Voc� removeu '..C.days..' dias de vip do player '..t[1]..'.')
setPlayerStorageValue(C.uid,13500,getPlayerStorageValue(C.uid,13500)-C.time)
end
doSendMagicEffect(C.pos, math.random(28,30))
end
end

return TRUE
end