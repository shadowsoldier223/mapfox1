function onEquip(cid, item, slot)
local strg = 50030
    if getPlayerStorageValue(cid, strg) >= 1 then
        doPlayerSendCancel(cid, "Voce ja esta com a vida alterada")
    else
        setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+150)
        setPlayerStorageValue(cid, strg, 1)
return true
end
end

function onDeEquip(cid, item, slot)
local strg = 50030
        setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)-150)
        setPlayerStorageValue(cid, strg, 0)
        doPlayerSendTextMessage(cid, 22, "Helmet removido e vida alterada com sucesso.")
return true
end