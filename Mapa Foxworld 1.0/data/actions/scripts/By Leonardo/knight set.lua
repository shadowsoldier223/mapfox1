-- poi chests by gorno

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2291 then
   		queststatus = getPlayerStorageValue(cid,2291)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Knight Armor.")
   			doPlayerAddItem(cid,2503,1)
   			setPlayerStorageValue(cid,2291,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 2292 then
   		queststatus = getPlayerStorageValue(cid,2292)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Knight Legs.")
   			doPlayerAddItem(cid,2504,1)
   			setPlayerStorageValue(cid,2292,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 2293 then
   		queststatus = getPlayerStorageValue(cid,2293)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Knight Helmet.")
   			doPlayerAddItem(cid,2474,1)
   			setPlayerStorageValue(cid,2293,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
