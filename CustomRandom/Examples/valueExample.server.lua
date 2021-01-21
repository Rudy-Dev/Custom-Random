--Example of usage of CustomRandom.valueInt()
--Require Module - https://www.roblox.com/library/6254550249/Random
local CustomRandom = require(6254550249)


--You can easily make a rarity system
for i = 0, 10, 1 do

   local value = CustomRandom.value()

   if value > 0.9 then
    print("rare thing happen")

    else
    print("Nothing special happen")    
    
    end 
end
