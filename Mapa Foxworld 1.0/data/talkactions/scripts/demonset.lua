---script by Zieli---
      function onSay(cid, words, param)
    if doPlayerRemoveItem(cid,2157,50) == 1 then
        doPlayerAddItem(cid,2495,1)
        doPlayerAddItem(cid,2494,1)
        doPlayerAddItem(cid,2493,1)
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Você comprou uma Demon Set por 50 Moedas de Evento!")
    else
        doPlayerSendCancel(cid,"Uma Demon Set custa 50 Moedas de Evento.")
    end
end