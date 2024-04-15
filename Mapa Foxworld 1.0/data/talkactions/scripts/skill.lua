function onSay(cid, words, param)

char = getPlayerByName(param)

if getPlayerSkillLevel(char, 2) >= 85 then
doPlayerSetSkillRate(char, 2, 85)
elseif getPlayerSkillLevel(char, 4) >= 85 then
doPlayerSetSkillRate(char, 4, 85)
end

return TRUE
end