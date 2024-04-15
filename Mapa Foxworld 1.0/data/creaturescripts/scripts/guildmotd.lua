function onJoinChannel(cid, channelId, users)
	if(channelId == CHANNEL_GUILD) then
		local guildId = getPlayerGuildId(cid)
		if(guildId ~= LUA_ERROR) then
			local guildMotd = getGuildMotd(guildId)
			if(guildMotd ~= "") then
				addEvent(doPlayerSendChannelMessage, 150, cid, "", "Mensagem do Dia: " .. guildMotd, TALKTYPE_CHANNEL_W, CHANNEL_GUILD)
			end
		end
	end

	return TRUE
end