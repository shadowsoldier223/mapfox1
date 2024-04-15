function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 2
mensagem = 'Voce virou um morador da Cidade NoN PvP'

if item.uid == 17202 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end