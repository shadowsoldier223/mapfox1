-- Lottery System
local config = {
    lottery_hour = "2 Horas", -- Tempo ate a proxima loteria (Esse tempo vai aparecer somente como broadcast message)
    rewards_id = {2514, 2361, 2507, 2160, 2195, 2472, 2357, 2656, 7404}, -- ID dos Itens Sorteados na Loteria
    crystal_counts = 150, -- Usado somente se a rewards_id for crystal coin (ID: 2160).
    website = "no" -- Only if you have php scripts and table `lottery` in your database!
    }
function onThink(interval, lastExecution)
        if(getWorldCreatures(0) == 0)then
                return true
        end
 
    local list = {}
    for i, tid in ipairs(getPlayersOnline()) do
                list[i] = tid
        end

        local winner = list[math.random(1, #list)]
        local random_item = config.rewards_id[math.random(1, #config.rewards_id)]
        
        if(random_item == 2160) then
                doPlayerAddItem(winner, random_item, config.crystal_counts)
                doBroadcastMessage("[LOTERIA] Ganhador: " .. getCreatureName(winner) .. ", Prêmio: " .. config.crystal_counts .. " " .. getItemNameById(random_item) .. "s! Parabéns! (Proxima Loteria em " .. config.lottery_hour .. ")")
        else
                doBroadcastMessage("[LOTERIA] Ganhador: " .. getCreatureName(winner) .. ", Prêmio: " .. getItemNameById(random_item) .. "! Parabéns! (Proxima Loteria em " .. config.lottery_hour .. ")")
                doPlayerAddItem(winner, random_item, 1)
        end
       
        if(config.website == "yes") then
                db.executeQuery("INSERT INTO `lottery` (`name`, `item`) VALUES ('".. getCreatureName(winner) .."', '".. getItemNameById(random_item) .."');")
        end
        return true
end