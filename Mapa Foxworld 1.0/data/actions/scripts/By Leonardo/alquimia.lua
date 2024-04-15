--- Lavanca de [Alquimia] ---

function onUse(cid, item, frompos, item2, topos)

    if item.uid == 1571 and item.itemid == 9911 then

    pedestalpos = {x=444, y=561, z=7, stackpos=255}
    pedestal = getThingFromPos(pedestalpos)    

        if pedestal.itemid == 2469 then 
        spellstorage = 2469
        elseif pedestal.itemid == 2153 then 
        spellstorage = 2153
        elseif pedestal.itemid == 2140 then 
        spellstorage = 2140
        elseif pedestal.itemid == 2110 then 
        spellstorage = 2110
        elseif pedestal.itemid == 2519 then 
        spellstorage = 2519
        else 
        doPlayerSendTextMessage(cid,22,"Você deve utilizar algum item de sacrifício.")
        end 

              if (spellstorage > 2000) then
              local chance = math.random(1, 2)
              doPlayerSendTextMessage(cid,22,"Tentativa de Alquimia realizada. ") 
              doSendMagicEffect(pedestalpos,45)
              doRemoveItem(pedestal.uid,1)
              doCreatureAddMana (cid, -1000)
	doCreatureAddHealth (cid, -1000) 
 
                    if (chance == 1) then
                    setPlayerStorageValue(cid,spellstorage,10) 
                    doPlayerSendTextMessage(cid,22,"Alquimia bem sucedida, você ganhou: 3 cargas da magia correspondente ao seu sacríficio.")
                    else
                    doPlayerSendTextMessage(cid,22,"Alquimia mal sucedida, utilize charms da próxima vez.")
                    end 

              else
              end

       pedestal.itemid = 100
       spellstorage = 100

    else
    end

return TRUE
end

--- Linhas de codigo na magia antes de executar
---    charges = getPlayerStorageValue(cid,2469)
---  if ((getPlayerMana(cid) >= config.mana) and (charges >= 1)) then
---    setPlayerStorageValue(cid, 2469, (getPlayerStorageValue(cid, 2469) - 1))
---    cargas = getPlayerStorageValue(cid, 2469) 
---    doPlayerSendCancel(cid, "Agora você possuí "..cargas.." cargas da magia.")
