local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Squex01/ClickingHavocScript/main/ClickingHavoc.lua')))()
local w = library:CreateWindow("Clicking Havoc")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
 
b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

b:Toggle("AutoCollectGems",function(bool)
    shared.toggle = bool
    AutoCollectGems = bool
end)

f:Toggle("Upgrades",function(bool)
    shared.toggle = bool
    Upgrades = bool
end)

e:Toggle("AntiAfk",function(boosl)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Tp Cheats",function()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                if not string.find(v.Parent.Info.Type.Text,"VIP") and 
                not string.find(v.Parent.Info.Type.Text,"PREMIUM") and 
                not string.find(v.Parent.Info.Type.Text,"GROUP") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.CFrame.Position + Vector3.new(0,0,0))
                    wait(.1)
                end
            end
        end
    end)
end)
 
--Credits
u:Button("Relax",function()
    setclipboard("Relax")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

function Upgrades1()
    local Gems = {}
    local table = {}
    local K = {}
    local M = {}
    local B = {}