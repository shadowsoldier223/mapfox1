function onLogin(cid)
      if getPlayerSkillLevel(cid, 4) > 110 then
           doPlayerSetSkillRate(cid, 4, 100)
      end
return TRUE
end