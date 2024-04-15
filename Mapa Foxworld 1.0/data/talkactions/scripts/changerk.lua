function onSay(cid, words, param)

	if (param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você precisa digitar o nome do char.")
		return TRUE
	end

              local char = getPlayerByName(param)

              local acc = getPlayerAccountId(char)
              local dig1 = math.random(1000,9999)
              local dig2 = math.random(1000,9999)
              local dig3 = math.random(1000,9999)
              local dig4 = math.random(1000,9999)

              local novakey = ""..dig1.."-"..dig2.."-"..dig3.."-"..dig4..""

              db.executeQuery("UPDATE `accounts` SET `key` = '"..novakey.."' WHERE `id` = '"..acc.."';")

              doRemoveCreature(char) 
              doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Nova Recovery Key gerada com sucesso para o char "..char..". Recovery Key: "..novakey.." ")
              return TRUE

end
