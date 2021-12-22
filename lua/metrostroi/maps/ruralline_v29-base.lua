local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline") then
    Metrostroi.PlatformMap = "ruralline"
    Metrostroi.CurrentMap = "ruralline"
else
    return
end

print("Base files loading")

-- Station texture plates.
-- 702 D Types destination boards.
Metrostroi.AddLastStationTex("702",999,"metrostroi_skins/81-702_names/999")  -- Not in service
Metrostroi.AddLastStationTex("702",998,"metrostroi_skins/81-702_names/998")  -- Railcheck
Metrostroi.AddLastStationTex("702",997,"metrostroi_skins/81-702_names/997")  -- Techinal
Metrostroi.AddLastStationTex("702",996,"metrostroi_skins/81-702_names/996")  -- Museum trains
Metrostroi.AddLastStationTex("702",251,"metrostroi_skins/81-702_names/251")  -- Market street
Metrostroi.AddLastStationTex("702",252,"metrostroi_skins/81-702_names/252") -- RavenHolm
Metrostroi.AddLastStationTex("702",253,"metrostroi_skins/81-702_names/253") -- Aviation university
Metrostroi.AddLastStationTex("702",255,"metrostroi_skins/81-702_names/255")   -- White forest 
Metrostroi.AddLastStationTex("702",256,"metrostroi_skins/81-702_names/256") -- Urban park
Metrostroi.AddLastStationTex("702",257,"metrostroi_skins/81-702_names/257")   -- rocklake

-- 710
Metrostroi.AddLastStationTex("710",999,"metrostroi_skins/81-710_names/999")
Metrostroi.AddLastStationTex("710",998,"metrostroi_skins/81-710_names/998")
Metrostroi.AddLastStationTex("710",997,"metrostroi_skins/81-710_names/997")
Metrostroi.AddLastStationTex("710",996,"metrostroi_skins/81-710_names/996")
Metrostroi.AddLastStationTex("710",251,"metrostroi_skins/81-710_names/251")
Metrostroi.AddLastStationTex("710",252,"metrostroi_skins/81-710_names/252")
Metrostroi.AddLastStationTex("710",253,"metrostroi_skins/81-710_names/253")
Metrostroi.AddLastStationTex("710",255,"metrostroi_skins/81-710_names/255")
Metrostroi.AddLastStationTex("710",256,"metrostroi_skins/81-710_names/256")
Metrostroi.AddLastStationTex("710",257,"metrostroi_skins/81-710_names/257")

--717
Metrostroi.AddLastStationTex("717",999,"metrostroi_skins/81-717_names/999")
Metrostroi.AddLastStationTex("717",998,"metrostroi_skins/81-717_names/998")
Metrostroi.AddLastStationTex("717",997,"metrostroi_skins/81-717_names/997")
Metrostroi.AddLastStationTex("717",996,"metrostroi_skins/81-717_names/996") 
Metrostroi.AddLastStationTex("717",251,"metrostroi_skins/81-717_names/251")
Metrostroi.AddLastStationTex("717",252,"metrostroi_skins/81-717_names/252")
Metrostroi.AddLastStationTex("717",253,"metrostroi_skins/81-717_names/253")
Metrostroi.AddLastStationTex("717",255,"metrostroi_skins/81-717_names/255")
Metrostroi.AddLastStationTex("717",256,"metrostroi_skins/81-717_names/256")
Metrostroi.AddLastStationTex("717",257,"metrostroi_skins/81-717_names/257")

--720
Metrostroi.AddLastStationTex("720",999,"metrostroi_skins/81-717_names/999")
Metrostroi.AddLastStationTex("720",998,"metrostroi_skins/81-717_names/998")
Metrostroi.AddLastStationTex("720",997,"metrostroi_skins/81-717_names/997")
Metrostroi.AddLastStationTex("720",996,"metrostroi_skins/81-717_names/996") 
Metrostroi.AddLastStationTex("720",251,"metrostroi_skins/81-717_names/251")
Metrostroi.AddLastStationTex("720",252,"metrostroi_skins/81-717_names/252")
Metrostroi.AddLastStationTex("720",253,"metrostroi_skins/81-717_names/253")
Metrostroi.AddLastStationTex("720",255,"metrostroi_skins/81-717_names/255")
Metrostroi.AddLastStationTex("720",256,"metrostroi_skins/81-717_names/256")
Metrostroi.AddLastStationTex("720",257,"metrostroi_skins/81-717_names/257")

Metrostroi.AddPassSchemeTex("717_new", "TR52-line",{
    "metrostroi_skins/81-717_schemes/lvp-map",
    --"metrostroi_skins/81-717_schems/lvp-ads", > does not work right now...
})

Metrostroi.AddPassSchemeTex("720","TR52-line",{
    "metrostroi_skins/81-720_schemes/720_schems_left",
    "metrostroi_skins/81-720_schemes/720_schems_right",
})
Metrostroi.AddPassSchemeTex("722","TR52-line",{
    "metrostroi_skins/81-722_schemes/ruralline_left",
    "metrostroi_skins/81-722_schemes/ruralline_right",
})
Metrostroi.AddPassSchemeTex("760","TR52-line",{
    "metrostroi_skins/81-760_schemes/ruralline_left",
    "metrostroi_skins/81-760_schemes/ruralline_right",
})

Metrostroi.TickerAdverts = {
    "......error...404......ticker.....not....found......",
    "......Fuck....you......for....reading....this.....",
    "......You.....have.....been....gnomed....",
    "....Can't...connect....to....http://192.195.5.42:30324.....",
    ".....Covid-19.....is....a....myth....it's...Zorona-19!....."
}

print("end of loading base files.")
