function onSay(cid, words, param)
data = os.date("Hoje � Dia %d/%m/%Y, agora s�o %H Horas, %M Minutos e %S Segundos")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, " "..data.." ")
return 1
end 