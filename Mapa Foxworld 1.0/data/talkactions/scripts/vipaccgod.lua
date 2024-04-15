function onSay(cid, words, param, channel)
        local t = param:explode(",")
        local name, days = t[1], tonumber(t[2])
        if words == "/installvip" then
                if installVip() then
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Vip System instalado com sucesso!")
                else
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "N�o foi poss�vel instalar o Vip System!")
                end
        elseif words == "/addvip" then
                if name then
                        if days then
                                local acc = getAccountIdByName(name)
                                if acc ~= 0 then
                                        addVipDaysByAccount(acc, days)
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� adicionou "..days.." dia(s) de vip ao "..name..", agora ele possui "..getVipDaysByAccount(acc).." dia(s) de vip.")
                                else
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Este player n�o existe.")
                                end
                        else
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� n�o pode adicionar essa quantidade de dia(s) de vip.")
                        end
                else
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� n�o pode adicionar dia(s) de vip a este player.")
                end
        elseif words == "/removevip" then
                if name then
                        if days then
                                local acc = getAccountIdByName(name)
                                if acc ~= 0 then
                                        doRemoveVipDaysByAccount(acc, days)
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� retirou "..days.." dia(s) de vip do "..name..", agora ele possui "..getVipDaysByAccount(acc).." dia(s) de vip.")
                                else
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Este player n�o existe.")
                                end
                        else
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� n�o pode retirar essa quantidade de dia(s) de vip.")
                        end
                else
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� n�o pode retirar dia(s) de vip a este player.")
                end
        elseif words == "/checkvip" then
                if name then
                        local acc = getAccountIdByName(name)
                        if acc ~= 0 then
                                local duration = getVipDateByAccount(acc)
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O "..name.." possui "..getVipDaysByAccount(acc).." dias de vip."..(duration and (" Ela ir� durar at� "..duration..".") or ""))
                        else
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Este player n�o existe.")
                        end
                else
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� n�o pode visualizar os dias de vip a este player.")
                end
        end
        return TRUE
end