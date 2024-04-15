-- poi chests by gorno

function onUse(cid, item, frompos, item2, topos)

              if item.uid == 3332 then
   		queststatus = getPlayerStorageValue(cid,3332)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Magma Legs.")
   			doPlayerAddItem(cid,7894,1)
   			setPlayerStorageValue(cid,3332,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 3333 then
   		queststatus = getPlayerStorageValue(cid,3333)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Magma Coat.")
   			doPlayerAddItem(cid,7899,1)
   			setPlayerStorageValue(cid,3333,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 3334 then
   		queststatus = getPlayerStorageValue(cid,3334)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Magma Monocle.")
   			doPlayerAddItem(cid,7900,1)
   			setPlayerStorageValue(cid,3334,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
   	elseif item.uid == 3335 then
   		queststatus = getPlayerStorageValue(cid,3335)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found an Aura Wand.")
   			doPlayerAddItem(cid,7429,1)
   			setPlayerStorageValue(cid,3335,1)
   		else
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
