-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 3700ms
local combat37_icee = createCombatObject()
setCombatParam(combat37_icee, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatParam(combat37_icee, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatArea(combat37_icee,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 1, 0},
{1, 0, 1, 2, 1, 0, 1},
{0, 1, 0, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_icee(cid, level, maglevel)
	return (1000)*-1,(2000)*-1 
end
setCombatCallback(combat37_icee, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_icee")

local con_drown__combat37_icee = createConditionObject(0+CONDITION_FREEZING)
addDamageCondition(con_drown__combat37_icee, 20, 2000, -300)
setCombatCondition(combat37_icee, con_drown__combat37_icee)local combat37_icee2 = createCombatObject()
setCombatParam(combat37_icee2, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat37_icee2, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatArea(combat37_icee2,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 0, 1, 0},
{1, 0, 3, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_icee2(cid, level, maglevel)
	return (1000)*-1,(2000)*-1 
end
setCombatCallback(combat37_icee2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_icee2")

local con_freeze__combat37_icee2 = createConditionObject(0+CONDITION_FREEZING)
addDamageCondition(con_freeze__combat37_icee2, 20, 2000, -300)
setCombatCondition(combat37_icee2, con_freeze__combat37_icee2)

-- Areas/Combat for 600ms
local combat6_ice2 = createCombatObject()
setCombatParam(combat6_ice2, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat6_ice2, COMBAT_PARAM_TYPE, COMBAT_NONE)
setCombatArea(combat6_ice2,createCombatArea({{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0}}))


local con_paralyze__combat6_ice2 = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con_paralyze__combat6_ice2, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat6_ice2, con_paralyze__combat6_ice2)local combat6_ice = createCombatObject()
setCombatParam(combat6_ice, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatParam(combat6_ice, COMBAT_PARAM_TYPE, COMBAT_NONE)
setCombatArea(combat6_ice,createCombatArea({{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}}))


local con_paralyze__combat6_ice = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con_paralyze__combat6_ice, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat6_ice, con_paralyze__combat6_ice)

-- Areas/Combat for 900ms
local combat9_ice = createCombatObject()
setCombatParam(combat9_ice, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatParam(combat9_ice, COMBAT_PARAM_TYPE, COMBAT_NONE)
setCombatArea(combat9_ice,createCombatArea({{1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1},
{1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1},
{1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1}}))


local con_paralyze__combat9_ice = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con_paralyze__combat9_ice, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat9_ice, con_paralyze__combat9_ice)local combat9_ice2 = createCombatObject()
setCombatParam(combat9_ice2, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat9_ice2, COMBAT_PARAM_TYPE, COMBAT_NONE)
setCombatArea(combat9_ice2,createCombatArea({{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0}}))


local con_paralyze__combat9_ice2 = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con_paralyze__combat9_ice2, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat9_ice2, con_paralyze__combat9_ice2)

-- Areas/Combat for 2500ms
local combat25_icee = createCombatObject()
setCombatParam(combat25_icee, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatParam(combat25_icee, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatArea(combat25_icee,createCombatArea({{1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1},
{1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1},
{1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1},
{1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1},
{1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1}}))
function getDmg_icee(cid, level, maglevel)
	return (1000)*-1,(2000)*-1 
end
setCombatCallback(combat25_icee, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_icee")

local con_drown__combat25_icee = createConditionObject(0+CONDITION_FREEZING)
addDamageCondition(con_drown__combat25_icee, 20, 2000, -300)
setCombatCondition(combat25_icee, con_drown__combat25_icee)local combat25_icee2 = createCombatObject()
setCombatParam(combat25_icee2, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat25_icee2, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatArea(combat25_icee2,createCombatArea({{0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0}}))
function getDmg_icee2(cid, level, maglevel)
	return (1000)*-1,(2000)*-1 
end
setCombatCallback(combat25_icee2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_icee2")

local con_freeze__combat25_icee2 = createConditionObject(0+CONDITION_FREEZING)
addDamageCondition(con_freeze__combat25_icee2, 20, 2000, -300)
setCombatCondition(combat25_icee2, con_freeze__combat25_icee2)

-- Areas/Combat for 2900ms
local combat29_icee = createCombatObject()
setCombatParam(combat29_icee, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatParam(combat29_icee, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatArea(combat29_icee,createCombatArea({{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0},
{0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0},
{1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1},
{0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0},
{0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}}))
function getDmg_icee(cid, level, maglevel)
	return (1000)*-1,(2000)*-1 
end
setCombatCallback(combat29_icee, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_icee")

local con_drown__combat29_icee = createConditionObject(0+CONDITION_FREEZING)
addDamageCondition(con_drown__combat29_icee, 20, 2000, -300)
setCombatCondition(combat29_icee, con_drown__combat29_icee)local combat29_icee2 = createCombatObject()
setCombatParam(combat29_icee2, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat29_icee2, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatArea(combat29_icee2,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
function getDmg_icee2(cid, level, maglevel)
	return (1000)*-1,(2000)*-1 
end
setCombatCallback(combat29_icee2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_icee2")

local con_freeze__combat29_icee2 = createConditionObject(0+CONDITION_FREEZING)
addDamageCondition(con_freeze__combat29_icee2, 20, 2000, -300)
setCombatCondition(combat29_icee2, con_freeze__combat29_icee2)

-- Areas/Combat for 0ms
local combat0_ice = createCombatObject()
setCombatParam(combat0_ice, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatParam(combat0_ice, COMBAT_PARAM_TYPE, COMBAT_NONE)
setCombatArea(combat0_ice,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0},
{1, 1, 0, 3, 0, 1, 1},
{0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))


local con_paralyze__combat0_ice = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con_paralyze__combat0_ice, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat0_ice, con_paralyze__combat0_ice)local combat0_ice2 = createCombatObject()
setCombatParam(combat0_ice2, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat0_ice2, COMBAT_PARAM_TYPE, COMBAT_NONE)
setCombatArea(combat0_ice2,createCombatArea({{0, 1, 0, 1, 0},
{1, 0, 1, 0, 1},
{0, 1, 2, 1, 0},
{1, 0, 1, 0, 1},
{0, 1, 0, 1, 0}}))


local con_paralyze__combat0_ice2 = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con_paralyze__combat0_ice2, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat0_ice2, con_paralyze__combat0_ice2)

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	addEvent(RunPart,3700,combat37_icee,cid,var)
	addEvent(RunPart,3700,combat37_icee2,cid,var)
	addEvent(RunPart,600,combat6_ice2,cid,var)
	addEvent(RunPart,600,combat6_ice,cid,var)
	addEvent(RunPart,900,combat9_ice,cid,var)
	addEvent(RunPart,900,combat9_ice2,cid,var)
	addEvent(RunPart,2500,combat25_icee,cid,var)
	addEvent(RunPart,2500,combat25_icee2,cid,var)
	addEvent(RunPart,2900,combat29_icee,cid,var)
	addEvent(RunPart,2900,combat29_icee2,cid,var)
	RunPart(combat0_ice,cid,var)
	RunPart(combat0_ice2,cid,var)
	return true
end