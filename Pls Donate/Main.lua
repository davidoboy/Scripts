local Player = game:GetService("Players").LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerGui = Player:WaitForChild("PlayerGui")

local Remotes = ReplicatedStorage:WaitForChild("Events")
local TextLabel = PlayerGui.ScreenGui.EditBooth.TextBox

local CustomizationFolder = workspace:WaitForChild("CustomizationFolder")
local ChosenType = CustomizationFolder:WaitForChild("ChosenType")

function RainbowText()
	local Num = 0 
	while task.wait(1) do
		local CustomText = workspace:WaitForChild("CustomizationFolder").CustomText.Value
		if Num >= 0.99 then
			Num = 0
		end
		Num = Num + 0.01
		local color = Color3.fromHSV(Num,1,1)
		local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
		TextLabel.Text = "<font color='rgb("..r..","..g..","..b..")'>"..CustomText.."</font>"
		Remotes.EditBooth:FireServer(TextLabel.Text,"booth")
	end
end

function Idiot()
	while task.wait(1) do
		TextLabel.Text = "<font color='rgb(0,0,0)'>you are an idiot\n☺☺☺</font>"
		Remotes.EditBooth:FireServer(TextLabel.Text,"booth")
		task.wait(1)
		TextLabel.Text = "<font color='rgb(255,255,255)'>you are an idiot\n☻☻☻</font>"
		Remotes.EditBooth:FireServer(TextLabel.Text,"booth")
	end
end

--[[function RickRoll()
	
	
	while task.wait(1) do
		TextLabel.Text = "<font color='rgb(0,0,0)'>you are an idiot\n☺☺☺</font>"
		Remotes.EditBooth:FireServer(TextLabel.Text,"booth")
		task.wait(1)
		TextLabel.Text = "<font color='rgb(255,255,255)'>you are an idiot\n☻☻☻</font>"
		Remotes.EditBooth:FireServer(TextLabel.Text,"booth")
	end
end

while task.wait(5) do
	if ChosenType.Value == "Rainbow" then
		RainbowText()
	elseif ChosenType.Value == "Idiot" then
		Idiot()
	elseif ChosenType.Value == "RickRoll" then
		RickRoll()
	end
end
]]

Idiot()
