function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5032 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"Você recebeu uma Bright Sword.")
   			doPlayerAddItem(cid,2407,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"Você já pegou um dos 3 items.")
   		end
   	elseif item.uid == 5030 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"Você recebeu um Knight Axe.")
   			doPlayerAddItem(cid,2430,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"Você já pegou um dos 3 items.")
   		end
   	elseif item.uid == 5031 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"Você recebeu um Skull Staff.")
   			doPlayerAddItem(cid,2434,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"Você já pegou um dos 3 items.")
   		end
	else
		return 0
   	end

   	return 1
end
