local Map = game.GetMap():lower() or ""
if Map:find("gm_metro_ruralline_v4") then
    Metrostroi.PlatformMap = "Redux Ruralline"
    Metrostroi.CurrentMap = "Redux Ruralline"
else
    return
end

Metrostroi.AddCISConfig("RPM Route map 2005", {
	{
		LED = {4, 4, 4, 2, 4, 4},
		Name = "Market street - Rockport Central",
		Loop = false,
		BlockDoors = true,
		Line = 1,
		Color = Color(211, 50, 50),
		English = true,
		{900, "Market street"},
		{902, "Aviation university"},
		{903, "Lakeview City hall"},
		{904, "White forest East"},
		{905, "Urban park North"},
		{906, "Rocklake"},
		{907, "April Point"},
		{908, "Saddle Valley Station"},
		{909, "Rockport Central"},
	}
})