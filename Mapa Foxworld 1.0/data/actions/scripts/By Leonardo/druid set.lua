function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2461 then
   		queststatus = getPlayerStorageValue(cid,2461)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Terra Coat.")
   			doPlayerAddItem(cid,7884,1)
   			setPlayerStorageValue(cid,2461,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 2462 then
   		queststatus = getPlayerStorageValue(cid,2462)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Terra Legs.")
   			doPlayerAddItem(cid,7885,1)
   			setPlayerStorageValue(cid,2462,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 2463 then
   		queststatus = getPlayerStorageValue(cid,2463)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Terra Hood.")
   			doPlayerAddItem(cid,7903,1)
   			setPlayerStorageValue(cid,2463,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 2464 then
   		queststatus = getPlayerStorageValue(cid,2464)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found an Aura Rod.")
   			doPlayerAddItem(cid,7410,1)
   			setPlayerStorageValue(cid,2464,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
