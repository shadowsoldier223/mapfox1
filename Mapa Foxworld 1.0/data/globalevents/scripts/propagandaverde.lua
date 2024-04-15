-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Bot somente nos Trainers, achou alguem usando fora? poste o vídeo na nossa nova comunidade do faccebook",
"A equipe Scorpion Server nunca solicitara os dados de sua conta.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],25)
return TRUE
end