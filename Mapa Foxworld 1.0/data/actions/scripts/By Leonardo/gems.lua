function onUse(cid, item, fromPosition, itemEx, toPosition)

if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

  local voc = getPlayerVocation(cid)
  if getPlayerPromotionLevel(cid) > 0 then
     voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end
  gem = gems.id[voc]

  if item.itemid == gem then

          if getPlayerLevel(cid) < 200 then
          doPlayerSendTextMessage(cid,22,"É necessário level 200 ou maior para absorver uma gema espiritual!")
          else

                if getPlayerPromotionLevel(cid) > 0 then

                      if getPlayerStorageValue(cid,21202) == -1 then
                      setPlayerStorageValue(cid,21202,1)
                      doUseGem(cid, item)
                      doPlayerSendTextMessage(cid,22,"Você absorveu uma gema espiritual!")
                      doSendMagicEffect(getPlayerPosition(cid),65)
                      else
                      doPlayerSendTextMessage(cid,22,"Você ainda possui uma gema espiritual absorvida.")
                      end

                else
                doPlayerSendTextMessage(cid,22,"Você precisa estar promovido para usar a gema.")
                end
 
          end

  else
  return 0
  end
  return 1
  end 
