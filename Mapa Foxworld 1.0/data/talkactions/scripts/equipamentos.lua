---script by LEONARDO---
      function onSay(cid, words, param)

    if doPlayerRemoveMoney(cid,5000) == 1 then
        doSendAnimatedText(getPlayerPosition(cid), "EQUIP !", TEXTCOLOR_RED)
        doPlayerAddItem(cid,2554,1)
        doPlayerAddItem(cid,2580,1)
        doPlayerAddItem(cid,2120,1)
    else
        doPlayerSendCancel(cid,"Custa 5000k.")
    end
end