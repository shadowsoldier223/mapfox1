local config = {
	rateSpawn = getConfigInfo('rateSpawn'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	autoSaveEachMinutes = getConfigInfo('autoSaveEachMinutes')
}

function onSay(cid, words, param)
	local str = "#__!help\n__!spells\n__!online\n__!rank\n__/q\n__!frags\n__!quit\n__!changender\n__!pvp\n__!afk\n__!serverinfo \n\n\n----------------------------------------------------------\n"
	doPlayerPopupFYI(cid, str)
	return FALSE
end