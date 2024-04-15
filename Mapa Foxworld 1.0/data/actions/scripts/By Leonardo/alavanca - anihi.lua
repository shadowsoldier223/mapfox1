-- playerpos  = The position of the players before teleport.
-- player  = Get the thing from playerpos.
-- playerlevel = Get the players levels.
-- questslevel  = The level you have to be to do this quest.
-- questtatus  = Get the quest status of the players.
-- demonpos  = The position of the demons.
-- nplayerpos  = The position where the players should be teleported too.
-- trash= position to send the demons to when clearing, 1 sqm in middle of nowhere is enough
-- starting = Upper left point of the annihilator room area.
-- ending = Bottom right point of the annihilator room area.

function onUse(cid, item, frompos, item2, topos)
if getPlayerGroupId(cid) > 2 and getPlayerGroupId(cid) < 5 then return TRUE end

        if item.itemid == 1945 then

        player1pos = {x=317, y=1034, z=13, stackpos=253}  
        player1 = getThingfromPos(player1pos)

        player2pos = {x=318, y=1034, z=13, stackpos=253}
        player2 = getThingfromPos(player2pos)

        player3pos = {x=319, y=1034, z=13, stackpos=253}
        player3 = getThingfromPos(player3pos)

        player4pos = {x=320, y=1034, z=13, stackpos=253}
        player4 = getThingfromPos(player4pos)


                if (player1.itemid > 0) and (player2.itemid > 0) and (player3.itemid > 0) and (player4.itemid > 0) then

                player1level = getPlayerLevel(player1.uid)
                player2level = getPlayerLevel(player2.uid)
                player3level = getPlayerLevel(player3.uid)
                player4level = getPlayerLevel(player4.uid)
        
                questlevel = 140

                        if (player1level >= questlevel) and (player2level >= questlevel) and (player3level >= questlevel) and (player4level >= questlevel) then

                        queststatus1 = getPlayerStorageValue(player1.uid,100)
                        queststatus2 = getPlayerStorageValue(player2.uid,100)
                        queststatus3 = getPlayerStorageValue(player3.uid,100)
                        queststatus4 = getPlayerStorageValue(player4.uid,100)

                                if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
                                        demon1pos = {x=320, y=1033, z=14}
                                        demon2pos = {x=319, y=1033, z=14}
                                        demon3pos = {x=315, y=1030, z=14}
                                        demon4pos = {x=317, y=1030, z=14}
                                        demon5pos = {x=316, y=1036, z=14}
                                        demon6pos = {x=318, y=1036, z=14}

                                        doSummonCreature("Anihilator Demon", demon1pos)
                                        doSummonCreature("Anihilator Demon", demon2pos)
                                        doSummonCreature("Metal Demon", demon3pos)
                                        doSummonCreature("Metal Demon", demon4pos)
                                        doSummonCreature("Metal Demon", demon5pos)
                                        doSummonCreature("Metal Demon", demon6pos)

                                        nplayer1pos = {x=315, y=1033, z=14} 
                                        nplayer2pos = {x=316, y=1033, z=14}
                                        nplayer3pos = {x=317, y=1033, z=14}
                                        nplayer4pos = {x=318, y=1033, z=14}

                                        doSendMagicEffect(player1pos,2)
                                        doSendMagicEffect(player2pos,2)
                                        doSendMagicEffect(player3pos,2)
                                        doSendMagicEffect(player4pos,2)

                                        doTeleportThing(player1.uid,nplayer1pos)
                                        doTeleportThing(player2.uid,nplayer2pos)
                                        doTeleportThing(player3.uid,nplayer3pos)
                                        doTeleportThing(player4.uid,nplayer4pos)

                                        doSendMagicEffect(nplayer1pos,10)
                                        doSendMagicEffect(nplayer2pos,10)
                                        doSendMagicEffect(nplayer3pos,10)
                                        doSendMagicEffect(nplayer4pos,10)

                                        doTransformItem(item.uid,1945)

                                else
                                doPlayerSendCancel(cid,"Desculpe, não é possível, alguém no time já completou a quest.")
                                end
                        else
                        doPlayerSendCancel(cid,"Desculpe, não é possível, todos os jogadores no time devem ser level 140 ou maior.")
                        end
                else
                doPlayerSendCancel(cid,"Desculpe, não é possível, são necessários quatro jogadores.")
                end
-- Codigo de checagem e teleporte dos monstros
                if item.itemid == 1945 then
                starting={x=149, y=226, z=15, stackpos=253}
                checking={x=starting.x, y=starting.y, z=starting.z, stackpos=starting.stackpos}
                ending={x=154, y=231, z=15, stackpos=253}
                players=0
                totalmonsters=0
                monster = {}
                repeat
                creature= getThingfromPos(checking)
                if creature.itemid > 0 then
                        if getPlayerAccess(creature.uid) == 0 then
                        players=players+1
                        end
                        if (getPlayerAccess(creature.uid) ~= 0) and (getPlayerAccess(creature.uid) ~= 3) then
                        totalmonsters = totalmonsters+1
                        monster[totalmonsters]=creature.uid
                        end
                end
                checking.x=checking.x+1
                if checking.x>ending.x then
                checking.x=starting.x
                checking.y=checking.y+1
                end
                until checking.y>ending.y
                if players == 0 then
                trash = {x=155, y=189, z=15}
                current = 0
                repeat
                current = current+1
                if totalmonsters > 0 then
                doTeleportThing(monster[current],trash) 
                end
                until current >= totalmonsters
                doTransformItem(item.uid,1946)
                end
-- Codigo de checagem e teleporte dos monstros
        doTransformItem(item.uid,1946)
        end
else
doTransformItem(item.uid,1945)
end
return TRUE
end