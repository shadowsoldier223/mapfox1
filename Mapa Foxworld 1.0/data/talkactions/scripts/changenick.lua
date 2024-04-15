function onSay(cid, words, param)

	if (param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command requires param.")
		return TRUE
	end

	local t = string.explode(param, ",")
	if (not t[1]) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você precisa dizer o novo nome do char.")
		return TRUE
	end

	if (t[2]) then
		nid = getPlayerByNameWildcard(t[2])
		if (nid == 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Character " .. t[2] .. " não achado.")
			return TRUE
		end
              end

              local pid = getPlayerGUID(nid)  
              doRemoveCreature(nid)
              db.executeQuery("UPDATE `players` SET `name` = '"..t[1].."' WHERE `name` = '"..t[2].."';") 

              return TRUE
end
