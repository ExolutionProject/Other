local Poss = {
    Vector3.new(33.27824020385742,-28.267070770263672,528.2354125976562),
    Vector3.new(607.3307495117188,4.0721435546875,-69.88491821289062),
    Vector3.new(590.6639404296875,-2.2681849002838135,140.89303588867188),
    Vector3.new(378.6638488769531,-2.268186330795288,197.433349609375),
    Vector3.new(-53.76664733886719,4.70025634765625,142.90924072265625),
    Vector3.new(69.00654602050781,-2.2681703567504883,-168.1087646484375),
    Vector3.new(294.07464599609375,-2.2025146484375,-212.7252655029297),
    Vector3.new(294.50872802734375,-28.2669677734375,316.7293701171875),
    Vector3.new(240.7006378173828,-28.2669677734375,455.88800048828125),
    Vector3.new(-130.3975067138672,-2.26580810546875,131.67221069335938),
    Vector3.new(-403.0046691894531,-2.2681703567504883,53.47247314453125),
    Vector3.new(-471.06146240234375,-2.29486083984375,-373.7569885253906),
    Vector3.new(-535.8494262695312,-28.293682098388672,-566.0545654296875),
    Vector3.new(-728.809814453125,-28.2669677734375,-544.2700805664062),
    Vector3.new(-709.78076171875,-28.31365966796875,-427.5190124511719),
    Vector3.new(-635.431884765625,-28.39984130859375,-717.8095703125),
    Vector3.new(-412.244140625,-2.2947998046875,-682.168701171875),
    Vector3.new(-307.251708984375,-2.2947998046875,-613.4785766601562),
    Vector3.new(-178.43882751464844,0.4808516502380371,-672.7586669921875),
    Vector3.new(116.64517211914062,-33.4404296875,-385.54693603515625),
    Vector3.new(51.45112991333008,-1.7619447708129883,-356.25848388671875),
    Vector3.new(373.0946960449219,-1.7642641067504883,8.98956298828125),
    Vector3.new(178.5153350830078,1.5386962890625,30.580047607421875),
    Vector3.new(384.6698303222656,-33.4404296875,-266.68206787109375),
    Vector3.new(211.89791870117188,-33.44041061401367,-267.2960205078125),
    Vector3.new(-21.446575164794922,-2.2350282669067383,-338.82733154296875),
    Vector3.new(-172.58059692382812,1.2755928039550781,-386.98876953125),
    Vector3.new(-183.12625122070312,-33.4404411315918,-454.4228820800781),
    Vector3.new(174.64791870117188,-2.507046699523926,-142.6208953857422),
    Vector3.new(282.2248229980469,2.598773956298828,-270.1136474609375),
    Vector3.new(533.2191162109375,-2.2681500911712646,-164.1876678466797),
    Vector3.new(435.71099853515625,9.323055267333984,-294.0209655761719),
    Vector3.new(187.75314331054688,1.108749270439148,107.95748901367188),
    Vector3.new(-571.7249755859375,-28.243412017822266,-463.4367980957031),
    Vector3.new(-667.2705688476562,-28.21742820739746,-460.19464111328125),
    Vector3.new(529.7552490234375,-2.2385075092315674,83.03983306884766),
    Vector3.new(397.4618835449219,-2.4570157527923584,-431.2523193359375),
    Vector3.new(220.6957550048828,-2.206467628479004,-584.4510498046875),
    Vector3.new(106.2612075805664,0.48054039478302,-672.7584228515625),
    Vector3.new(-452.34735107421875,0.6539610624313354,-619.5338134765625),
    Vector3.new(-405.05279541015625,0.9399276971817017,-84.69563293457031),
    Vector3.new(-268.628173828125,-7.489838600158691,71.65970611572266),
    Vector3.new(-222.16192626953125,-2.0776724815368652,40.994285583496094),
    Vector3.new(47.430816650390625,-2.2447469234466553,-118.07217407226562),
    Vector3.new(-57.85920333862305,-0.0533456914126873,-385.74432373046875),
    Vector3.new(-105.15971374511719,-34.033775329589844,-321.08001708984375),
    Vector3.new(217.9200897216797,-1.711704969406128,-175.57545471191406),
    Vector3.new(340.00262451171875,-33.39023971557617,-119.75619506835938),
    Vector3.new(363.00848388671875,1.37542724609375,-60.341705322265625),
    Vector3.new(328.78021240234375,-33.44041061401367,87.21876525878906),
    Vector3.new(-72.93508911132812,0.07796096801757812,5.196441650390625),
    Vector3.new(-398.09747314453125,-33.4404296875,-64.75827026367188),
    Vector3.new(-776.1035766601562,-28.266948699951172,-119.48106384277344),
    Vector3.new(-712.455810546875,-22.11920166015625,-222.5147705078125),
    Vector3.new(-96.54936218261719,-33.4404296875,-32.963531494140625),
    Vector3.new(227.68038940429688,-33.44024658203125,27.316314697265625)
}

local FullStackInfo = {
    Rokakaka = 25,
    Diamond = 30,
    ["Mysterious Arrow"] = 25,
    ["Gold Coin"] = 45,
    ["Ancient Scroll"] = 10,
    ["Quinton's Glove"] = 10,
    ["Stone Mask"] = 10,
    ["Dio's Diary"] = 10,
    ["Steel Ball"] = 10,
    ["Rib Cage of The Saint's Corpse"] = 10,
    ["Zeppelin's Headband"] = 10
}

local function Count(Value)
    local int = 0
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == Value then
            int += 1
        end
    end
    return int
end

local function Sell(Name)
    local item = game.Players.LocalPlayer.Backpack[Name]
    if item then
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
        local args = {
            [1] = "EndDialogue",
            [2] = {
                ["NPC"] = "Merchant",
                ["Option"] = "Option1",
                ["Dialogue"] = "Dialogue5"
            }
        }

        game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
    end
end

local function CheckQuest(TargetName)
    local out = true
    pcall(function()
        if TargetName == "Zombie Henchman" then
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild("Take down 3 zombie henchmans") then
                out = true
            else
                out = false
            end
        elseif TargetName == "Vampire" then
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild("Take down 3 vampires") then
                out = true
            else
                out = false
            end
        elseif TargetName == "Alpha Thug" then
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild("Take down 5 alpha thugs") then
                out = true
            else
                out = false
            end
        elseif TargetName == "Dio" then
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild("Kill Dio") then
                out = true
            else
                out = false
            end
        elseif TargetName == "Corrupt Police" then
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild("Take down 5 corrupt police") then
                out = true
            else
                out = false
            end
        elseif TargetName == "Thug" then
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild("Take down 5 thugs") then
                out = true
            else
                out = false
            end
        elseif TargetName == "Jotaro" then
            if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild("Defeat Jotaro") then
                out = true
            else
                out = false
            end
        end
    end)
    return out
end

local function GetQuest(TargetName)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("RemoteEvent") then
        if TargetName == "Zombie Henchman" then
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Dracula",["Option"] = "Option1",["Dialogue"] = "Dialogue4"})
        elseif TargetName == "Vampire" then
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "William Zeppeli",["Option"] = "Option1",["Dialogue"] = "Dialogue4"})
        elseif TargetName == "Alpha Thug" then
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Abbacchio's Partner",["Option"] = "Option1",["Dialogue"] = "Dialogue6"})
        elseif TargetName == "Dio" then
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Doppio",["Option"] = "Option1",["Dialogue"] = "Dialogue3"})
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Doppio",["Option"] = "Option1",["Dialogue"] = "Dialogue5"})
        elseif TargetName == "Corrupt Police" then
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Deputy Bertrude",["Option"] = "Option1",["Dialogue"] = "Dialogue2"})
        elseif TargetName == "Thug" then
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Officer Sam",["Option"] = "Option1",["Dialogue"] = "Dialogue2"})
        elseif TargetName == "Jotaro" then
            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Dio",["Option"] = "Option1",["Dialogue"] = "Dialogue4"})
        end
    end
end


local function Spent(Skill) 
    spawn(function()
        game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer("LearnSkill",{["Skill"] = Skill,["SkillTreeType"] = "Character"})
    end)
end

local function Worthiness(TreeType, Value)
    if TreeType == 1 then
        Spent("Vitality I")
        Spent("Vitality II")
        Spent("Vitality III")
    elseif TreeType == 2 then
        Spent("Agility I")
        Spent("Agility II")
        Spent("Agility III")
    end
    if Value >= 1 then
         Spent("Worthiness I")
    end
    
    if Value >= 2 then
         Spent("Worthiness II")
    end
    
    if Value >= 3 then
         Spent("Worthiness III")
    end
    
    if Value >= 4 then
        Spent("Worthiness IV")
    end
    
    if Value == 5 then
        Spent("Worthiness V")
    end
end


local MobFarmTargets = {}
local ESPED = {}

local function addTarget(MobName,Value)
    if Value then
        if not table.find(MobFarmTargets,MobName) then
            table.insert(MobFarmTargets,MobName)
        end
    else
        if table.find(MobFarmTargets,MobName) then
            table.remove(MobFarmTargets,table.find(MobFarmTargets, MobName))
        end
    end
end
local function IsTargets()
    for i,v in pairs(game.Workspace.Living:GetChildren()) do
        if table.find(MobFarmTargets, v.Name) then
            return true
        end
    end
    return false
end
local function Invisibility(CPos, Beatiful)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") then
        if game.Players.LocalPlayer.Character.LowerTorso:FindFirstChild("Root") then
            local CurCPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CPos
            wait(2)
            local Root = game.Players.LocalPlayer.Character.LowerTorso.Root
            Root.Parent = nil
            wait()
            if Beatiful then
                Root.Parent = game.Players.LocalPlayer.Character.LowerTorso
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CurCPos
        else
            if game.Players.LocalPlayer.Character:FindFirstChild("Head") then
                game.Players.LocalPlayer.Character.Head:Destroy()
            end
        end
    end
end

local function LoadESP()
    for i,v in pairs(game.Players:GetPlayers()) do
        v.CharacterAdded:Connect(function()
            while wait() do
                if v.Character:FindFirstChild("Head") then
                    break
                end
            end
            if v.Name ~= game.Players.LocalPlayer.Name then
                local bgui = Instance.new("BillboardGui", v.Character.Head)
                bgui.Name = "EXOLUTION::NAMETAG"
                bgui.AlwaysOnTop = true
                bgui.ExtentsOffset = Vector3.new(0,2,0)
                bgui.Size = UDim2.new(0,200,0,50)
                local NameTag = Instance.new("TextLabel",bgui)
                NameTag.Text = v.Name
                NameTag.BackgroundTransparency = 1
                NameTag.TextSize = 14
                NameTag.Font = ("Arial")
                NameTag.TextColor3 = Color3.fromRGB(11, 173, 0)
                NameTag.TextStrokeTransparency = 0
                NameTag.Size = UDim2.new(1,0,1,0)
                
            end
        end)
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and not v.Character.Head:FindFirstChild("EXOLUTION::NAMETAG") then
            local bgui = Instance.new("BillboardGui", v.Character.Head)
            bgui.Name = "EXOLUTION::NAMETAG"
            bgui.AlwaysOnTop = true
            bgui.ExtentsOffset = Vector3.new(0,2,0)
            bgui.Size = UDim2.new(0,200,0,50)
            local NameTag = Instance.new("TextLabel",bgui)
            NameTag.Text = v.Name
            NameTag.BackgroundTransparency = 1
            NameTag.TextSize = 14
            NameTag.Font = ("Arial")
            NameTag.TextColor3 = Color3.fromRGB(11, 173, 0)
            NameTag.TextStrokeTransparency = 0
            NameTag.Size = UDim2.new(1,0,1,0)
        end
    end
    
    game.Players.ChildAdded:Connect(function(plr)
        plr.CharacterAdded:Connect(function()
            while wait() do
                if plr.Character:FindFirstChild("Head") then
                    break
                end
            end
            if plr.Name ~= game.Players.LocalPlayer.Name then
                local bgui = Instance.new("BillboardGui", plr.Character.Head)
                bgui.Name = "EXOLUTION::NAMETAG"
                bgui.AlwaysOnTop = true
                bgui.ExtentsOffset = Vector3.new(0,2,0)
                bgui.Size = UDim2.new(0,200,0,50)
                local NameTag = Instance.new("TextLabel",bgui)
                NameTag.Text = plr.Name
                NameTag.BackgroundTransparency = 1
                NameTag.TextSize = 14
                NameTag.Font = ("Arial")
                NameTag.TextColor3 = Color3.fromRGB(11, 173, 0)
                NameTag.TextStrokeTransparency = 0
                NameTag.Size = UDim2.new(1,0,1,0)
            end
        end)
    end)    
end

local function addNametag(Object,text,color)
    local bgui = Instance.new("BillboardGui", Object)
    bgui.Name = "nametag"
    bgui.AlwaysOnTop = true
    bgui.ExtentsOffset = Vector3.new(0,0,0)
    bgui.Size = UDim2.new(0,200,0,50)
    
    local NameTag = Instance.new("TextLabel",bgui)
    NameTag.Text = text
    NameTag.BackgroundTransparency = 1
    NameTag.TextSize = 14
    NameTag.Font = ("Arial")
    NameTag.TextColor3 = color
    NameTag.TextStrokeTransparency = 0
    NameTag.Size = UDim2.new(1,0,1,0)
    return NameTag
end

-- "Thug",
--     "Alpha Thug",
--     "Corrupt Police",
--     "Security Guard",
--     "Zombie Henchman",
--     "Vampire"

local ItemRarityColors = {
    ["Common"] = Color3.fromRGB(50,255,50),
    ["Uncommon"] = Color3.fromRGB(0, 225, 255),
    ["Epic"] = Color3.fromRGB(180, 0, 255),
    ["Legendary"] = Color3.fromRGB(255, 215, 0)
}

local MobFarmQuest = false
local MobFarmStand = false
local MobFarmDistance = 4
local MobFarm = false

local ItemFarm = false
local AntiVampBurn = false
local InvisibilityBypass = true
local ItemESP = false

local AntiAFK = false

local library = loadui()()

local main = library:CreateMain("Calmar", "YBA", Enum.KeyCode.F)

local AutoFarmTab = main:CreateTab("Авто фармы")

AutoFarmTab:CreateLabel("Автофарм Мобов")

local MobFarmThugToggle = AutoFarmTab:CreateToggle("Фармить thug",function(value) if value then addTarget("Thug",value) end end)
local MobFarmAlphaThugToggle = AutoFarmTab:CreateToggle("Фармить Alpha thug",function(value) if value then addTarget("Alpha Thug",value) end end)
local MobFarmCorruptPoliceToggle = AutoFarmTab:CreateToggle("Фармить Corrupt Police",function(value) if value then addTarget("Corrupt Police",value) end end)
local MobFarmSecurityGuardToggle = AutoFarmTab:CreateToggle("Фармить Security Guard",function(value) if value then addTarget("Security Guard",value) end end)
local MobFarmZombieToggle = AutoFarmTab:CreateToggle("Фармить Zombie Henchman",function(value) if value then addTarget("Zombie Henchman",value) end end)
local MobFarmVampireToggle = AutoFarmTab:CreateToggle("Фармить Vampire",function(value) if value then addTarget("Vampire",value) end end)

local MobFarmQuestToggle = AutoFarmTab:CreateToggle("Брать квесты",function(value) MobFarmQuest = value end)
local MobFarmStandToggle = AutoFarmTab:CreateToggle("Использовать стенд", function(value) MobFarmStand = value end)
local MobFarmDistanceSlider = AutoFarmTab:CreateSlider("Дистанция",0,8, function(value) MobFarmDistance = value end)
local MobFarmToggle = AutoFarmTab:CreateToggle("Автофарм мобов", function(value) MobFarm = value end)


AutoFarmTab:CreateLabel("Автофарм Предметов")

AutoFarmTab:CreateToggle("Автофарм предметов", function(value) ItemFarm = value end)

local MainTab = main:CreateTab("Игрок")

local WorhinessButton = MainTab:CreateButton("Вкачать макс достойность",function() Worthiness(2,5) end)
--local InvisibilityButton = MainTab:CreateButton("Невидимость", function() Invisibility(CFrame.new(446.044, -33.945, -222.213), false) end)

local TalkToJesus = MainTab:CreateButton("Поговорить с богом", function() 
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("RemoteEvent") then 
        game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("PromptTriggered",game:GetService("ReplicatedStorage").NewDialogue.Jesus)
    end 
end)

local AntiAFKToggle = MainTab:CreateToggle("Анти АФК", function(value) AntiAFK = value end)
local ItemESPToggle = MainTab:CreateToggle("Подсветка предметов", function(value) ItemESP = value  end)
local AntiVampBurnToggle = MainTab:CreateToggle("Анти горение от солнца", function(value) AntiVampBurn = value end)
local BuyTab = main:CreateTab("Покупка")

local RollArcadeButton = BuyTab:CreateButton("Крутануть аркаду", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Item Machine",["Option"] = "Option1",["Dialogue"] = "Dialogue1"}) end)

local BuyBloodBottleButton = BuyTab:CreateButton("Купить бутылку с кровью", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Alex",["Option"] = "Option1",["Dialogue"] = "Dialogue4"}) end)

local BuyTeaCupButton = BuyTab:CreateButton("Купить чай", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Cafe",["Option"] = "Option1",["Dialogue"] = "Dialogue2"}) end)

local BuyPizzaSliceButton = BuyTab:CreateButton("Купить пиццу", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Pizza",["Option"] = "Option1",["Dialogue"] = "Dialogue2"}) end)

local BuyMysticalBowButton = BuyTab:CreateButton("Купить мистический лук", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Mysterious Bow Seller",["Option"] = "Option1",["Dialogue"] = "Dialogue4"}) end)

local BuyUmbrellaButton = BuyTab:CreateButton("Купить зонтик", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Jongic",["Option"] = "Option1",["Dialogue"] = "Dialogue4"}) end)


local QuestTab = main:CreateTab("Квесты")

local SamOffQuest = QuestTab:CreateButton("Officer Sam (1+)", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Officer Sam",["Option"] = "Option1",["Dialogue"] = "Dialogue5"}) end)

local BertrudeQuest = QuestTab:CreateButton("Bertrude (10+)", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Deputy Bertrude",["Option"] = "Option1",["Dialogue"] = "Dialogue5"}) end)

local LAPartner = QuestTab:CreateButton("L.A. Partner (15+)", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Lion Abbacho's Partner",["Option"] = "Option1",["Dialogue"] = "Dialogue7"}) end)

local HomeLessQuest = QuestTab:CreateButton("Home Less (15+)", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue",{["NPC"] = "Homeless Man Jill",["Option"] = "Option1",["Dialogue"] = "Dialogue2"}) end)

local DraculaQuest = QuestTab:CreateButton("Dracula (20+)", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Dracula",["Option"] = "Option1",["Dialogue"] = "Dialogue4"}) end)

local DopeyQuest = QuestTab:CreateButton("Dopey (30+)", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Dopey",["Option"] = "Option1",["Dialogue"] = "Dialogue5"}) end)

local CarsQuest = QuestTab:CreateButton("Cars (30+)", function() game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Cars",["Option"] = "Option1",["Dialogue"] = "Dialogue2"}) end)


spawn(function()
    wait(3) 
    local VirtualUser=game:GetService'VirtualUser' 
    game:GetService('Players').LocalPlayer.Idled:Connect(function() 
        if AntiAFK then
            VirtualUser:CaptureController() 
            VirtualUser:ClickButton2(Vector2.new())
            wait(3)  
        end
    end) 
end)

spawn(function()
    while wait() do
        if ItemESP then
            for i,v in pairs(game:GetService("Workspace").Item_Spawns.Items:GetChildren()) do
                if v:FindFirstChildWhichIsA("BasePart") and v:FindFirstChildOfClass("ProximityPrompt") and not table.find(ESPED,v) then
                    local ItemColor = Color3.fromRGB(255,255,255)
                    for ii,vv in pairs(ItemRarityColors) do
                        if v:GetAttribute("Rarity") and v:GetAttribute("Rarity") == ii then
                            ItemColor = vv
                        end
                    end
                    addNametag(v:FindFirstChildWhichIsA("BasePart"),v:FindFirstChildOfClass("ProximityPrompt").ObjectText,ItemColor)
                    table.insert(ESPED,v)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if ItemFarm then
                local LPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                repeat
                    for i,v in pairs(Poss) do
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v)
                        wait(0.05)
                    end
                    for i,v in pairs(game:GetService("Workspace")["Item_Spawns"].Items:GetChildren()) do
                        if ItemFarm then
                            if v:FindFirstChild("ProximityPrompt") and v:FindFirstChildOfClass("MeshPart") then
                                local Visible = false
                                for ii,vv in pairs(v:GetChildren()) do
                                    if vv.ClassName == "MeshPart" or vv.ClassName == "Part" then
                                        if vv.Transparency ~= 1 then
                                            Visible = true
                                        end
                                    end
                                end
                            if Visible then
                                for ii,vv in pairs(v:GetChildren()) do
                                    if vv.Name == "ProximityPrompt" and vv.Enabled == true then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("MeshPart").CFrame
                                        local selled = false
                                        if FullStackInfo[v.ProximityPrompt.ObjectText] ~= nil and Count(v.ProximityPrompt.ObjectText) >= FullStackInfo[v.ProximityPrompt.ObjectText] then
                                            Sell(v.ProximityPrompt.ObjectText)
                                            wait(1)
                                        end
                                        if not selled then wait(0.5) end
                                            fireproximityprompt(vv)
                                            wait(0.5)
                                        end
                                    end
                                else
                                    print("Ignored Invisible item")
                                end
                            end
                        end
                    end
                until not ItemFarm
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LPos
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if MobFarm and IsTargets() then
            for i,v in pairs(game.Workspace.Living:GetChildren()) do
                if MobFarm and v and table.find(MobFarmTargets,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Health") and v:FindFirstChild("Health").Value >= 1 then
                    pcall(function()
                        repeat
                            spawn(function()
                                if MobFarmQuest and not CheckQuest(v.Name) then
                                    GetQuest(v.Name)
                                end
                                if MobFarmStand and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("SummonedStand") and game.Players.LocalPlayer.Character:FindFirstChild("SummonedStand").Value == false then
                                    game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer("ToggleStand","Toggle")
                                end
                            end)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,MobFarmDistance)
                            game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer("Attack","m1")
                            game:GetService("RunService").RenderStepped:wait()
                        until not v or (v:FindFirstChild("Humanoid") and v.Health.Value == 0) or not game.Players.LocalPlayer.Character or (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Health.Value == 0) or not MobFarm
                        wait(1)
                    end)
                end
            end
        end
    end
end)

local Hook = getrawmetatable(game).__namecall
Hook = hookfunction(getrawmetatable(game).__namecall, function(self,...)
    local args = {...}

    if args[1] and args[1] == "VampireBurn" and AntiVampBurn == true then
        return
    end
    if tostring(self) == "Returner" then
        if args[1] and args[1] == "idklolbrah2de" then
            return "  ___XP DE KEY"
        end
    end

    return Hook(self,...) 
end)

--[[
spawn(function()
    if getrawmetatable and setreadonly and getnamecallmethod then 
        local mt = getrawmetatable(game)
        setreadonly(mt,false)
        local Namecall = mt.__namecall
        mt.__namecall = function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if args[1] and args[1] == "VampireBurn" and AntiVampBurn == true then
                return
            end
            if tostring(self) == "Returner" and tostring(method) == "InvokeServer" then
                if args[1] and args[1] == "idklolbrah2de" then
                    return "  ___XP DE KEY"
                end
            end
            return Namecall(self,...)
        end
    else
        print("Box Utilites, AntiVampBurn, TpBypass turned off due worst exploit api, if it doesnt true, dm me MorphixScripts#5269")
    end
end)
]]
