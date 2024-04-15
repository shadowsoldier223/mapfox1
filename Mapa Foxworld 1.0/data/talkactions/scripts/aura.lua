function onSay(cid, words, param)

char = getPlayerByName(param)

if (getPlayerGroupId(cid) == 6) then 

    if getPlayerStorageValue(char, 10001) == 0 then    
        setPlayerStorageValue(char,10005,1)
        setPlayerStorageValue(char,10002,1)
        setPlayerStorageValue(char,10007,1)
        setPlayerStorageValue(char,10001,1)
        doPlayerSendTextMessage(cid,22,"Você adicinou Full aura ao char " .. char ..".")
        doPlayerSendTextMessage(char,22,"Você recebeu Full Aura.")
    else
        setPlayerStorageValue(char,10005,0)
        setPlayerStorageValue(char,10002,0)
        setPlayerStorageValue(char,10007,0)
        setPlayerStorageValue(char,10001,0)
        doPlayerSendTextMessage(cid,22,"Você removeu a Full Aura do char " .. char ..".")
    end

else
doPlayerSendCancel(cid, "Somente Administradores podem usar esse comando.")
end

return TRUE
end