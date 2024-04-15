function onLogin(cid)

      if getPlayerStorageValue(cid, 21202) > 0 then

            local voc = getPlayerVocation(cid)

            if getPlayerPromotionLevel(cid) > 0 then
              voc = voc - (getPlayerPromotionLevel(cid) * 4)
            end

            if getPlayerStorageValue(cid, gems.storage[voc]) > 0 then
                  sendGemEffect(cid, gems.storage[voc], gems.interval[voc])
            end  
 
      end   

      if getPlayerSkillLevel(cid, 4) > 200 then
            local pid = getPlayerGUID(cid)  
            doRemoveCreature(cid)
            db.executeQuery("UPDATE `player_skills` SET `value` = 110 WHERE `player_id` = ".. pid .. " and `skillid` = 4;")  
      end

return TRUE
end