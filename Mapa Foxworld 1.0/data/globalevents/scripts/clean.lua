function executeClean()
	doCleanMap()
	doSaveServer()
	doBroadcastMessage("O mapa foi limpo e o server salvo.")
	return TRUE
end

function onThink(interval, lastExecution)
	doBroadcastMessage("O Mapa será limpo, e o server será salvo em 1 minuto.")
	addEvent(executeClean, 60000)
	return TRUE
end