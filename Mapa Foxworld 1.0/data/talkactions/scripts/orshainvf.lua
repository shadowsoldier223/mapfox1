function onSay(cid, words, param)
monstro1 = "demon"
monstro3 = "juggernaut"
monstro4 = "hellfire fighter"
monstro5 = "phantasm"
monstro6 = "hand of cursed fate"
monstro7 = "Banshiria Summon"
monstro8 = "demon"

cemi1_pos = {x=482, y=521, z=7}
cemi2_pos = {x=479, y=517, z=7}
cemi3_pos = {x=480, y=516, z=7}
cemi4_pos = {x=482, y=515, z=7}
cemi5_pos = {x=482, y=512, z=7}
cemi6_pos = {x=484, y=513, z=7}
cemi7_pos = {x=482, y=510, z=7}
cemi8_pos = {x=487, y=510, z=7}
cemi9_pos = {x=477, y=516, z=7}
cemi10_pos = {x=487, y=510, z=7}
cemi11_pos = {x=487, y=510, z=7}
cemi12_pos = {x=473, y=500, z=7}
cemi13_pos = {x=472, y=501, z=7}
cemi14_pos = {x=476, y=501, z=7}
cemi15_pos = {x=480, y=501, z=7}
cemi16_pos = {x=482, y=502, z=7}
sub1_pos = {x=479, y=503, z=8}
sub2_pos = {x=479, y=506, z=8}
sub3_pos = {x=479, y=509, z=8}
sub4_pos = {x=479, y=512, z=8}
sub5_pos = {x=479, y=515, z=8}
sub6_pos = {x=479, y=518, z=8}
sub7_pos = {x=482, y=520, z=8}
sub8_pos = {x=487, y=520, z=8}
sub9_pos = {x=493, y=520, z=8}
sub10_pos = {x=493, y=514, z=8}
sub11_pos = {x=493, y=501, z=8}
sub12_pos = {x=497, y=501, z=8}
sub12_pos = {x=497, y=501, z=8}
sub12_pos = {x=497, y=501, z=8}
sub12_pos = {x=497, y=501, z=8}
orsha_pos = {x=545, y=521, z=8}

if getPlayerAccess(cid) >= 5 then

doCreateMonster(monstro3, cemi1_pos)
doCreateMonster(monstro1, cemi2_pos)
doCreateMonster(monstro5, cemi4_pos)
doCreateMonster(monstro6, cemi5_pos)
doCreateMonster(monstro4, cemi6_pos)
doCreateMonster(monstro1, cemi7_pos)
doCreateMonster(monstro1, cemi9_pos)
doCreateMonster(monstro6, cemi11_pos)
doCreateMonster(monstro1, cemi12_pos)
doCreateMonster(monstro5, cemi13_pos)
doCreateMonster(monstro4, cemi14_pos)
doCreateMonster(monstro4, cemi14_pos)
doCreateMonster(monstro6, cemi15_pos)
doCreateMonster(monstro7, sub2_pos)
doCreateMonster(monstro3, sub4_pos)
doCreateMonster(monstro3, sub6_pos)
doCreateMonster(monstro8, sub7_pos)
doCreateMonster(monstro8, sub10_pos)
doCreateMonster(monstro8, sub11_pos)
doCreateMonster(monstro8, sub12_pos)


broadcastMessage("Orshabaal [Says]: Ferumbras envie reforços estou enfraquecendo, eu não posso ser derrotados por simples humanos...", MESSAGE_STATUS_WARNING)
end

return TRUE
end