function doRemoveGemEffect(cid)

  local voc = getPlayerVocation(cid)

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end

  if getPlayerStorageValue(cid, gems.storage[voc]) == -1 then
  else
    setPlayerStorageValue(cid, gems.storage[voc], 0)
  end

end

function doUseGem(cid, item)

  local level = getPlayerLevel(cid)
  local voc = getPlayerVocation(cid)
  local interval = gems.interval[voc]

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end

  if item.itemid ~= gems.id[voc] or getPlayerStorageValue(cid, gems.storage[voc]) > 0 then
    return FALSE
  end

  setPlayerStorageValue(cid, gems.storage[voc], 1)
  sendGemEffect(cid, gems.storage[voc], gems.interval[voc])
  doRemoveItem(item.uid, 1)

  return TRUE  
end

function sendGemEffect(cid, storage, interval)

if isPlayer(cid) then

  local pos = getThingPos(cid)
  local voc = getPlayerVocation(cid)
  local level = getPlayerLevel(cid)
  local color = 1

  if level > 199 then

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end
          if voc == 1 then
            color = gemMsg.colorDruid[math.random(1,#gemMsg.colorElderDruid)]
          elseif voc == 2 then
            color = gemMsg.colorSorcerer[math.random(1,#gemMsg.colorMasterSorcerer)]
          elseif voc == 3 then
            color = gemMsg.colorPaladin[math.random(1,#gemMsg.colorRoyalPaladin)]
          elseif voc == 4 then
            color = gemMsg.colorKnight[math.random(1,#gemMsg.colorEliteKnight)]
          end

  doSendAnimatedText(pos, gemMsg.rnd[math.random(1,#gemMsg.rnd)], color)
    if getPlayerStorageValue(cid, gems.storage[voc]) >= 1 then 
      addEvent(sendGemEffect, interval, cid, storage, interval)
    end

else
stopEvent(sendGemEffect(cid, storage, interval))
end

end

function doRemoveAllGemEffect(cid)
  for i = 1, table.maxn(gms.storage) do
    setPlayerStorageValue(cid, gems.storage[i], 0)
  end
  return TRUE
end

function isGemActivated(cid)

  local voc = getPlayerVocation(cid)

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end

  if getPlayerStorageValue(cid, gems.storage[voc]) > 0 then
    return TRUE
  end
  return FALSE
end

  return TRUE
end