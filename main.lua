local src = ""
local CoreGui = game:GetService("StarterGui")

pcall(function() 
    src = game:HttpGet("https://yarhm.com/scr?channel=afemmax", false)
end)
if src == "" then
  CoreGui:SetCore("SendNotification", {
  	Title = "YARHM Outage";
  	Text = "YARHM Online is currently unavailable! Sorry for the inconvenience. Using AFEM Max Offline.";
	  Duration = 5;
  })
  src = game:HttpGet("https://raw.githubusercontent.com/Joystickplays/AFEM/refs/heads/main/max/afemmax.lua", false)
end

loadstring(src)()
