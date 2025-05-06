local va=game:GetService("HttpService") local vb=va:GenerateGUID(false)
local vc=game:GetService("Players") local vd=vc.LocalPlayer
local ve=vd.Character local vf=ve:FindFirstChild("HumanoidRootPart")
local vg=game:GetService("UserInputService") local vh=game:GetService("VirtualUser")
local c=Color3.fromRGB(0,0,0) local vi=game:GetService("Workspace")
local vj=vi:FindFirstChild("Activation") local vk=vi:FindFirstChild("Blocks")
local dba=false local dbc=false local ra=game.ReplicatedStorage.Network:InvokeServer()
local rs=game:GetService("RunService") local rss=rs.Stepped
local ia = vd.PlayerGui.ScreenGui.StatsFrame2.Inventory.Amount

local ua = Instance.new("ScreenGui",vd)
local ub = Instance.new("Frame",ua)
local uc = Instance.new("TextLabel",ub)
local ud = Instance.new("Frame",ub)
local uf = Instance.new("UITableLayout",ud)
local ue = Instance.new("TextButton",ud)
local ug = Instance.new("TextButton",ud)
local uh = Instance.new("TextButton",ud)
local ui = Instance.new("TextButton",ud)
local uj = Instance.new("TextButton",ud)
local uk = Instance.new("TextButton",ud)

for i,oldgui in (vd.PlayerGui:GetDescendants()) do
if oldgui:FindFirstChild("o_8uzi#7674crediting") then oldgui:Destroy() end
end

ua.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ub.Name = "o_8uzi#7674crediting"
ub.BackgroundColor3 = c
ub.BackgroundTransparency = 0.600
ub.BorderColor3 = Color3.fromRGB(255, 255, 255)
ub.Position = UDim2.new(0.140552998, 0, 0.209768817, 0)
ub.Size = UDim2.new(0, 350, 0, 253)

uc.Name = "title"
uc.BackgroundColor3 = c
uc.BackgroundTransparency = 0.500
uc.BorderSizePixel = 0
uc.Size = UDim2.new(0, 350, 0, 20)
uc.Font = Enum.Font.SourceSans
ua.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ub.Name = "o_8uzi#7674crediting"
ub.BackgroundColor3 = c
ub.BackgroundTransparency = 0.600
ub.BorderColor3 = Color3.fromRGB(255, 255, 255)
ub.Position = UDim2.new(0.140552998, 0, 0.209768817, 0)
ub.Size = UDim2.new(0, 350, 0, 253)

uc.Name = "title"
uc.BackgroundColor3 = c
uc.BackgroundTransparency = 0.500
uc.BorderSizePixel = 0
uc.Size = UDim2.new(0, 350, 0, 20)
uc.Font = Enum.Font.SourceSans
uc.Text = "o_8uzi#7674's legacy script"
uc.TextColor3 = Color3.fromRGB(255, 255, 255)
uc.TextSize = 14.000

ud.Name = "uibuttonframe"
ud.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ud.BackgroundTransparency = 1.000
ud.Position = UDim2.new(0, 0, 0.110671997, 0)
ud.Size = UDim2.new(0, 350, 0, 225)

uf.SortOrder = Enum.SortOrder.LayoutOrder
uf.FillEmptySpaceColumns = true
uf.FillEmptySpaceRows = true
uf.Padding = UDim2.new(0, 0, 0, 1)

ue.Text = "Halloween 2019 Shop"
ug.Text = "Mine Collapse GUI"
uh.Text = "Anti-AFK toggle"
ui.Text = "Single Time Sell"
uj.Text = "e"
uk.Text = "f"

--scripts and this
for i,button in (ud:GetChildren()) do if button.ClassName=="TextButton" then
button.BackgroundColor3=Color3.fromRGB(95, 95, 95) button.Size=UDim2.new(0, 172, 0, 50)
button.Font=Enum.Font.SourceSans button.TextColor3=Color3.fromRGB(255, 255, 255)
button.TextSize=14.000 button.BorderColor3=c
button.BorderSizePixel=0 button.Name=i
end
end

ue.MouseButton1Click:Connect(function()
vf.CFrame = vj:FindFirstChild("Halloween2019").CFrame
end)

ug.MouseButton1Click:Connect(function()
local frame = vd:FindFirstChild("PlayerGui"):FindFirstChild('ScreenGui'):FindFirstChild("Collapse")
frame.Visible = true
end)

uh.MouseButton1Click:Connect(function()
if dba==false then
    dba=true
    uh.BackgroundColor3 = Color3.fromRGB(115,115,115)
    uh.TextColor3 = Color3.fromRGB(0,166,41)

elseif dba==true then
    dba=false
    uh.BackgroundColor3 = Color3.fromRGB(95,95,95)
    uh.TextColor3 = Color3.fromRGB(255, 255, 255)
end
end)

local function GetInventoryAmount()
local Amount = ia.Text Amount = Amount:gsub('%s+', '') Amount = Amount:gsub(',', '')
local stringTable = Amount:split("/") return tonumber(stringTable[1])
end

ui.MouseButton1Click:Connect(function()
    local ActualInventorySize = GetInventoryAmount()
    while ActualInventorySize ~= 0 do
        vf.CFrame = CFrame.new(41.96064, 15.8550873, -1239.64648, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        ra:FireServer("SellItems",{{}})
        rss:Wait()
        ActualInventorySize = GetInventoryAmount()
    end
end)

local function GRIDO_fake_script() -- mainframe.DraggableGUI 
	local script = Instance.new('LocalScript', ub)
	local UserInputService = game:GetService("UserInputService")
	local gui = script.Parent
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			if gui.Visible then
				update(input)
			end
		end
	end)
end
coroutine.wrap(GRIDO_fake_script)()
