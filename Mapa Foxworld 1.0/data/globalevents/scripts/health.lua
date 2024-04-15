local pos =
{
    {{x = 441, y = 547, z = 7}, {x = 441, y = 547, z = 7, stackpos = 253}},
    {{x = 441, y = 548, z = 7}, {x = 441, y = 548, z = 7, stackpos = 253}},
    {{x = 441, y = 549, z = 7}, {x = 441, y = 549, z = 7, stackpos = 253}},
    {{x = 442, y = 547, z = 7}, {x = 442, y = 547, z = 7, stackpos = 253}},
    {{x = 442, y = 548, z = 7}, {x = 442, y = 548, z = 7, stackpos = 253}},
    {{x = 442, y = 549, z = 7}, {x = 442, y = 549, z = 7, stackpos = 253}},
    {{x = 443, y = 547, z = 7}, {x = 443, y = 547, z = 7, stackpos = 253}},
    {{x = 443, y = 548, z = 7}, {x = 443, y = 548, z = 7, stackpos = 253}},
    {{x = 443, y = 549, z = 7}, {x = 443, y = 549, z = 7, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 12)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
            end
        end
    end
return TRUE
end  