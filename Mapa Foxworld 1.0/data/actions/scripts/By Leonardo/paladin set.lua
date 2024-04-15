-- poi chests by gorno

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 1391 then
   		queststatus = getPlayerStorageValue(cid,1391)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a paladin heaband.")
   			doPlayerAddItem(cid,7901,1)
   			setPlayerStorageValue(cid,1391,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 1392 then
   		queststatus = getPlayerStorageValue(cid,1392)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a paladin robe.")
   			doPlayerAddItem(cid,7898,1)
   			setPlayerStorageValue(cid,1392,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 1393 then
   		queststatus = getPlayerStorageValue(cid,1393)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a paladin legs.")
   			doPlayerAddItem(cid,7895,1)
   			setPlayerStorageValue(cid,1393,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 1394 then
   		queststatus = getPlayerStorageValue(cid,1394)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found an Aura Bow.")
   			doPlayerAddItem(cid,8858,1)
   			setPlayerStorageValue(cid,1394,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
