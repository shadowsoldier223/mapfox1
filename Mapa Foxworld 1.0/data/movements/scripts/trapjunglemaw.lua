function onStepIn(cid, item, pos)
		
if item.itemid == 4208 then
	
      if isPlayer(cid) ~= TRUE then
			
      doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -10, -100, 46)
			    		
      elseif isPlayer(cid) == TRUE then
			
      doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -50, -150, 46)
			        		
      end

doTransformItem(item.uid, item.itemid + 1)
	
elseif item.itemid == 4209 then

doTransformItem(item.uid, item.itemid - 1)
	
end	
return TRUE

end

