function onUse(cid, item, frompos, item2, topos)

if item.itemid == 5792 then
sorteado = math.random (1, 10)
doPlayerSendTextMessage(cid,22,"O número sorteado foi: "..sorteado..". ")
else
end

return 1
end
