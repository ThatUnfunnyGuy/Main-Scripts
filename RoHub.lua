-- Wait until game is loaded
if not game:IsLoaded() then
	game.Loaded:Wait()
end

--[[Supported Games List]]--
--// DOORS
--// Lucky Block Battlegrounds
--// Ski Race
--// Spirit Defenders (you need to be in the game for the section to appear for technical reasons)
--// Possible Squid Game
--// Clicker Fighting Simulator
--// One Money Every Click
--// Ability Wars
--// Slap Battles KillStreak Remake
--// Computer Tycoon
--// KillStreak Universe

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ThatUnfunnyGuy/Main-Scripts/refs/heads/main/Orion%20Hub%20(Fix%20Attempt)')))()

local Window = OrionLib:MakeWindow({Name = "RoHub (v1.7.0)", HidePremium = false, SaveConfig = true, ConfigFolder = "RoHub", IntroEnabled = true})

local Chat = game:GetService("Chat")
local SoundService = game:GetService("SoundService")

-- Set UseJumpPower
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").UseJumpPower = true
game:GetService("StarterPlayer").CharacterUseJumpPower = true

-- roblox shenanigans wont allow this to work as it should
--[[
local AnimationsTable = {
	[1] = "rbxassetid://183294396", -- Zombie Arms
	[2] = "rbxassetid://33796059", -- Insanity
	[3] = "rbxassetid://121572214", -- Floating Head
	[4] = "rbxassetid://27789359", -- Moon Dance
	[5] = "rbxassetid://429703734", -- Charleston
	[6] = "rbxassetid://87986341", -- Insane Legs
	[7] = "rbxassetid://188632011", -- Spin
	[8] = "rbxassetid://136801964" -- Rotation
}
local MusicTable = {
	[1] = "rbxassetid://1848354536", -- Relaxed Scene
	[2] = "rbxassetid://1837879082", -- Paradise Falls
	[3] = "rbxassetid://9048375035", -- All-Dropping 8-Bit Beats
	[4] = "rbxassetid://9047105533", -- No Smoking
	[5] = "rbxassetid://1843497734", -- Chaos
	[6] = "rbxassetid://142376088", -- Raining
	[7] = "rbxassetid://9043887091", -- Lo-Fi Chill
	[8] = "rbxassetid://9044565954", -- Smooth Vibes
	[9] = "rbxassetid://9048518373", -- Slow Boat
	[10] = "rbxassetid://1843404009" -- Happy Song
}

for num, item in AnimationsTable do
	local Animation = Instance.new("Animation")
	Animation.AnimationId = item
end

for num, item in MusicTable do
	local Song = Instance.new("Sound")
	Song.SoundId = item
	Song.Looped = true
	Song.Parent = SoundService
end
--]]

local StaffTable = {
	"Roblox",
	"builderman",
	"Lightning_Splash",
	"SenatorBunny" -- there was a label telling a fact here before but pastebin is a snowflake
}

local TextTable = {
	[1] = "hi",
	[2] = "im a cool user",
	[3] = "how r u doing?"
}

-- Animations
    local ZArms = Instance.new("Animation")
        ZArms.AnimationId = "rbxassetid://183294396"

    local Insanity = Instance.new("Animation")
        Insanity.AnimationId = "rbxassetid://33796059"

    local FHead = Instance.new("Animation")
        FHead.AnimationId = "rbxassetid://121572214"

    local MoonDance = Instance.new("Animation")
        MoonDance.AnimationId = "rbxassetid://27789359"

    local Charleston = Instance.new("Animation")
        Charleston.AnimationId = "rbxassetid://429703734"

    local InsaneLegs = Instance.new("Animation")
        InsaneLegs.AnimationId = "rbxassetid://87986341"

    local Spin = Instance.new("Animation")
        Spin.AnimationId = "rbxassetid://188632011"

    local Rotation = Instance.new("Animation")
        Rotation.AnimationId = "rbxassetid://136801964"
-- Music
    local RelaxedScene = Instance.new("Sound", SoundService)
    RelaxedScene.Name = "RelaxedScene"
    RelaxedScene.SoundId = "rbxassetid://1848354536"
    RelaxedScene.Looped = true

    local ParadiseFalls = Instance.new("Sound", SoundService)
    ParadiseFalls.Name = "ParadiseFalls"
    ParadiseFalls.SoundId = "rbxassetid://1837879082"
    ParadiseFalls.Looped = true

    local AllDropping8BitBeats = Instance.new("Sound", SoundService)
    AllDropping8BitBeats.Name = "AllDropping8BitBeats"
    AllDropping8BitBeats.SoundId = "rbxassetid://9048375035"
    AllDropping8BitBeats.Looped = true

    local NoSmoking = Instance.new("Sound", SoundService)
    NoSmoking.Name = "NoSmoking"
    NoSmoking.SoundId = "rbxassetid://9047105533"
    NoSmoking.Looped = true

    local Chaos = Instance.new("Sound", SoundService)
    Chaos.Name = "Chaos"
    Chaos.SoundId = "rbxassetid://1843497734"
    Chaos.Looped = true
    
    local Raining = Instance.new("Sound", SoundService)
    Raining.Name = "Raining"
    Raining.SoundId = "rbxassetid://142376088"
    Raining.Looped = true

    local LoFiChill = Instance.new("Sound", SoundService)
    LoFiChill.Name = "LoFiChill"
    LoFiChill.SoundId = "rbxassetid://9043887091"
    LoFiChill.Looped = true
    
    local SmoothVibes = Instance.new("Sound", SoundService)
    SmoothVibes.Name = "SmoothVibes"
    SmoothVibes.SoundId = "rbxassetid://9044565954"
    SmoothVibes.Looped = true
    
    local SlowBoat = Instance.new("Sound", SoundService)
    SlowBoat.Name = "SlowBoat"
    SlowBoat.SoundId = "rbxassetid://9048518373"
    SlowBoat.Looped = true

    local HappySong = Instance.new("Sound", SoundService)
    HappySong.Name = "HappySong"
    HappySong.SoundId = "rbxassetid://1843404009"
    HappySong.Looped = true

-- Character Variables
local CurrentCharacter = game:GetService("Players").LocalPlayer.Character
local DesiredCharacter

-- Text Variables

-- Old
--local PrintText = "YOUR TEXT HERE" -- Self-Explaining
--local WarnText = "YOUR TEXT HERE" -- Self-Explaining too
--local ErrorText = "YOUR TEXT HERE" -- Self-Explaining aswell

-- New
local PrintText
local WarnText
local ErrorText

-- Old
--local DialogInitialPrompt = "YOUR TEXT HERE"
--local DialogGoodbyeDialog = "YOUR TEXT HERE"

-- New
local DialogInitialPrompt
local DialogGoodbyeDialog

local DialogTone = Enum.DialogTone.Neutral -- (Change the "Neutral" part if you want)
local DialogPurpose = Enum.DialogPurpose.Help -- (Change the "Help" part if you want)

-- Old
--local CFSNotificationText = "YOUR TEXT HERE" -- Self-Explaining

-- New
local CFSNotificationText

-- Old
--local PlayerName = "YOURPLAYERNAMEHERE" -- Self-Explaining

-- New
local PlayerName

local PlayerDisplayNameEnabled = true -- Self-Explaining too (true for display name, false for no display name)

-- Old
--local PlayerDisplayName = "YOURPLAYERDISPLAYNAMEHERE" -- Self-Explaining aswell
--local PlayerUserId = "0" -- Change the number to the user ID of anybody (this sets their appearance)

-- New
local PlayerDisplayName
local PlayerUserId

local PlayerCharacter = game:GetService("Players").LocalPlayer.Character -- Change the character to the player's character that you want (if you want ofc, default is your character)
local PlayerCharacterAppearance = "0" -- Leave this the same as the user ID

-- Unused
--local TargetPlayer = game.Players.LocalPlayer -- Set this to the player you want to "borrow" their children instances from

local KickReason

local NotificationTitle
local NotificationText
local NotificationIcon

local OHNotificationTitle
local OHNotificationText
local OHNotificationIcon

--[[
local BlurOnLeave = true -- Blurs your screen when your focus goes off of your Roblox app, ONE TIME USE
local DisableRenderingOnLeave = true -- Disables 3D rendering when your focus goes off of your Roblox app, ONE TIME USE

if game.Lighting:FindFirstChild("BOLBlur") then warn("BOL Blur already got added!")
else
local BOLEffect = Instance.new("BlurEffect", game.Lighting)
BOLEffect.Name = "BOLBlur"
BOLEffect.Size = 24
BOLEffect.Enabled = false
end
--]]

local Tab0 = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section0 = Tab0:AddSection({
	Name = "Main"
})

local WSection = Tab0:AddSection({
	Name = "Miscellaneous"
})

local LSection = Tab0:AddSection({
	Name = "Fun Features"
})

local CameraSection = Tab0:AddSection({
	Name = "Camera"
})

local GoofySection = Tab0:AddSection({
	Name = "GUIs"
})

local AnimationsSection = Tab0:AddSection({
	Name = "Animations (R6)"
})

local MusicSection = Tab0:AddSection({
	Name = "Music"
})

local ConsoleSection = Tab0:AddSection({
	Name = "Core"
})

local SettingsSection = Tab0:AddSection({
	Name = "Settings"
})

local Section10 = Tab0:AddSection({
	Name = "Extra"
})

local Tab = Window:MakeTab({
	Name = "Doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Main"
})

local Section2 = Tab:AddSection({
	Name = "Miscellaneous"
})

local Section3 = Tab:AddSection({
	Name = "Fun Features"
})

local Tab2 = Window:MakeTab({
	Name = "LB Battlegrounds",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Ski Race",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
local Tab4 = Window:MakeTab({
	Name = "Build and Survive!",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--]]

local Section4 = Tab2:AddSection({
	Name = "Main"
})

local Section5 = Tab3:AddSection({
	Name = "Main"
})

local Section6 = Tab3:AddSection({
	Name = "Auto-Farm"
})

local Section7 = Tab3:AddSection({
	Name = "Miscellaneous"
})

--[[
local Section8 = Tab4:AddSection({
	Name = "Main"
})
--]]

if game:GetService("ReplicatedStorage"):FindFirstChild("RemoveEvent") then
local SDTab = Window:MakeTab({
	Name = "Spirit Defenders",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
end

local Tab5 = Window:MakeTab({
	Name = "Possible SG",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CFSTab = Window:MakeTab({
	Name = "CF Simulator",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CFSSection = CFSTab:AddSection({
	Name = "Auto-Farm"
})

local CFSSection2 = CFSTab:AddSection({
	Name = "Teleports"
})

local CFSSection3 = CFSTab:AddSection({
	Name = "Miscellaneous"
})

local OMECTab = Window:MakeTab({
	Name = "One Money EC",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local OMECSection = OMECTab:AddSection({
	Name = "Auto-Farm"
})

local AWTab = Window:MakeTab({
	Name = "Ability Wars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AWSection = AWTab:AddSection({
	Name = "Main"
})

local AWSection2 = AWTab:AddSection({
	Name = "Fun Features"
})

local SBKSRTab = Window:MakeTab({
	Name = "SB KS Remake",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SBKSRSection = SBKSRTab:AddSection({
	Name = "Abilities"
})

local CTTab = Window:MakeTab({
	Name = "PC Tycoon",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CTSection = CTTab:AddSection({
	Name = "Main"
})

local CTSection2 = CTTab:AddSection({
	Name = "Auto-Farm"
})

local CTSection3 = CTTab:AddSection({
	Name = "Miscellaneous"
})

local KSUTab = Window:MakeTab({
	Name = "KS Universe",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local KSUSection = KSUTab:AddSection({
	Name = "Main"
})

local Tab6 = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab7 = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section11 = Tab6:AddSection({
	Name = "Information"
})

if game:GetService("ReplicatedStorage"):FindFirstChild("RemoveEvent") then
local SDSection = SDTab:AddSection({
	Name = "Settings"
})

local SDSection1 = SDTab:AddSection({
	Name = "Gamepasses (yeah idk why would you want this but yeah lol)"
})
end

local Section12 = Tab7:AddSection({
	Name = "A Special Thank You!"
})

local Tab8 = Window:MakeTab({
	Name = "Update Log",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section13 = Tab8:AddSection({
	Name = "Changes"
})

local Section9 = Tab5:AddSection({
	Name = "Main"
})

Section0:AddSlider({
	Name = "Set WalkSpeed",
	Min = 0,
	Max = 100,
	Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
	Color = Color3.fromRGB(0, 255, 255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		SetWalkSpeed = Value
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = Value
	end    
})

Section0:AddButton({
	Name = "Set WalkSpeed Endlessly",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = SetWalkSpeed
end)
end
})

Section0:AddSlider({
	Name = "Set JumpPower",
	Min = 0,
	Max = 1000,
	Default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
	Color = Color3.fromRGB(255, 165, 0),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
		SetJumpPower = Value		
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = Value
	end    
})

Section0:AddButton({
	Name = "Set JumpPower Endlessly",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = SetJumpPower
end)
end
})

Section0:AddSlider({
	Name = "Set Gravity",
	Min = 0,
	Max = 196.2,
	Default = workspace.Gravity or 196.2,
	Color = Color3.fromRGB(150, 150, 150),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
SetGravity = Value
workspace.Gravity = Value
end    
})

Section0:AddButton({
	Name = "Set Gravity Endlessly",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
	workspace.Gravity = SetGravity
end)
end
})

Section0:AddSlider({
	Name = "Set FallenPartsDestroyHeight",
	Min = -500,
	Max = 500,
	Default = workspace.FallenPartsDestroyHeight,
	Color = Color3.fromRGB(66, 66, 66),
	Increment = 1,
	ValueName = "FPDH",
	Callback = function(Value)
	SetFPDH = Value
workspace.FallenPartsDestroyHeight = Value
end    
})

Section0:AddButton({
	Name = "Set FallenPartsDestroyHeight Endlessly",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
	workspace.FallenPartsDestroyHeight = SetFPDH
end)
end
})			

Section0:AddSlider({
	Name = "Set MaxSlopeAngle",
	Min = 0,
	Max = 89.9,
	Default = game.Players.LocalPlayer.Character.Humanoid.MaxSlopeAngle,
	Color = Color3.fromRGB(45, 45, 45),
	Increment = 1,
	ValueName = "MSA",
	Callback = function(Value)
SetMaxSlopeAngle = Value
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").MaxSlopeAngle = Value
end    
})

Section0:AddButton({
	Name = "Set MaxSlopeAngle Endlessly",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").MaxSlopeAngle = SetMaxSlopeAngle
end)
end
})

--[[
Section0:AddToggle({
	Name = "No Gravity",
    Default = false,
	Callback = function(Value)
if Value == true then
workspace.Gravity = 0
elseif Value == false then
workspace.Gravity = 196.2
    end
end    
})
--]]

WSection:AddButton({
	Name = "Crash Roblox",
	Callback = function()
    while true do end
  	end    
})

WSection:AddButton({
	Name = "Rejoin",
	Callback = function()
    game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)
  	end    
})

WSection:AddButton({
	Name = "Reset",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
  	end    
})

WSection:AddButton({
	Name = "Alternative Reset",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):Destroy()
  	end    
})

WSection:AddButton({
	Name = "Alternative Reset 2",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso").Neck:Destroy()
  	end    
})

WSection:AddButton({
	Name = "Alternative Reset 3",
	Callback = function()
game.Players.LocalPlayer.Character:BreakJoints()
  	end    
})

WSection:AddButton({
	Name = "Alternative Reset 4",
	Callback = function()
	local Humanoid = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
	if Humanoid.RigType == Enum.HumanoidRigType.R6 then
		Humanoid.RigType = Enum.HumanoidRigType.R15
	elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
		Humanoid.RigType = Enum.HumanoidRigType.R6
	end
end
})

WSection:AddButton({
	Name = "Delete Head (Reset in most games)",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Head"):Destroy()
  	end    
})

WSection:AddButton({
	Name = "Loop Reset",
	Callback = function()
	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
		end)
	end)
end    
})

WSection:AddButton({
	Name = "Kill Everyone/Kill Aura (?) (NOT FE)",
	Callback = function()
		spawn(function()
			repeat task.wait()
				for _,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Model") then
						v:BreakJoints()
					end
				end
			until task.wait(1)
		end)
  	end    
})

WSection:AddButton({
	Name = "Fling (VERY BUGGY)",
	Callback = function()
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local mouse = Player:GetMouse()

FlingPower = 25000

game:GetService("RunService").Stepped:Connect(function()
Character.Head.CanCollide = false
Character.Torso.CanCollide = false
Character.HumanoidRootPart.CanCollide = false
end)
--task.wait(1)
local FlingC = Instance.new("BodyThrust")
FlingC.Parent = Character.HumanoidRootPart
FlingC.Force = Vector3.new(FlingPower, 0, FlingPower)
FlingC.Location = Character.HumanoidRootPart.Position
FlingC.Parent = Character.Torso
end    
})

WSection:AddButton({
	Name = "Stop Fling",
	Callback = function()
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
Character:WaitForChild("Torso").BodyThrust.Force = Vector3.new(0, 0, 0)
Character:WaitForChild("HumanoidRootPart").BodyThrust.Force = Vector3.new(0, 0, 0)
--task.wait(2.5)
Character:WaitForChild("Torso").BodyThrust:Destroy()
Character:WaitForChild("HumanoidRootPart").BodyThrust:Destroy()
end
})

WSection:AddButton({
	Name = "PlatformStand",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size.X, 5, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size.Z)
end    
})

WSection:AddButton({
	Name = "Un-PlatformStand",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size.X, 2, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size.Z)
end    
})


WSection:AddButton({
	Name = "Alternative PlatformStand",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").HipHeight = 1.6
end    
})

WSection:AddButton({
	Name = "Alternative Un-PlatformStand",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").HipHeight = 0
end    
})

WSection:AddButton({
	Name = "Force Jump (Jump)",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end    
})

WSection:AddButton({
	Name = "Loop Force Jump (Jump)",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
	end)
end    
})

WSection:AddButton({
	Name = "Jump Hack",
	Callback = function()
game:GetService("RunService").RenderStepped:Connect(function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):SetStateEnabled("GettingUp", false)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState("Swimming")
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):SetStateEnabled("GettingUp", true)
	end)
end
})

WSection:AddButton({
	Name = "Kick On Staff Join",
	Callback = function()
local plr = game:GetService("Players").PlayerAdded:Connect(function(player)
if table.find(StaffTable, plr.Name) == not nil then
game.Players.LocalPlayer:Kick("Staff joined.")
end
end)
end    
})

WSection:AddToggle({
	Name = "Toggle Reset Button",
    Default = true,
	Callback = function(Value)
game.StarterGui:SetCore("ResetButtonCallback",Value)
end    
})

WSection:AddToggle({
	Name = "Toggle Shiftlock",
	Default = true,
	Callback = function(Value)
local Players = game:GetService("Players")


	local Player = Players:GetPlayers()[1]
	local Character = Player.Character or Player.CharacterAdded:Wait()
		
	if Character and Player then
		Player.DevEnableMouseLock = Value
	end
end
})

WSection:AddToggle({
	Name = "Toggle Bubble Chat",
	Default = false,
	Callback = function(Value)
Chat.BubbleChatEnabled = Value
	end    
})

WSection:AddBind({
	Name = "Teleport",
	Default = Enum.KeyCode.R,
	Hold = false,
	Callback = function()
    local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local mouse = Player:GetMouse()
		Character:SetPrimaryPartCFrame(mouse.Hit, mouse.Hit, mouse.Hit)
	end    
})

WSection:AddBind({
	Name = "Teleport Forward",
	Default = Enum.KeyCode.T,
	Hold = false,
	Callback = function()
  local Character = game:GetService("Players").LocalPlayer.Character
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local HRPCF = HumanoidRootPart.CFrame
    local HRPLV = HRPCF.LookVector
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(HRPCF + (HRPLV * Vector3.new(5, 5, 5)))
	end    
})

WSection:AddBind({
	Name = "Teleport To Desired Character",
	Default = Enum.KeyCode.Y,
	Hold = false,
	Callback = function()
  local Character = game:GetService("Players").LocalPlayer.Character
    --local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    --local HRPCF = HumanoidRootPart.CFrame
    --local HRPLV = HRPCF.LookVector
Character:SetPrimaryPartCFrame(DesiredCharacter.HumanoidRootPart.CFrame)
	end    
})

GoofySection:AddButton({
	Name = "Infinite Yield",
	Callback = function()
    	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()  	
    end    
})

GoofySection:AddButton({
	Name = "Hydroxide",
	Callback = function()
		local owner = "Upbolt"
		local branch = "revision"

		local function webImport(file)
    		return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
		end

		webImport("init")
		webImport("ui/main")
    end    
})

GoofySection:AddButton({
	Name = "Server Finder",
	Callback = function()
    loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80"))()  	
    end    
})

GoofySection:AddButton({
	Name = "Dark Dex V3",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"))()    
	end    
})

GoofySection:AddButton({
	Name = "Dark Dex V3 (Updated Icons)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/YREfugjX"))()
	end    
})

GoofySection:AddButton({
	Name = "R15 Emotes",
	Callback = function()
--keybind to open is comma
--made by Gi#7331
--^ double credit!!

local IsStudio = false

local ContextActionService = game:GetService("ContextActionService")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local AvatarEditorService = game:GetService("AvatarEditorService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

local Emotes = {}
local function AddEmote(name: string, id: IntValue, price: IntValue?)
	if not (name and id) then
		return
	end

	table.insert(Emotes, {
		["name"] = name,
		["id"] = id,
		["icon"] = "rbxthumb://type=Asset&id=".. id .."&w=150&h=150",
		["price"] = price or 0,
		["index"] = #Emotes + 1,
		["sort"] = {}
	})
end
local CurrentSort = "newestfirst"

local FavoriteOff = "rbxassetid://10651060677"
local FavoriteOn = "rbxassetid://10651061109"
local FavoritedEmotes = {}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Emotes"
ScreenGui.DisplayOrder = 2
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.Enabled = false

local BackFrame = Instance.new("Frame")
BackFrame.Size = UDim2.new(0.9, 0, 0.5, 0)
BackFrame.AnchorPoint = Vector2.new(0.5, 0.5)
BackFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
BackFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY
BackFrame.BackgroundTransparency = 1
BackFrame.BorderSizePixel = 0
BackFrame.Parent = ScreenGui

local EmoteName = Instance.new("TextLabel")
EmoteName.Name = "EmoteName"
EmoteName.TextScaled = true
EmoteName.AnchorPoint = Vector2.new(0.5, 0.5)
EmoteName.Position = UDim2.new(-0.1, 0, 0.5, 0)
EmoteName.Size = UDim2.new(0.2, 0, 0.2, 0)
EmoteName.SizeConstraint = Enum.SizeConstraint.RelativeYY
EmoteName.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
EmoteName.TextColor3 = Color3.new(1, 1, 1)
EmoteName.BorderSizePixel = 0
EmoteName.Parent = BackFrame

local Corner = Instance.new("UICorner")
Corner.Parent = EmoteName

local Loading = Instance.new("TextLabel", BackFrame)
Loading.AnchorPoint = Vector2.new(0.5, 0.5)
Loading.Text = "Loading..."
Loading.TextColor3 = Color3.new(1, 1, 1)
Loading.BackgroundColor3 = Color3.new(0, 0, 0)
Loading.TextScaled = true
Loading.BackgroundTransparency = 0.5
Loading.Size = UDim2.fromScale(0.2, 0.1)
Loading.Position = UDim2.fromScale(0.5, 0.2)
Corner:Clone().Parent = Loading

local Frame = Instance.new("ScrollingFrame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.CanvasSize = UDim2.new(0, 0, 0, 0)
Frame.AutomaticCanvasSize = Enum.AutomaticSize.Y
Frame.ScrollingDirection = Enum.ScrollingDirection.Y
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundTransparency = 1
Frame.ScrollBarThickness = 5
Frame.BorderSizePixel = 0
Frame.MouseLeave:Connect(function()
	EmoteName.Text = "Select an Emote"
end)
Frame.Parent = BackFrame

local Grid = Instance.new("UIGridLayout")
Grid.CellSize = UDim2.new(0.105, 0, 0, 0)
Grid.CellPadding = UDim2.new(0.006, 0, 0.006, 0)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.Parent = Frame

local SortFrame = Instance.new("Frame")
SortFrame.Visible = false
SortFrame.BorderSizePixel = 0
SortFrame.Position = UDim2.new(1, 5, -0.125, 0)
SortFrame.Size = UDim2.new(0.2, 0, 0, 0)
SortFrame.AutomaticSize = Enum.AutomaticSize.Y
SortFrame.BackgroundTransparency = 1
Corner:Clone().Parent = SortFrame
SortFrame.Parent = BackFrame

local SortList = Instance.new("UIListLayout")
SortList.Padding = UDim.new(0.02, 0)
SortList.HorizontalAlignment = Enum.HorizontalAlignment.Center
SortList.VerticalAlignment = Enum.VerticalAlignment.Top
SortList.SortOrder = Enum.SortOrder.LayoutOrder
SortList.Parent = SortFrame

local function SortEmotes()
	for i,Emote in pairs(Emotes) do
		local EmoteButton = Frame:FindFirstChild(Emote.id)
		if not EmoteButton then
			continue
		end
		local IsFavorited = table.find(FavoritedEmotes, Emote.id)
		EmoteButton.LayoutOrder = Emote.sort[CurrentSort] + ((IsFavorited and 0) or #Emotes)
		EmoteButton.number.Text = Emote.sort[CurrentSort]
	end
end

local function createsort(order, text, sort)
	local CreatedSort = Instance.new("TextButton")
	CreatedSort.SizeConstraint = Enum.SizeConstraint.RelativeXX
	CreatedSort.Size = UDim2.new(1, 0, 0.2, 0)
	CreatedSort.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	CreatedSort.LayoutOrder = order
	CreatedSort.TextColor3 = Color3.new(1, 1, 1)
	CreatedSort.Text = text
	CreatedSort.TextScaled = true
	CreatedSort.BorderSizePixel = 0
	Corner:Clone().Parent = CreatedSort
	CreatedSort.Parent = SortFrame
	CreatedSort.MouseButton1Click:Connect(function()
		SortFrame.Visible = false
		CurrentSort = sort
		SortEmotes()
	end)
	return CreatedSort
end

createsort(1, "Newest First", "newestfirst")
createsort(2, "Oldest First", "oldestfirst")
createsort(3, "Alphabetically First", "alphabeticfirst")
createsort(4, "Alphabetically Last", "alphabeticlast")
createsort(5, "Highest Price", "highestprice")
createsort(6, "Lowest Price", "lowestprice")

local SortButton = Instance.new("TextButton")
SortButton.BorderSizePixel = 0
SortButton.AnchorPoint = Vector2.new(0.5, 0.5)
SortButton.Position = UDim2.new(0.925, -5, -0.075, 0)
SortButton.Size = UDim2.new(0.15, 0, 0.1, 0)
SortButton.TextScaled = true
SortButton.TextColor3 = Color3.new(1, 1, 1)
SortButton.BackgroundColor3 = Color3.new(0, 0, 0)
SortButton.BackgroundTransparency = 0.3
SortButton.Text = "Sort"
SortButton.MouseButton1Click:Connect(function()
	SortFrame.Visible = not SortFrame.Visible
end)
Corner:Clone().Parent = SortButton
SortButton.Parent = BackFrame

local CloseButton = Instance.new("TextButton")
CloseButton.BorderSizePixel = 0
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.Position = UDim2.new(0.075, 0, -0.075, 0)
CloseButton.Size = UDim2.new(0.15, 0, 0.1, 0)
CloseButton.TextScaled = true
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.new(0, 0, 0)
CloseButton.BackgroundTransparency = 0.3
CloseButton.Text = "Close"
CloseButton.MouseButton1Click:Connect(function()
	ScreenGui.Enabled = false
end)
Corner:Clone().Parent = CloseButton
CloseButton.Parent = BackFrame

local SearchBar = Instance.new("TextBox")
SearchBar.BorderSizePixel = 0
SearchBar.AnchorPoint = Vector2.new(0.5, 0.5)
SearchBar.Position = UDim2.new(0.5, 0, -0.075, 0)
SearchBar.Size = UDim2.new(0.55, 0, 0.1, 0)
SearchBar.TextScaled = true
SearchBar.PlaceholderText = "Search"
SearchBar.TextColor3 = Color3.new(1, 1, 1)
SearchBar.BackgroundColor3 = Color3.new(0, 0, 0)
SearchBar.BackgroundTransparency = 0.3
SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
	local text = SearchBar.Text:lower()
	local buttons = Frame:GetChildren()
	if text ~= text:sub(1,50) then
		SearchBar.Text = SearchBar.Text:sub(1,50)
		text = SearchBar.Text:lower()
	end
	if text ~= ""  then
		for i,button in pairs(buttons) do
			if button:IsA("GuiButton") then
				local name = button:GetAttribute("name"):lower()
				if name:match(text) then
					button.Visible = true
				else
					button.Visible = false
				end
			end
		end
	else
		for i,button in pairs(buttons) do
			if button:IsA("GuiButton") then
				button.Visible = true
			end
		end
	end
end)
Corner:Clone().Parent = SearchBar
SearchBar.Parent = BackFrame

local function openemotes(name, state, input)
	if state == Enum.UserInputState.Begin then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end

if IsStudio then
	ContextActionService:BindActionAtPriority(
		"Emote Menu",
		openemotes,
		true,
		2001,
		Enum.KeyCode.Comma
	)
else
	ContextActionService:BindCoreActionAtPriority(
		"Emote Menu",
		openemotes,
		true,
		2001,
		Enum.KeyCode.Comma
	)
end

local inputconnect
ScreenGui:GetPropertyChangedSignal("Enabled"):Connect(function()
	if ScreenGui.Enabled == true then
		EmoteName.Text = "Select an Emote"
		SearchBar.Text = ""
		SortFrame.Visible = false
		GuiService:SetEmotesMenuOpen(false)
		inputconnect = UserInputService.InputBegan:Connect(function(input, processed)
			if not processed then
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					ScreenGui.Enabled = false
				end
			end
		end)
	else
		inputconnect:Disconnect()
	end
end)

if not IsStudio then
	GuiService.EmotesMenuOpenChanged:Connect(function(isopen)
		if isopen then
			ScreenGui.Enabled = false
		end
	end)
end

GuiService.MenuOpened:Connect(function()
	ScreenGui.Enabled = false
end)

if not game:IsLoaded() then
	game.Loaded:Wait()
end

local LocalPlayer = Players.LocalPlayer

if IsStudio then
	ScreenGui.Parent = LocalPlayer.PlayerGui
else
	--thanks inf yield
	local SynV3 = syn and DrawingImmediate
	if (not is_sirhurt_closure) and (not SynV3) and (syn and syn.protect_gui) then
		syn.protect_gui(ScreenGui)
		ScreenGui.Parent = CoreGui
	elseif get_hidden_gui or gethui then
		local hiddenUI = get_hidden_gui or gethui
		ScreenGui.Parent = hiddenUI()
	else
		ScreenGui.Parent = CoreGui
	end
end


local function SendNotification(title, text)
	if (not IsStudio) and syn and syn.toast_notification then
		syn.toast_notification({
			Type = ToastType.Error,
			Title = title,
			Content = text
		})
	else
		StarterGui:SetCore("SendNotification", {
			Title = title,
			Text = text
		})
	end
end

local function HumanoidPlayEmote(humanoid, name, id)
	if IsStudio then
		return humanoid:PlayEmote(name)
	else
		return humanoid:PlayEmoteAndGetAnimTrackById(id)
	end
end

local function PlayEmote(name: string, id: IntValue)
	ScreenGui.Enabled = false
	SearchBar.Text = ""
	local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local Description = Humanoid and Humanoid:FindFirstChildOfClass("HumanoidDescription")
	if not Description then
		return
	end
	if LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		local succ, err = pcall(function()
			HumanoidPlayEmote(Humanoid, name, id)
		end)
		if not succ then
			Description:AddEmote(name, id)
			HumanoidPlayEmote(Humanoid, name, id)
		end
	else
		SendNotification(
			"r6? lol",
			"you gotta be r15 dude"
		)
	end
end

local function WaitForChildOfClass(parent, class)
	local child = parent:FindFirstChildOfClass(class)
	while not child or child.ClassName ~= class do
		child = parent.ChildAdded:Wait()
	end
	return child
end

local params = CatalogSearchParams.new()
params.AssetTypes = {Enum.AvatarAssetType.EmoteAnimation}
params.SortType = Enum.CatalogSortType.RecentlyCreated
params.SortAggregation = Enum.CatalogSortAggregation.AllTime
params.IncludeOffSale = true
params.CreatorName = "Roblox"
params.Limit = 120

local function getCatalogPage()
	local success, catalogPage = pcall(function()
		return AvatarEditorService:SearchCatalog(params)
	end)
	if not success then
		task.wait(5)
		return getCatalogPage()
	end
	return catalogPage
end

local catalogPage = getCatalogPage()

local pages = {}

while true do
	local currentPage = catalogPage:GetCurrentPage()
	table.insert(pages, currentPage)
	if catalogPage.IsFinished then
		break
	end
	local function AdvanceToNextPage()
		local success = pcall(function()
			catalogPage:AdvanceToNextPageAsync()
		end)
		if not success then
			task.wait(5)
			return AdvanceToNextPage()
		end
	end
	AdvanceToNextPage()
end

local totalEmotes = {}
for _, page in pairs(pages) do
	for _, emote in pairs(page) do
		table.insert(totalEmotes, emote)
	end
end

for i, Emote in pairs(totalEmotes) do
	AddEmote(Emote.Name, Emote.Id, Emote.Price)
end

--unreleased emotes
AddEmote("Arm Wave", 5915773155)
AddEmote("Head Banging", 5915779725)
AddEmote("Face Calisthenics", 9830731012)

--finished loading
Loading:Destroy()

--sorting options setup
table.sort(Emotes, function(a, b)
	return a.index < b.index
end)
for i,v in pairs(Emotes) do
	v.sort.newestfirst = i
end

table.sort(Emotes, function(a, b)
	return a.index > b.index
end)
for i,v in pairs(Emotes) do
	v.sort.oldestfirst = i
end

table.sort(Emotes, function(a, b)
	return a.name:lower() < b.name:lower()
end)
for i,v in pairs(Emotes) do
	v.sort.alphabeticfirst = i
end

table.sort(Emotes, function(a, b)
	return a.name:lower() > b.name:lower()
end)
for i,v in pairs(Emotes) do
	v.sort.alphabeticlast = i
end

table.sort(Emotes, function(a, b)
	return a.price < b.price
end)
for i,v in pairs(Emotes) do
	v.sort.lowestprice = i
end

table.sort(Emotes, function(a, b)
	return a.price > b.price
end)
for i,v in pairs(Emotes) do
	v.sort.highestprice = i
end


local function IsFileFunc(...)
	if IsStudio then
		return
	elseif isfile then
		return isfile(...)
	end
end

local function WriteFileFunc(...)
	if IsStudio then
		return
	elseif writefile then
		return writefile(...)
	end
end

local function ReadFileFunc(...)
	if IsStudio then
		return
	elseif readfile then
		return readfile(...)
	end
end

if not IsStudio then
	if IsFileFunc("FavoritedEmotes.txt") then
		if not pcall(function()
			FavoritedEmotes = HttpService:JSONDecode(ReadFileFunc("FavoritedEmotes.txt"))
		end) then
			FavoritedEmotes = {}
		end
	else
		WriteFileFunc("FavoritedEmotes.txt", HttpService:JSONEncode(FavoritedEmotes))
	end
	local UpdatedFavorites = {}
	for i,name in pairs(FavoritedEmotes) do
		if typeof(name) == "string" then
			for i,emote in pairs(Emotes) do
				if emote.name == name then
					table.insert(UpdatedFavorites, emote.id)
					break
				end
			end
		end
	end
	if #UpdatedFavorites ~= 0 then
		FavoritedEmotes = UpdatedFavorites
		WriteFileFunc("FavoritedEmotes.txt", HttpService:JSONEncode(FavoritedEmotes))
	end
end


local function CharacterAdded(Character)
	for i,v in pairs(Frame:GetChildren()) do
		if not v:IsA("UIGridLayout") then
			v:Destroy()
		end
	end
	local Humanoid = WaitForChildOfClass(Character, "Humanoid")
	local Description = Humanoid:WaitForChild("HumanoidDescription", 5) or Instance.new("HumanoidDescription", Humanoid)
	local random = Instance.new("TextButton")
	local Ratio = Instance.new("UIAspectRatioConstraint")
	Ratio.AspectType = Enum.AspectType.ScaleWithParentSize
	Ratio.Parent = random
	random.LayoutOrder = 0
	random.TextColor3 = Color3.new(1, 1, 1)
	random.BorderSizePixel = 0
	random.BackgroundTransparency = 0.5
	random.BackgroundColor3 = Color3.new(0, 0, 0)
	random.TextScaled = true
	random.Text = "Random"
	random:SetAttribute("name", "")
	Corner:Clone().Parent = random
	random.MouseButton1Click:Connect(function()
		local randomemote = Emotes[math.random(1, #Emotes)]
		PlayEmote(randomemote.name, randomemote.id)
	end)
	random.MouseEnter:Connect(function()
		EmoteName.Text = "Random"
	end)
	random.Parent = Frame
	for i,Emote in pairs(Emotes) do
		Description:AddEmote(Emote.name, Emote.id)
		local EmoteButton = Instance.new("ImageButton")
		local IsFavorited = table.find(FavoritedEmotes, Emote.id)
		EmoteButton.LayoutOrder = Emote.sort[CurrentSort] + ((IsFavorited and 0) or #Emotes)
		EmoteButton.Name = Emote.id
		EmoteButton:SetAttribute("name", Emote.name)
		Corner:Clone().Parent = EmoteButton
		EmoteButton.Image = Emote.icon
		EmoteButton.BackgroundTransparency = 0.5
		EmoteButton.BackgroundColor3 = Color3.new(0, 0, 0)
		EmoteButton.BorderSizePixel = 0
		Ratio:Clone().Parent = EmoteButton
		local EmoteNumber = Instance.new("TextLabel")
		EmoteNumber.Name = "number"
		EmoteNumber.TextScaled = true
		EmoteNumber.BackgroundTransparency = 1
		EmoteNumber.TextColor3 = Color3.new(1, 1, 1)
		EmoteNumber.BorderSizePixel = 0
		EmoteNumber.AnchorPoint = Vector2.new(0.5, 0.5)
		EmoteNumber.Size = UDim2.new(0.2, 0, 0.2, 0)
		EmoteNumber.Position = UDim2.new(0.1, 0, 0.9, 0)
		EmoteNumber.Text = Emote.sort[CurrentSort]
		EmoteNumber.TextXAlignment = Enum.TextXAlignment.Center
		EmoteNumber.TextYAlignment = Enum.TextYAlignment.Center
		local UIStroke = Instance.new("UIStroke")
		UIStroke.Transparency = 0.5
		UIStroke.Parent = EmoteNumber
		EmoteNumber.Parent = EmoteButton
		EmoteButton.Parent = Frame
		EmoteButton.MouseButton1Click:Connect(function()
			PlayEmote(Emote.name, Emote.id)
		end)
		EmoteButton.MouseEnter:Connect(function()
			EmoteName.Text = Emote.name
		end)
		local Favorite = Instance.new("ImageButton")
		Favorite.Name = "favorite"
		if table.find(FavoritedEmotes, Emote.id) then
			Favorite.Image = FavoriteOn
		else
			Favorite.Image = FavoriteOff
		end
		Favorite.AnchorPoint = Vector2.new(0.5, 0.5)
		Favorite.Size = UDim2.new(0.2, 0, 0.2, 0)
		Favorite.Position = UDim2.new(0.9, 0, 0.9, 0)
		Favorite.BorderSizePixel = 0
		Favorite.BackgroundTransparency = 1
		Favorite.Parent = EmoteButton
		Favorite.MouseButton1Click:Connect(function()
			local index = table.find(FavoritedEmotes, Emote.id)
			if index then
				table.remove(FavoritedEmotes, index)
				Favorite.Image = FavoriteOff
				EmoteButton.LayoutOrder = Emote.sort[CurrentSort] + #Emotes
			else
				table.insert(FavoritedEmotes, Emote.id)
				Favorite.Image = FavoriteOn
				EmoteButton.LayoutOrder = Emote.sort[CurrentSort]
			end
			WriteFileFunc("FavoritedEmotes.txt", HttpService:JSONEncode(FavoritedEmotes))
		end)
	end
	for i=1,9 do
		local EmoteButton = Instance.new("Frame")
		EmoteButton.LayoutOrder = 2147483647
		EmoteButton.Name = "filler"
		EmoteButton.BackgroundTransparency = 1
		EmoteButton.BorderSizePixel = 0
		Ratio:Clone().Parent = EmoteButton
		EmoteButton.Visible = true
		EmoteButton.Parent = Frame
		EmoteButton.MouseEnter:Connect(function()
			EmoteName.Text = "Select an Emote"
		end)
	end
end

if LocalPlayer.Character then
	CharacterAdded(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(CharacterAdded)
	end    
})

GoofySection:AddButton({
	Name = "SoulHub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatUnfunnyGuy/Main-Scripts/refs/heads/main/SoulHub"))()  	
    end    
})

GoofySection:AddButton({
	Name = "Universal SoulHub",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ZRQijshE"))()  	
    end    
})

LSection:AddButton({
	Name = "Custom Humanoid (LAGGY)",
	Callback = function()
local OldHumanoid = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")

local NewHumanoid = Instance.new("Humanoid")
NewHumanoid.MaxHealth = OldHumanoid.MaxHealth or 100
NewHumanoid.Health = OldHumanoid.Health or 100
NewHumanoid.JumpPower = OldHumanoid.JumpPower or 50
NewHumanoid.WalkSpeed = OldHumanoid.WalkSpeed or 16
NewHumanoid.RigType = OldHumanoid.RigType
NewHumanoid.Parent = game:GetService("Players").LocalPlayer.Character

local HumanoidDescription = Instance.new("HumanoidDescription")
HumanoidDescription.Parent = NewHumanoid

-- Accessories
HumanoidDescription.BackAccessory = OldHumanoid.HumanoidDescription.BackAccessory
HumanoidDescription.FaceAccessory = OldHumanoid.HumanoidDescription.FaceAccessory
HumanoidDescription.FrontAccessory = OldHumanoid.HumanoidDescription.FrontAccessory
HumanoidDescription.HairAccessory = OldHumanoid.HumanoidDescription.HairAccessory
HumanoidDescription.HatAccessory = OldHumanoid.HumanoidDescription.HatAccessory
HumanoidDescription.NeckAccessory = OldHumanoid.HumanoidDescription.NeckAccessory
HumanoidDescription.ShouldersAccessory = OldHumanoid.HumanoidDescription.ShouldersAccessory
HumanoidDescription.WaistAccessory = OldHumanoid.HumanoidDescription.WaistAccessory
HumanoidDescription.BodyTypeScale = OldHumanoid.HumanoidDescription.BodyTypeScale

-- Scales
HumanoidDescription.DepthScale = OldHumanoid.HumanoidDescription.DepthScale
HumanoidDescription.HeadScale = OldHumanoid.HumanoidDescription.HeadScale
HumanoidDescription.HeightScale = OldHumanoid.HumanoidDescription.HeightScale
HumanoidDescription.ProportionScale = OldHumanoid.HumanoidDescription.ProportionScale
HumanoidDescription.WidthScale = OldHumanoid.HumanoidDescription.WidthScale

-- Animations
HumanoidDescription.ClimbAnimation = OldHumanoid.HumanoidDescription.ClimbAnimation
HumanoidDescription.FallAnimation = OldHumanoid.HumanoidDescription.FallAnimation
HumanoidDescription.IdleAnimation = OldHumanoid.HumanoidDescription.IdleAnimation
HumanoidDescription.JumpAnimation = OldHumanoid.HumanoidDescription.JumpAnimation
HumanoidDescription.MoodAnimation = OldHumanoid.HumanoidDescription.MoodAnimation
HumanoidDescription.RunAnimation = OldHumanoid.HumanoidDescription.RunAnimation
HumanoidDescription.SwimAnimation = OldHumanoid.HumanoidDescription.SwimAnimation
HumanoidDescription.WalkAnimation = OldHumanoid.HumanoidDescription.WalkAnimation

-- Body Parts
HumanoidDescription.Face = OldHumanoid.HumanoidDescription.Face
HumanoidDescription.Head = OldHumanoid.HumanoidDescription.Head
HumanoidDescription.LeftArm = OldHumanoid.HumanoidDescription.LeftArm
HumanoidDescription.LeftLeg = OldHumanoid.HumanoidDescription.LeftLeg
HumanoidDescription.RightArm = OldHumanoid.HumanoidDescription.RightArm
HumanoidDescription.RightLeg = OldHumanoid.HumanoidDescription.RightLeg
HumanoidDescription.Torso = OldHumanoid.HumanoidDescription.Torso

local Animator = OldHumanoid.Animator:Clone()
Animator.Parent = NewHumanoid
--Animator.EvaluationThrottled = OldHumanoid.Animator.EvaluationThrottled

OldHumanoid.Parent = workspace
OldHumanoid:Destroy()

workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head")

local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(key, typing)
if typing then return end
if key.KeyCode == Enum.KeyCode.Space then
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
end)

--[[
if UIS:IsKeyDown(Enum.KeyCode.Space) then
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Jump = true
end
--]]
end 
})

LSection:AddButton({
	Name = "Custom Character (DOESN'T RESPAWN YOU)",
	Callback = function()
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Player = Players.LocalPlayer or Players:GetPlayers()[1]
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

Character.Archivable = true
local NewCharacter = Character:Clone()
NewCharacter.Parent = Character.Parent
Character.Archivable = false
Player.Character = NewCharacter
Character:Destroy()

workspace.CurrentCamera.CameraSubject = NewCharacter:WaitForChild("Humanoid") or NewCharacter:WaitForChild("Head")
end 
})

LSection:AddButton({
	Name = "Weird Rotation (NON-FE)",
	Callback = function()
local Player = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
local Character = Player.Character or Player.CharacterAdded:Wait()

Character:WaitForChild("Head").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Torso").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Left Arm").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Left Leg").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Right Arm").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Right Leg").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("HumanoidRootPart").Position = Vector3.new(0, 0, 0)
end
})

LSection:AddButton({
	Name = "Sit V2/Slide",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Left Leg").Parent = workspace
game:GetService("Players").LocalPlayer.Character:WaitForChild("Right Leg").Parent = workspace
end    
})

LSection:AddButton({
	Name = "Dash/Slide V2",
	Callback = function()
	local HRP = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local HRPCF = HRP.CFrame
	local HRPLV = HRPCF.LookVector

	local BV = Instance.new("BodyVelocity")
	BV.MaxForce = Vector3.new(1, 1, 1) * math.huge
	BV.Velocity = (HRPLV * Vector3.new(25, 25, 25))

	BV.Parent =  game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").RootPart
	task.wait(1)
	BV:Destroy()
end    
})

LSection:AddButton({
	Name = "Slide V3",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size.X, 10, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size.Z)
end    
})

LSection:AddButton({
	Name = "Blocky Character (NOT FE IN MOST GAMES)",
	Callback = function()
char = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
spawn(function()
    repeat task.wait()
        for _, v in pairs(char:GetChildren()) do
            if v.Name == "CharacterMesh" then
                v:Destroy()
            end
        end
    until false
end)
end    
})

LSection:AddButton({
	Name = "Get Naked (NOT FE)",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Shirt"):Destroy()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Pants"):Destroy()
end    
})

LSection:AddButton({
	Name = "Alternative Get Naked (NOT FE)",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Shirt").ShirtTemplate = ""
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Pants").PantsTemplate = ""
end    
})

LSection:AddButton({
	Name = "Better Sounds",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Running.SoundId = "rbxassetid://1244506786"
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Jumping.SoundId = "rbxassetid://9114890978"
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Landing.SoundId = "rbxassetid://268933841"
end    
})

LSection:AddButton({
	Name = "Clone Yourself (NOT FE)",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.Archivable = true
	Clone = game:GetService("Players").LocalPlayer.Character:Clone()
	Clone.Name = game:GetService("Players").LocalPlayer.Name .. "'s Clone"
	Clone.Parent = workspace
	game:GetService("Players").LocalPlayer.Character.Archivable = false
	
	-- Not working
	Clone:WaitForChild("Animate").Enabled = false
	wait(1)
	Clone:WaitForChild("Animate").Enabled = true
end    
})

LSection:AddButton({
	Name = "Loop Clone Yourself (NOT FE)",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
	game:GetService("Players").LocalPlayer.Character.Archivable = true
	Clone = game:GetService("Players").LocalPlayer.Character:Clone()
	Clone.Name = game:GetService("Players").LocalPlayer.Name .. "'s Clone"
	Clone.Parent = workspace
	game:GetService("Players").LocalPlayer.Character.Archivable = false
	
	-- Not working
	Clone:WaitForChild("Animate").Enabled = false
	task.wait(1)
	Clone:WaitForChild("Animate").Enabled = true
	end)
end    
})

LSection:AddButton({
	Name = "Delete Clone",
	Callback = function()
	if workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "'s Clone") then
	workspace:WaitForChild(game.Players.LocalPlayer.Name .. "'s Clone"):Destroy()
	end
end
})

LSection:AddButton({
	Name = "Loop Delete Clone",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
	if workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "'s Clone") then
	workspace:WaitForChild(game.Players.LocalPlayer.Name .. "'s Clone"):Destroy()
		end
	end)
end
})

LSection:AddButton({
	Name = "Faceless (NOT FE)",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Head").face:Destroy()
end    
})

LSection:AddButton({
	Name = "Create Dialog",
	Callback = function()
	Dialog = Instance.new("Dialog", game.Players.LocalPlayer.Character.Head)
	Dialog.InitialPrompt = DialogInitialPrompt
	Dialog.GoodbyeDialog = DialogGoodbyeDialog
	Dialog.Tone = DialogTone
	Dialog.Purpose = DialogPurpose
end    
})

LSection:AddButton({
	Name = "Loop Trigger Dialog",
	Callback = function()
	local Dialog = game:GetService("Players").LocalPlayer.Character.Head:WaitForChild("Dialog")
	Dialog.TriggerDistance += 1
end    
})

LSection:AddButton({
	Name = "Delete Dialog",
	Callback = function()
	local Dialog = game:GetService("Players").LocalPlayer.Character.Head:WaitForChild("Dialog")
	Dialog:Destroy()
end    
})

-- idk why i added this lmao
LSection:AddButton({
	Name = "Free Dominus Aureus (NOT FE)",
	Callback = function()
	local Mesh = game:GetService("Players").LocalPlayer.Character.Head.Mesh
	local Face = game:GetService("Players").LocalPlayer.Character.Head.face
	Mesh.MeshId = "http://www.roblox.com/asset/?id=138923368"
	Mesh.TextureId = "http://www.roblox.com/asset/?id=139138503"
	Mesh.Scale = Vector3.new(1.045, 1.045, 1.045)
	Mesh.Offset = Vector3.new(0, 0, 0.25)
	Face:Destroy()
end    
})

LSection:AddButton({
	Name = "Create Deadly Explosion (NOT FE)",
	Callback = function()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = math.huge
Explosion.ExplosionType = Enum.ExplosionType.Craters
Explosion.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
Explosion.Parent = workspace
end    
})

LSection:AddButton({
	Name = "Create Non-deadly Explosion (NOT FE)",
	Callback = function()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 0
DestroyJointRadiusPercent = 0
Explosion.ExplosionType = Enum.ExplosionType.Craters
Explosion.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
Explosion.Parent = workspace
end    
})

LSection:AddButton({
	Name = "Create Player (NOT FE)",
	Callback = function()
Player = Instance.new("Player", game.Players)
Player.Name = PlayerName

Player.UserId = PlayerUserId
Player.Character = PlayerCharacter
Player.CharacterAppearance = PlayerCharacterAppearance

local TBK = TargetPlayer:WaitForChild("Backpack"):Clone()
TBK.Parent = Player

local TSG = TargetPlayer:WaitForChild("StarterGear"):Clone()
TSG.Parent = Player

--[[
local TPS = TargetPlayer:WaitForChild("PlayerScripts"):Clone()
TPS.Parent = Player

local TPG = TargetPlayer:WaitForChild("PlayerGui"):Clone()
TPG.Parent = Player
--]]

--[[
local TLS = TargetPlayer:FindFirstChild("Leaderstats"):Clone() or TargetPlayer:FindFirstChild("leaderstats"):Clone()
TLS.Parent = Player
--]]

if PlayerDisplayNameEnabled == true then
Player.DisplayName = PlayerDisplayName
elseif PlayerDisplayNameEnabled == false then
print("alright no display name i understand, have a good day")
	end
end    
})

LSection:AddButton({
	Name = "Remove Player",
	Callback = function()
Player:Destroy()
end
})

LSection:AddButton({
	Name = "Change Character",
	Callback = function()
game:GetService("Players").LocalPlayer.Character = DesiredCharacter
end    
})

LSection:AddButton({
	Name = "Change Character (Clone)",
	Callback = function()
game:GetService("Players").LocalPlayer.Character = Clone
end    
})

LSection:AddButton({
	Name = "Change Character Back",
	Callback = function()
game:GetService("Players").LocalPlayer.Character = CurrentCharacter
end    
})

LSection:AddButton({
	Name = "Change Camera (Clone)",
	Callback = function()
	workspace.Camera.CameraSubject = Clone:WaitForChild("Humanoid")
end    
})

LSection:AddButton({
	Name = "Change Camera Back",
	Callback = function()
	workspace.Camera.CameraSubject = CurrentCharacter:WaitForChild("Humanoid")
end    
})

LSection:AddButton({
	Name = "Remove HumanoidRootPart (BREAKS YOUR CHARACTER)",
	Callback = function()
game:GetService("Players").LocalPlayer:Destroy()
end    
})
					
LSection:AddButton({
	Name = "Remove Humanoid (BREAKS YOUR CHARACTER TOO)",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):Destroy()
end    
})

LSection:AddButton({
	Name = "Remove Character (DOESN'T RESPAWN YOU)",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:Destroy()
end    
})

LSection:AddButton({
	Name = "Remove LocalPlayer (DOESN'T LET YOU DO ANYTHING)",
	Callback = function()
game:GetService("Players").LocalPlayer:Destroy()
end    
})

--[[
LSection:AddButton({
	Name = "Custom Animations",
	Callback = function()
local Character = game:GetService("Players").LocalPlayer.Character
local Humanoid = Character:WaitForChild("Humanoid")

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://12819168065"
	local k = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)

Humanoid.Running:Connect(function(speed)
if speed > 0 then
	if not k.IsPlaying then
	k:Play()
	end
		else
		if k.IsPlaying then
		k:Stop()
			end
		end
	end)
end
})
--]]

LSection:AddButton({
	Name = "Remove Animations",
	Callback = function()
local Character = game:GetService("Players").LocalPlayer.Character

Character.Animate.idle.Animation1.AnimationId = "rbxassetid://"
Character.Animate.idle.Animation2.AnimationId = "rbxassetid://"
Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://"
Character.Animate.fall.FallAnim.AnimationId = "rbxassetid://"
end
})

LSection:AddButton({
	Name = "Neon Body (NOT FE)",
	Callback = function()
local Character = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()

for num, item in Character:GetChildren() do
	if item:IsA("Part") then
		local part = item
		part.Material = Enum.Material.Neon
	end
end
})

LSection:AddButton({
	Name = "High Jump",
	Callback = function()
	local BV = Instance.new("BodyVelocity")
	BV.Velocity = Vector3.new(0, 100, 0)
	BV.P = Vector3.new(0, 100, 0)
	BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	BV.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	wait(0.5)
	BV:Destroy()
end
})

LSection:AddButton({
	Name = "High Jump (On Click)",
	Callback = function()
local mouse = game:GetService("Players").LocalPlayer:GetMouse()	

	mouse.Button1Down:Connect(function()
	local BV = Instance.new("BodyVelocity")
	BV.Velocity = Vector3.new(0, 100, 0)
	BV.P = Vector3.new(0, 100, 0)
	BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	BV.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	wait(0.5)
	BV:Destroy()
	end)
end
})

LSection:AddButton({
	Name = "Swim",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):SetStateEnabled("GettingUp", false)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState("Swimming")
end
})

LSection:AddButton({
	Name = "Un-Swim",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):SetStateEnabled("GettingUp", true)

end
})

LSection:AddButton({
	Name = "Kick Yourself (With custom reason)",
	Callback = function()
game:GetService("Players").LocalPlayer:Kick(KickReason)
end
})

LSection:AddButton({
	Name = "Baldi Movement (Manual)",
	Callback = function()
local Player = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local mouse = Player:GetMouse()

Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

mouse.Button1Down:Connect(function()
local BV = Instance.new("BodyVelocity")
BV.Velocity = Vector3.new(0, 0, -5)
BV.P = Vector3.new(9999, 9999, 9999)
BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
BV.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
game.Debris:AddItem(BV, 0.5)
	end)
end
})

LSection:AddButton({
	Name = "Baldi Movement (Automatic)",
	Callback = function()
local Player = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local mouse = Player:GetMouse()

Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

game:GetService("RunService").Heartbeat:Connect(function()
local BV = Instance.new("BodyVelocity")
BV.Velocity = Vector3.new(0, 0, -5)
BV.P = Vector3.new(9999, 9999, 9999)
BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
BV.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
game.Debris:AddItem(BV, 0.5)
task.wait(1)
	end)
end
})

LSection:AddButton({
	Name = "Lag (Crash) Game (NOT FE)",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
local Part = Instance.new("Part")
Part.Parent = workspace
	end)
end
})

LSection:AddButton({
	Name = "Fill Inventory",
	Callback = function()
	local Character = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
	spawn(function()
		repeat wait()
			for _,v in pairs(Character:GetChildren()) do
				if v:IsA("Accessory") then
					local Handle = Instance.new("Part")
					local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
					Tool.Name = "SPAM"
					Handle.Parent = Tool
				end
			end
		until false
		end)
end
})

LSection:AddButton({
	Name = "Touch Your Hair (NOT FE)",
	Callback = function()
	local Character = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
	spawn(function()
		repeat wait()
			for _,v in pairs(Character:GetChildren()) do
				if v:IsA("Accessory") then
					local Handle = v.Handle:Clone()
					local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
					Tool.Name = "Touch Hair"
					Handle.Parent = Tool
					wait(10000)
					break
				end
			end
		until false
		end)
end
})

LSection:AddButton({
	Name = "Break Game (Remove CoreGui)",
	Callback = function()
game.CoreGui:ClearAllChildren()
end
})

LSection:AddButton({
	Name = "Better Bubble Chat (Disable Bubble Chat before using)",
	Callback = function()
local TextGUI = Instance.new("BillboardGui")
local MessageText = Instance.new("TextLabel")

TextGUI.Name = "TextGUI"
TextGUI.Parent = game.Players.LocalPlayer.Character
TextGUI.Active = true
TextGUI.AlwaysOnTop = true
TextGUI.LightInfluence = 1.000
TextGUI.MaxDistance = 60.000
TextGUI.Size = UDim2.new(7.5, 0, 1, 0)
TextGUI.StudsOffset = Vector3.new(0, 5, 0)

MessageText.Name = "MessageText"
MessageText.Parent = TextGUI
MessageText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MessageText.BackgroundTransparency = 1.000
MessageText.Size = UDim2.new(1, 0, 1, 0)
MessageText.ZIndex = 2
MessageText.Font = Enum.Font.Arcade
MessageText.Text = ""
MessageText.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageText.TextScaled = true
MessageText.TextSize = 18.000
MessageText.TextWrapped = true

local function RONYXQO_fake_script()
	local script = Instance.new('LocalScript', MessageText)

	game.Players.LocalPlayer.Chatted:Connect(function(message)
		local Text = script.Parent
	
		local function typewrite(object, text, length)
			for i = 1, #text, 1 do
				object.Text = string.sub(text,1,i)
				task.wait(length)
			end
		end
	
		typewrite(Text, "* " .. message, 0.02)
	end)
	task.wait(1)
	
end
coroutine.wrap(RONYXQO_fake_script)()
	end    
})

LSection:AddButton({
	Name = "Weird Movement",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Sit = not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Sit
	end)
end
})

LSection:AddButton({
	Name = "Alternative Weird Movement",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand
	end)
end
})

LSection:AddButton({
	Name = "Create Part",
	Callback = function()
local Part = Instance.new("Part")
Part.Parent = workspace
end
})

LSection:AddButton({
	Name = "Activate Part Trail",
	Callback = function()
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Player = Players.LocalPlayer or Players:GetPlayers()[1]
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

Humanoid.Changed:Connect(function()
	if Humanoid.MoveDirection.Magnitude > 0 then
		local Part = Instance.new("Part")
Part.Position = HumanoidRootPart.Position + Vector3.new(0, -1, 0)
Part.Anchored = true
Part.Parent = workspace
task.wait(0.3)
Part:Destroy()
end
end)
end
})

LSection:AddButton({
	Name = "Say Text (Chat)",
	Callback = function()
for num, item in TextTable do
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(item, "All")
task.wait(1.5)
	end
end
})

LSection:AddButton({
	Name = "Say Text (Dialog) (NOT FE)",
	Callback = function()
for num, item in TextTable do
	game.Chat:Chat(game.Players.LocalPlayer.Character, item)
task.wait(1.5)
	end
end
})

LSection:AddButton({
	Name = "Remove Accessories (NOT FE)",
	Callback = function()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):RemoveAccessories()
end
})

LSection:AddButton({
	Name = "Parkour Movement",
	Callback = function()
--print("dash script enabled") -- debugging
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
--[[
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local Momentum = 1
local LastPress = 0
--]]
--local AnimationId = "rbxassetid://91838645445199"

--[[
 [1] = Dash;
 [2] = Super Jump;
 [3] = Air Jump
--]]
local Debounces = {
	[1] = false;
	[2] = false;
	[3] = false
}
local Cooldowns = {
	[1] = 0.1;
	[2] = 1.7;
	[3] = 0.1
}
local Durations = {
	[1] = 0.125;
	[2] = 2.75;
	[3] = 0.250
}

--[[
local Debounce = false
local Cooldown = 2.5
--]]

UIS.InputBegan:Connect(function(key)
	-- Dash
	if key.KeyCode == Enum.KeyCode.Q then
		if Debounces[1] == true then return end
		Debounces[1] = true
		--print("execute dash") -- more debugging
		
		local Character = Player.Character
		local Humanoid = Character:WaitForChild("Humanoid")
		
		--local Animation = script:WaitForChild("DashAnimation")
		--Animation.AnimationId = AnimationId
		
		--local FinalAnimation = Humanoid:LoadAnimation(Animation)
		
		local HRP = Character:WaitForChild("HumanoidRootPart")
		local HRPCF = HRP.CFrame
		local HRPLV = HRPCF.LookVector
		
		local attachment = Instance.new("Attachment",Character.PrimaryPart)
		local aligner = Instance.new("AlignOrientation",Character.PrimaryPart)
		aligner.Attachment0 = attachment
		aligner.Mode = Enum.OrientationAlignmentMode.OneAttachment
		aligner.RigidityEnabled = true
		aligner.CFrame = CFrame.new(Vector3.zero,HRPLV)
		game.Debris:AddItem(aligner, 0.125)
		
		local LV = Instance.new("LinearVelocity")
		LV.MaxForce = math.huge
		--[[
		local HumanoidState = Humanoid:GetState()
		if HumanoidState == Enum.HumanoidStateType.Freefall then
			local moveDir = Humanoid.MoveDirection
			LV.VelocityConstraintMode = Enum.VelocityConstraintMode.Plane
			LV.MaxPlanarAxesForce = Vector2.new(9e9, 9e9, 9e9)
			LV.PlaneVelocity = Vector2.new(moveDir.X, moveDir.Z)*25
			--LV.VectorVelocity = (HRPLV * Vector3.new(45, 45, 45))
			--LV.PlaneVelocity = Vector2.new(0, -45)
		end
		--]]
		if Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
			LV.VectorVelocity = Vector3.new(Humanoid.MoveDirection.X, Humanoid.MoveDirection.Y, Humanoid.MoveDirection.Z) * 90
			Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
			--[[
			if Humanoid.MoveDirection.X > 0 then
				LV.VectorVelocity = (Vector3.new(Humanoid.MoveDirection.X * 25))
			elseif Humanoid.MoveDirection.Y > 0 then
				LV.VectorVelocity = (Vector3.new(Humanoid.MoveDirection.Y * 25))
			elseif Humanoid.MoveDirection.Z > 0 then
				LV.VectorVelocity = (Vector3.new(Humanoid.MoveDirection.Z * 25))
			--]]
		else
			LV.VectorVelocity = (HRPLV * Vector3.new(90, 90, 90))
			Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
		end
		
		--LV.VectorVelocity = (Vector3.new(Humanoid.MoveDirection.X * 25, Humanoid.MoveDirection.Y * 25, Humanoid.MoveDirection.Z * 25))
	--LV.VectorVelocity = (HRPLV * Vector3.new(45, 45, 45))
	--[]
		LV.Attachment0 = HRP:WaitForChild("RootAttachment")
		game.Debris:AddItem(LV, 0.125)
		LV.Parent = HRP
		FinalAnimation:Play()
		--[[
		local BV = Instance.new("BodyVelocity")
		BV.MaxForce = Vector3.new(1, 1, 1) * math.huge
		BV.Velocity = (HRPLV * Vector3.new(100, 100, 100))
		print(BV.Name)
		print(BV.Parent)
			
		BV.Parent = Humanoid.RootPart
		print(BV.Parent)
		task.wait(0.5)
		BV:Destroy()
		--]]
		--print("dash executed") -- even more debugging
		task.wait(Cooldowns[1])
		Debounces[1] = false
	-- Super Jump
	elseif key.KeyCode == Enum.KeyCode.T then
		if Debounces[2] == true then return end
		Debounces[2] = true
		--print("execute dash") -- more debugging

		local Character = Player.Character
		local Humanoid = Character:WaitForChild("Humanoid")
		local PreviousWS = Humanoid.WalkSpeed
		--local Animation = script:WaitForChild("DashAnimation")
		--Animation.AnimationId = AnimationId

		--local FinalAnimation = Humanoid:LoadAnimation(Animation)

		local HRP = Character:WaitForChild("HumanoidRootPart")
		local HRPCF = HRP.CFrame
		local HRPLV = HRPCF.LookVector
		
		for i = 1, 10 do
			local Incremental = 1.1
			task.wait(0.065)
			Incremental += 0.025
			Humanoid.WalkSpeed *= Incremental
		end
		
		task.wait(0.65)
		
		HRP.Velocity = (HRPLV + Vector3.new(0, 175, 0))

		--[[
		local HRPCF = HRP.CFrame
		local HRPLV = HRPCF.LookVector

		local LV = Instance.new("LinearVelocity")
		LV.MaxForce = math.huge
		LV.VectorVelocity = (HRPLV * Vector3.new(0, 90, 0))
		LV.Attachment0 = HRP:WaitForChild("RootAttachment")
		game.Debris:AddItem(LV, 0.125)
		LV.Parent = HRP
		--]]
		--FinalAnimation:Play()
		--[[
		local BV = Instance.new("BodyVelocity")
		BV.MaxForce = Vector3.new(1, 1, 1) * math.huge
		BV.Velocity = (HRPLV * Vector3.new(100, 100, 100))
		print(BV.Name)
		print(BV.Parent)
			
		BV.Parent = Humanoid.RootPart
		print(BV.Parent)
		task.wait(0.5)
		BV:Destroy()
		--]]
		--print("dash executed") -- even more debugging
		--task.wait(Durations[2]) -- old
		
		HRP.Touched:Connect(function()
			HRP.Velocity = Vector3.new(0, 0, 0)
			Humanoid.WalkSpeed = PreviousWS
		end)
		task.wait(Cooldowns[2])
		Debounces[2] = false
		-- Air Jump
	elseif key.KeyCode == Enum.KeyCode.F then
		if Debounces[3] == true then return end
		Debounces[3] = true
		--print("execute dash") -- more debugging

		local Character = Player.Character
		local Humanoid = Character:WaitForChild("Humanoid")

		--local Animation = script:WaitForChild("DashAnimation")
		--Animation.AnimationId = AnimationId

		--local FinalAnimation = Humanoid:LoadAnimation(Animation)

		local HRP = Character:WaitForChild("HumanoidRootPart")

		HRP.Velocity = Vector3.new(0, 90, 0)

		--[[
		local HRPCF = HRP.CFrame
		local HRPLV = HRPCF.LookVector

		local LV = Instance.new("LinearVelocity")
		LV.MaxForce = math.huge
		LV.VectorVelocity = (HRPLV * Vector3.new(0, 90, 0))
		LV.Attachment0 = HRP:WaitForChild("RootAttachment")
		game.Debris:AddItem(LV, 0.125)
		LV.Parent = HRP
		--]]
		--FinalAnimation:Play()
		--[[
		local BV = Instance.new("BodyVelocity")
		BV.MaxForce = Vector3.new(1, 1, 1) * math.huge
		BV.Velocity = (HRPLV * Vector3.new(100, 100, 100))
		print(BV.Name)
		print(BV.Parent)
			
		BV.Parent = Humanoid.RootPart
		print(BV.Parent)
		task.wait(0.5)
		BV:Destroy()
		--]]
		--print("dash executed") -- even more debugging
		HRP.Touched:Connect(function()
			HRP.Velocity = Vector3.new(0, 0, 0)
			Debounces[3] = false
		end)
		task.wait(Durations[3])
		HRP.Velocity = Vector3.new(0, 0, 0)

		
		--task.wait(Cooldowns[3])
		--Debounces[3] = false
	end
end)

--print("dash script working") -- i love debugging
end
})

LSection:AddToggle({
	Name = "Toggle HumanoidRootPart Anchor",
	Default = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored,
	Callback = function(Value)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = Value
end
})

LSection:AddToggle({
	Name = "Toggle Collision With HumanoidRootPart",
	Default = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CanCollide,
	Callback = function(Value)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CanCollide = Value
end
})

LSection:AddToggle({
	Name = "Toggle AutoJump",
	Default = game:GetService("Players").LocalPlayer.Character.Humanoid.AutoJumpEnabled,
	Callback = function(Value)
game:GetService("Players").LocalPlayer.Character.Humanoid.AutoJumpEnabled = Value
end
})

LSection:AddToggle({
	Name = "Platform Stand (Stun)",
	Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand,
	Callback = function(Value)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = Value
	end    
})

LSection:AddToggle({
	Name = "Sit",
	Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Sit,
	Callback = function(Value)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Sit = Value
	end    
})

LSection:AddToggle({
	Name = "BreakJointsOnDeath",
	Default = game:GetService("Players").LocalPlayer.Character.Humanoid.BreakJointsOnDeath,
	Callback = function(Value)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").BreakJointsOnDeath = Value
	end    
})

LSection:AddToggle({
	Name = "CharacterAutoLoads",
	Default = game:GetService("Players").CharacterAutoLoads,
	Callback = function(Value)
game:GetService("Players").CharacterAutoLoads = Value
	end    
})

if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate") then
LSection:AddToggle({
	Name = "Animations",
	Default = game:GetService("Players").LocalPlayer.Character.Animate.Enabled,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate") then
game:GetService("Players").LocalPlayer.Character.Animate.Enabled = Value
	end
end    
})
end

LSection:AddSlider({
	Name = "Set Max Players (NOT FE)",
	Min = 1,
	Max = 100,
	Default = game:GetService("Players").MaxPlayersInternal,
	Color = Color3.fromRGB(200, 200, 200),
	Increment = 1,
	ValueName = "Max Players",
	Callback = function(Value)
		game:GetService("Players").MaxPlayersInternal = Value
	end    
})

CameraSection:AddDropdown({
	Name = "Camera Type",
	Default = "Custom",
	Options = {"Attach", "Custom", "Fixed", "Follow", "Orbital", "Scriptable", "Trach", "Watch"},
	Callback = function(Value)
		workspace.Camera.CameraType = Value
	end    
})

CameraSection:AddSlider({
	Name = "Set FieldOfView",
	Min = 0,
	Max = 120,
	Default = workspace.Camera.FieldOfView,
	Color = Color3.fromRGB(0, 200, 200),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		workspace.Camera.FieldOfView = Value
	end    
})

CameraSection:AddDropdown({
	Name = "Camera Subject",
	Default = "Custom",
	Options = {"Head", "Torso", "HumanoidRootPart", "Left Arm", "Left Leg", "Right Arm", "Right Leg", "Humanoid"},
	Callback = function(Value)
		workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:WaitForChild(Value)
	end    
})

CameraSection:AddButton({
	Name = "Camera Weight",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(1, 0, 1)
end    
})

CameraSection:AddButton({
	Name = "Un-Camera Weight",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
end    
})

CameraSection:AddButton({
	Name = "Weird Camera",
	Callback = function()
local Player = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
local Character = Player.Character or Player.CharacterAdded:Wait()

Character:WaitForChild("Head").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Torso").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Left Arm").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Left Leg").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Right Arm").Position = Vector3.new(-499, -499, -499)
Character:WaitForChild("Right Leg").Position = Vector3.new(-499, -499, -499)

--Character:WaitForChild("HumanoidRootPart").Position = Vector3.new(0, 0, 0)

Character:SetPrimaryPartCFrame(CFrame.new(0, 0, 0))

Character:WaitForChild("Head").Anchored = true
Character:WaitForChild("Torso").Anchored = true
Character:WaitForChild("Left Arm").Anchored = true
Character:WaitForChild("Left Leg").Anchored = true
Character:WaitForChild("Right Arm").Anchored = true
Character:WaitForChild("Right Leg").Anchored = true

workspace.Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
end    
})

CameraSection:AddButton({
	Name = "Alternative Weird Camera",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(100, 100, 100)
end    
})

CameraSection:AddButton({
	Name = "Un-Weird Camera (Can only be used with the ALT version)",
	Callback = function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
end    
})

AnimationsSection:AddButton({
	Name = "Zombie Arms",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(ZArms)
        k:Play()
end 
})

AnimationsSection:AddButton({
	Name = "Insanity",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Insanity)
        k:Play()
end   
})

AnimationsSection:AddButton({
	Name = "Floating Head",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(FHead)
        k:Play()
end    
})

AnimationsSection:AddButton({
	Name = "Moon Dance",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(MoonDance)
        k:Play()
end   
})

AnimationsSection:AddButton({
	Name = "Charleston",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Charleston)
        k:Play()
end    
})

AnimationsSection:AddButton({
	Name = "Insane Legs",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(InsaneLegs)
        k:Play()
end   
})

AnimationsSection:AddButton({
	Name = "Spin",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Spin)
        k:Play()
end    
})

AnimationsSection:AddButton({
	Name = "Rotation",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Rotation)
        k:Play()
end    
})

--[[
AnimationsSection:AddButton({
	Name = "Custom Animation",
	Callback = function()
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Rotation)
        k:Play()
end    
})
--]]

MusicSection:AddToggle({
	Name = "Relaxed Scene",
    Default = false,
	Callback = function(Value)
--MusicTable[1].Playing = Value
    RelaxedScene.Playing = Value
end    
})


MusicSection:AddToggle({
	Name = "Lo-Fi Chill",
    Default = false,
	Callback = function(Value)
--MusicTable[7].Playing = Value
   LoFiChill.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "Smooth Vibes",
    Default = false,
	Callback = function(Value)
--MusicTable[8].Playing = Value
    SmoothVibes.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "Slow Boat",
    Default = false,
	Callback = function(Value)
--MusicTable[9].Playing = Value
    SlowBoat.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "Paradise Falls",
    Default = false,
	Callback = function(Value)
--MusicTable[2].Playing = Value
    ParadiseFalls.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "Happy Song",
    Default = false,
	Callback = function(Value)
--MusicTable[10].Playing = Value
    HappySong.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "All Dropping 8 Bit Beats",
    Default = false,
	Callback = function(Value)
--MusicTable[3].Playing = Value
    AllDropping8BitBeats.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "No Smoking",
    Default = false,
	Callback = function(Value)
--MusicTable[4].Playing = Value
    NoSmoking.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "Chaos",
    Default = false,
	Callback = function(Value)
--MusicTable[5].Playing = Value
    Chaos.Playing = Value
end    
})

MusicSection:AddToggle({
	Name = "Raining (It's Raining Tacos)",
    Default = false,
	Callback = function(Value)
--MusicTable[6].Playing = Value			
    Raining.Playing = Value
end    
})

--[[
MusicSection:AddSlider({
	Name = "Set Music Volume",
	Min = 0,
	Max = 10,
	Default = game.SoundService.RelaxedScene.Volume,
	Color = Color3.fromRGB(88, 88, 88),
	Increment = 1,
	ValueName = "Volume",
	Callback = function(Value)
game:GetService("SoundService"):WaitForChild("RelaxedScene").Volume = Value
game:GetService("SoundService"):WaitForChild("LoFiChill").Volume = Value
game:GetService("SoundService"):WaitForChild("SmoothVibes").Volume = Value
game:GetService("SoundService"):WaitForChild("SlowBoat").Volume = Value
game:GetService("SoundService"):WaitForChild("ParadiseFalls").Volume = Value
game:GetService("SoundService"):WaitForChild("HappySong").Volume = Value
game:GetService("SoundService"):WaitForChild("AllDropping8BitBeats").Volume = Value
game:GetService("SoundService"):WaitForChild("NoSmoking").Volume = Value
game:GetService("SoundService"):WaitForChild("Chaos").Volume = Value
game:GetService("SoundService"):WaitForChild("Raining").Volume = Value
end    
})
--]]


ConsoleSection:AddButton({
	Name = "Print",
	Callback = function()
	print(PrintText)
end    
})

ConsoleSection:AddButton({
	Name = "Print all RemoveEvents",
	Callback = function()
		spawn(function()
			repeat wait()
				for _,v in pairs(game.ReplicatedStorage:GetDescendants()) do
					if v:IsA("RemoteEvent") then
						print("Found", v.Name, "- located in:", v.Parent)
					end
				end
			until wait(1)
		end)
	end    
})

ConsoleSection:AddButton({
	Name = "Warn",
	Callback = function()
	warn(WarnText)
end    
})

ConsoleSection:AddButton({
	Name = "Error",
	Callback = function()
	error(ErrorText)
end    
})

ConsoleSection:AddButton({
	Name = "Notification",
	Callback = function()
	game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = NotificationTitle,
	Text = NotificationText,
	Icon = NotificationIcon
})
end    
})

ConsoleSection:AddButton({
	Name = "Orion Hub Notification",
	Callback = function()
	OrionLib:MakeNotification({
	Name = OHNotificationTitle,
	Content = OHNotificationText,
	Image = OHNotificationIcon,
	Time = 5
})
end    
})

SettingsSection:AddTextbox({
	Name = "Desired Character",
	Default = DesiredCharacter,
	TextDisappear = false,
	Callback = function(Value)
		DesiredCharacter = workspace:WaitForChild(Value)
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set DesiredCharacter to " .. Value .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	end	  
})

SettingsSection:AddTextbox({
	Name = "Initial Dialog Prompt",
	Default = InitialDialogPrompt,
	TextDisappear = false,
	Callback = function(Value)
		DialogInitialPrompt = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set InitialDialogPrompt to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Goodbye Dialog",
	Default = DialogGoodbyeDialog,
	TextDisappear = false,
	Callback = function(Value)
		DialogGoodbyeDialog = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set DialogGoodbyeDialog to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Custom Player's Name",
	Default = PlayerUserId,
	TextDisappear = false,
	Callback = function(Value)
		PlayerName = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set PlayerName to " .. Value .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Custom Player's Display Name",
	Default = PlayerUserId,
	TextDisappear = false,
	Callback = function(Value)
		PlayerDisplayName = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set PlayerDisplayName to " .. Value .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Custom Player's User ID",
	Default = PlayerUserId,
	TextDisappear = false,
	Callback = function(Value)
		PlayerUserId = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set PlayerUserId to " .. Value .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Kick Reason",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		KickReason = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set PrintText to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Print Text",
	Default = "Hello World!",
	TextDisappear = false,
	Callback = function(Value)
		PrintText = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set PrintText to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Warn Text",
	Default = WarnText,
	TextDisappear = false,
	Callback = function(Value)
		WarnText = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set WarnText to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Error Text",
	Default = ErrorText,
	TextDisappear = false,
	Callback = function(Value)
		ErrorText = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set ErrorText to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "CFS Notification Text",
	Default = PlayerUserId,
	TextDisappear = false,
	Callback = function(Value)
		CFSNotificationText = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set CFSNotificationText to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Notification Title",
	Default = NotificationTitle,
	TextDisappear = false,
	Callback = function(Value)
		NotificationTitle = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set NotificationTitle to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Notification Text",
	Default = NotificationText,
	TextDisappear = false,
	Callback = function(Value)
		NotificationText = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set NotificationText to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Notification Icon",
	Default = NotificationIcon,
	TextDisappear = false,
	Callback = function(Value)
		NotificationIcon = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set NotificationIcon to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Orion Hub Notification Title",
	Default = OHNotificationTitle,
	TextDisappear = false,
	Callback = function(Value)
		OHNotificationTitle = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set OHNotificationTitle to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Orion Hub Notification Text",
	Default = OHNotificationText,
	TextDisappear = false,
	Callback = function(Value)
		OHNotificationText = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set OHNotificationText to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

SettingsSection:AddTextbox({
	Name = "Orion Hub Notification Icon",
	Default = OHNotificationIcon,
	TextDisappear = false,
	Callback = function(Value)
		OHNotificationIcon = Value
				OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Set OHNotificationIcon to " .. "'" .. Value .. "'" .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end	  
})

Section:AddButton({
	Name = "Bypass Anti-Cheat",
	Callback = function()
if game.PlaceId == 6839171747 then

task.defer(function()
   game:GetService("RunService").Heartbeat:Connect(function()
       pcall(function()
           workspace.CurrentRooms["0"].StarterElevator.DoorHitbox:Destroy()
       end)
   end)
end)

game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Disabled = true

    end
end    
})

Section:AddButton({
	Name = "Full Bright",
	Callback = function()
spawn(function()
    repeat wait()
        for _,v in pairs(game:GetChildren()) do
            if v.Name == "Lighting" then
                   game:GetService("Lighting").Ambient = Color3.fromRGB(255, 255, 255)
            end
        end
    until false
end)
       game:GetService("Lighting").Brightness = 1
       game:GetService("Lighting").EnvironmentDiffuseScale = 1
       game:GetService("Lighting").EnvironmentSpecularScale = 1
       game:GetService("Lighting").ShadowSoftness = 0
       game:GetService("Lighting").ClockTime = 12
       game:GetService("Lighting").TimeOfDay = "12:00:00"
       game:GetService("Lighting")["Ambience_Dread"].Enabled = true
       game:GetService("Lighting").Sky:Destroy()
  	end    
})

Section2:AddButton({
	Name = "Remove Ambience Sounds",
	Callback = function()
game:GetService("Workspace").Ambience_Ambush:Destroy()
game:GetService("Workspace").Ambience_Escaped:Destroy()
game:GetService("Workspace").Ambience_Figure:Destroy()
game:GetService("Workspace").Ambience_FigureEnd:Destroy()
game:GetService("Workspace").Ambience_FigureIntense:Destroy()
game:GetService("Workspace").Ambience_FigureStart:Destroy()
game:GetService("Workspace").Ambience_Rush:Destroy()
game:GetService("Workspace").Ambience_RushTease:Destroy()
game:GetService("Workspace").Ambience_Seek:Destroy()
game:GetService("Workspace").Ambience_SeekOld:Destroy()
game:GetService("Workspace").Ambience:Destroy()
game:GetService("Workspace")["Footsteps_Seek"]:Destroy()
game:GetService("Workspace")["Ambience_Dark"]:Destroy()
  	end    
})

Section3:AddButton({
	Name = "Semi-Infinite Coins (Visual)",
	Callback = function()
game:GetService("Players").LocalPlayer.Gold.Value = 0 + math.huge
end    
})

Section3:AddButton({
	Name = "Alternative Semi-Infinite Coins (Visual)",
	Callback = function()
game:GetService("Players").LocalPlayer.Gold.Value = 9999999
end    
})

Section3:AddButton({
	Name = "Minus Coins (Visual)",
	Callback = function()
game:GetService("Players").LocalPlayer.Gold.Value = -1
end    
})

Section3:AddButton({
	Name = "NaN Coins (Visual)",
	Callback = function()
game:GetService("Players").LocalPlayer.Gold.Value = math.huge
end    
})

Section3:AddButton({
	Name = "Minus NaN Coins (Visual)",
	Callback = function()
game:GetService("Players").LocalPlayer.Gold.Value = 0 - math.huge
end    
})

Section3:AddButton({
	Name = "No Coins (Remove Coins GUI) (Visual)",
	Callback = function()
game:GetService("Players").LocalPlayer.Gold.Value = 0
end    
})

Section3:AddToggle({
	Name = "Glitch (Entity) Ambience",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Ambience_Glitch") then
    game:GetService("Lighting")["Ambience_Glitch"].Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Rush Ambience",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Ambience_Rush") then
    game:GetService("Lighting")["Ambience_Rush"].Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Seek Ambience",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Ambience_Seek") then
    game:GetService("Lighting")["Ambience_Seek"].Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Seek Ambience 2",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Ambience_Seek2") then
    game:GetService("Lighting")["Ambience_Seek2"].Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Dread Ambience",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Ambience_Dread") then
    game:GetService("Lighting")["Ambience_Dread"].Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Haste Ambience",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Ambience_Haste") then
    game:GetService("Lighting")["Ambience_Haste"].Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Shade Ambience",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Ambience_Shade") then
    game:GetService("Lighting")["Ambience_Shade"].Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Caves (Ambience)",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Caves") then
    game:GetService("Lighting").Caves.Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Flash (Ambience)",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Flash") then
    game:GetService("Lighting").Flash.Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Outside (Ambience)",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Outside") then
    game:GetService("Lighting").Outside.Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "XBOX (XBox) Color",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("XBoxColor") then
    game:GetService("Lighting").XBoxColor.Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Bloom",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Bloom") then
    game:GetService("Lighting").Bloom.Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Sanity (Ambience) (USELESS)",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Sanity") then
    game:GetService("Lighting").Sanity.Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "Blur (USELESS)",
    Default = false,
	Callback = function(Value)
	if game:GetService("Lighting"):FindFirstChild("Blur") then
    game:GetService("Lighting").Blur.Enabled = Value
    end
end    
})

Section3:AddToggle({
	Name = "April Fools Jumpscare (Fools Jumpscare)",
    Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("MainUI") then
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui").MainUI.FoolsJumpscare.Visible = Value
    end
end    
})

Section3:AddToggle({
	Name = "Drip Jumpscare",
    Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("MainUI") then
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui").MainUI.Drip.Visible = Value
    end
end    
})

Section3:AddToggle({
	Name = "Goblino Jumpscare",
    Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("MainUI") then
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui").MainUI.Jumpscare.Goblino.Visible = Value
    end
end    
})

Section3:AddToggle({
	Name = "Skeleton Jumpscare",
    Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("MainUI") then
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui").MainUI.Jumpscare.Skeleton.Visible = Value
    end
end    
})

Section3:AddToggle({
	Name = "Greed Jumpscare",
    Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("MainUI") then
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui").MainUI.Jumpscare.Greed.Visible = Value
    end
end    
})

Section4:AddButton({
	Name = "Get Random Item (Lucky Block)",
	Callback = function()
game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
  	end    
})

Section4:AddButton({
	Name = "Get Random Item (Super Block)",
	Callback = function()
game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
  	end    
})

Section4:AddButton({
	Name = "Get Random Item (Diamond Block)",
	Callback = function()
game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
  	end    
})

Section4:AddButton({
	Name = "Get Random Item (Rainbow Block)",
	Callback = function()
game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
  	end    
})

Section4:AddButton({
	Name = "Get Random Item (Galaxy Block)",
	Callback = function()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
  	end    
})

Section4:AddButton({
	Name = "Loop Get Random Item (Lucky Block)",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
	end)
end    
})

Section4:AddButton({
	Name = "Loop Get Random Item (Super Block)",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
	end)
end    
})

Section4:AddButton({
	Name = "Loop Get Random Item (Diamond Block)",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
	end)
end    
})

Section4:AddButton({
	Name = "Loop Get Random Item (Rainbow Block)",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
	end)
end    
})

Section4:AddButton({
	Name = "Loop Get Random Item (Galaxy Block)",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
	end)
end    
})

Section5:AddButton({
	Name = "Semi-Infinite Energy",
	Callback = function()
      		local omgnumber = 9999999999

game:GetService("ReplicatedStorage").Remote.Event.Game["[C-S]PlayerPick"]:FireServer(omgnumber)
  	end    
})

Section5:AddButton({
	Name = "Pick Coins",
	Callback = function()
      game:GetService("ReplicatedStorage").Remote.Event.Game["[C-S]PlayerPickCoin"]:FireServer()
  	end    
})

Section6:AddButton({
	Name = "Auto Energy",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
local omgnumber = 9999999999

game:GetService("ReplicatedStorage").Remote.Event.Game["[C-S]PlayerPick"]:FireServer(omgnumber)
	end)
end
})

Section6:AddButton({
	Name = "Auto Pick Coins (Auto Trophies)",
	Callback = function()
game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").Remote.Event.Game["[C-S]PlayerPickCoin"]:FireServer()
	end)
end
})

Section7:AddButton({
	Name = "Infinite Trophies (Visual)",
	Callback = function()
		game:GetService("Players").LocalPlayer.Eco.win.Value = 0 + math.huge
  	end    
})

Section7:AddButton({
	Name = "Semi-Infinite Trophies (Visual)",
	Callback = function()
		game:GetService("Players").LocalPlayer.Eco.win.Value = 9999999999
  	end    
})

Section7:AddButton({
	Name = "Minus Trophies (Visual)",
	Callback = function()
		game:GetService("Players").LocalPlayer.Eco.win.Value = -1
  	end    
})

Section7:AddButton({
	Name = "NaN Trophies (Visual)",
	Callback = function()
		game:GetService("Players").LocalPlayer.Eco.win.Value = math.huge
  	end    
})

Section7:AddButton({
	Name = "Minus NaN Trophies (Visual)",
	Callback = function()
		game:GetService("Players").LocalPlayer.Eco.win.Value = 0 - math.huge
  	end    
})

Section7:AddButton({
	Name = "No Trophies (Visual)",
	Callback = function()
		game:GetService("Players").LocalPlayer.Eco.win.Value = 0
  	end    
})

Section9:AddButton({
	Name = "Teleport to the End",
	Callback = function()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1401.5, 31.7999992, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0))
  	end    
})

Section9:AddButton({
	Name = "Get All Tools",
	Callback = function()
game:GetService("Workspace").Winners["Ball Givers"]["By: LCPLgeek"]["Ball Path Giver"].giver["Ball Path"]:Clone().Parent = game.Players.LocalPlayer.Backpack
game:GetService("Workspace").Winners["Ball Givers"]["By: LCPLgeek"]["Slate Ball Path Giver"].giver:Clone().Parent = game.Players.LocalPlayer.Backpack
game:GetService("Workspace").Winners["Ball Givers"]["By: LCPLgeek"]["Purple Ball Path Giver"].giver["Ball Path"]:Clone().Parent = game.Players.LocalPlayer.Backpack
game:GetService("Workspace").Winners["Ball Givers"]["By: LCPLgeek"]["Smoke Path Giver"].giver["Smoke Path"]:Clone().Parent = game.Players.LocalPlayer.Backpack
game:GetService("Workspace").Winners["Ball Givers"]["By: LCPLgeek"]["Rainbow Ball Path Giver"].giver["Rainbow Ball Path"]:Clone().Parent = game.Players.LocalPlayer.Backpack
game:GetService("Workspace").Winners["Ball Givers"]["By: LCPLgeek"]["Wooden Ball Path Giver"].giver["Wooden Ball Path"]:Clone().Parent = game.Players.LocalPlayer.Backpack
end  
})

CFSSection:AddButton({
	Name = "Energy",
	Callback = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("RE_ClickPower") then
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").Remotes.RE_ClickPower:FireServer()
		end)
	end
end  
})

CFSSection:AddButton({
	Name = "Spin (s) (?) (Requires at least 1 spin of course)",
	Callback = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("RF_Spin") and game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("RF_SpinCount") then
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").Remotes.RF_Spin:InvokeServer()
game:GetService("ReplicatedStorage").Remotes.RF_SpinCount:InvokeServer()
		end)
	end
end  
})

CFSSection2:AddButton({
	Name = "World 1",
	Callback = function()
local stringomg = "World001"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 2",
	Callback = function()
local stringomg = "World002"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 3",
	Callback = function()
local stringomg = "World003"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 4",
	Callback = function()
local stringomg = "World004"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 5",
	Callback = function()
local stringomg = "World005"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 6",
	Callback = function()
local stringomg = "World006"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 7",
	Callback = function()
local stringomg = "World007"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 8",
	Callback = function()
local stringomg = "World008"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 9",
	Callback = function()
local stringomg = "World009"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 10",
	Callback = function()
local stringomg = "World010"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 11",
	Callback = function()
local stringomg = "World011"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 12",
	Callback = function()
local stringomg = "World012"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 13",
	Callback = function()
local stringomg = "World013"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 14",
	Callback = function()
local stringomg = "World014"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 15",
	Callback = function()
local stringomg = "World015"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection2:AddButton({
	Name = "World 16",
	Callback = function()
local stringomg = "World016"
local booleanomg = true

game:GetService("ReplicatedStorage").Remotes.BE_Teleport:Fire(stringomg, booleanomg)
end
})

CFSSection3:AddButton({
	Name = "Trigger Notification (With Custom Text!)",
	Callback = function()
	local omgstring = CFSNotificationText

game:GetService("ReplicatedStorage").Remotes.BE_Notifications:Fire(omgstring)
end
})

OMECSection:AddButton({
	Name = "Money/Blocks",
	Callback = function()
	if game:GetService("ReplicatedStorage")["events-shared/network@GlobalEvents"]:FindFirstChild("placeBlock") then
	game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage")["events-shared/network@GlobalEvents"].placeBlock:FireServer()
		end)
	end
end  
})

OMECSection:AddButton({
	Name = "Spin (Also requires at least 1 spin ofc)",
	Callback = function()
	if game:GetService("ReplicatedStorage")["functions-shared/network@GlobalFunctions"]:FindFirstChild("s:claimTimeGift") then
	game:GetService("RunService").Heartbeat:Connect(function()
local omgnumber1 = 1
local omgnumber2 = 60

game:GetService("ReplicatedStorage")["functions-shared/network@GlobalFunctions"]["s:claimTimeGift"]:FireServer(omgnumber1, omgnumber2)
		end)
	end
end  
})

Section10:AddButton({
	Name = "Better Graphics",
	Callback = function(Value)
    if not game:GetService("Lighting"):FindFirstChild("Blur") then
    local Blur = Instance.new("BlurEffect", game.Lighting)
    Blur.Size = 5

    if not game:GetService("Lighting"):FindFirstChild("Bloom") then
    local Bloom = Instance.new("BloomEffect", game.Lighting)
    Bloom.Intensity = 2.5
    Bloom.Size = 1000
    Bloom.Threshold = 6

    if not game:GetService("Lighting"):FindFirstChild("SunRays") then
    local Bloom = Instance.new("SunRaysEffect", game.Lighting)
    Bloom.Intensity = 1
    Bloom.Spread = 1
end
end
end
end
})

Section10:AddButton({
	Name = "Disable Better Graphics",
	Callback = function(Value)
    if game:GetService("Lighting"):FindFirstChild("Blur") then
    local Blur = game:GetService("Lighting"):WaitForChild("Blur")
Blur:Destroy()
end
    if game:GetService("Lighting"):FindFirstChild("Bloom") then
    local Bloom = game:GetService("Lighting"):WaitForChild("Bloom")
Bloom:Destroy()
end

    if game:GetService("Lighting"):FindFirstChild("SunRays") then
    local SunRays = game:GetService("Lighting"):WaitForChild("SunRays")
SunRays:Destroy()
end
end
})

--[[
Section8:AddButton({
	Name = "Equip Gun",
	Callback = function()
    game:GetService("ReplicatedStorage").Framework.Modules["2 | Network"].equiplasergun:Fire()
end    
})

Section8:AddButton({
	Name = "Unequip Gun",
	Callback = function()
game:GetService("ReplicatedStorage").Framework.Modules["2 | Network"].unequiplasergun:Fire()
end    
})
--]]
if game:GetService("ReplicatedStorage"):FindFirstChild("RemoveEvent") then
SDSection:AddButton({
	Name = "Normal Maximum Zoom-Out",
	Callback = function()
    workspace.Camera.MaxAxisFieldOfView = 114.826
  	end    
})

SDSection:AddToggle({
	Name = "Toggle Damage Indicator",
	Default = false,
	Callback = function(Value)
	if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Setting") then
		local s1 = "DIEnabled"
local b2 = Value

game:GetService("ReplicatedStorage").RemoteEvent.Setting:FireServer(s1, b2)
	end
end    
})

SDSection:AddToggle({
	Name = "Toggle Animation (Tween)",
	Default = false,
	Callback = function(Value)
	if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Setting") then
local s1 = "Animation"
local b2 = Value

game:GetService("ReplicatedStorage").RemoteEvent.Setting:FireServer(s1, b2)
	end
end    
})

SDSection:AddToggle({
	Name = "Toggle Projectile",
	Default = false,
	Callback = function(Value)
		if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Setting") then
local s1 = "Projectile"
local b2 = Value

game:GetService("ReplicatedStorage").RemoteEvent.Setting:FireServer(s1, b2)
	end
end    
})

SDSection1:AddButton({
	Name = "Supporter Tag",
	Callback = function()
		if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Gamepass") then
local Gamepass = 36344752

game:GetService("ReplicatedStorage").RemoteEvent.Gamepass:FireServer(Gamepass)
	end
end
})

SDSection1:AddButton({
	Name = "Golden Magnet",
	Callback = function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Gamepass") then
    local Gamepass = 36344782

game:GetService("ReplicatedStorage").RemoteEvent.Gamepass:FireServer(Gamepass)
	end
end
})

SDSection1:AddButton({
	Name = "Royal Supporter",
	Callback = function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Gamepass") then
    local Gamepass = 36344803

game:GetService("ReplicatedStorage").RemoteEvent.Gamepass:FireServer(Gamepass)
	end
end
})

SDSection1:AddButton({
	Name = "Honey Bee",
	Callback = function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Gamepass") then
    local Gamepass = 37057309

game:GetService("ReplicatedStorage").RemoteEvent.Gamepass:FireServer(Gamepass)
	end
end
})

SDSection1:AddButton({
	Name = "Solarit",
	Callback = function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Gamepass") then
    local Gamepass = 75735559

game:GetService("ReplicatedStorage").RemoteEvent.Gamepass:FireServer(Gamepass)
	end
end
})

SDSection1:AddButton({
	Name = "Antares",
	Callback = function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvent"):FindFirstChild("Gamepass") then
    local Gamepass = 102688544

game:GetService("ReplicatedStorage").RemoteEvent.Gamepass:FireServer(Gamepass)
	end
end
})
end

AWSection:AddButton({
	Name = "Punch Aura (One Player)",
	Callback = function()
    game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("Players").LocalPlayer.Character.Hitbox.Transparency = 0
game:GetService("Players").LocalPlayer.Character.Hitbox.Position = Vector3.new(workspace.charizardXDaaa.HumanoidRootPart.Position.X, workspace.charizardXDaaa.HumanoidRootPart.Position.Y, workspace.charizardXDaaa.HumanoidRootPart.Position.Z)
	end)
end    
})

AWSection:AddToggle({
	Name = "Deflect",
	Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hitbox") then
game:GetService("Players").LocalPlayer.Character.Hitbox.CanCollide = Value
	end
end    
})

AWSection2:AddButton({
	Name = "Infinite Punches (Visual)",
	Callback = function()
	game:GetService("Players").Idk32432895.PlayerGui.Counter.Frame.TextLabel.Text = "inf"
	game:GetService("Players").Idk32432895.leaderstats.Punches.Value = 0 + math.huge
end
})

AWSection2:AddButton({
	Name = "Semi-Infinite Punches (Visual)",
	Callback = function()
	game:GetService("Players").Idk32432895.PlayerGui.Counter.Frame.TextLabel.Text = "999999999"
	game:GetService("Players").Idk32432895.leaderstats.Punches.Value = 999999999
end
})

AWSection2:AddButton({
	Name = "Minus Punches (Visual)",
	Callback = function()
	game:GetService("Players").Idk32432895.PlayerGui.Counter.Frame.TextLabel.Text = "-1"
	game:GetService("Players").Idk32432895.leaderstats.Punches.Value = -1
end
})

AWSection2:AddButton({
	Name = "NaN Punches (Visual)",
	Callback = function()
	game:GetService("Players").Idk32432895.PlayerGui.Counter.Frame.TextLabel.Text = "nan"
	game:GetService("Players").Idk32432895.leaderstats.Punches.Value = math.huge
end
})

AWSection2:AddButton({
	Name = "Minus NaN Punches (Visual)",
	Callback = function()
	game:GetService("Players").Idk32432895.PlayerGui.Counter.Frame.TextLabel.Text = "-nan"
	game:GetService("Players").Idk32432895.leaderstats.Punches.Value = 0 - math.huge
end
})

SBKSRSection:AddButton({
	Name = "'kick'",
	Callback = function()
game:GetService("ReplicatedStorage").KillstreakEvents.kick:FireServer()
end
})

SBKSRSection:AddButton({
	Name = "'ban'",
	Callback = function()
game:GetService("ReplicatedStorage").KillstreakEvents.ban:FireServer()
end
})

SBKSRSection:AddButton({
	Name = "'ban 2'",
	Callback = function()
game:GetService("ReplicatedStorage").ban2:FireServer()
end
})

CTSection:AddButton({
	Name = "Get Money",
	Callback = function()
workspace.Idk32432895["Click For Cash"].RemoteEvent:FireServer()
end
})

CTSection2:AddButton({
	Name = "Loop Get Money",
	Callback = function()
	game:GetService("RunService").Heartbeat:Connect(function()
workspace.Idk32432895["Click For Cash"].RemoteEvent:FireServer()
	end)
end
})

CTSection3:AddToggle({
	Name = "Music",
	Default = true,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer:FindFirstChild("Music") then
game:GetService("Players").LocalPlayer.Music.Value = Value
	end
end
})

--[[
KSUSection:AddToggle({
	Name = "Kill Button (Works)",
	Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("kill button") then
game:GetService("Players").LocalPlayer.PlayerGui["kill button"].Enabled = Value
	end
end
})
--]]

--[[
KSUSection:AddToggle({
	Name = "Error Glove Button (Works too)",
	Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("error") then
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("error").Enabled = Value
	end
end
})
--]]

KSUSection:AddToggle({
	Name = "Godmode Button (Works aswell)",
	Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("invinc button") then
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("invinc button").Enabled = Value
	end
end
})

--[[
KSUSection:AddToggle({
	Name = "Glove Selector Button (Also works)",
	Default = false,
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("glove selector") then
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("glove selector").Enabled = Value
	end
end
})
--]]

KSUSection:AddButton({
	Name = "Renewed UI",
	Callback = function()
-- Kill Button
game:GetService("Players").LocalPlayer.PlayerGui["kill button"].TextButton.Font = Enum.Font.Arcade
game:GetService("Players").Idk32432895.PlayerGui["kill button"].TextButton.UICorner:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui["kill button"].TextButton.UIStroke:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui["kill button"].TextButton.BorderColor3 = Color3.fromRGB(85, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui["kill button"].TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)

-- Error Button
game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("Players").LocalPlayer.PlayerGui.error.TextButton.Text = "Error"
task.wait(0.1)
game:GetService("Players").LocalPlayer.PlayerGui.error.TextButton.Text = "eRror"
task.wait(0.1)
game:GetService("Players").LocalPlayer.PlayerGui.error.TextButton.Text = "erRor"
task.wait(0.1)
game:GetService("Players").LocalPlayer.PlayerGui.error.TextButton.Text = "errOr"
task.wait(0.1)
game:GetService("Players").LocalPlayer.PlayerGui.error.TextButton.Text = "erroR"
task.wait(0.1)
end

-- Godmode Button
game:GetService("Players").LocalPlayer.PlayerGui["invinc button"].TextButton.Font = Enum.Font.Code

game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("Players").LocalPlayer.PlayerGui["invinc button"].TextButton.TextColor3 = Color3.fromHSV(tick()%5/5,1,1)
end)

-- Glove Selector
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].ImageButton.BorderSizePixel = 0
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].Frame.BorderSizePixel = 3
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].Frame.TextBox.PlaceholderText = "Glove name here..."
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].Frame.TextBox.Font = Enum.Font.Cartoon
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].Frame.TextLabel.Front = Enum.Font.GothamBlack
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].Frame.TextButton.TextColor3 = Color3.fromRGB(150, 175, 255)
game:GetService("Players").LocalPlayer.PlayerGui["glove selector"].Frame.TextButton.Text = "Select"
end
})

--[[
AWSection:AddButton({
	Name = "Punch Aura (All Players)",
	Callback = function()
    game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("Players").LocalPlayer.Character.Hitbox.Transparency = 0
game:GetService("Players").LocalPlayer.Character.Hitbox.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(5, 10), math.random(5, 10), math.random(5, 10)))
	end)
end
})
--]]

--(Extra)--

--[[Information]]--
Section11:AddLabel("Game's Name = " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

if game:GetService("SoundService").RespectFilteringEnabled == true then
Section11:AddLabel("RespectFilteringEnabled = true")
elseif game:GetService("SoundService").RespectFilteringEnabled == false then
Section11:AddLabel("RespectFilteringEnabled = false")
end

local XPosLabel = Section11:AddLabel("Current X Position = " .. CurrentCharacter.HumanoidRootPart.Position.X, CurrentCharacter.HumanoidRootPart.Position.Y, CurrentCharacter.HumanoidRootPart.Position.Z)
local YPosLabel = Section11:AddLabel("Current Y Position = " .. CurrentCharacter.HumanoidRootPart.Position.Y)
local ZPosLabel = Section11:AddLabel("Current Z Position = " .. CurrentCharacter.HumanoidRootPart.Position.Z)
local CurrentCharacterLabel = Section11:AddLabel("Current Character = " .. CurrentCharacter.Name)

Section11:AddParagraph("Warning!","Positions and your Current Character labels may break if you use the Custom Humanoid, Custom Character and Change Character (while you still haven't turned back to your own character) features, so if it does, re-execute the script again!")
	
--[[
if CurrentCharacter == nil and DesiredCharacter == nil then
CurrentCharacterLabel:Set("Current Character = " .. "New " .. game.Players.LocalPlayer.Name)

elseif CurrentCharacter == nil and DesiredCharacter == not nil then
CurrentCharacterLabel:Set("Current Character = " .. DesiredCharacter)
end
--]]

if DesiredCharacter == nil then
warn("DesiredCharacter = nil!")
elseif DesiredCharacter == not nil then
Section11:AddLabel("DesiredCharacter = " .. DesiredCharacter)
end

--[[
if BlurOnLeave then
	local InputServ = game:GetService("UserInputService")

	InputServ.WindowFocusReleased:Connect(function()
		game:GetService("Lighting"):WaitForChild("BOLBlur").Enabled = true
		--BOLEffect.Enabled = true
	end)

	InputServ.WindowFocused:Connect(function()
		game:GetService("Lighting"):WaitForChild("BOLBlur").Enabled = false
		--BOLEffect.Enabled = false
	end)
end

if DisableRenderingOnLeave then
	local InputServ = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")

	InputServ.WindowFocusReleased:Connect(function()
		RunService:Set3dRenderingEnabled(false)
	end)

	InputServ.WindowFocused:Connect(function()
		RunService:Set3dRenderingEnabled(true)
	end)
end
--]]

--[[Credits]]--
Section12:AddParagraph("UI Library","shlexware (GitHub)")
Section12:AddParagraph("Server Finder","Fedoratum (YouTube) (?)")
Section12:AddParagraph("Infinite Yield","EdgeIY (AKA Edge, Zwolf and Moon) (GitHub)")
Section12:AddParagraph("Dark Dex V3","Moon (and Courtney I guess) (GitHub) (?)")
Section12:AddParagraph("Hydroxide","Upbolt (GitHub)")
Section12:AddParagraph("R15 Emotes GUI","Gi#7331 (Discord)")
Section12:AddParagraph("Doors Anti-Cheat Bypass","sashaa#5351 (Discord)")
Section12:AddParagraph("Features (except the two credited ones above)","idk.#5293 (Discord)")

--[[Update Log]]--

-- Features & Games Count
Tab8:AddLabel("Total Features: 145+")
Tab8:AddLabel("Total Supported Games: 11")

-- Changes
Section13:AddParagraph("11/8/2024","[/] Re-coded some features in order to optimize them\n[/] Moved the Stuff Section to the Universal tab & renamed it to 'Extra'\n[/] Moved the Universal SoulHub feature to the Universal tab, in the Extra section\n(Universal)\n[+] Set WalkSpeed/JumpPower/Gravity/FallenPartsDestroyHeight/MaxSlopeAngle Endlessly\n[+] Custom Character (actually a recreation of the original script)\n[+] Remove HumanoidRootPart\n[+] Create Part + Activate Part Trail\n[+] SoulHub\n[/] Renamed 'Semi-Fly' & 'Semi-Fly (On Click' to 'High Jump' & 'High Jump (On Click)'\n[+] Remove Accessories\n[-] Custom Animation\n[+] Orion Hub Notification + Settings\n")
Section13:AddParagraph("Meanings","[+] = Added, [-] = Removed/Disabled, [/] = Miscellaneous Change")
Section13:AddParagraph("Announcement (s)","None.")

OrionLib:Init()

game:GetService("RunService").Heartbeat:Connect(function()
XPosLabel:Set("Current X Position = " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X or NewCharacter.Torso.Position.X)
YPosLabel:Set("Current Y Position = " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y or NewCharacter.Torso.Position.Y)
ZPosLabel:Set("Current Z Position = " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z or NewCharacter.Torso.Position.Z)
--CurrentCharacterLabel:Set("Current Character = CurrentCharacter)
end)
