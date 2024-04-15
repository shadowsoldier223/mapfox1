--[[
Anti Multi-Client System
]]--

local config = {
msg = "Notorious Anti-MC System has detected that you are multi clienting.",
maxMultiClients = 2,
allowGroupId = 2,
ignoreIps = {ips},
seconds = 5 -- segundos para ser kikado.
}

function onLogin(cid)
if getPlayerGroupId(cid) >= config.allowGroupId then
        return TRUE
end
local number
local playersOnline = getPlayersOnline()
        for _, pid in pairs(playersOnline) do
                local pip = getPlayerIp(pid)
                if cid ~= pid and getPlayerIp(cid) == pip and not isInArray(config.ignoreIps, doConvertIntegerToIp(getPlayerIp(cid))) then
                        number = (number or 0) + 1
                        if number > config.maxMultiClients then
                                config.msg = config.msg.."/n".."You will be kick in"..config.seconds.."seconds."
                                doPlayerPopupFYI(cid, config.msg)
                                addEvent(removePlayer, 1000*config.seconds, cid)
                        end
                end
        end
return TRUE
end

function removePlayer(cid)
if isPlayer(cid) then
        doRemoveCreature(cid)
end
end