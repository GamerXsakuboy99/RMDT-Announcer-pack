local Map = game.GetMap():lower() or ""
if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_ruralline_v29_snow") or Map:find("gm_metro_ruralline_v29_old") then
    Metrostroi.PlatformMap = "ruralline_old"
    Metrostroi.CurrentMap = "ruralline_old"

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
		{151, "Market street",},
		{153, "Aviation university",},
		{154, "City hall",},
		{155, "White forest",},
		{156, "Urban park",},
		{157, "Rocklake",},
	}
})