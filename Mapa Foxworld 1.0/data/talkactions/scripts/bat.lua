local e = {}

local function efeito(cid, effect)
 if isCreature(cid) and e[cid] ~= nil then
  doSendMagicEffect(getCreaturePosition(cid), effect)
  e[cid] = addEvent(efeito, 1500, cid, 66)
 else
  e[cid] = nil
 end
end

function onSay(cid, words, param, channel)
 if e[cid] ~= nil then
  e[cid] = nil
 else
  e[cid] = addEvent(efeito, 0, cid, 66)
 end
 return TRUE
end