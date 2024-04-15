function onLogin(cid)
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		for i = PLAYERLOSS_EXPERIENCE, PLAYERLOSS_ITEMS do
			doPlayerSetLossPercent(cid, i, getConfigValue('deathLostPercent'))
		end
	end

               registerCreatureEvent(cid, "owned")
               registerCreatureEvent(cid, "conected")
               registerCreatureEvent(cid, "onPlayerdeath")
                registerCreatureEvent(cid, "onPrepareDeathinifi")
               registerCreatureEvent(cid, "boss")
               registerCreatureEvent(cid, "thalasteleport")
               registerCreatureEvent(cid, "thalas_teleport")
               doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)

	return TRUE
end
