local dump = io.open("state_dump.txt","w")
local aprased = {}

function tab_find_exists(tab,data)
    for k,v in pairs(tab) do
        if v == data then
            return true
        end
    end
    return false
end

function dump_table(fi,tab,depth)
    table.insert(aprased,tab)
    for k,v in pairs(tab) do
        if type(v) == "table" and not tab_find_exists(aprased,v) then
			for i=1,depth,1 do
				fi:write("  ")
            end
            fi:write(tostring(k),":\n")
            dump_table( fi, v, depth+1 )
        else
			for i=1,depth,1 do
				fi:write("  ")
            end
            fi:write(tostring(k)," = ",tostring(v),"\n" );
        end
    end
    fi:write("\n")
    fi:flush()
end

function tellme(offset, story)
	file = io.open("lastdump.txt", "w")
    file:write("Dumping setActionChart()", "\n")
    file:close()
	
	local n,v
	for n,v in pairs(story) do
			if n ~= "loaded" and n ~= "_G" then
			io.write (tostring(offset) .. tostring(n) .. " " )
			io:write(tostring(v),":\n")
				if type(v) == "table" then
						tellme(offset .. "--> ",tostring(v))
				end
			end
	end
    
    for keya, valuea in pairs(story) do
        file = io.open("lastdump.txt", "a")
        file:write("Found Member: "..keya.." || Value: "..tostring(valuea), "\n")
        file:close()
    end
end

aprased["test"]=true --avoid nil bug
dump_table( dump ,_G ,0 )
tellme("",_G)
dump:flush()
dump:close()