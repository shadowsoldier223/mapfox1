local firstSet =
{
           2173,
           2461,
           2467,
           2649,
           2643
}

function onLogin(cid)

       if getPlayerStorageValue(cid, 30001) == -1 then

              if getPlayerVocation(cid) == 0 then
		doPlayerAddItem(cid, 2512, 1)
		      doPlayerAddItem(cid, 2399, 1)              
              elseif getPlayerVocation(cid) == 1 then
		doPlayerAddItem(cid, 2190, 1)
		      doPlayerAddItem(cid, 2512, 1)
              elseif getPlayerVocation(cid) == 2 then
		doPlayerAddItem(cid, 2182, 1)
		      doPlayerAddItem(cid, 2512, 1)
              elseif getPlayerVocation(cid) == 3 then
		doPlayerAddItem(cid, 2455, 1)
		      doPlayerAddItem(cid, 2543, 100)
              elseif getPlayerVocation(cid) == 4 then
		doPlayerAddItem(cid, 2383, 1)
		      doPlayerAddItem(cid, 2512, 1)
              end

       for i = 1, table.maxn(firstSet) do
	doPlayerAddItem(cid, firstSet[i], 1)
       end

		doPlayerAddItem(cid, 2124, 1)
		local bag = doPlayerAddItem(cid, 2003, 1)

                    if getPlayerVocation(cid) ~= 0 then
		doAddContainerItem(bag, 2160, 5)
		doAddContainerItem(bag, 2554, 1)
		doAddContainerItem(bag, 2120, 1)
		doAddContainerItem(bag, 2789, 25)
		setPlayerStorageValue(cid, 30001, 1)
                    else
                    end 

	end
 	return TRUE
end