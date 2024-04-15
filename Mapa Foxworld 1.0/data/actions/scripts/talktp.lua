local velocidade = 3000 -- 3 segundos
local color = TEXTCOLOR_WHITE_EXP
local function loop(valores)

doSendAnimatedText({x=160, y=54, z=7},"BemVindo",TEXTCOLOR_ORANGE)

doSendAnimatedText({x=384, y=454, z=7},"TPs Vip",TEXTCOLOR_LIGHTGREEN)
doSendAnimatedText({x=383, y=450, z=7},"Vip City",TEXTCOLOR_LIGHTGREEN)
doSendAnimatedText({x=427, y=108, z=7},"Teleports",TEXTCOLOR_LIGHTGREEN)
doSendAnimatedText({x=433, y=108, z=7},"NPCs",TEXTCOLOR_LIGHTGREEN)

doSendAnimatedText({x=153, y=46, z=7},"Vip City",TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect({x=152, y=46, z=7}, CONST_ME_MIRRORVERTICAL)

doSendAnimatedText({x=415, y=457, z=7},"Slayer",TEXTCOLOR_RED)
doSendAnimatedText({x=416, y=457, z=7},"City",TEXTCOLOR_RED)

doSendAnimatedText({x=411, y=455, z=7},"Non Pvp",TEXTCOLOR_ORANGE)
doSendAnimatedText({x=411, y=456, z=7},"City",TEXTCOLOR_ORANGE)
doSendMagicEffect({x=411, y=456, z=7}, CONST_ME_SOUND_PURPLE)

doSendAnimatedText({x=407, y=455, z=7},"Fire",TEXTCOLOR_ORANGE)
doSendAnimatedText({x=407, y=456, z=7},"Fortress",TEXTCOLOR_ORANGE)
doSendMagicEffect({x=407, y=456, z=7}, CONST_ME_SOUND_PURPLE)

doSendAnimatedText({x=401, y=455, z=7},"Frozen",TEXTCOLOR_ORANGE)
doSendAnimatedText({x=401, y=456, z=7},"City",TEXTCOLOR_ORANGE)
doSendMagicEffect({x=401, y=456, z=7}, CONST_ME_SOUND_PURPLE)

doSendAnimatedText({x=397, y=455, z=7},"Jungle",TEXTCOLOR_ORANGE)
doSendAnimatedText({x=397, y=456, z=7},"City",TEXTCOLOR_ORANGE)
doSendMagicEffect({x=397, y=456, z=7}, CONST_ME_SOUND_PURPLE)

doSendAnimatedText({x=409, y=465, z=7},"Sala",TEXTCOLOR_YELLOW)
doSendAnimatedText({x=410, y=465, z=7},"dos",TEXTCOLOR_YELLOW)
doSendAnimatedText({x=411, y=465, z=7},"Teleports",TEXTCOLOR_YELLOW)

doSendMagicEffect({x=409, y=463, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=410, y=463, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=411, y=463, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=408, y=464, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=408, y=465, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=408, y=466, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=412, y=464, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=412, y=465, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=412, y=466, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=409, y=467, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=410, y=467, z=7}, CONST_ME_FIREWORK_RED)
doSendMagicEffect({x=411, y=467, z=7}, CONST_ME_FIREWORK_RED)

doSendAnimatedText({x=395, y=465, z=7},"Knight",TEXTCOLOR_ORANGE)
doSendAnimatedText({x=395, y=469, z=7},"Paladin",TEXTCOLOR_ORANGE)
doSendAnimatedText({x=398, y=469, z=7},"Druid",TEXTCOLOR_ORANGE)
doSendAnimatedText({x=398, y=465, z=7},"Sorcerer",TEXTCOLOR_ORANGE)

doSendAnimatedText({x=155, y=52, z=7},"Lixo Aqui",TEXTCOLOR_RED)
doSendAnimatedText({x=165, y=52, z=7},"Lixo Aqui",TEXTCOLOR_RED)
doSendAnimatedText({x=159, y=48, z=7},"Food Aqui",TEXTCOLOR_LIGHTBLUE)

addEvent(loop,  velocidade, valore) -- Não remova isso
end


function onUse(cid, item, frompos, item2, topos)
doRemoveItem(item.uid,1)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end