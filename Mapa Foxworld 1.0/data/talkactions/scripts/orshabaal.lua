-- [( Invasion Talk created by Doidin for XTibia.com )] --
function onSay(cid, words, param, channel)

local pos_invas = {x=194,y=121,z=7} -- Coordenada da invas�o! (Basta configurar essa)
local monster1 = "Orshabaal" -- Boss que ir� aparecer na invas�o!
local monster2 = "Death Guard" -- Monstro de apoio que ir� aparecer na invas�o!
local mensage1 = "ORSHABAAL FOI INVOCADO POR FERUMBRAS..." -- 1� Mensagem da invas�o!
local mensage2 = "ORSHABAAL IS BACK ! FOR KILL EVERYONE !" -- 2� Mensagem da invas�o!

broadcastMessage(mensage1, MESSAGE_EVENT_ADVANCE)
doSummonCreature(monster1, {x=pos_invas.x, y=pos_invas.y, z=pos_invas.z})
doSummonCreature(monster2, {x=pos_invas.x, y=pos_invas.y+3, z=pos_invas.z})
doSummonCreature(monster2, {x=pos_invas.x+2, y=pos_invas.y, z=pos_invas.z})
doSummonCreature(monster2, {x=pos_invas.x, y=pos_invas.y, z=pos_invas.z-5})
addEvent(broadcastMessage, 20*1000, mensage2, MESSAGE_EVENT_ADVANCE)
end