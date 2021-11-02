local links = {
    'https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/WhiteListKody.lua', --whitelisted osoby,
    'https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/psxScriptFree.lua', --skrypt jezeli free wersja,
    'https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/psxScriptPremium.lua', --skrypt jezeli premium wersja
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
