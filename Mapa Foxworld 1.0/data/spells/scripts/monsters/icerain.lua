local config = {
effectz = 43, --- efeito ao hitar o chao
field = false, --- criar fields (true/false)
fieldid = 1492, -- id do field que sera criado
chancehit = 30, --- chance de acertar uma area
chanceid = 0, --- chance de criar um field ao acertar a area
effectx = 28, --- efeito de distancia
waves = 1 -- quantidade de ondas de meteoros que irao cair
}

local water = {490, 491, 492, 493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625}
local combat = createCombatObject()
local meteor = createCombatObject()
setCombatParam(meteor, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(meteor, COMBAT_PARAM_EFFECT, config.effectz)
setCombatFormula(meteor, COMBAT_FORMULA_LEVELMAGIC, -30, -50, -40, -55)

local meteor_fire = createCombatObject()
setCombatParam(meteor_fire, COMBAT_PARAM_CREATEITEM, config.fieldid)

local meteor_water = createCombatObject()
setCombatParam(meteor_water, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(meteor_water, COMBAT_PARAM_EFFECT, 52)
setCombatFormula(meteor, COMBAT_FORMULA_LEVELMAGIC, -30, -50, -40, -55)

combat_arr = {
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
}
local combat_area = createCombatArea(combat_arr)
setCombatArea(combat, combat_area)

local function meteorCast(p)
    doCombat(p.cid, p.combat, positionToVariant(p.pos))
end

function onTargetTile(cid, pos)
    if (math.random(100) <= config.chancehit) then
        local ground = getThingfromPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0})
        local newpos = {x = pos.x - 7, y = pos.y - 6, z = pos.z} -- Posição inicial da onda de gelo (esquerda)
        if isInArray(water, ground.itemid) then
            doSendDistanceShoot(newpos, pos, config.effectx)
            addEvent(meteorCast, 200, {cid = cid, pos = pos, combat = meteor_water})
        else
            doSendDistanceShoot(newpos, pos, config.effectx)
            if math.random(100) <= config.chanceid and isWalkable(pos, false, true, true) and config.field then 
                addEvent(meteorCast, 200, {cid = cid, pos = pos, combat = meteor_fire})
            end
            addEvent(meteorCast, 200, {cid = cid, pos = pos, combat = meteor})
        end
    end
end

setCombatCallback(combat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")
function onCastSpell(cid, var)
	for i = 0, config.waves do
		addEvent(function()
			if isCreature(cid) then
				doCombat(cid, combat, var)
			end
		end, 220 * i)
	end
 
return true
end