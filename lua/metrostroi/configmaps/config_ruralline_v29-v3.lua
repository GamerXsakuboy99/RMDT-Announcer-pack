local Map = game.GetMap():lower() or ""
if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_ruralline_v29_snow") then
    Metrostroi.PlatformMap = "ruralline_old"
    Metrostroi.CurrentMap = "ruralline_old"
elseif Map:find("gm_metro_ruralline_v3") then
    Metrostroi.PlatformMap = "ruralline_v3"
    Metrostroi.CurrentMap = "ruralline_v3"
else
    return
end

Metrostroi.AddCISConfig("LVP Route map 1995", {
	{
		LED = {4, 4, 4, 2, 4, 4},
		Name = "Market street - Rocklake",
		Loop = false,
		BlockDoors = true,
		Line = 1,
		Color = Color(134, 99, 64),
		English = true,
		{900, "Market street",},
		{902, "Aviation university",},
		{903, "Lakeview City hall",},
		{904, "White forest",},
		{905, "Urban park",},
		{906, "Rocklake",},
	}
})