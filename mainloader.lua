local links = {
    'https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/whitelist_kody.lua', --whitelisted osoby,
    'https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/krystekpetsimxloaderfree.lua', --skrypt jezeli free wersja,
    'https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/krystekpetsimxloader.lua', --skrypt jezeli premium wersja
}

local old 
old = hookfunction(game.HttpGet, function(self, url, ...)
    for i,v in pairs(links) do 
        if url == v then 
            return 'skid'
        end 
    end
    return old(self, url, ...)
end) 

local check = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/whitelist_kody.lua'))
local free = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/krystekpetsimxloaderfree.lua'))
local premium = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/krystekpetsimxloader.lua'))

wait(1)

if table.find(check(), tostring(game.Players.LocalPlayer.UserId)) then 
    print('Premium')
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Loading Premium Version! \nClick Ok!")
    premium()
else 
    print('Free')
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Loading Free Version! \nClick Ok!")
    free()
end 
