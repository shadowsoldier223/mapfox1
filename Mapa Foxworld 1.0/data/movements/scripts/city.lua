function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 1
mensagem = 'Voce virou um morador da Slayer City'

if item.uid == 17203 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end