function onSay(cid, words, param)
	if(param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Paramêtros requeridos.")
		return TRUE
	end

	local creature = getCreatureByName(param)
	local player = getPlayerByNameWildcard(param)
	local waypoint = getWaypointPosition(param)
	local tile = string.explode(param, ",")
	local pos = {x = 0, y = 0, z = 0}

	if(player ~= 0 and (isPlayerGhost(player) == FALSE or getPlayerAccess(player) <= getPlayerAccess(cid))) then
		pos = getCreaturePosition(player)
	elseif(creature ~= 0 and (isPlayer(creature) == FALSE or (isPlayerGhost(creature) == FALSE or getPlayerAccess(creature) <= getPlayerAccess(cid)))) then
		pos = getCreaturePosition(creature)
	elseif(type(waypoint) == 'table' and waypoint.x ~= 0 and waypoint.y ~= 0) then
		pos = waypoint
	elseif(tile[3]) then
		pos = {x = tile[1], y = tile[2], z = tile[3]}
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Paramêtro inválido especificado.")
		return TRUE
	end

	if(pos == LUA_ERROR or isInArray({pos.x, pos.y, pos.z}, 0) == TRUE) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Destino inalcançavel.")
		return TRUE
	end

	pos = getClosestFreeTile(cid, pos, TRUE)
	if(pos == LUA_ERROR or isInArray({pos.x, pos.y, pos.z}, 0) == TRUE) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Ação impossível.")
		return TRUE
	end

	local tmp = getCreaturePosition(cid)
	if(doTeleportThing(cid, pos, TRUE) ~= LUA_ERROR and isPlayerGhost(cid) ~= TRUE) then
		
	end

	return TRUE
end