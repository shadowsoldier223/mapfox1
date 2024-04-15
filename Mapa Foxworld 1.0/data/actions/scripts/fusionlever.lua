function onUse(cid, item, frompos, item2, topos)
          local cfg = {
                    firstItemId = 2335, -- ID do primeiro item
                    secondItemId = 2336, -- ID do segundo item
                    threeItemId = 2337, -- ID do segundo item
                    fourItemId = 2338, -- ID do segundo item
                    fiveItemId = 2339, -- ID do segundo item
                    sixItemId = 2340, -- ID do segundo item
                    sevenItemId = 2341, -- ID do segundo item
                    rewardItemId = 2342 -- ID do item fundido
          }
 
          local firstItemPos = {x = 609, y = 806, z = 12, stackpos=2} -- Posição do primeiro item
          local secondItemPos = {x = 603, y = 806, z = 12, stackpos=2} -- Posição do segundo item
          local threeItemPos = {x = 604, y = 803, z = 12, stackpos=2} -- Posição do primeiro item
          local fourItemPos = {x = 608, y = 803, z = 12, stackpos=2} -- Posição do segundo item
          local fiveItemPos = {x = 606, y = 803, z = 12, stackpos=2} -- Posição do primeiro item
          local sixItemPos = {x = 609, y = 804, z = 12, stackpos=2} -- Posição do segundo item
          local sevenItemPos = {x = 603, y = 804, z = 12, stackpos=2} -- Posição do segundo item
          local rewardItemPos = {x = 606, y = 806, z = 12} -- Posição do item fundido
 
          local getFirstItem = getThingfromPos(firstItemPos)
          local getSecondItem = getThingfromPos(secondItemPos)
          local getThreeItem = getThingfromPos(threeItemPos)
          local getFourItem = getThingfromPos(fourItemPos)
          local getFiveItem = getThingfromPos(fiveItemPos)
          local getSixItem = getThingfromPos(sixItemPos)
          local getSevenItem = getThingfromPos(sevenItemPos)
 
          if item.uid == 9900 and item.itemid == 1945 and getFirstItem.itemid == cfg.firstItemId and getSecondItem.itemid == cfg.secondItemId and getThreeItem.itemid == cfg.threeItemId and getFourItem.itemid == cfg.fourItemId and getFiveItem.itemid == cfg.fiveItemId and getSixItem.itemid == cfg.sixItemId and getSevenItem.itemid == cfg.sevenItemId then
                    if doRemoveItem(getFirstItem.uid, 1) and doRemoveItem(getSecondItem.uid, 1) and doRemoveItem(getThreeItem.uid, 1) and doRemoveItem(getFourItem.uid, 1) and doRemoveItem(getFiveItem.uid, 1) and doRemoveItem(getSixItem.uid, 1) and doRemoveItem(getSevenItem.uid, 1) then
                              doSendMagicEffect(firstItemPos, 2)
                              doSendMagicEffect(secondItemPos, 2)
                              doSendMagicEffect(threeItemPos, 2)
                              doSendMagicEffect(fourItemPos, 2)
                              doSendMagicEffect(fiveItemPos, 2)
                              doSendMagicEffect(sixItemPos, 2)
                              doSendMagicEffect(sevenItemPos, 2)
                              doSendMagicEffect(rewardItemPos, 14)
                              doCreateItem(cfg.rewardItemId, 1, rewardItemPos)
                              doTransformItem(item.uid, item.itemid+1)
                              doPlayerSendTextMessage(cid, 18, 'Parabéns! você forjou os item '.. getItemNameById(cfg.firstItemId) ..' com '.. getItemNameById(cfg.secondItemId) ..' e '.. getItemNameById(cfg.threeItemId) ..' e '.. getItemNameById(cfg.fourItemId) ..' e '.. getItemNameById(cfg.fiveItemId) ..' e '.. getItemNameById(cfg.sixItemId) ..' e '.. getItemNameById(cfg.sevenItemId) ..' e agora tem '.. getItemNameById(cfg.rewardItemId) ..'.')
                    else
                              return FALSE
                    end
          elseif item.uid == 9900 and item.itemid == 1946 then
                    if doRemoveItem(getFirstItem.uid, 1) and doRemoveItem(getSecondItem.uid, 1) and doRemoveItem(getThreeItem.uid, 1) and doRemoveItem(getFourItem.uid, 1) and doRemoveItem(getFiveItem.uid, 1) and doRemoveItem(getSixItem.uid, 1) and doRemoveItem(getSevenItem.uid, 1) then
                              doSendMagicEffect(firstItemPos, 2)
                              doSendMagicEffect(secondItemPos, 2)
                              doSendMagicEffect(threeItemPos, 2)
                              doSendMagicEffect(fourItemPos, 2)
                              doSendMagicEffect(fiveItemPos, 2)
                              doSendMagicEffect(sixItemPos, 2)
                              doSendMagicEffect(sevenItemPos, 2)
                              doSendMagicEffect(rewardItemPos, 14)
                              doCreateItem(cfg.rewardItemId, 1, rewardItemPos)
                              doTransformItem(item.uid, item.itemid-1)
                              doPlayerSendTextMessage(cid, 18, 'Parabéns! você forjou '.. getItemNameById(cfg.firstItemId) ..' com '.. getItemNameById(cfg.secondItemId) ..' e '.. getItemNameById(cfg.threeItemId) ..' e '.. getItemNameById(cfg.fourItemId) ..' e '.. getItemNameById(cfg.fiveItemId) ..' e '.. getItemNameById(cfg.sixItemId) ..' e '.. getItemNameById(cfg.sevenItemId) ..' e agora tem '.. getItemNameById(cfg.rewardItemId) ..'.')
                    else
                              return FALSE
                    end
          else
                    doPlayerSendTextMessage(cid, 18, 'Você não colocou os itens necessários para Forjar o Helmet .')
          end
          return TRUE
end