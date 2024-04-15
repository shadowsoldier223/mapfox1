local colors = {
	["branco"] = MESSAGE_EVENT_ADVANCE,
	["event"] = MESSAGE_EVENT_DEFAULT,
	["laranja"] = MESSAGE_STATUS_CONSOLE_ORANGE,
	["verde"] = MESSAGE_INFO_DESCR,
	["small"] = MESSAGE_STATUS_SMALL,
	["azul"] = MESSAGE_STATUS_CONSOLE_BLUE,
	["vermelho"] = MESSAGE_STATUS_WARNING,
	["default"] = MESSAGE_STATUS_DEFAULT
}

function onSay(cid, words, param)
	if(param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Paramêtros requeridos.")
		return TRUE
	end

	local t = string.explode(param, ";")
	if(not t[2]) then
		doBroadcastMessage(t[1])
	elseif(doBroadcastMessage(t[2], colors[t[1]]) == LUA_ERROR) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Cor de mensagem não disponível.")
		return TRUE
	end
	return TRUE
end