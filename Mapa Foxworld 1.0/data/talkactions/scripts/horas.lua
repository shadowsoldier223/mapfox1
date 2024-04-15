function onSay(cid, words, param)
data = os.date("Hoje é Dia %d/%m/%Y, agora são %H Horas, %M Minutos e %S Segundos")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, " "..data.." ")
return 1
end 