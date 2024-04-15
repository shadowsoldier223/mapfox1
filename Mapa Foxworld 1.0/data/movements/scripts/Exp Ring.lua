<movevent event="Equip" itemid="2357" slot="ring" function="onEquipItem" script="Exp Ring.lua"/>
<movevent event="DeEquip" itemid="2357" slot="ring" function="onDeEquipItem" script="Exp Ring.lua"/>


function onEquip(cid, item, position, fromPosition)
setPlayerExtraExpRate(cid, 1)
return TRUE
end
function onDeEquip(cid, item, position, fromPosition)
setPlayerExtraExpRate(cid, 0)
return TRUE
end
