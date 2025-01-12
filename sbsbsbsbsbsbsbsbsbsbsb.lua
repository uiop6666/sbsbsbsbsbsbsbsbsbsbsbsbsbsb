local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/atoyayaya/REDz-ui/refs/heads/main/REDzGui"))()

local Window = redzlib:MakeWindow({
  Title = "DL6制作",
  SubTitle = "忍者传奇",
  SaveFolder = "Redz Config"
})

print("反挂机已开启")
Start = tick()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

Window:AddMinimizeButton({
  Button = { Image = redzlib:GetIcon("close"), BackgroundTransparency = 0,Size = UDim2.fromOffset(60, 60), },
  Corner = { CornerRadius = UDim.new(0, 10) }
})

local day = game.Players.LocalPlayer.AccountAge
local week = (day / 7)
local mouth = (day / 30)
local year = (day / 365)

local Tab = Window:MakeTab({"公告", "cool"})

Tab:AddDiscordInvite({
    Title = "复制作者qq号",
    Logo = "rbxassetid://125659062095965",
    Invite = "1925778617"
})

Tab:AddDiscordInvite({
    Title = "复制DL6QQ群号",
    Logo = "rbxassetid://76765190932500",
    Invite = "572062550"
})        

Tab:AddDiscordInvite({
    Title = "复制作者b站UID",
    Logo = "rbxassetid://125659062095965",
    Invite = "UID:3546736987474050"
})        

Tab:AddSection("脚本默认开启反挂机，请放心挂机")

local Tab = Window:MakeTab({"个人信息", "cool"})

local Section = Tab:AddSection("注册时间:"..day.."天")

local Section = Tab:AddSection("注册时间:"..week.."星期")

local Section = Tab:AddSection("注册时间:"..mouth.."月")

local Section = Tab:AddSection("注册时间:"..year.."年")

local Section = Tab:AddSection("服务器id:"..game.GameId)

local Section = Tab:AddSection("用户id:"..game.Players.LocalPlayer.UserId)

local Section = Tab:AddSection("客户端id:"..game:GetService("RbxAnalyticsService"):GetClientId())

local Section = Tab:AddSection("注入器:"..identifyexecutor())

local Section = Tab:AddSection("用户名:"..game.Players.LocalPlayer.Character.Name)

local Section = Tab:AddSection("服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

local Tab = Window:MakeTab({"自动功能", "cool"})

_G.auto_swing = true

function auto_swing()
	while _G.auto_swing == true do
	wait()
	if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")
else
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
wait()
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)                            
end
end
end
end
end
	end
end	

Tab:AddToggle({
  Name = "自动挥剑",  
  Default = false,
  Callback = function(Value)
    _G.auto_swing = Value
        auto_swing()
  end
})

_G.auto_sell = true

function auto_sell()
	while _G.auto_sell == true do
	wait()
	game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame wait(0.1) game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
	end
end	

Tab:AddToggle({
  Name = "自动出售",  
  Default = false,
  Callback = function(Value)
    _G.auto_sell = Value
        auto_sell()
  end
})

local Section = Tab:AddSection("自动购买")

_G.auto_buysw = true

function auto_buysw()
	while _G.auto_buysw == true do
	wait(0.5)
	if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllSwords"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm","Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island","Blazing Vortex Island","Chaos Legends Island","Cybernetic Legends Island","Skystorm Ultraus Island","Inner Peace Island","Dragon Legend Island","Golden Master Island","Dragon Legend Island","Soul Fusion Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
	end
end	

Tab:AddToggle({
  Name = "剑",  
  Default = false,
  Callback = function(Value)
    _G.auto_buysw = Value
        auto_buysw()
  end
})

local Tab = Window:MakeTab({"修改数据", "cool"})

Tab:AddButton({"解锁所有通行证", function()
game:GetService("ReplicatedStorage").gamepassIds["+2 Pet Slots"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["+3 Pet Slots"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["+4 Pet Slots"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["+100 Capacity"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["+200 Capacity"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["+20 Capacity"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["+60 Capacity"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["Infinite Ammo"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["Infinite Ninjitsu"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["Permanent Islands Unlock"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["x2 Coins"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["x2 Damage"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["x2 Health"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["x2 Ninjitsu"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["x2 Speed"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["Faster Sword"].Parent = game.Players.LocalPlayer.ownedGamepasses
game:GetService("ReplicatedStorage").gamepassIds["x3 Pet Clones"].Parent = game.Players.LocalPlayer.ownedGamepasses
end})