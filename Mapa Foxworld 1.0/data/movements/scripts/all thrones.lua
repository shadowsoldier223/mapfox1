function onStepIn(cid, item, pos)
    if item.uid == 10001 then
        if getPlayerStorageValue(cid,1234561) == -1 then
            setPlayerStorageValue(cid,1234561,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have touched Verminor�s throne and absorbed some of his spirit.")
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have already absorbed some of Veminor�s spirit.")
        end
    elseif item.uid == 10002 then
        if getPlayerStorageValue(cid,1234562) == -1 then
            setPlayerStorageValue(cid,1234562,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have touched Infernatil�s throne and absorbed some of his spirit.")
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have already absorbed some of Infernatil�s spirit.")
        end
    elseif item.uid == 10003 then
        if getPlayerStorageValue(cid,1234563) == -1 then
            setPlayerStorageValue(cid,1234563,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have touched Tafariel�s throne and absorbed some of his spirit.")
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have already absorbed some of Tafariel�s spirit.")
        end
    elseif item.uid == 10004 then
        if getPlayerStorageValue(cid,1234564) == -1 then
            setPlayerStorageValue(cid,1234564,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have touched Apocalypse�s throne and absorbed some of his spirit.")
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have already absorbed some of Apocalypse�s spirit.")
        end
    elseif item.uid == 10005 then
        if getPlayerStorageValue(cid,1234565) == -1 then
            setPlayerStorageValue(cid,1234565,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have touched Pumin�s throne and absorbed some of his spirit.")
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have already absorbed some of Pumin�s spirit.")
        end
    elseif item.uid == 10006 then
        if getPlayerStorageValue(cid,1234566) == -1 then
            setPlayerStorageValue(cid,1234566,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have touched Bazir�s throne and absorbed some of his spirit.")
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have already absorbed some of Bazir�s spirit.")
        end
    elseif item.uid == 10007 then
        if getPlayerStorageValue(cid,1234567) == -1 then
            setPlayerStorageValue(cid,1234567,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have touched Ashfalor�s throne and absorbed some of his spirit.")
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have already absorbed some of Ashfalor�s spirit.")
        end
    end
    return 1
end