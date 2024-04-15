-- shovel bye atolon--
  
  
  function onUse(cid, item, frompos, item2, topos)
  	if item2.itemid == 28 then
  		return 0
  	end
  
   	if item.itemid == 2050 then
   		doTransformItem(item.uid,2051)
   	elseif item.itemid == 2051 then
   		doTransformItem(item.uid,2050)
  
   	elseif item.itemid == 9972 then
   		doTransformItem(item.uid,9973)
   	elseif item.itemid == 9973 then
   		doTransformItem(item.uid,9972)

   	elseif item.itemid == 9953 then
   		doTransformItem(item.uid,9954)
   	elseif item.itemid == 9954 then
   		doTransformItem(item.uid,9953)

   	elseif item.itemid == 9948 then
   		doTransformItem(item.uid,9949)
   	elseif item.itemid == 9949 then
   		doTransformItem(item.uid,9948)

   	elseif item.itemid == 2052 then
   		doTransformItem(item.uid,2053)
   	elseif item.itemid == 2053 then
   		doTransformItem(item.uid,2052)
  
   	elseif item.itemid == 2054 then
   		doTransformItem(item.uid,2055)
   	elseif item.itemid == 2055 then
   		doTransformItem(item.uid,2054)
  
  
   	elseif item.itemid == 2047 then
   		doTransformItem(item.uid,2048)
   	elseif item.itemid == 2048 then
   		doTransformItem(item.uid,2047)
  
   	elseif item.itemid == 2044 then
   		doTransformItem(item.uid,2045)
   	elseif item.itemid == 2045 then
   		doTransformItem(item.uid,2044)
  
   	elseif item.itemid == 2041 then
   		doTransformItem(item.uid,2042)
   	elseif item.itemid == 2042 then
   		doTransformItem(item.uid,2041)
   	elseif item.itemid == 2057 then
   		doTransformItem(item.uid,2041)
  
  	else
  		return 0
  	end
  
          doDecayItem(item.uid)
  
  	return 1
  end