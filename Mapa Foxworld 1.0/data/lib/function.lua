function doRemoveGemEffect(cid)

  local voc = getPlayerVocation(cid)

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end

  if getPlayerStorageValue(cid, gems.storage[voc]) == -1 then
  else
    setPlayerStorageValue(cid, gems.storage[voc], 0)
  end

end

function doUseGem(cid, item)

  local level = getPlayerLevel(cid)
  local voc = getPlayerVocation(cid)
  local interval = gems.interval[voc]

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end

  if item.itemid ~= gems.id[voc] or getPlayerStorageValue(cid, gems.storage[voc]) > 0 then
    return FALSE
  end

  setPlayerStorageValue(cid, gems.storage[voc], 1)
  sendGemEffect(cid, gems.storage[voc], gems.interval[voc])
  doRemoveItem(item.uid, 1)

  return TRUE  
end

function sendGemEffect(cid, storage, interval)

if isPlayer(cid) == TRUE then

  local pos = getThingPos(cid)
  local voc = getPlayerVocation(cid)
  local level = getPlayerLevel(cid)
  local color = 1

  if level > 199 then

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end
          if voc == 1 then
            color = gemMsg.colorDruid[math.random(1,#gemMsg.colorElderDruid)]
          elseif voc == 2 then
            color = gemMsg.colorSorcerer[math.random(1,#gemMsg.colorMasterSorcerer)]
          elseif voc == 3 then
            color = gemMsg.colorPaladin[math.random(1,#gemMsg.colorRoyalPaladin)]
          elseif voc == 4 then
            color = gemMsg.colorKnight[math.random(1,#gemMsg.colorEliteKnight)]
          end

  doSendAnimatedText(pos, gemMsg.rnd[math.random(1,#gemMsg.rnd)], color)
    if getPlayerStorageValue(cid, gems.storage[voc]) >= 1 then 
      addEvent(sendGemEffect, interval, cid, storage, interval)
    end

else
stopEvent(sendGemEffect)
end

end

function doRemoveAllGemEffect(cid)
  for i = 1, table.maxn(gms.storage) do
    setPlayerStorageValue(cid, gems.storage[i], 0)
  end
  return TRUE
end

function isGemActivated(cid)

  local voc = getPlayerVocation(cid)

  if getPlayerPromotionLevel(cid) > 0 then
    voc = voc - (getPlayerPromotionLevel(cid) * 4)
  end

  if getPlayerStorageValue(cid, gems.storage[voc]) > 0 then
    return TRUE
  end
  return FALSE
end

  return TRUE
end

function doPlayerGiveItem(cid, itemid, amount, subType)
        local item = 0
        if(isItemStackable(itemid) == TRUE) then
                item = doCreateItemEx(itemid, amount)
                if(doPlayerAddItemEx(cid, item, TRUE) ~= RETURNVALUE_NOERROR) then
                        return LUA_ERROR
                end
        else
                for i = 1, amount do
                        item = doCreateItemEx(itemid, subType)
                        if(doPlayerAddItemEx(cid, item, TRUE) ~= RETURNVALUE_NOERROR) then
                                return LUA_ERROR
                        end
                end
        end

        return LUA_NO_ERROR
end

function doPlayerTakeItem(cid, itemid, amount)
        if(getPlayerItemCount(cid, itemid) < amount or doPlayerRemoveItem(cid, itemid, amount) ~= TRUE) then
                return LUA_ERROR
        end

        return LUA_NO_ERROR
end

function doPlayerBuyItem(cid, itemid, count, cost, charges)
        if(doPlayerRemoveMoney(cid, cost) ~= TRUE) then
                return LUA_ERROR
        end

        return doPlayerGiveItem(cid, itemid, count, charges)
end

function doPlayerBuyItemContainer(cid, containerid, itemid, count, cost, charges)
        if(doPlayerRemoveMoney(cid, cost) ~= TRUE) then
                return LUA_ERROR
        end

        for i = 1, count do
                local container = doCreateItemEx(containerid, 1)
                for x = 1, getContainerCapById(containerid) do
                        doAddContainerItem(container, itemid, charges)
                end

                if(doPlayerAddItemEx(cid, container, TRUE) ~= RETURNVALUE_NOERROR) then
                        return LUA_ERROR
                end
        end

        return LUA_NO_ERROR
end

function doPlayerSellItem(cid, itemid, count, cost)
        if(doPlayerTakeItem(cid, itemid, count) ~= LUA_NO_ERROR) then
                return LUA_ERROR
        end

        if(doPlayerAddMoney(cid, cost) ~= TRUE) then
                error('Could not add money to: ' .. getPlayerName(cid) .. ' (' .. cost .. 'gp).')
        end

        return LUA_NO_ERROR
end

function isInRange(pos, fromPos, toPos)
        return (pos.x >= fromPos.x and pos.y >= fromPos.y and pos.z >= fromPos.z and pos.x <= toPos.x and pos.y <= toPos.y and pos.z <= toPos.z) and TRUE or FALSE
end

function isPremium(cid)
        return (isPlayer(cid) == TRUE and (getPlayerPremiumDays(cid) > 0 or getConfigInfo('freePremium') == "yes")) and TRUE or FALSE
end

function getMonthDayEnding(day)
        if day == "01" or day == "21" or day == "31" then
                return "st"
        elseif day == "02" or day == "22" then
                return "nd"
        elseif day == "03" or day == "23" then
                return "rd"
        else
                return "th"
        end
end

function getMonthString(m)
        return os.date("%B", os.time{year = 1970, month = m, day = 1})
end

function getArticle(str)
        return str:find("[AaEeIiOoUuYy]") == 1 and "an" or "a"
end

function isNumber(str)
        return tonumber(str) ~= nil and TRUE or FALSE
end

function getDistanceBetween(firstPosition, secondPosition)
        local xDif = math.abs(firstPosition.x - secondPosition.x)
        local yDif = math.abs(firstPosition.y - secondPosition.y)

        local posDif = math.max(xDif, yDif)
        if(firstPosition.z ~= secondPosition.z) then
                posDif = posDif + 9 + 6
        end
        return posDif
end

function doPlayerAddAddons(cid, addon)
        for i = 0, table.maxn(maleOutfits) do
                doPlayerAddOutfit(cid, maleOutfits[i], addon)
        end

        for i = 0, table.maxn(femaleOutfits) do
                doPlayerAddOutfit(cid, femaleOutfits[i], addon)
        end
end

function isSorcerer(cid)
        if(isPlayer(cid) == FALSE) then
                debugPrint("isSorcerer: Jogador nao encontrado.")
                return false
        end

        return (isInArray({1,5,9}, getPlayerVocation(cid)) == TRUE)
end

function isDruid(cid)
        if(isPlayer(cid) == FALSE) then
                debugPrint("isDruid: Jogador nao encontrado.")
                return false
        end

        return (isInArray({2,6,10}, getPlayerVocation(cid)) == TRUE)
end

function isPaladin(cid)
        if(isPlayer(cid) == FALSE) then
                debugPrint("isPaladin: Jogador nao encontrado.")
                return false
        end

        return (isInArray({3,7,11}, getPlayerVocation(cid)) == TRUE)
end

function isKnight(cid)
        if(isPlayer(cid) == FALSE) then
                debugPrint("isKnight: Jogador nao encontrado.")
                return false
        end

        return (isInArray({4,8,12}, getPlayerVocation(cid)) == TRUE)
end

function isRookie(cid)
        if(isPlayer(cid) == FALSE) then
                debugPrint("isRookie: Jogador nao encontrado.")
                return false
        end

        return (isInArray({0}, getPlayerVocation(cid)) == TRUE)
end

function getDirectionTo(pos1, pos2)
        local dir = NORTH
        if(pos1.x > pos2.x) then
                dir = WEST
                if(pos1.y > pos2.y) then
                        dir = NORTHWEST
                elseif(pos1.y < pos2.y) then
                        dir = SOUTHWEST
                end
        elseif(pos1.x < pos2.x) then
                dir = EAST
                if(pos1.y > pos2.y) then
                        dir = NORTHEAST
                elseif(pos1.y < pos2.y) then
                        dir = SOUTHEAST
                end
        else
                if(pos1.y > pos2.y) then
                        dir = NORTH
                elseif(pos1.y < pos2.y) then
                        dir = SOUTH
                end
        end
        return dir
end

function getPlayerLookPos(cid)
        return getPosByDir(getThingPos(cid), getPlayerLookDir(cid))
end

function getPosByDir(fromPosition, direction, size)
        local n = size or 1

        local pos = fromPosition
        if(direction == NORTH) then
                pos.y = pos.y - n
        elseif(direction == SOUTH) then
                pos.y = pos.y + n
        elseif(direction == WEST) then
                pos.x = pos.x - n
        elseif(direction == EAST) then
                pos.x = pos.x + n
        elseif(direction == NORTHWEST) then
                pos.y = pos.y - n
                pos.x = pos.x - n
        elseif(direction == NORTHEAST) then
                pos.y = pos.y - n
                pos.x = pos.x + n
        elseif(direction == SOUTHWEST) then
                pos.y = pos.y + n
                pos.x = pos.x - n
        elseif(direction == SOUTHEAST) then
                pos.y = pos.y + n
                pos.x = pos.x + n
        end

        return pos
end

function getPlayerMoney(cid)
        return ((getPlayerItemCount(cid, ITEM_CRYSTAL_COIN) * 10000) + (getPlayerItemCount(cid, ITEM_PLATINUM_COIN) * 100) + getPlayerItemCount(cid, ITEM_GOLD_COIN))
end

function doPlayerWithdrawAllMoney(cid)
        return doPlayerWithdrawMoney(cid, getPlayerBalance(cid))
end

function doPlayerDepositAllMoney(cid)
        return doPlayerDepositMoney(cid, getPlayerMoney(cid))
end

function doPlayerTransferAllMoneyTo(cid, target)
        return doPlayerTransferMoneyTo(cid, target, getPlayerBalance(cid))
end

function playerExists(name)
        return getPlayerGUIDByName(name) ~= 0
end

function getTibiaTime()
        local minutes = getWorldTime()
        local hours = 0
        while (minutes > 60) do
                hours = hours + 1
                minutes = minutes - 60
        end

        return {hours = hours, minutes = minutes}
end

function doWriteLogFile(file, text)
        local file = io.open(file, "a+")
        file:write("[" .. os.date("%d/%m/%Y  %H:%M:%S") .. "] " .. text .. "\n")
        file:close()
end

function getExperienceForLevel(lv)
        lv = lv - 1
        return ((50 * lv * lv * lv) - (150 * lv * lv) + (400 * lv)) / 3
end

function doMutePlayer(cid, time)
        local condition = createConditionObject(CONDITION_MUTED)
        setConditionParam(condition, CONDITION_PARAM_TICKS, time * 1000)
        return doAddCondition(cid, condition)
end

function getPlayerVocationName(cid)
        return getVocationInfo(getPlayerVocation(cid)).name
end

function getPromotedVocation(vid)
        return getVocationInfo(vid).promotedVocation
end

function doPlayerRemovePremiumDays(cid, days)
        return doPlayerAddPremiumDays(cid, -days)
end

function getPlayerMasterPos(cid)
        return getTownTemplePosition(getPlayerTown(cid))
end

function getItemNameById(itemid)
        return getItemDescriptionsById(itemid).name
end

function getItemPluralNameById(itemid)
        return getItemDescriptionsById(itemid).plural
end

function getItemArticleById(itemid)
        return getItemDescriptionsById(itemid).article
end

function getItemName(uid)
        return getItemDescriptions(uid).name
end

function getItemPluralName(uid)
        return getItemDescriptions(uid).plural
end

function getItemArticle(uid)
        return getItemDescriptions(uid).article
end

function getItemText(uid)
        return getItemDescriptions(uid).text
end

function getItemWriter(uid)
        return getItemDescriptions(uid).writer
end

function getItemDate(uid)
        return getItemDescriptions(uid).date
end

function getTilePzInfo(pos)
        return getTileInfo(pos).protection and TRUE or FALSE
end

function getTileZoneInfo(pos)
        local tmp = getTileInfo(pos)
        if(tmp.pvp) then
                return 2
        end

        if(tmp.nopvp) then
                return 1
        end

        return 0
end

function debugPrint(text)
        return io.stdout:write(text)
end

function doShutdown()
        return doSetGameState(GAMESTATE_SHUTDOWN)
end

function doSummonCreature(name, pos)
        local cid = doCreateMonster(name, pos)
        if(cid ~= LUA_ERROR) then
                return cid
        end

        cid = doCreateNpc(name, pos)
        return cid
end

function getOnlinePlayers()
        local tmp = getPlayersOnline()
        local players = {}
        for i, cid in ipairs(tmp) do
                table.insert(players, getCreatureName(cid))
        end

        return players
end

function getPlayerByName(name)
        local cid = getCreatureByName(name)
        return isPlayer(cid) == TRUE and cid or nil
end

function isPlayerGhost(cid)
        return isPlayer(cid) == TRUE and getCreatureCondition(cid, CONDITION_GAMEMASTER, GAMEMASTER_INVISIBLE) or FALSE
end

function doPlayerSetExperienceRate(cid, value)
        return doPlayerSetRate(cid, SKILL__LEVEL, value)
end

function doPlayerSetMagicRate(cid, value)
        return doPlayerSetRate(cid, SKILL__MAGLEVEL, value)
end

function getPlayerFrags(cid)
        return math.ceil((getPlayerRedSkullTicks(cid) / getConfigInfo('timeToDecreaseFrags')) + 1)
end

function getPartyLeader(cid)
        local party = getPartyMembers(cid)
        if(type(party) ~= 'table') then
                return 0
        end

        return party[1]
end

function isInParty(cid)
        return type(getPartyMembers(cid)) == 'table' and TRUE or FALSE
end

function isPrivateChannel(channelId)
        for i = CHANNEL_GUILD, CHANNEL_HELP do
                if(channelId == i) then
                        return FALSE
                end
        end

        return TRUE
end

function doConvertIntegerToIp(int, mask)
        local b4 = bit.urshift(bit.uband(int, 4278190080), 24)
        local b3 = bit.urshift(bit.uband(int, 16711680), 16)
        local b2 = bit.urshift(bit.uband(int, 65280), 8)
        local b1 = bit.urshift(bit.uband(int, 255), 0)
        if(mask ~= nil) then
                local m4 = bit.urshift(bit.uband(mask,  4278190080), 24)
                local m3 = bit.urshift(bit.uband(mask,  16711680), 16)
                local m2 = bit.urshift(bit.uband(mask,  65280), 8)
                local m1 = bit.urshift(bit.uband(mask,  255), 0)
                if((m1 == 255 or m1 == 0) and (m2 == 255 or m2 == 0) and (m3 == 255 or m3 == 0) and (m4 == 255 or m4 == 0)) then
                        if m1 == 0 then b1 = "x" end
                        if m2 == 0 then b2 = "x" end
                        if m3 == 0 then b3 = "x" end
                        if m4 == 0 then b4 = "x" end
                elseif(m1 ~= 255 or m2 ~= 255 or m3 ~= 255 or m4 ~= 255) then
                        return b1 .. "." .. b2 .. "." .. b3 .. "." .. b4 .. " : " .. m1 .. "." .. m2 .. "." .. m3 .. "." .. m4
                end
        end
        
        return b1 .. "." .. b2 .. "." .. b3 .. "." .. b4
end

function doConvertIpToInteger(str)
        local maskindex = str:find(":")
        if(maskindex == nil) then
                local ipint = 0
                local maskint = 0

                local index = 24                
                for b in str:gmatch("([x%d]+)%.?") do
                        if(b ~= "x") then
                                if(b:find("x") ~= nil) then
                                        return 0, 0
                                end

                                if(tonumber(b) > 255 or tonumber(b) < 0) then
                                        return 0, 0
                                end

                                maskint = bit.ubor(maskint, bit.ulshift(255, index))
                                ipint = bit.ubor(ipint, bit.ulshift(b, index))
                        end

                        index = index - 8
                        if(index < 0) then
                                break
                        end
                end

                if(index ~= -8) then
                        return 0, 0
                end

                return ipint, maskint
        end

        if(maskindex <= 1) then
                return 0, 0
        end

        local ipstring = str:sub(1, maskindex - 1)
        local maskstring = str:sub(maskindex)
                        
        local ipint = 0
        local maskint = 0
                        
        local index = 0
        for b in ipstring:gmatch("(%d+).?") do
                if(tonumber(b) > 255 or tonumber(b) < 0) then
                        return 0, 0
                end

                ipint = bit.ubor(ipint, bit.ulshift(b, index))
                index = index + 8
                if(index > 24) then
                        break
                end
        end

        if(index ~= 32) then
                return 0, 0
        end
                        
        index = 0
        for b in maskstring:gmatch("(%d+)%.?") do
                if(tonumber(b) > 255 or tonumber(b) < 0) then
                        return 0, 0
                end

                maskint = bit.ubor(maskint, bit.ulshift(b, index))
                index = index + 8
                if(index > 24) then
                        break
                end
        end

        if(index ~= 32) then
                return 0, 0
        end
                        
        return ipint, maskint
end

function getBooleanFromString(str)
        return (str:lower() == "yes" or str:lower() == "true" or (tonumber(str) and tonumber(str) > 0)) and TRUE or FALSE
end

function doCopyItem(item, attributes)
        local attributes = attributes or FALSE

        local ret = doCreateItemEx(item.itemid, item.type)
        if(attributes == TRUE) then
                if(item.actionid > 0) then
                        doSetItemActionId(ret, item.actionid)
                end
        end

        if(isContainer(item.uid) == TRUE) then
                for i = (getContainerSize(item.uid) - 1), 0, -1 do
                        local tmp = getContainerItem(item.uid, i)
                        if(tmp.itemid > 0) then
                                doAddContainerItemEx(ret, doCopyItem(tmp, TRUE).uid)
                        end
                end
        end

        return getThing(ret)
end

table.find = function (table, value)
        for i, v in pairs(table) do
                if(v == value) then
                        return i
                end
        end

        return nil
end

table.isStrIn = function (txt, str)
        for i, v in pairs(str) do
                if(txt:find(v) and not txt:find('(%w+)' .. v) and not txt:find(v .. '(%w+)')) then
                        return true
                end
        end

        return false
end

table.countElements = function (table, item)
        local count = 0
        for i, n in pairs(table) do
                if(item == n) then
                        count = count + 1
                end
        end

        return count
end

table.getCombinations = function (table, num)
        local a, number, select, newlist = {}, #table, num, {}
        for i = 1, select do
                a[#a + 1] = i
        end

        local newthing = {}
        while(true) do
                local newrow = {}
                for i = 1, select do
                        newrow[#newrow + 1] = table[a[i]]
                end

                newlist[#newlist + 1] = newrow
                i = select
                while(a[i] == (number - select + i)) do
                        i = i - 1
                end

                if(i < 1) then
                        break
                end

                a[i] = a[i] + 1
                for j = i, select do
                        a[j] = a[i] + j - i
                end
        end

        return newlist
end

string.split = function (str)
        local t = {}
        local function helper(word)
                table.insert(t, word)
                return ""
        end

        if(not str:gsub("%w+", helper):find("%S")) then
                return t
        end
end

string.trim = function (str)
        return (string.gsub(str, "^%s*(.-)%s*$", "%1"))
end

string.explode = function (str, sep)
        local pos, t = 1, {}
        if #sep == 0 or #str == 0 then
                return
        end

        for s, e in function() return str:find(sep, pos) end do
                table.insert(t, str:sub(pos, s - 1):trim())
                pos = e + 1
        end

        table.insert(t, str:sub(pos):trim())
        return t
end