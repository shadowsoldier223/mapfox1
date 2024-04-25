local config = {
  manapercent = 0.90,
  seconds = 10,
  storage = 7,
  semMana = "Voc� n�o tem mana suficiente.",
  msg = "Voc� precisa aguardar %d segundos para usar essa magia novamente.",
}

local function useAgain(cid)
 setPlayerStorageValue(cid, config.storage, 2)
 return TRUE
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -4.3, -200, -4.4, -200)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)

local combat0 = createCombatObject()
setCombatParam(combat0, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat0, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatFormula(combat0, COMBAT_FORMULA_LEVELMAGIC, -3.5, -200, -3.6, -200)

local condition0 = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition0, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(condition0, -0.8, 0, -0.8, 0)
setCombatCondition(combat0, condition0)

local arr = {
{0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0},
{0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0},
}

local arr0 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 3, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
local area0 = createCombatArea(arr0)

setCombatArea(combat, area)
setCombatArea(combat0, area0)

function onCastSpell(cid, var)
  if getPlayerStorageValue(cid, config.storage) == -1 then
    setPlayerStorageValue(cid, config.storage, os.time()-config.seconds)
  end
  if config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage)) > 0 then
    doPlayerSendCancel(cid, string.format(config.msg, config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage))))
    return true
  end
  if getPlayerMana(cid) >= (config.manapercent * getCreatureMaxMana(cid)) then
    doPlayerAddMana(cid, -(config.manapercent * getCreatureMaxMana(cid)))
    setPlayerStorageValue(cid, config.storage, os.time())
      if getPlayerStorageValue(cid,10007) >= 1 then
        addEvent(doCombat, 0, cid, combat, var)
      else
        addEvent(doCombat, 0, cid, combat0, var)
      end
  else
	doPlayerSendCancel(cid, config.semMana)
              doSendMagicEffect(getPlayerPosition(cid),2)
  end
  return true
end
