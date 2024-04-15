local function changex(cid, outift)

doCreatureChangeOutfit(cid, {lookType = outift.a, lookHead = (outift.b + 19), lookBody = (outift.c + 19), lookLegs = (outift.d + 19), lookFeet = (outift.e + 19), lookTypeEx = outift.f, lookAddons = outift.g})

if not isPlayer(cid) then
stopEvent(changey)
stopEvent(changex)
end

end
---------------------------------------------------
local function changey(cid, outift)

doCreatureChangeOutfit(cid, {lookType = outift.a, lookHead = (outift.b), lookBody = (outift.c), lookLegs = (outift.d), lookFeet = (outift.e), lookTypeEx = outift.f, lookAddons = outift.g})

if not isPlayer(cid) then
stopEvent(changey)
stopEvent(changex)
else
addEvent(trans, 50, cid, outift)
end

end
---------------------------------------------------------
function onLogin(cid)

local outift = {
a = getCreatureOutfit(cid).lookType, 
b = getCreatureOutfit(cid).lookHead, 
c = getCreatureOutfit(cid).lookBody, 
d = getCreatureOutfit(cid).lookLegs, 
e = getCreatureOutfit(cid).lookFeet, 
f = getCreatureOutfit(cid).lookTypeEx, 
g = getCreatureOutfit(cid).lookAddons
}

addEvent(changex, 50, cid, outift)
addEvent(changey, 50, cid, outift)

return TRUE
end
