local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/NovalineDev/Static-Hub/main/Games/IrisBetterNotifications.lua"))()

function notify(title, desc)
    Notification.Notify(title, desc, "rbxassetid://7645607172", {
        Duration = 7,
        
        TitleSettings = {
            TextXAlignment = Enum.TextXAlignment.Center,
            Font = Enum.Font.SourceSansSemibold,
        },
    
        GradientSettings = {
            GradientEnabled = false,
            SolidColorEnabled = true,
            SolidColor = Color3.fromRGB(252, 253, 255),
            Retract = true
        }
    })
end

if getgenv().staticHubLoader == true then
    notify("Static Hub", "Static Hub has already been loaded!")
else
    getgenv().staticHubLoader = true;
    notify("Static Hub", "Detecting Game")
    wait(3)
    if game.PlaceId == 1962086868 then -- Normal ToH
        notify("Static Hub", "Tower of Hell detected, loading script.\nYour game might lag a bit.")
        wait(3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NovalineDev/Static-Hub/main/Games/TowerOfHell.lua"))()
        notify("Static Hub", "Make sure to use an alt since you could get banned.")
    elseif game.PlaceId == 5253186791 then -- Appeal ToH
        notify("Static Hub", "Tower of Hell (appeal) detected, loading script.\nYour game might lag a bit.")
        wait(3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NovalineDev/Static-Hub/main/Games/TowerOfHell.lua"))()
        notify("Static Hub", "Make sure to use an alt since you could get banned.")
    elseif game.PlaceId == 155615604 then -- Prison Lie
        notify("Static Hub", "Prison Life detected, loading script.\nYour game might lag a bit.")
        wait(3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NovalineDev/Static-Hub/main/Games/PrisonLife.lua"))()
    end
end
