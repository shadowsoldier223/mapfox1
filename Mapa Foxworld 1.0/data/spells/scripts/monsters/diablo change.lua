local function changex(cid)
doCreatureChangeOutfit(cid, {lookType = 12, lookHead = 0, lookBody = 132, lookLegs = 132, lookFeet = 132, lookTypeEx = 0, lookAddons = 0})
end

local function changey(cid)
doCreatureChangeOutfit(cid, {lookType = 12, lookHead = 0, lookBody = 77, lookLegs = 77, lookFeet = 77, lookTypeEx = 0, lookAddons = 0})
end

local function changez(cid)
doCreatureChangeOutfit(cid, {lookType = 12, lookHead = 0, lookBody = 78, lookLegs = 78, lookFeet = 78, lookTypeEx = 0, lookAddons = 0})
end

function onCastSpell(cid, var)
addEvent(changex, 000, cid)
addEvent(changey, 500, cid)
addEvent(changez, 1000, cid)
end
