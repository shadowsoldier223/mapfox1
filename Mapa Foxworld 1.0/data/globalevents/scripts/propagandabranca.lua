-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Est� meio perdido? Pe�a ajuda no Help.",
"Se descobrir bugs ou erros n�o abuse dos mesmos, reporte a nossa Equipe.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end