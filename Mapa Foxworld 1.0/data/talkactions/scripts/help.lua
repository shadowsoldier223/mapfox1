function onSay(cid, words, param)
	local str = "Ol�, seja bem vindo ao FighterWorld.\n Para saber as magias digite !spells e para saber a lista de comandos digite !comandos. \n O pvp (player versus player) � apartir do lvl 100. \n � expressamente proibido o uso de BOT fora dos trainers, isso resultar� em BAN.\n Informa��es do server em !serverinfo e para saber informa��es de Battle digite !pvp \n O Rank � atualizado de vinte em vinte minutos. \n Bom Jogo! \n\n\n---------------------------------------------------------------------------\n"
	doPlayerPopupFYI(cid, str)
	return FALSE
end