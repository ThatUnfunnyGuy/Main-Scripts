local newhumanoid = true -- real
local alttexturemethod = false -- self-explaining (just noticed it's the same thing and even worse bruhhhhhh)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
local A_1 =  { 
[1] = getrenv()._G.Pass,  
[2] = "ChangeSetting",
[3] = "MorphEnabled",  
[4] = true 
             } 
local Event = game:GetService("ReplicatedStorage").Remotes.Functions 
Event:InvokeServer(A_1)
game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection:WaitForChild("Character").Value = "Asriel"
game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
wait(1.1)

-- Animations
game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main").AsrielMoves.Animations.Idle.AnimationId = "rbxassetid://3746006015"
game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main").AsrielMoves.Animations.Idle2.AnimationId = "rbxassetid://3746006015"
game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main").AsrielMoves.Animations.Walk.AnimationId = "rbxassetid://3198498331"
game:GetService("Players").LocalPlayer.Backpack:WaitForChild("Main").AsrielMoves.Animations.Run.AnimationId = "rbxassetid://3198529519"

-- Delete/Destroy UI stuff
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Attack:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar:Destroy()

-- HP + ATK and DEF Changes (ATK and DEF changes - FE maybe?)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").MaxHealth = 150
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 150
game:GetService("Players").LocalPlayer.Character:WaitForChild("Data").Attack.Value = 40
game:GetService("Players").LocalPlayer.Character:WaitForChild("Data").Attack.Value = 300
game:GetService("Players").LocalPlayer.Character:SetAttribute("Attack", 40)
game:GetService("Players").LocalPlayer.Character:SetAttribute("Defense", 200)

-- HP Bar Changes
game:GetService("Players").LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.HealthLabel.Text = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health .. "/" .. game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").MaxHealth

-- UI Changes
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo.Top.TextXAlignment = Enum.TextXAlignment.Center
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo.Top.Text = "Old Asriel V0.1"
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo["1"].TextLabel.Text = "- Release! Features: Old Asriel Animations, UI Changes, (Optional) New Humanoid Method for (Potential) FE HP Changes, HP Changes (Non-FE), ATK and DEF changes (Probably not FE even if attributes were changed like in this script)"
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo["1"].TextLabel.TextColor3 = Color3.fromRGB(250, 50, 66)

 for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

-- Gui to Lua
-- Version: 3.2

-- Instances:

local version = Instance.new("ScreenGui")
local versionlabel = Instance.new("TextLabel")

--Properties:

version.Name = "version"
version.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
version.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

versionlabel.Name = "versionlabel"
versionlabel.Parent = version
versionlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
versionlabel.BackgroundTransparency = 1.000
versionlabel.Position = UDim2.new(0.766946673, 0, -0.000251748366, -35)
versionlabel.Size = UDim2.new(0, 237, 0, 28)
versionlabel.Font = Enum.Font.Arcade
versionlabel.Text = ""
versionlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
versionlabel.TextScaled = true
versionlabel.TextSize = 14.000
versionlabel.TextWrapped = true

-- Scripts:

local function WGZW_fake_script() -- versionlabel.typewriteeffect 
	local script = Instance.new('LocalScript', versionlabel)

	local RunService = game:GetService"RunService"
	local Heartbeat = RunService.Heartbeat
	local Goal = "Old Asriel" -- plz no modify wa!11!
	local GoalLength = #Goal
	local TimeToTake = GoalLength/30
	local Accumulated = 0
	while TimeToTake > Accumulated do
		Accumulated += Heartbeat:Wait()
		script.Parent.Parent.versionlabel.Text = string.sub(Goal,1,math.floor((Accumulated/TimeToTake)*GoalLength))
	end
end
coroutine.wrap(WGZW_fake_script)()

--[[
if getsynasset == nil then
writefile("asrielsong.mp3", game:HttpGet("https://discord.com/channels/1034969321211957298/1034969329617342545/1075851331593576508"))
local music = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = getcustomasset("asrielsong.mp3")
music.Looped = true
music:Play()
elseif getcustomasset == nil then
writefile("asrielsong.mp3", game:HttpGet("https://discord.com/channels/1034969321211957298/1034969329617342545/1075851331593576508"))
local music = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = getcustomasset("asrielsong.mp3")
music.Looped = true
music:Play()
--]]


if newhumanoid == true then
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Parent = workspace
local OldHumanoid = game:GetService("Workspace"):WaitForChild("Humanoid")

local NewHumanoid = Instance.new("Humanoid")
NewHumanoid.MaxHealth = 150
NewHumanoid.Health = 150
NewHumanoid.JumpPower = 50
NewHumanoid.Parent = game:GetService("Players").LocalPlayer.Character

local HumanoidDescription = Instance.new("HumanoidDescription")
HumanoidDescription.Parent = NewHumanoid

local Animator = OldHumanoid.Animator:Clone()
Animator.Parent = NewHumanoid
end

if alttexturemethod == true then
workspace.Map["New Map"].Bonk.TopSurface = "Studs"
else
map = workspace.Map["New Map"]
spawn(function()
    repeat wait()
        for _,part in pairs(map:GetChildren()) do
            if part:IsA("Part") and part.name ~= "Bonk" or part.name == "InverseEffect" or part.name == "Chain1Wedge" or part.name == "Chain2Wedge" or part.name == "Union" or part.name == "BigChainWedge" then
                part:Destroy()
            end
        end
    until false
end)

map = workspace.Map["New Map"]
spawn(function()
    repeat wait()
        for _,part in pairs(map:GetChildren()) do
            if part:IsA("Part") and part.Name == "Bonk" then
                part.Material = Enum.Material.Plastic
                part.BrickColor = BrickColor.new(99, 95, 98)
            end
        end
    until false
end)
end

local BaseplateTexture = Instance.new("Texture", workspace.Map["New Map"].Bonk)
BaseplateTexture.Texture = "rbxassetid://2953645289"
BaseplateTexture.Face = "Top"

local walking_step_stone = Instance.new('Sound')
walking_step_stone.Parent = game.Players.LocalPlayer.Character.Head
walking_step_stone.SoundId = "rbxassetid://4518544160"
walking_step_stone.Name = "walking_step_stone"

local Jump = Instance.new('Sound')
Jump.Parent = game.Players.LocalPlayer.Character.Head
Jump.SoundId = "rbxassetid://3084314259"
Jump.Name = "Jump"

local swing= Instance.new('Sound')
swing.Parent = game.Players.LocalPlayer.Character.Head
swing.SoundId = "rbxassetid://"
swing.Name = "Swing2"

local player = game.Players.LocalPlayer
pcall(function() for _,v in pairs(_G.con) do pcall(function()local v = v v:Disconnect() end) end end)
_G.con = {}
local char = player.Character or player.CharacterAdded:wait()
local function yes()
    local UIS = game:GetService("UserInputService")
  local LockOn = player.Backpack:WaitForChild('Main'):WaitForChild('LockOnScript'):WaitForChild('LockOn')
local ea;ea = LockOn:GetPropertyChangedSignal('Value'):Connect(function()
    game['Run Service'].Heartbeat:wait()
UIS.MouseBehavior = Enum.MouseBehavior.Default
end)
local aa;aa = LockOn.AncestryChanged:Connect(function()
ea:Disconnect();aa:Disconnect()
end)
table.insert(_G.con,ea);table.insert(_G.con,aa)
end
yes()
local ee = player.CharacterAdded:Connect(function(char)
   yes() 
end)
table.insert(_G.con,ee) 

game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
    game.Players.LocalPlayer.Character:WaitForChild("Head").face.Transparency = 1
        end
    end)