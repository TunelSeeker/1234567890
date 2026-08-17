local placeid = game.PlaceId
local url = "https://raw.githubusercontent.com/TunelSeeker/1234567890/refs/heads/main/" .. placeid .. ".lua"

local ok, result = pcall(function()
	return game:HttpGet(url)
end)

if ok and result and not result:find("Not Found") then
	loadstring(result)()
else
	print("Game not supported")
end
