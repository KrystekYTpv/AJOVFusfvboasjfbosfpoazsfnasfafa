local old 
old = hookfunction(game.HttpGet, function (self, url, ...)
    for i,v in pairs({'Nigger.com'}) do 
        if url == v then 
            return 'nice try skid'
        end 
    end 
    return old(self, url, ...) 
end)
---------------------------------------
if game:GetService("CoreGui"):FindFirstChild("PSX | Free") then
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Finded another menu. \nDestroying it... \nPlease execute again.")
        for i = 0,5 do
            game:GetService("CoreGui")["PSX | Free"]:Destroy()
        end
elseif not game:GetService("CoreGui"):FindFirstChild("PSX | Free") then
    print("Didnt find other menus")
end

require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("You are using Free Version of Script. \nPlease buy it from: \n!KrystekYT#8687 \nRemember Premium Version have much more functions. \nHave fun :)")

if game.PlaceId == 6284583030 then
    local start = tick()
    repeat task.wait() until game:isLoaded()
    repeat task.wait() until game:GetService("Players")
    repeat task.wait() until game:GetService("Players").LocalPlayer
    repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled
    repeat task.wait() until game:GetService("Workspace"):FindFirstChild('__MAP')
end


-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrystekYT/VenyxUI-Colored/main/petsimxVenyx"))()
local venyx = library.new("PSX | Free", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(0, 255, 255)
}


local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("lol bad exploit")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end



-------------------------------------------------------------------------------------------------
--locales

local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Network = GameLibrary.Network
local Run_Service = game:GetService("RunService")
local rs = Run_Service.RenderStepped
local CurrencyOrder = {"Halloween Candy", "Tech Coins", "Fantasy Coins", "Coins", "Diamonds",}

local IMightKillMyselfCauseOfThis = {
        --Misc
        ['VIP'] = {'VIP'};
        --Spawn
        ['Town'] = {'Town', 'Town FRONT'};
        ['Forest'] = {'Forest', 'Forest FRONT'};
        ['Beach'] = {'Beach', 'Beach FRONT'};
        ['Mine'] = {'Mine', 'Mine FRONT'};
        ['Winter'] = {'Winter', 'Winter FRONT'};
        ['Glacier'] = {'Glacier', 'Glacier Lake'};
        ['Desert'] = {'Desert', 'Desert FRONT'};
        ['Volcano'] = {'Volcano', 'Volcano FRONT'};
        -- Fantasy init
        ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'};
        ['Ancient'] = {'Ancient'};
        ['Samurai'] = {'Samurai', 'Samurai FRONT'};
        ['Candy'] = {'Candy'};
        ['Haunted'] = {'Haunted', 'Haunted FRONT'};
        ['Hell'] = {'Hell'};
        ['Heaven'] = {'Heaven'};
        -- Tech
        ['Ice Tech'] = {'Ice Tech'};
        ['Tech City'] = {'Tech City'; 'Tech City FRONT'};
        ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'};
        ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'};
    }

    local AreaListLoc = { --These match the IMightKillMyselfCuaseOfThis table
        'All'; 'VIP';
        'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
        'Enchanted Forest'; 'Ancient'; 'Samurai'; 'Candy'; 'Haunted'; 'Hell'; 'Heaven';
        'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk';
    }
    
    

local function SecondsToClock(seconds) 
        local days = math.floor(seconds / 86400)
        seconds = seconds - days * 86400
        local hours = math.floor(seconds / 3600 )
        seconds = seconds - hours * 3600
        local minutes = math.floor(seconds / 60) 
        seconds = seconds - minutes * 60

        return string.format("%d d, %d h, %d m, %d s.",days,hours,minutes,seconds)
      end



--5012544693

-------------------------------------------------------------------------------------------------
-- credits page
local page = venyx:addPage("Credits", 5832745520)
local Credits1 = page:addSection("Authors:")

Credits1:addButton("!KrystekYT#8687", function(dsclink)
    if dsclink then
        venyx:Notify("Text Copied", "Now Just Paste It :) ")
    end
    setclipboard('!KrystekYT#8687')
end)

----------------------------------

local Credits2 = page:addSection("Discord:")

Credits2:addButton("Copy Discord Link", function(dsclink)
    if dsclink then
        venyx:Notify("Link Copied", "Now Just Paste It :) ")
    end
    setclipboard('https://discord.gg/3FV3qCMkU2')
end)



-------------------------------------------------------------------------------------------------
-- page1


local page = venyx:addPage("Farming", 1379498635)
local section1 = page:addSection("Farming")
local section2 = page:addSection("Farming Addons Premium Only")
-------------------------------------------------------------------------------------------------
-- Misc page
local page = venyx:addPage("Misc", 37219625)
local misc1 = page:addSection("Misc")
local misc2 = page:addSection("Remote Things")

-------------------------------------------------------------------------------------------------

-- Egg page
local page = venyx:addPage("Eggs", 5094819983)
local eggs1 = page:addSection("Eggs")
-------------------------------------------------------------------------------------------------

-- Pets page
local page = venyx:addPage("Pets", 329532393)
local pets1 = page:addSection("Auto Fuse Premium Only")
local pets2 = page:addSection("Auto Gold/Rainbow")
local pets3 = page:addSection("Auto Enchant | Disabled")
local pets4 = page:addSection("Dark Matter Premium Only")
-------------------------------------------------------------------------------------------------

-- Settings page
local page = venyx:addPage("Settings", 5107159171)
local Settings1 = page:addSection("Settings")
local Settings2 = page:addSection("Theme")
Settings1:addKeybind("Toggle Keybind Menu", Enum.KeyCode.RightShift, function(menu)
venyx:toggle()
end, function(menu)
end)

------------

Settings1:addButton("Destroy GUI", function(destroygui)
    game:GetService("CoreGui")["PSX | Free"]:Destroy()
    print("GUI Destroyed")
end)
-------------------------------------------------------------------------------------------------

local MethodList = {'Normal', 'Lowest Value (Multi)', 'Nearest'}

section1:addDropdown("Method", MethodList, function(methodfunc)
    if methodfunc then
        _G.methodfunc = methodfunc
    end
    print("Method: ", methodfunc)
end)

--------------------------------


local ItemToFarmList = {'All'}

section1:addDropdown("Item To Farm", ItemToFarmList, function(itemtofarmfunc)
    if itemtofarmfunc then
        _G.itemtofarmfunc = itemtofarmfunc
    end
    print("Selected Item: ", itemtofarmfunc)
end)

--------------------------------

--local WorldList = {"Spawn", "Fantasy", "Tech"}

--section1:addDropdown("Select World", WorldList, function(worldfunc)
--    if worldfunc then
--        _G.worldfunc = worldfunc
--    end
--    print("World: ", worldfunc)
--end)
--------------------------------


--local Coins = {} 
--for i,v in pairs(game.ReplicatedStorage.Game.Coins:GetChildren()) do 
--    for i2,v2 in pairs(v:GetChildren()) do 
--        table.insert(Coins, v2.Name)
--    end 
--end 
--table.foreach(Coins, print)



section1:addDropdown("Select Location", AreaListLoc, function(mapafunc)
    if mapafunc then
        _G.mapafunc = mapafunc
    end
    print("Area: ", mapafunc)
end)

-------------------------------------------------------------------------------------------------

local AreaWorldTable = {}
for _, v in pairs(game:GetService("ReplicatedStorage").Game.Coins:GetChildren()) do
    for _, b in pairs(v:GetChildren()) do
        table.insert(AreaWorldTable, b.Name)
    end
    table.insert(AreaWorldTable, v.Name)
end

-------------------------

function AllChests()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(AreaWorldTable) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", "")
                if table.find(Chests, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

-------------------------------

workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "buy egg")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "claim orbs")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "change pet target")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "get trade")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "add trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "remove trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "convert to dark matter")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem dark matter pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem rank rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem vip rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "toggle setting")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "activate boost")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use golden machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use rainbow machine")
-------------------------------

function FarmCoin(CoinID, PetID)
    game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
    game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end

-------------------------------

--function GetMyPets()
--   local returntable = {}
--   for i,v in pairs(GameLibrary.Save.Get().Pets) do
--       if v.e then 
--           table.insert(returntable, v.uid)
--       end
--   end
--   return returntable
--end

local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
local IDToName = {}
local NameToID = {}
for i,v in pairs(Library.Directory.Pets ) do
    IDToName[i] = v.name
    NameToID[v.name] = i
end

function GetMyPets()
       local returntable = {}
       for i,v in pairs(GameLibrary.Save.Get().Pets) do
           if v.e then 
               table.insert(returntable, v.uid)
           end
       end
       return returntable
    end

function GetPets()
        local MyPets = {}
        for i,v in pairs(GameLibrary.Save.Get().Pets) do
            if (not _G.AllowMythicals) or (_G.AllowMythicals and (not PettoRarity[v.id] ~= 'Mythical' and PettoRarity[v.id] ~= 'Exclusive' and not string.find(IDToName[v.id]:lower(), "maskot"))) then
                local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or 'Normal'
                local TempString = ThingyThingyTempTypeThing .. IDToName[v.id]
                if MyPets[TempString] then
                    table.insert(MyPets[TempString], v.uid)
                else
                    MyPets[TempString] = {}
                    table.insert(MyPets[TempString], v.uid)
                end
            end
        end
        return MyPets
end

--------------------------

function GetCoins(area, exclude)
    exclude = exclude or {}
    local Areas = (IMightKillMyselfCauseOfThis)
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        if _G.mapafunc == 'All' or table.find(Areas[_G.mapafunc], v.a) and not table.find(exclude ,v.n) then
            local shit = v
            shit["index"] = i
            table.insert(returntable, shit)
         end
    end
    return returntable
end
--------------------------

function GetCoinTable(area, Type, exclude)
    exclude = exclude or {}
    local CoinTable = GetCoins(area, exclude)
    local function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(
            keys,
            function(a, b)
                return sortFunction(tbl[a].h, tbl[b].h)
            end
        )
        return keys
    end
    local sortedKeys
    if Type == 'Highest' then
        sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
    elseif Type == 'Lowest' then
        sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a < b end)
    end
    local newCoinTable = {}

    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end

    return newCoinTable
end

-------------------------

section1:addToggle("Farming Toggle", false, function(farmingtogglefunc)
if farmingtogglefunc == true then
    _G.FarmingToggle = true
elseif farmingtogglefunc == false or destroygui then
    _G.FarmingToggle = false
end
    
        local CurrentFarmingPets = {}
        while _G.FarmingToggle do
            local pethingy = GetMyPets()
            local cointhiny = nil


            if _G.methodfunc == 'Normal' then
                local cointhiny = GetCoins(_G.mapafunc)
                for i = 1, #cointhiny do
                    if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
                        for _, bb in pairs(pethingy) do
                            coroutine.wrap(function()
                                FarmCoin(cointhiny[i].index, bb)
                            end)()
                        end
                        repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or not _G.FarmingToggle or _G.methodfunc ~= 'Normal'
                    end
                end

            elseif _G.methodfunc == 'Lowest Value (Multi)' then
                local cointhiny = GetCoinTable(_G.mapafunc, "Lowest")
                for i = 1, (#cointhiny >= #pethingy and #pethingy or #cointhiny) do
                    if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
                        coroutine.wrap(function()
                            CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                            FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                            repeat task.wait(0.0001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0 or not _G.FarmingToggle or _G.methodfunc ~= 'Lowest Value (Multi)'
                            CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                        end)()
                    end
                end
            
            elseif _G.methodfunc == 'Nearest' then
                local cointable = game:GetService("Workspace")["__THINGS"].Coins:GetChildren()
                table.sort(cointable, function(i, v)
                    return (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.POS.Position).magnitude < (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.POS.Position).magnitude
                end)
                local NearestOne = cointable[1]
                if NearestOne ~= nil then
                    for a,b in pairs(pethingy) do
                        coroutine.wrap(function()
                            if NearestOne ~= nil then
                                FarmCoin(NearestOne.Name, b)
                            end
                        end)()
                    end
                    repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(NearestOne.Name) or #game:GetService("Workspace")["__THINGS"].Coins[NearestOne.Name].Pets:GetChildren() == 0
                else
                    task.wait()
                end
            end
        end
    end)


-------------------------------------------------------------------------------------------------
-- Farming Addons

section1:addToggle("Auto Collect Orbs", false, function(autocollecting)

if autocollecting == true then
    _G.CollectOrbs = true
elseif autocollecting == false or destroygui then
    _G.CollectOrbs = false
    end

function CollectOrbs()
   local ohTable1 = {[1] = {}}
   for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
       ohTable1[1][i] = v.Name
        end
   game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
    end

while wait() and _G.CollectOrbs do
      pcall(function() CollectOrbs() end)
end
end)

---------------

section2:addToggle("Auto Triple Damage Premium Only", false, function(autotripledamage)
    print("Nichuja")
end)
---------------

section2:addToggle("Auto Triple Coins Premium Only", false, function(autotriplecoins)
    print("Nichuja")
end)

----------

section2:addButton("Nothing", function(idiota)
    if idiota then
        venyx:Notify("Nothing", "You are idiot")
    end
    --nic nie ma
end)

------------------
-- Misc



misc1:addButton("Better Search Premium Only", function(bettersearchmessage)
    
end)

------------------

misc1:addButton("Pet Counter Premium Only", function(petcountermessage)
    
end)

-------------------------------------------------------------------------------------------------
--page2

local pathToScript = game.Players.LocalPlayer.PlayerScripts.Scripts.Game['Open Eggs']
local oldFunc = getsenv(pathToScript).OpenEgg

eggs1:addToggle("Remove Egg Animation", false, function(delanimation)
    if delanimation == true then 
        getsenv(pathToScript).OpenEgg = function() return end 
    else
        getsenv(pathToScript).OpenEgg = oldFunc
    end 
end)

-------------------------------------------------------------------------------------------------

eggs1:addToggle("Triple Egg Gamepass", false, function(triplegamepass)

if triplegamepass == true then
    _G.TripleEgg = true
elseif triplegamepass == false or destroygui then
    _G.TripleEgg = false
    end
end)

_G.TripleEgg = false

-------------------------------------------------------------------------------------------------

local Eggs = {} 
for i,v in pairs(game.ReplicatedStorage.Game.Eggs:GetChildren()) do 
    for i2,v2 in pairs(v:GetChildren()) do 
        table.insert(Eggs, v2.Name)
    end 
end

eggs1:addDropdown("Select Egg", Eggs, function(eggor)
    if eggor then
        _G.Egg = eggor
    end
    --print("Text: ", eggor)
    --print("_G.Egg: ", _G.Egg)
end)
----------------------------

eggs1:addToggle("Auto Open Egg", nil, function(dropegg)
shared.toggle3drop = dropegg
end)
local openeegg = eggor
game:GetService("RunService").RenderStepped:connect(function()
if shared.toggle3drop then
    --print("Egg: ", _G.Egg)
    --print("Triple Egg GamePasse: ", _G.TripleEgg)
    local ohTable1 = {
    	[1] = _G.Egg,
    	[2] = _G.TripleEgg
    }
    workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(ohTable1)
    wait(0.5)
    end
end)


-------------------------------------------------------------------------------------------------
--Pets


local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local IDToName = {}
local NameToID = {}
local PettoRarity = {}
local RarityTable = {}
local PetNamesTable = {}
local PetNamesTable = {}

for i,v in pairs(GameLibrary.Directory.Pets) do
    IDToName[i] = v.name
    NameToID[v.name] = i
    PettoRarity[i] = v.rarity
    if not table.find(RarityTable, v.rarity) then
        table.insert(RarityTable, v.rarity)
    end
    table.insert(PetNamesTable, v.name)
end

---------------------------------------
--auto gold/rainbow

local CountCombineList = {1, 2, 3, 4, 5, 6}

pets2:addDropdown("Select Count", CountCombineList, function(countcombinefunc)
    if countcombinefunc then
        _G.CountCombineFunc1 = countcombinefunc
    end
    print("Selected Combine Count: ", _G.CountCombineFunc1)
end)

------------------------------------------

pets2:addToggle("Gold", nil, function(togglegoldfunc)
    
if togglegoldfunc == true then
    _G.ToggleGold = true
elseif togglegoldfunc == false then
    _G.ToggleGold = false
end
end)


pets2:addToggle("Rainbow", nil, function(toggleraibowfunc)
    
if toggleraibowfunc == true then
    _G.ToggleRainbow = true
elseif toggleraibowfunc == false then
    _G.ToggleRainbow = false
end
end)

---------------------------------------

pets2:addToggle("Allow Mythical", nil, function(allowmythicalfunc)
    
_G.AllowMythicals = false

if allowmythicalfunc == true then
    _G.AllowMythicals = false
elseif allowmythicalfunc == false then
    _G.AllowMythicals = true
end
end)

---------------------------------------

pets2:addToggle("Auto Combine", nil, function(autocombinefunc)
    
if autocombinefunc == true then
    _G.AutoCom = true
elseif autocombinefunc == false then
    _G.AutoCom = false
end

while wait() and _G.AutoCom do
    for i, v in pairs(GetPets()) do
        if #v >= _G.CountCombineFunc1 and _G.AutoCom then
            if string.find(i, "Normal") and _G.AutoCom and _G.ToggleGold then
                local Args = {}
                for eeeee = 1, _G.CountCombineFunc1 do
                    Args[#Args+1] = v[#Args+1]
                end
                Library.Network.Invoke("use golden machine", Args)

            elseif string.find(i, "Gold") and _G.AutoCom and _G.ToggleRainbow then
                local Args = {}
                for eeeee = 1, _G.CountCombineFunc1 do
                    Args[#Args+1] = v[#Args+1]
                end
                Library.Network.Invoke("use rainbow machine", Args)
            end
        end
    end
end
end)

-------------------------------------------------------------------------------------------------
--Dark Matter

pets4:addButton("Remaining Time Check", function()
        local PetList = {}
        for i,v in pairs(GameLibrary.Directory.Pets) do
        PetList[i] = v.name
        end

        local returnstring = ""
        for i,v in pairs(GameLibrary.Save.Get().DarkMatterQueue) do
            local timeleft = 'Done!'
            if math.floor(v.readyTime - os.time()) > 0 then
                timeleft = SecondsToClock(math.floor(v.readyTime - os.time()))
            end
            local stringthing = PetList[v.petId] .." will be ready in: ".. timeleft
            returnstring = returnstring .. stringthing .. "\n"
        end
        require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New(returnstring)
end)

-------------------------------------------------------------------------------------------------
--page3


misc1:addToggle("Auto Collect Rewards", false, function(autorewards)

if autorewards == true then
    _G.AutoRewards1 = true
elseif autorewards == false then
    _G.AutoRewards1 = false
end

while task.wait() and _G.AutoRewards1 do
	workspace.__THINGS.__REMOTES["redeem vip rewards"]:InvokeServer({})
	workspace.__THINGS.__REMOTES["redeem rank rewards"]:InvokeServer({})			
end
end)


-------------------------------------------------------------------------------------------------


misc1:addToggle("Give GamePasses", false, function(gamepasses)
shared.toggle3gamepasses = gamepasses
game:GetService("RunService").RenderStepped:connect(function()
if shared.toggle3gamepasses then
    local main = debug.getupvalues(require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).Save.Get)[2][game.Players.LocalPlayer].save.Gamepasses
		table.insert(main,18674296)
		table.insert(main,18674298)
		table.insert(main,18674321)
		table.insert(main,21176989)
		table.insert(main,21583760)
		table.insert(main,21641016)
    end
end)
end)
-------------------------------------------------------------------------------------------------

misc1:addButton("Stats Tracker", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/dPXXyp4A'))()
    print("Stats Tracker Loaded")
end)

-------------------------------------------------------------------------------------------------

misc1:addButton("Anti Afk", function()
print("Anti Afk Loaded")
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("lol bad exploit")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end
end)
-------------------------------------------------------------------------------------------------


misc1:addButton("Lag Reduction Premium Only", function(AutoAntiLag)

end)

-------------------------------------------------------------------------------------------------

misc1:addButton("Ultra Lag Reducer Premium Only", function()

end)

-------------------------------------------------------------------------------------------------
--Remote Things
misc2:addButton("Pet Collection", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled
end)

misc2:addButton("Fuse Pets", function()
    game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled
end)

misc2:addButton("Gold Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled
end)

misc2:addButton("Rainbow Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled
end)

misc2:addButton("Dark Matter Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled
end)

misc2:addButton("Merchant", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled
end)

misc2:addButton("Enchant", function()
    game:GetService("Players").LocalPlayer.PlayerGui.EnchantPets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.EnchantPets.Enabled
end)

-------------------------------------------------------------------------------------------------

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
Settings2:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
-------------------------------------------------------------------------------------------------


-- load
venyx:SelectPage(venyx.pages[1], true)
