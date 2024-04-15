function onPrepareDeath(cid, killer)
loot = 5943
item = doPlayerAddItem(killer,loot,1)
doSetItemSpecialDescription(item,"This is the "..getItemName(loot).." of "..getPlayerName(cid).." at Level "..getPlayerLevel(cid)..".")
end