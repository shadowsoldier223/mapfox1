local config = {
    positions = {
        ["Treiners!"] = { x = 439, y = 547, z = 7 },
        ["Leia-me!"] = { x = 448, y = 542, z = 6 },
        ["Leia-me!"] = { x = 481, y = 559, z = 7 },
        ["Solaris!"] = { x = 389, y = 560, z = 7 },
        ["Solaris!"] = { x = 389, y = 571, z = 7 },
        ["Versia!"] = { x = 369, y = 598, z = 7 },
        ["Nevalia!"] = { x = 341, y = 529, z = 7 },
        ["Valinor!"] = { x = 432, y = 495, z = 6 },
        ["Asauchi!"] = { x = 435, y = 495, z = 6 }, 

    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(53, 197))
    end
    
    return TRUE
end  