local Player = game:GetService("Players").LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerGui = Player:WaitForChild("PlayerGui")

local Remotes = ReplicatedStorage:WaitForChild("Events")
local TextLabel = PlayerGui.ScreenGui.EditBooth.TextBox

local CustomText = workspace:WaitForChild("CustomText")
local Num = 0 

while true do
	local Text = CustomText.Value
	if Num >= 0.99 then
		Num = 0
	end
	Num = Num + 0.01
	local color = Color3.fromHSV(Num,1,1)
	local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
	TextLabel.Text = "<font color='rgb("..r..","..g..","..b..")'>"..Text.."</font>"
	Remotes.EditBooth:FireServer(TextLabel.Text,"booth")
	wait(1)
end
