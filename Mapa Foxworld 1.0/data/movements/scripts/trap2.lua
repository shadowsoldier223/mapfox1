function onStepIn(cid, item, pos)
	
if item.itemid == 1513 then
		
if isPlayer(cid) ~= TRUE then
			
doTargetCombatHealth(0, cid, COMBAT_PHYSICALDAMAGE, -200, -500, CONST_ME_NONE)
			
end
else
	
end
return TRUE

end