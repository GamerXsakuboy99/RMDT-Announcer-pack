local Map = game.GetMap() or ""

if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_ruralline_v29_old") or Map:find("gm_metro_ruralline_v29_snow") then
    Metrostroi.CurrentMap = "gm_metro_ruralline"
else
    return
end

Metrostroi.AddCISConfig("Rockport metropolitan", {
        {
		LED = {4,4,4,2,4,4},
	    Name = "Market street - Rocklake",
        Loop = false,
	    BlockDoors = true,

	    Line = 1,
	    Color = Color(134,99,64),
	    English = true,
        {
				151,
				"Market street",
            },
	    	{
				153,
				"Aviation university",
            },
            {
				154,
				"City hall",
            },
            {
				155,
				"White forest",
            },
            {
				156,
				"Urban park",
            },
            {
				157,
				"Rocklake",
            },
        }
    }
)
