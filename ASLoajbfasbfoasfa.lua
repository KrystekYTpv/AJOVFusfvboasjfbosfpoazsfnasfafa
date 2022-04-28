if getgenv().StartPetIconDelete == true then
        while wait(1) and StartPetIconDeleter == true do
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetDescendants()) do
                if v.Name == "PetIcon" then
                    v.Visible = false
                end
            end
        end
elseif getgenv().StartPetIconDelete == false then
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetDescendants()) do
        if v.Name == "PetIcon" then
            v.Visible = true
        end
    end
end
