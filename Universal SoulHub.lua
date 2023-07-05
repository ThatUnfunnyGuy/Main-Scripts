-- Gui to Lua
-- Version: 3.2

-- Instances:

local a = Instance.new("ScreenGui")
local mainomg = Instance.new("Frame")
local openomlyesway = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")

--Properties:

a.Name = "a"
a.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainomg.Name = "mainomg"
mainomg.Parent = a
mainomg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainomg.BackgroundTransparency = 1.000
mainomg.BorderColor3 = Color3.fromRGB(255, 255, 255)
mainomg.BorderSizePixel = 3
mainomg.Position = UDim2.new(0.304381847, 0, 0.0629370511, 40)
mainomg.Size = UDim2.new(0, 500, 0, 500)
mainomg.Visible = false

openomlyesway.Name = "openomlyesway"
openomlyesway.Parent = mainomg
openomlyesway.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
openomlyesway.BorderColor3 = Color3.fromRGB(255, 255, 255)
openomlyesway.BorderSizePixel = 0
openomlyesway.Position = UDim2.new(-0.777999997, 0, 0.972000003, 0)
openomlyesway.Size = UDim2.new(0, 50, 0, 50)
openomlyesway.Font = Enum.Font.JosefinSans
openomlyesway.Text = "^"
openomlyesway.TextColor3 = Color3.fromRGB(0, 255, 0)
openomlyesway.TextScaled = true
openomlyesway.TextSize = 14.000
openomlyesway.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
openomlyesway.TextWrapped = true

UICorner.Parent = openomlyesway

UICorner_2.Parent = mainomg

-- Scripts:

local function BUSAY_fake_script() -- openomlyesway.onclick 
	local script = Instance.new('LocalScript', openomlyesway)

	script.Parent.MouseButton1Click:Connect(function(player)
		game:GetService("Players").LocalPlayer.PlayerGui.h.mainomg.Visible = true
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(BUSAY_fake_script)()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local h = Instance.new("ScreenGui")
local mainomg = Instance.new("Frame")
local protitle = Instance.new("TextLabel")
local closeomgnoway = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local omgmainfolder = Instance.new("Folder")
local scrollingframefrfr = Instance.new("ScrollingFrame")
local mainfolderfr = Instance.new("Folder")
local alternatebattlegrounds = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local randombattleplaceveryreal = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local untitledsoulomgomg = Instance.new("TextButton")
local ImageLabel_3 = Instance.new("ImageLabel")
local UICorner_6 = Instance.new("UICorner")
local UICorner_7 = Instance.new("UICorner")
local undertalebattlegroundsomgverygood = Instance.new("TextButton")
local ImageLabel_4 = Instance.new("ImageLabel")
local UICorner_8 = Instance.new("UICorner")
local UICorner_9 = Instance.new("UICorner")
local minihubsbuttonomgnoway = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local minihubsfrfrfr = Instance.new("Folder")
local bloxtale = Instance.new("TextButton")
local ImageLabel_5 = Instance.new("ImageLabel")
local UICorner_11 = Instance.new("UICorner")
local UICorner_12 = Instance.new("UICorner")
local randombattleplaceveryreal_2 = Instance.new("TextButton")
local ImageLabel_6 = Instance.new("ImageLabel")
local UICorner_13 = Instance.new("UICorner")
local untitledsoulomgomg_2 = Instance.new("TextButton")
local ImageLabel_7 = Instance.new("ImageLabel")
local UICorner_14 = Instance.new("UICorner")
local undertalebattlegroundsomgverygood_2 = Instance.new("TextButton")
local ImageLabel_8 = Instance.new("ImageLabel")
local UICorner_15 = Instance.new("UICorner")
local hubsbuttonomgyesway = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local protitle2 = Instance.new("TextLabel")
local UICorner_17 = Instance.new("UICorner")

--Properties:

h.Name = "h"
h.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
h.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainomg.Name = "mainomg"
mainomg.Parent = h
mainomg.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainomg.BorderColor3 = Color3.fromRGB(255, 255, 255)
mainomg.BorderSizePixel = 0
mainomg.Position = UDim2.new(0.108763695, 0, 0.281468511, 0)
mainomg.Size = UDim2.new(0, 1000, 0, 250)

protitle.Name = "protitle"
protitle.Parent = mainomg
protitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
protitle.BackgroundTransparency = 1.000
protitle.Position = UDim2.new(0.25, 0, 0, 0)
protitle.Size = UDim2.new(0, 500, 0, 27)
protitle.Font = Enum.Font.JosefinSans
protitle.Text = "SoulHub V1.3"
protitle.TextColor3 = Color3.fromRGB(255, 255, 255)
protitle.TextScaled = true
protitle.TextSize = 14.000
protitle.TextWrapped = true

closeomgnoway.Name = "closeomgnoway"
closeomgnoway.Parent = mainomg
closeomgnoway.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
closeomgnoway.BorderColor3 = Color3.fromRGB(255, 255, 255)
closeomgnoway.BorderSizePixel = 0
closeomgnoway.Position = UDim2.new(0.963, 0, -0.0939999968, 0)
closeomgnoway.Size = UDim2.new(0, 50, 0, 50)
closeomgnoway.Font = Enum.Font.JosefinSans
closeomgnoway.Text = "X"
closeomgnoway.TextColor3 = Color3.fromRGB(255, 0, 0)
closeomgnoway.TextScaled = true
closeomgnoway.TextSize = 14.000
closeomgnoway.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
closeomgnoway.TextWrapped = true
closeomgnoway.TextYAlignment = Enum.TextYAlignment.Bottom

UICorner.Parent = closeomgnoway

omgmainfolder.Name = "omgmainfolder"
omgmainfolder.Parent = mainomg

scrollingframefrfr.Name = "scrollingframefrfr"
scrollingframefrfr.Parent = omgmainfolder
scrollingframefrfr.Active = true
scrollingframefrfr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingframefrfr.BackgroundTransparency = 1.000
scrollingframefrfr.Position = UDim2.new(0.0759999976, 0, 0, 0)
scrollingframefrfr.Size = UDim2.new(0, 924, 0, 250)

mainfolderfr.Name = "mainfolderfr"
mainfolderfr.Parent = scrollingframefrfr

alternatebattlegrounds.Name = "alternatebattlegrounds"
alternatebattlegrounds.Parent = mainfolderfr
alternatebattlegrounds.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
alternatebattlegrounds.BorderColor3 = Color3.fromRGB(0, 0, 255)
alternatebattlegrounds.BorderSizePixel = 0
alternatebattlegrounds.Position = UDim2.new(0.0450000018, 0, 0.349999994, 0)
alternatebattlegrounds.Size = UDim2.new(0, 200, 0, 50)
alternatebattlegrounds.Font = Enum.Font.JosefinSans
alternatebattlegrounds.Text = "Alternate Battlegrounds"
alternatebattlegrounds.TextColor3 = Color3.fromRGB(255, 255, 255)
alternatebattlegrounds.TextScaled = true
alternatebattlegrounds.TextSize = 14.000
alternatebattlegrounds.TextWrapped = true

ImageLabel.Parent = alternatebattlegrounds
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel.Size = UDim2.new(0, 150, 0, 100)
ImageLabel.Image = "http://www.roblox.com/asset/?id=12323409381"

UICorner_2.Parent = ImageLabel

UICorner_3.Parent = alternatebattlegrounds

randombattleplaceveryreal.Name = "randombattleplaceveryreal"
randombattleplaceveryreal.Parent = mainfolderfr
randombattleplaceveryreal.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
randombattleplaceveryreal.BorderColor3 = Color3.fromRGB(255, 255, 255)
randombattleplaceveryreal.BorderSizePixel = 0
randombattleplaceveryreal.Position = UDim2.new(0.270000011, 0, 0.349999994, 0)
randombattleplaceveryreal.Size = UDim2.new(0, 200, 0, 50)
randombattleplaceveryreal.Font = Enum.Font.JosefinSans
randombattleplaceveryreal.Text = "Random Battle Place"
randombattleplaceveryreal.TextColor3 = Color3.fromRGB(255, 255, 255)
randombattleplaceveryreal.TextScaled = true
randombattleplaceveryreal.TextSize = 14.000
randombattleplaceveryreal.TextWrapped = true

ImageLabel_2.Parent = randombattleplaceveryreal
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel_2.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel_2.Size = UDim2.new(0, 150, 0, 100)
ImageLabel_2.Image = "rbxassetid://12418683633"

UICorner_4.Parent = ImageLabel_2

UICorner_5.Parent = randombattleplaceveryreal

untitledsoulomgomg.Name = "untitledsoulomgomg"
untitledsoulomgomg.Parent = mainfolderfr
untitledsoulomgomg.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
untitledsoulomgomg.BorderColor3 = Color3.fromRGB(255, 255, 255)
untitledsoulomgomg.BorderSizePixel = 0
untitledsoulomgomg.Position = UDim2.new(0.495000005, 0, 0.349999994, 0)
untitledsoulomgomg.Size = UDim2.new(0, 200, 0, 50)
untitledsoulomgomg.Font = Enum.Font.JosefinSans
untitledsoulomgomg.Text = "Untitled Soul"
untitledsoulomgomg.TextColor3 = Color3.fromRGB(255, 255, 255)
untitledsoulomgomg.TextScaled = true
untitledsoulomgomg.TextSize = 14.000
untitledsoulomgomg.TextWrapped = true

ImageLabel_3.Parent = untitledsoulomgomg
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel_3.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel_3.Size = UDim2.new(0, 150, 0, 100)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=12385526586"

UICorner_6.Parent = ImageLabel_3

UICorner_7.Parent = untitledsoulomgomg

undertalebattlegroundsomgverygood.Name = "undertalebattlegroundsomgverygood"
undertalebattlegroundsomgverygood.Parent = mainfolderfr
undertalebattlegroundsomgverygood.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
undertalebattlegroundsomgverygood.BorderColor3 = Color3.fromRGB(255, 255, 255)
undertalebattlegroundsomgverygood.BorderSizePixel = 0
undertalebattlegroundsomgverygood.Position = UDim2.new(0.720000029, 0, 0.349999994, 0)
undertalebattlegroundsomgverygood.Size = UDim2.new(0, 200, 0, 50)
undertalebattlegroundsomgverygood.Font = Enum.Font.JosefinSans
undertalebattlegroundsomgverygood.Text = "Undertale Battlegrounds"
undertalebattlegroundsomgverygood.TextColor3 = Color3.fromRGB(255, 255, 255)
undertalebattlegroundsomgverygood.TextScaled = true
undertalebattlegroundsomgverygood.TextSize = 14.000
undertalebattlegroundsomgverygood.TextWrapped = true

ImageLabel_4.Parent = undertalebattlegroundsomgverygood
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel_4.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel_4.Size = UDim2.new(0, 150, 0, 100)
ImageLabel_4.Image = "rbxassetid://12458092417"

UICorner_8.Parent = ImageLabel_4

UICorner_9.Parent = undertalebattlegroundsomgverygood

minihubsbuttonomgnoway.Name = "minihubsbuttonomgnoway"
minihubsbuttonomgnoway.Parent = scrollingframefrfr
minihubsbuttonomgnoway.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
minihubsbuttonomgnoway.Position = UDim2.new(0.600000024, 0, 0, 0)
minihubsbuttonomgnoway.Size = UDim2.new(0, 200, 0, 50)
minihubsbuttonomgnoway.Font = Enum.Font.JosefinSans
minihubsbuttonomgnoway.Text = "Mini-Hubs"
minihubsbuttonomgnoway.TextColor3 = Color3.fromRGB(255, 255, 255)
minihubsbuttonomgnoway.TextScaled = true
minihubsbuttonomgnoway.TextSize = 14.000
minihubsbuttonomgnoway.TextWrapped = true

UICorner_10.Parent = minihubsbuttonomgnoway

minihubsfrfrfr.Name = "minihubsfrfrfr"
minihubsfrfrfr.Parent = scrollingframefrfr

bloxtale.Name = "bloxtale"
bloxtale.Parent = minihubsfrfrfr
bloxtale.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
bloxtale.BorderColor3 = Color3.fromRGB(0, 0, 255)
bloxtale.BorderSizePixel = 0
bloxtale.Position = UDim2.new(0.0450000018, 0, 0.349999994, 0)
bloxtale.Size = UDim2.new(0, 200, 0, 50)
bloxtale.Visible = false
bloxtale.Font = Enum.Font.JosefinSans
bloxtale.Text = "Bloxtale"
bloxtale.TextColor3 = Color3.fromRGB(255, 255, 255)
bloxtale.TextScaled = true
bloxtale.TextSize = 14.000
bloxtale.TextWrapped = true

ImageLabel_5.Parent = bloxtale
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel_5.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel_5.Size = UDim2.new(0, 150, 0, 100)
ImageLabel_5.Image = "rbxassetid://12758780947"

UICorner_11.CornerRadius = UDim.new(0.0799999982, 0)
UICorner_11.Parent = ImageLabel_5

UICorner_12.CornerRadius = UDim.new(0.0799999982, 0)
UICorner_12.Parent = bloxtale

randombattleplaceveryreal_2.Name = "randombattleplaceveryreal"
randombattleplaceveryreal_2.Parent = minihubsfrfrfr
randombattleplaceveryreal_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
randombattleplaceveryreal_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
randombattleplaceveryreal_2.BorderSizePixel = 0
randombattleplaceveryreal_2.Position = UDim2.new(0.270000011, 0, 0.349999994, 0)
randombattleplaceveryreal_2.Size = UDim2.new(0, 200, 0, 50)
randombattleplaceveryreal_2.Visible = false
randombattleplaceveryreal_2.Font = Enum.Font.JosefinSans
randombattleplaceveryreal_2.Text = "Random Battle Place"
randombattleplaceveryreal_2.TextColor3 = Color3.fromRGB(255, 255, 255)
randombattleplaceveryreal_2.TextScaled = true
randombattleplaceveryreal_2.TextSize = 14.000
randombattleplaceveryreal_2.TextWrapped = true

ImageLabel_6.Parent = randombattleplaceveryreal_2
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel_6.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel_6.Size = UDim2.new(0, 150, 0, 100)
ImageLabel_6.Image = "rbxassetid://12418683633"

UICorner_13.Parent = ImageLabel_6

untitledsoulomgomg_2.Name = "untitledsoulomgomg"
untitledsoulomgomg_2.Parent = minihubsfrfrfr
untitledsoulomgomg_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
untitledsoulomgomg_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
untitledsoulomgomg_2.BorderSizePixel = 0
untitledsoulomgomg_2.Position = UDim2.new(0.495000005, 0, 0.349999994, 0)
untitledsoulomgomg_2.Size = UDim2.new(0, 200, 0, 50)
untitledsoulomgomg_2.Visible = false
untitledsoulomgomg_2.Font = Enum.Font.JosefinSans
untitledsoulomgomg_2.Text = "Untitled Soul"
untitledsoulomgomg_2.TextColor3 = Color3.fromRGB(255, 255, 255)
untitledsoulomgomg_2.TextScaled = true
untitledsoulomgomg_2.TextSize = 14.000
untitledsoulomgomg_2.TextWrapped = true

ImageLabel_7.Parent = untitledsoulomgomg_2
ImageLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_7.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel_7.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel_7.Size = UDim2.new(0, 150, 0, 100)
ImageLabel_7.Image = "http://www.roblox.com/asset/?id=12385526586"

UICorner_14.Parent = ImageLabel_7

undertalebattlegroundsomgverygood_2.Name = "undertalebattlegroundsomgverygood"
undertalebattlegroundsomgverygood_2.Parent = minihubsfrfrfr
undertalebattlegroundsomgverygood_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
undertalebattlegroundsomgverygood_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
undertalebattlegroundsomgverygood_2.BorderSizePixel = 0
undertalebattlegroundsomgverygood_2.Position = UDim2.new(0.720000029, 0, 0.349999994, 0)
undertalebattlegroundsomgverygood_2.Size = UDim2.new(0, 200, 0, 50)
undertalebattlegroundsomgverygood_2.Visible = false
undertalebattlegroundsomgverygood_2.Font = Enum.Font.JosefinSans
undertalebattlegroundsomgverygood_2.Text = "Undertale Battlegrounds"
undertalebattlegroundsomgverygood_2.TextColor3 = Color3.fromRGB(255, 255, 255)
undertalebattlegroundsomgverygood_2.TextScaled = true
undertalebattlegroundsomgverygood_2.TextSize = 14.000
undertalebattlegroundsomgverygood_2.TextWrapped = true

ImageLabel_8.Parent = undertalebattlegroundsomgverygood_2
ImageLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_8.BorderColor3 = Color3.fromRGB(66, 66, 66)
ImageLabel_8.Position = UDim2.new(0.125, 0, -2, 0)
ImageLabel_8.Size = UDim2.new(0, 150, 0, 100)
ImageLabel_8.Image = "rbxassetid://12458092417"

UICorner_15.Parent = ImageLabel_8

hubsbuttonomgyesway.Name = "hubsbuttonomgyesway"
hubsbuttonomgyesway.Parent = scrollingframefrfr
hubsbuttonomgyesway.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
hubsbuttonomgyesway.Position = UDim2.new(0.100000001, 0, 0, 0)
hubsbuttonomgyesway.Size = UDim2.new(0, 200, 0, 50)
hubsbuttonomgyesway.Font = Enum.Font.JosefinSans
hubsbuttonomgyesway.Text = "Hubs"
hubsbuttonomgyesway.TextColor3 = Color3.fromRGB(255, 255, 255)
hubsbuttonomgyesway.TextScaled = true
hubsbuttonomgyesway.TextSize = 14.000
hubsbuttonomgyesway.TextWrapped = true

UICorner_16.Parent = hubsbuttonomgyesway

protitle2.Name = "protitle2"
protitle2.Parent = mainomg
protitle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
protitle2.BackgroundTransparency = 1.000
protitle2.Position = UDim2.new(0.25, 0, 0.104000002, 0)
protitle2.Size = UDim2.new(0, 500, 0, 27)
protitle2.Font = Enum.Font.JosefinSans
protitle2.Text = "(Universal)"
protitle2.TextColor3 = Color3.fromRGB(255, 255, 255)
protitle2.TextScaled = true
protitle2.TextSize = 14.000
protitle2.TextWrapped = true

UICorner_17.Parent = mainomg

-- Scripts:

local function LKWQN_fake_script() -- closeomgnoway.onclick 
	local script = Instance.new('LocalScript', closeomgnoway)

	script.Parent.MouseButton1Click:Connect(function(player)
	script.Parent.Parent.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.a.mainomg.Visible = true
	end)
end
coroutine.wrap(LKWQN_fake_script)()
local function TFAOSE_fake_script() -- alternatebattlegrounds.onclick 
	local script = Instance.new('LocalScript', alternatebattlegrounds)

	script.Parent.MouseButton1Click:Connect(function(player)
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	
		local Window = OrionLib:MakeWindow({Name = "Alternate Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "AlternateHub", IntroEnabled = false})
	
		local WS = game:GetService("Workspace")
		local Players = game:GetService("Players")
		--local WSPlayers = WS.Players
		local Player = Players.LocalPlayer
		--local Character = WSPlayers:FindFirstChild(string.match(Players.LocalPlayer.Name, Players.LocalPlayer.Name))
	
		local OwnChallengeBox = game:GetService("ReplicatedStorage").ChallengeBox:Clone()
		OwnChallengeBox.Parent = WS
	
		local TextString = "hello" -- Put the text you would like to say
		local TextString2 = "im" -- Again, put the text you would like to say
		local TextString3 = "snack" -- You get my point, don't you?
		local TextString4 = "from" -- ...
		local TextString5 = "crosstale" -- Stop, please.
	
		local Tab = Window:MakeTab({
			Name = "Main",
			Icon = "rbxassetid://4483345998",
			PremiumOnly = false
		})
	
		local Tab2 = Window:MakeTab({
			Name = "Miscellaneous",
			Icon = "rbxassetid://4483345998",
			PremiumOnly = false
		})
	
	
		local Section = Tab:AddSection({
			Name = "General"
		})
	
		local Section2 = Tab:AddSection({
			Name = "Teleports"
		})
	
		local Section3 = Tab:AddSection({
			Name = "Characters (NOT CUSTOMS)"
		})
	
		local Section4 = Tab2:AddSection({
			Name = "Main"
		})
	
		local Section5 = Tab2:AddSection({
			Name = "Mini/Fun Features"
		})
	
		local Section6 = Tab2:AddSection({
			Name = "Animations"
		})
	
		local Section7 = Tab2:AddSection({
			Name = "Sans"
		})
	
		Section:AddButton({
			Name = "Godmode (Spawn in for it to work)",
			Callback = function()
				game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Display:Destroy()
	
				OrionLib:MakeNotification({
					Name = "Done!",
					Content = "Godmode applied.",
					Image = "rbxassetid://4483345998",
					Time = 5
				})
			end    
		})
	
		Section:AddButton({
			Name = "Break Game (Recommend using it when spawned in)",
			Callback = function()
				Player.Char:Destroy()
				Player.Life:Destroy()
	
				OrionLib:MakeNotification({
					Name = "Enjoy... I guess?",
					Content = "enjoy being pretty much in a bugged state i guess",
					Image = "rbxassetid://4483345998",
					Time = 5
				})
			end    
		})
	
		Section:AddButton({
			Name = "No Stun",
			Callback = function()
				spawn(function()
					repeat wait()
						for _,v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Data:GetChildren()) do
							if v.Name == "Stunned" and v.Value == true then
								v.Value = false
							end
						end
					until false
				end)
			end    
		})
	
		Section:AddButton({
			Name = "No Knockback",
			Callback = function()
				spawn(function()
					repeat wait()
						for _,v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Data:GetChildren()) do
							if v.Name == "KB" then
								v:Destroy()
							end
						end
					until false
				end)
			end    
		})
	
		Section2:AddButton({
			Name = "Map",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(0, -8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
			end    
		})
	
		Section2:AddButton({
			Name = "XTale (WARNING: YOU WILL FALL!)",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(48608.8984, 123.550003, 26838.3008, -0.998772502, -0.00154217798, 0.049515713, -1.09560206e-05, 0.999522209, 0.0309093539, -0.0495397188, 0.0308708604, -0.998295307))
			end    
		})
	
		Section2:AddButton({
			Name = "Judgement Hall",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(33382.6016, -300.813995, -20.2985992, -0.786295891, 0.00546765327, 0.617825866, -0.0983009636, 0.986116469, -0.133832842, -0.609979987, -0.16596511, -0.774841905))
			end    
		})
	
		Section2:AddButton({
			Name = "Black (WARNING: YOU WILL FALL! 2X)",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(40159.8984, 125.550003, 16067.7998, -0.604410887, -0.086166352, 0.79199928, 0.0119306259, 0.993043303, 0.117143944, -0.796583474, 0.080252111, -0.599178195))
			end    
		})
	
		Section2:AddButton({
			Name = "A-Train",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-477.556, 152.287003, -51588.8008, 1, 0, 0, 0, 1, 0, 0, 0, 1))
			end    
		})
	
		Section2:AddButton({
			Name = "FNF (WARNING: YOU WILL FALL! 3X)",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(6624.87012, 6.84204006, -78.0588989, 0.950553119, -0.00252741901, 0.310551703, 3.00075626e-05, 0.999967635, 0.00804636907, -0.310562015, -0.00763918227, 0.950522423))
			end    
		})
	
		Section2:AddButton({
			Name = "Challenge Box (NON-FE)",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-773.427979, 20.3535042, -2616.20166, 0, 0, -1, 0, 1, 0, 1, 0, 0))
			end    
		})
	
		Section3:AddButton({
			Name = "Asgore",
			Callback = function()
				local omgreal = "Asgore"
				game:GetService("ReplicatedStorage").Char:FireServer(omgreal)
	
				game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
			end    
		})
	
		Section3:AddButton({
			Name = "Sans",
			Callback = function()
				local omgreal = "Sans"
				game:GetService("ReplicatedStorage").Char:FireServer(omgreal)
	
				game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
			end    
		})
	
		Section3:AddButton({
			Name = "Cross",
			Callback = function()
				local omgreal = "XTCross"
				game:GetService("ReplicatedStorage").Char:FireServer(omgreal)
	
				game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
			end    
		})
	
		Section3:AddButton({
			Name = "Glitchtale Gaster",
			Callback = function()
				local omgreal = "GTGaster"
				game:GetService("ReplicatedStorage").Char:FireServer(omgreal)
	
				game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
			end    
		})
	
		Section3:AddButton({
			Name = "Glitchtale Frisk",
			Callback = function()
				local omgreal = "GTFrisk"
				game:GetService("ReplicatedStorage").Char:FireServer(omgreal)
	
				game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
			end    
		})
	
		Section3:AddButton({
			Name = "SSChara",
			Callback = function()
				local omgreal = "SSChara"
				game:GetService("ReplicatedStorage").Char:FireServer(omgreal)
	
				game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
			end    
		})
	
		Section4:AddButton({
			Name = "Quick Reset",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
			end    
		})
	
		Section4:AddButton({
			Name = "Quick Reset V2",
			Callback = function()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("Torso"):Destroy()
			end    
		})
	
		Section4:AddButton({
			Name = "Say Text (NON-FE)",
			Callback = function()
				game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString
				wait(0.75)
				game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString2
				wait(0.75)
				game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString3
				wait(0.75)
				game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString4
				wait(0.75)
				game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = TextString5
				wait(0.75)
				game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head.Chat.TextLabel.Text = ""
			end    
		})
	
		Section5:AddButton({
			Name = "Old Freeze (Use when spawned in)",
			Callback = function()
				game:GetService("Workspace").Players.LocalPlayer.Character:WaitForChild("Data"):Destroy()
			end    
		})
	
		Section5:AddButton({
			Name = "New Freeze (Use when spawned in 2X)",
			Callback = function()
				game:GetService("Workspace").Players.LocalPlayer.Character:WaitForChild("Humanoid").Animator:Destroy()
			end    
		})
	
		Section5:AddButton({
			Name = "Weird Rotation (Use when spawned in 3X) (NON-FE)",
			Callback = function()
				spawn(function()
					repeat wait()
						for _, v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do -- Change "Dietrich42478" with your username
							if v:IsA("Part") and v.Name == "HumanoidRootPart" then
								v.Position -= Vector3.new(0.01, 0.01, 0.01)
							end
						end
					until false
				end)
			end 
		})
	
		Section5:AddButton({
			Name = "Warn Sign (NON-FE)",
			Callback = function()
				local WarnSign = game:GetService("ReplicatedStorage").Warn:Clone()
				WarnSign.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head
	
				WarnSign.Enabled = true
			end    
		})
	
		Section5:AddButton({
			Name = "Warn Effect (Requires Warn Sign)",
			Callback = function()
				spawn(function()
					repeat wait()
						for _, v in pairs(game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name).Head:GetChildren()) do -- Change "Dietrich42478" with your username
							if v.Name == "Warn" then
								v.Enabled = true
								wait(.1)
								v.Enabled = false
								wait(.1)
								v.Enabled = true
								wait(.1)
								v.Enabled = false
								wait(.1)
								v.Enabled = true
								wait(.1)
								v.Enabled = false
								wait(.1)
								v.Enabled = true
								wait(.1)
								v.Enabled = false
							end
						end
					until false
				end)
			end    
		})
	
		Section6:AddButton({
			Name = "Default Dance",
			Callback = function()
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://9239735674"
				local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				k:Play()
				k:AdjustSpeed(1)
			end    
		})
	
		Section6:AddButton({
			Name = "A-Train",
			Callback = function()
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://11472288261"
				local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				k:Play()
				k:AdjustSpeed(1)
			end    
		})
	
		Section6:AddButton({
			Name = "GT!Frisk Phase 2 Cutscene Idle",
			Callback = function()
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://9897957107"
				local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				k:Play()
				k:AdjustSpeed(1)
			end    
		})
	
	--[[
	Section7:AddButton({
		Name = "Semi-Freeze Blasters",
		Callback = function()	
	spawn(function()
		repeat wait()
	for _, v in pairs(game:GetService("Workspace").Moves:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do -- Change "Dietrich42478" with your username
	if v.Name == "Blaster" or "Blaster2" then
		local Blaster = v
	--[[
		Blaster.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name)
		Blaster.HumanoidRootPart.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name)
		Blaster.Head.Parent = game:GetService("Workspace").Players:FindFirstChild(game.Players.LocalPlayer.Name)
	--]]
	
	--[[
		Blaster.AnimationController:Destroy()
		Blaster.AnimSaves:Destroy()
	  --Blaster.Part.Size = Vector3.new(math.huge, math.huge, math.huge)
				end
			end
		until false
		end)
	end
	})
	--]]
		--]]
	
		OrionLib:Init()
	end)
end
coroutine.wrap(TFAOSE_fake_script)()
local function OEVL_fake_script() -- randombattleplaceveryreal.onclick 
	local script = Instance.new('LocalScript', randombattleplaceveryreal)

	script.Parent.MouseButton1Click:Connect(function(player)
		loadstring(game:HttpGet('https://pastebin.com/raw/xwz5Qsy7'))()
	end)
end
coroutine.wrap(OEVL_fake_script)()
local function HQJD_fake_script() -- untitledsoulomgomg.onclick 
	local script = Instance.new('LocalScript', untitledsoulomgomg)

	script.Parent.MouseButton1Click:Connect(function(player)
		loadstring(game:HttpGet('https://pastebin.com/raw/tczYRWVy'))()
	end)
end
coroutine.wrap(HQJD_fake_script)()
local function DYAR_fake_script() -- undertalebattlegroundsomgverygood.onclick 
	local script = Instance.new('LocalScript', undertalebattlegroundsomgverygood)

	script.Parent.MouseButton1Click:Connect(function(player)
		loadstring(game:HttpGet('https://pastebin.com/raw/YvzMY5Gp'))()
	end)
end
coroutine.wrap(DYAR_fake_script)()
local function FIJWI_fake_script() -- minihubsbuttonomgnoway.onclick 
	local script = Instance.new('LocalScript', minihubsbuttonomgnoway)

	script.Parent.MouseButton1Click:Connect(function(player)
	local mainfolderomg = script.Parent.Parent.mainfolderfr
		mainfolderomg.alternatebattlegrounds.Visible = false
		mainfolderomg.randombattleplaceveryreal.Visible = false
		mainfolderomg.untitledsoulomgomg.Visible = false
		mainfolderomg.undertalebattlegroundsomgverygood.Visible = false
		local minihubsfolderomg = script.Parent.Parent.minihubsfrfrfr
		minihubsfolderomg.bloxtale.Visible = true
	end)
end
coroutine.wrap(FIJWI_fake_script)()
local function VOJYEP_fake_script() -- bloxtale.onclick 
	local script = Instance.new('LocalScript', bloxtale)

	script.Parent.MouseButton1Click:Connect(function(player)
		loadstring(game:HttpGet("https://pastebin.com/raw/Cu1wpY8N"))()
	end)
end
coroutine.wrap(VOJYEP_fake_script)()
local function CGDEPP_fake_script() -- randombattleplaceveryreal_2.onclick 
	local script = Instance.new('LocalScript', randombattleplaceveryreal_2)

	script.Parent.MouseButton1Click:Connect(function(player)
		loadstring(game:HttpGet('https://pastebin.com/raw/xwz5Qsy7'))()
	end)
end
coroutine.wrap(CGDEPP_fake_script)()
local function QQQR_fake_script() -- untitledsoulomgomg_2.onclick 
	local script = Instance.new('LocalScript', untitledsoulomgomg_2)

	script.Parent.MouseButton1Click:Connect(function(player)
		loadstring(game:HttpGet('https://pastebin.com/raw/tczYRWVy'))()
	end)
end
coroutine.wrap(QQQR_fake_script)()
local function XXSZU_fake_script() -- undertalebattlegroundsomgverygood_2.onclick 
	local script = Instance.new('LocalScript', undertalebattlegroundsomgverygood_2)

	script.Parent.MouseButton1Click:Connect(function(player)
		loadstring(game:HttpGet('https://pastebin.com/raw/YvzMY5Gp'))()
	end)
end
coroutine.wrap(XXSZU_fake_script)()
local function LFUHYU_fake_script() -- hubsbuttonomgyesway.onclick 
	local script = Instance.new('LocalScript', hubsbuttonomgyesway)

	script.Parent.MouseButton1Click:Connect(function(player)
	local mainfolderomg = script.Parent.Parent.mainfolderfr
		mainfolderomg.alternatebattlegrounds.Visible = true
		mainfolderomg.randombattleplaceveryreal.Visible = true
		mainfolderomg.untitledsoulomgomg.Visible = true
		mainfolderomg.undertalebattlegroundsomgverygood.Visible = true
		local minihubsfolderomg = script.Parent.Parent.minihubsfrfrfr
		minihubsfolderomg.bloxtale.Visible = false
	end)
end
coroutine.wrap(LFUHYU_fake_script)()