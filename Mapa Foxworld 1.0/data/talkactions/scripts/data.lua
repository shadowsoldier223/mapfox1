local data_event = {}
local function SendData(cid)
    if isPlayer(cid) == TRUE then
         if data_event[getPlayerGUID(cid)] ~= nil then
             if isPlayer(cid) == TRUE then
                 local tempo = os.time()
                 dataA = os.date("  ( %d/%m/%Y  |  %H:%M:%S )")
                 doPlayerSendTextMessage(cid,25," ~ FighterWorld Server Informa: ~ ")
                 doPlayerSendTextMessage(cid,22," "..dataA.."\n Token: "..tempo.." ")
	  doPlayerSendCancel(cid, "( !data mode: on | !data off para desativar )")
             end
             data_event[getPlayerGUID(cid)] = addEvent(SendData, 1000, cid)  
         end                                                       
    end
    return TRUE
end

local storage = 37251
function onSay(cid, words, param, channel)
local dataCheck = getPlayerStorageValue(cid, storage)
    if(param == "") then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Parâmetro do comando é necessário (on | off).")
    return TRUE
    end
     if (param == "on") then
        if (dataCheck == -1) then
            if (isPlayer(cid) == TRUE) then
            end
            data_event[getPlayerGUID(cid)] = addEvent(SendData, 1000, cid)
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sistema de Data ativado.")
            setPlayerStorageValue(cid, storage, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você já está com o sistema de Data ativado.")
        end
     elseif (param == "off") then
        stopEvent(data_event[getPlayerGUID(cid)])
        data_event[getPlayerGUID(cid)] = nil
        setPlayerStorageValue(cid, storage, -1)
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sistema de Data desativado.")
    end
    return TRUE
end