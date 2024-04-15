function onSay(cid, words, param)
if(words == "/addpremium") then
local t = string.explode(param, ",") 
local player = getPlayerByNameWildcard(t[1]) 
local premiumdays = tonumber(t[2]) 
      if (not t[1]) then 
      doPlayerSendCancel(cid, "You must fill with a player name.") 
      elseif (premiumdays < 0) then 
         doPlayerAddPremiumDays(player, premiumdays) 
         doPlayerSendTextMessage(cid,22,"Você removeu " .. t[2] .. " dias de premium de " .. player .. ".") 
         doPlayerSendTextMessage(player,25,"Você perdeu " .. t[2] .. " dias de premium.") 
      elseif (premiumdays >= 1 and premiumdays < 200) then 
         doPlayerAddPremiumDays(player, premiumdays) 
         doPlayerSendTextMessage(cid,22,"Você adicionou " .. premiumdays .. " dias de premium ao character " .. getCreatureName(player) .. ".") 
         doPlayerSendTextMessage(player,25,"Você recebeu " .. premiumdays .. " dias de premium.")       
     end
elseif(words == "/delpremium") then
local t = string.explode(param, ",")
if not t[2] then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid param specified.")
end
local player = getPlayerByName(t[1])
local quanty = t[2]
local pid = getPlayerByNameWildcard(t[1])
if(not pid or (isPlayerGhost(pid) and  getPlayerAccess(pid) > getPlayerAccess(cid))) then 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O character com esse nome não existe ou está offline.") 
return TRUE 
end 
doPlayerAddPremiumDays(player, -quanty)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você removeu "..quanty.." dias de premium do character " .. t[1] .. ".")
elseif(words == "/checkpremium") then
if not param then 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid param specified.") 
end 
local player = getPlayerByName(param) 
local pid = getPlayerByNameWildcard(param) 
if(not pid or (isPlayerGhost(pid) and  getPlayerAccess(pid) > getPlayerAccess(cid))) then 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O jogador com esse nome não existe ou está offline.") 
return TRUE 
end 
local quantity = math.floor(getPlayerPremiumDays(player)) 
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "O jogador tem ".. (quantity < 0 and 0 or quantity) .." dias de premium no character.")  
end
return TRUE 
end 