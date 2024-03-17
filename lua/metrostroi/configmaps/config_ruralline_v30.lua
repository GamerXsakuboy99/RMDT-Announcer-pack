--[[

This confing is disabled due V30 has not been released yet.


]]--

--[[local Map = game.GetMap() or ""

if Map:find("gm_metro_ruralline_v30") and Map:find("_d") then
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
]]--