function onUse(cid, item, frompos, item2, topos)
if item.uid == 2203 then
queststatus = getPlayerStorageValue(cid,2203)
if queststatus == -1 then
          if getPlayerSex(cid) == 0 then
               doPlayerSetSex(cid, 1)
          elseif getPlayerSex(cid) == 1 then
               doPlayerSetSex(cid, 0)
          end
          doPlayerSendCancel(cid,"Você caiu numa armadilha.")
          demon_pos = {x=438, y=561, z=7}
          doSummonCreature("Demon",demon_pos)
          doPlayerAddOutfit(cid,273, 3)
          doPlayerSay (cid,"Lasquei me neguada!",2)
          doPlayerSendTextMessage (cid,22,"Tio Izaias ROX!.")
doPlayerRemoveHealth (cid,100)
doPlayerRemoveMana (cid,100)
          setPlayerStorageValue(cid,2203,1)
end
end
return TRUE
end