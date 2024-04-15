function onSay(cid, words, param)
	local str = "Olá, seja bem vindo ao FighterWorld.\n Para saber as magias digite !spells e para saber a lista de comandos digite !comandos. \n O pvp (player versus player) é apartir do lvl 100. \n É expressamente proibido o uso de BOT fora dos trainers, isso resultará em BAN.\n Informações do server em !serverinfo e para saber informações de Battle digite !pvp \n O Rank é atualizado de vinte em vinte minutos. \n Bom Jogo! \n\n\n---------------------------------------------------------------------------\n"
	doPlayerPopupFYI(cid, str)
	return FALSE
end