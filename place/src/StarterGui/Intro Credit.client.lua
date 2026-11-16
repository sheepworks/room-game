local creditFrame = script.Parent:WaitForChild("IntroCreditGui").IntroCreditFrame
local creditText = creditFrame.TextLabel
local logo = script.Parent.IntroCreditGui.SN_Logo

creditFrame.Visible = true
logo.Visible = true

wait(3)

for i = 0, 1, 0.02 do
	wait(0.02)
	logo.ImageTransparency = i
	creditText.Transparency = i
end

creditText.Transparency = 1
logo.Visible = false



