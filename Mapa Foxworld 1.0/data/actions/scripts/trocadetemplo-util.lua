function onUse(cid, item, frompos, item2, topos)
newtemple = {x=298, y=495, z=7}

if item.uid == 2010 then 
doPlayerSetMasterPos(cid,newtemple)
doTeleportThing(cid,newtemple) 
doSendMagicEffect(newtemple,10)
doPlayerSendTextMessage(cid,22,"Bem Vindo!")
end
end