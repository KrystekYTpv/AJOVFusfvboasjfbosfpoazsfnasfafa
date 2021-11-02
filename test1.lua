local old 
old = hookfunction(game.HttpGet, function (self, url, ...)
    for i,v in pairs({'aspkdnas.com'}) do 
        if url == v then 
            return 'asfla[sfad'
        end 
    end 
    return old(self, url, ...) 
end)

wait()

local check = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/WhiteListKody.lua', true))
local free = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/psxScriptFree.lua'))
local premium = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/psxScriptPremium.lua'))

if table.find(check(), tostring(game.Players.LocalPlayer.UserId)) and wait(1) then 
    print('Premium', check)
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Loading Premium Version! \nClick Ok!")
    premium()
else
    print('Free', check)
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Loading Free Version! \nClick Ok!")
    free()
end
