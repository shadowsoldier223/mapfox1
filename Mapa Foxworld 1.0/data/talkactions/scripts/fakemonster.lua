-- "Fake" Monster - By Leonardo

function onSay(cid, words, param)


      local pos = getCreaturePosition(cid)
      local sm = doCreateMonster(param, pos)
      doTargetCombatHealth(cid, sm, COMBAT_PHYSICALDAMAGE, -(getCreatureHealth(sm)-10), -(getCreatureHealth(sm)-10), 66)
      doCreatureSetDropLoot(sm, 0)
	
return TRUE

end
