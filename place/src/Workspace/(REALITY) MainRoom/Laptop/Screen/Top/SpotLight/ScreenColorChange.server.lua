local screenColor = script.Parent.Parent
local spotLightColor = script.Parent

local hueIncrement =  1/360

local h = 1/255+.01
local s = 1
local v = 1

while true do
	if h >= 1 then
		hueIncrement = -1/360
	end
	if h <= 1/360 then
		hueIncrement = 1/360
	end
	h = h + hueIncrement
	color3FromHSV = Color3.fromHSV(h,s,v)
	spotLightColor.Color = color3FromHSV
	screenColor.Color = color3FromHSV
	wait()
end