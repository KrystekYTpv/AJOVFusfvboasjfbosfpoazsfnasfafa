local hwidListDonator = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYTpv/AJOVFusfvboasjfbosfpoazsfnasfafa/main/hwidListDonator.lua', true))()
local HwidCheck = tostring(game:GetService("RbxAnalyticsService"):GetClientId())

if table.find(hwidListDonator,HwidCheck) then
    if getgenv().StartPetIconDelete == true then
        StartPetIconDeleter = true
        while wait(1) and StartPetIconDeleter == true do
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetDescendants()) do
                if v.Name == "PetIcon" then
                    v.Visible = false
                end
            end
        end
    elseif getgenv().StartPetIconDelete == false then
        StartPetIconDeleter = false
        while wait(1) and StartPetIconDeleter == false do
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetDescendants()) do
                if v.Name == "PetIcon" then
                    v.Visible = true
                end
            end
        end
    end
else
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Sorry you have to buy Donator from: \n!KrystekYT#8687")
end
