if game.PlaceId == 10001513103 then
    _G.target = 'nul'

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("bosco-ware", "DarkTheme")
local Tab = Window:NewTab("View Words")
local Section = Tab:NewSection("View words")


Section:NewTextBox("Get Player", "hi", function(txt)
	 _G.target = txt
end)



Section:NewButton("Check words", "check words!!!1!", function()
    OrionLib:MakeNotification({
	Name = "words!",
	Content = game:GetService("Players"):FindFirstChild(_G.target).Words.Value,
	Image = "rbxassetid://4483345998",
	Time = 5
})
    
end)
end
