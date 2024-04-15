---script by LEONARDO---
      function onSay(cid, words, param)

    if doPlayerRemoveMoney(cid,100) == 1 then
        doSendAnimatedText(getPlayerPosition(cid), "FOOD!", TEXTCOLOR_RED)
        doPlayerAddItem(cid,2789,5)
    else
        doPlayerSendCancel(cid,"Custa 100 Gold Coins.")
    end
return TRUE
end