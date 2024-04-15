-- Piso Warlock

function onStepIn(cid, item, pos)

monstro = "warlock"
warlock1_pos = {x=440, y=561, z=7}
warlock2_pos = {x=440, y=562, z=7}
msg = "Você não deveria ter pisado aqui."

if item.uid == 11555 then

          doSummonCreature(monstro,warlock1_pos)
          doSummonCreature(monstro,warlock2_pos)
          doPlayerSendTextMessage(cid, 22, msg) 

end

return TRUE
end

