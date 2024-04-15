function onEquip(cid, words, param)
playerpos = getPlayerPosition(cid)
zero1 = {x=playerpos.x-1, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero1 = {x=playerpos.x, y=playerpos.y-1, z=playerpos.z, stackpos=1}
zero2 = {x=playerpos.x, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero3 = {x=playerpos.x-1, y=playerpos.y, z=playerpos.z, stackpos=1}
zero4 = {x=playerpos.x+1, y=playerpos.y, z=playerpos.z, stackpos=1}
zero5 = {x=playerpos.x+1, y=playerpos.y-1, z=playerpos.z, stackpos=1}
zero6 = {x=playerpos.x-1, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero7 = {x=playerpos.x+1, y=playerpos.y+1, z=playerpos.z, stackpos=1}
zero8 = {x=playerpos.x-1, y=playerpos.y-1, z=playerpos.z, stackpos=1}
doSendMagicEffect(zero1,48)
doSendMagicEffect(zero2,48)
doSendMagicEffect(zero3,48)
doSendMagicEffect(zero4,48)
doSendMagicEffect(zero5,11)
doSendMagicEffect(zero6,11)
doSendMagicEffect(zero7,11)
doSendMagicEffect(zero8,11)
return TRUE
end
function onDeEquip(cid, item, position, fromPosition)
return TRUE
end