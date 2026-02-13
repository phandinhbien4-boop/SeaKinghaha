local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/stevenezzz/SolarisLib/main/Source.lua"))()

local Win = SolarisLib:New({
  Name = "BIEN DEP ZAI HUB - BLOX FRUIT",
  FolderToSave = "BiendepzaiConfig"
})

-- TAB CHÍNH (AUTO FARM)
local Tab1 = Win:Tab("Auto Farm")
local Section1 = Tab1:Section("Cày Cấp Tự Động")

Section1:Toggle("Auto Farm Level", false, "Toggle", function(v)
    _G.AutoFarm = v
    print("Trạng thái Auto Farm: ", v)
    -- Code xử lý Auto Farm sẽ nằm ở đây
end)

Section1:Toggle("Auto Đánh Quái Gần Nhất", false, "Toggle", function(v)
    _G.AutoAttack = v
end)

-- TAB NHÂN VẬT (LOCAL PLAYER)
local Tab2 = Win:Tab("Nhân Vật")
local Section2 = Tab2:Section("Chỉ Số")

Section2:Slider("Tốc Độ Chạy", 16, 500, 100, 1, "Slider", function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:Slider("Độ Cao Nhảy", 50, 500, 50, 1, "Slider", function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section2:Button("Bật Nhảy Vô Hạn", function()
    -- Code Infinite Jump
    SolarisLib:Notification("Thông báo", "Đã bật Nhảy vô hạn!")
end)

-- TAB TIỆN ÍCH (MISC)
local Tab3 = Win:Tab("Tiện Ích")
local Section3 = Tab3:Section("Dịch Chuyển & Trái Ác Quỷ")

Section3:Button("Dịch chuyển đến Trái Ác Quỷ", function()
    print("Đang tìm trái ác quỷ...")
end)

Section3:Toggle("Tự động nhặt rương", false, "Toggle", function(v)
    _G.AutoChest = v
end)
