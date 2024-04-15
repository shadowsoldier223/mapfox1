---script by LEONARDO---
      function onSay(cid, words, param)

    if doPlayerRemoveMoney(cid,20000) == 1 then
        doSendAnimatedText(getPlayerPosition(cid), "RUNAS", TEXTCOLOR_RED)
        doPlayerAddItem(cid,2296,100)
        doPlayerAddItem(cid,2268,100)
        doPlayerAddItem(cid,2273,100)
        doPlayerAddItem(cid,2278,100)
        doPlayerAddItem(cid,2293,100)
        doPlayerAddItem(cid,2261,100)
        doPlayerAddItem(cid,2266,100)
        doPlayerAddItem(cid,2305,100)
        doPlayerAddItem(cid,2304,100)
    else
        doPlayerSendCancel(cid,"Custa 20k.")
    end
end