function onStepIn(cid, item, pos)



local pos = {x=317, y=504, z=5} -- posi��o do lugar



if getPlayerLevel(cid) >= 80 then

doTeleportThing(cid, pos)

doCreatureSay(cid, ""..getCreatureName(cid).." entrou em um lugar perigoso.", TALKTYPE_ORANGE_1)

else

doCreatureSay(cid, "Voc� S� Poder Passa Level 80.", TALKTYPE_ORANGE_1)

end

end