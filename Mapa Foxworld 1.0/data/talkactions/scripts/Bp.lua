---script by LEONARDO---
      function onSay(cid, words, param)

    if doPlayerRemoveMoney(cid,500) == 1 then
        doSendAnimatedText(getPlayerPosition(cid), "Backspace", TEXTCOLOR_RED)
        doPlayerAddItem(cid,1988,1)
    else
        doPlayerSendCancel(cid,"Custa 500 Gold Coins.")
    end
end