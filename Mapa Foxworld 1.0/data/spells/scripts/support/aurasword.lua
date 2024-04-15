local config = {
  mana = 200,
  seconds = 60,
  storage = 500,
  semMana = "Você não têm mana suficiente.",
  msg = "Você precisa aguardar %d segundos para usar essa magia novamente.",
}

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 28)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 48)

arr1 = {
{0, 1, 0},
{1, 3, 1},
{0, 1, 0},
}

arr2 = {
{1, 0, 1},
{0, 3, 0},
{1, 0, 1},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)

function onCastSpell(cid, var)
  if getPlayerStorageValue(cid, config.storage) == -1 then
    setPlayerStorageValue(cid, config.storage, os.time()-config.seconds)
  end
  if config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage)) > 0 then
    doPlayerSendCancel(cid, string.format(config.msg, config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage))))
    return true
  end
  if getPlayerMana(cid) >= config.mana then
        setPlayerStorageValue(cid, config.storage, os.time())
        if ((getPlayerSlotItem(cid, 5).itemid) <= 0) or ((getPlayerSlotItem(cid, 6).itemid) <= 0) then
        doPlayerAddMana(cid, -config.mana)
        doPlayerAddItem(cid,7872,1)
        addEvent(doCombat, 0, cid, combat1, var)
        addEvent(doCombat, 0, cid, combat2, var)
        else
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Você precisa estar com as mãos livres para receber o Aura Bow.")
        doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
        doSendMagicEffect(getThingPosition(cid), CONST_ME_POFF)
        end
  else
	doPlayerSendCancel(cid, config.semMana)
  end
  return true
end
