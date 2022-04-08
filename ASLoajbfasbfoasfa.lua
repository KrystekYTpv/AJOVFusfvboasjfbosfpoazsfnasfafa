local donatorList = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYTpv/AJOVFusfvboasjfbosfpoazsfnasfafa/main/donatorList.lua', true))()
    
if iconpetdeleter then
    getgenv().StartPetIconDeleter = true
    if donatorList[game.Players.LocalPlayer.UserId] and donatorList[game.Players.LocalPlayer.UserId] == game.Players.LocalPlayer.Name then
        while wait(1) and StartPetIconDeleter do
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetDescendants()) do
                if v.Name == "PetIcon" then
                    v:Destroy()
                end
            end
        end
    else
        require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Sorry you have to buy Donator from: \n!KrystekYT#8687")
    end
end
