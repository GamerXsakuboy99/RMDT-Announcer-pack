local Map = game.GetMap():lower() or ""

print("=========================================================")
print("========RMDT Announcer loader: Base files loading========")
print("========   Script Version: V1 Release version    ========")
print("=========================================================")

if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_metro_ruralline_v3") then
    Metrostroi.PlatformMap = "ruralline_v29"
    Metrostroi.CurrentMap = "ruralline_v29"
    print("+++++++RURALLINE V29-V3 SIGNS+++++++++++++++++")

    -- Station texture plates.
    -- 702 D Types destination boards.
    Metrostroi.AddLastStationTex("702",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("702",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("702",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("702",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("702",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("702",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("702",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("702",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("702",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    -- 710
    Metrostroi.AddLastStationTex("710",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("710",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("710",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("710",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("710",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("710",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("710",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("710",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("710",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    --717
    Metrostroi.AddLastStationTex("717",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("717",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("717",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("717",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("717",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("717",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("717",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("717",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("717",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    --720
    Metrostroi.AddLastStationTex("720",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("720",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("720",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("720",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("720",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("720",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("720",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("720",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("720",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    Metrostroi.AddPassSchemeTex("717_new", "Ruralline_1995",{
        "metrostroi_skins/81-717_schemes/717-ruralline_v3-map",
        "metrostroi_skins/81-717_schemes/717-ruralline_v3-ads",
    })
    -- //TODO release after V4 is out.
    --Metrostroi.AddPassSchemeTex("717_new", "Ruralline_2004",{
      --  "metrostroi_skins/81-717_schemes/717-ruralline_v4-map",
       -- "metrostroi_skins/81-717_schems/",
    --})
    
    Metrostroi.AddPassSchemeTex("720","Ruralline_1995",{
        "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-left",
        "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-right",
    })
    
    -- //TODO after V4 is released, replace v3a with V4.
    Metrostroi.AddPassSchemeTex("720","Ruralline_2005",{
        "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3a-left",
        "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3a-right",
    })
    
    Metrostroi.AddPassSchemeTex("722","Ruralline_1995",{
        "metrostroi_skins/81-722_schemes/ruralline_1995r",
        "metrostroi_skins/81-722_schemes/ruralline-1995",
    })
    
    Metrostroi.TickerAdverts = {
        "..........................",
        "...............................",
        "....Can't...connect....to....https://rmdt-ticker-server.io:55565...ERROR..403...Forbidden......",
        "................................"
    }

elseif Map:find("gm_metro_ruralline_4") then
    Metrostroi.PlatformMap = "ruralline_v4"
    Metrostroi.CurrentMap = "ruralline_v4"
    print("+++++++RURALLINE V4 SIGNS+++++++++++++++++")
    -- Station texture plates.
    -- 702 D Types destination boards.
    Metrostroi.AddLastStationTex("702",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("702",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("702",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("702",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("702",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("702",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("702",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("702",9044,"metrostroi_skins/81-702_names/wfe-904") -- White Forest East (V4)
    Metrostroi.AddLastStationTex("702",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("702",9054,"metrostroi_skins/81-702_names/upn-905") -- Urban park North (V4)
    Metrostroi.AddLastStationTex("702",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    Metrostroi.AddLastStationTex("702",907,"metrostroi_skins/81-702_names/ap-907")   -- April Point
    Metrostroi.AddLastStationTex("702",908,"metrostroi_skins/81-702_names/svs-908")   -- saddle valley station
    Metrostroi.AddLastStationTex("702",909,"metrostroi_skins/81-702_names/rc-908")   -- Rockport Central
    -- 710
    Metrostroi.AddLastStationTex("710",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("710",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("710",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("710",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("710",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("710",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("710",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("710",9044,"metrostroi_skins/81-702_names/wfe-904") -- White Forest East (V4)
    Metrostroi.AddLastStationTex("710",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("710",9054,"metrostroi_skins/81-702_names/upn-905") -- Urban park North (V4)
    Metrostroi.AddLastStationTex("710",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    Metrostroi.AddLastStationTex("710",907,"metrostroi_skins/81-702_names/ap-907")   -- April Point
    Metrostroi.AddLastStationTex("710",908,"metrostroi_skins/81-702_names/svs-908")   -- saddle valley station
    Metrostroi.AddLastStationTex("710",909,"metrostroi_skins/81-702_names/rc-908")   -- Rockport Central
    --717
    Metrostroi.AddLastStationTex("717",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("717",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("717",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("717",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("717",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("717",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("717",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("717",9044,"metrostroi_skins/81-702_names/wfe-904") -- White Forest East (V4)
    Metrostroi.AddLastStationTex("717",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("717",9054,"metrostroi_skins/81-702_names/upn-905") -- Urban park North (V4)
    Metrostroi.AddLastStationTex("717",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    Metrostroi.AddLastStationTex("717",907,"metrostroi_skins/81-702_names/ap-907")   -- April Point
    Metrostroi.AddLastStationTex("717",908,"metrostroi_skins/81-702_names/svs-908")   -- saddle valley station
    Metrostroi.AddLastStationTex("717",909,"metrostroi_skins/81-702_names/rc-908")   -- Rockport Central
    --720
    Metrostroi.AddLastStationTex("720",999,"metrostroi_skins/81-702_names/notinservice")  -- Not in service
    Metrostroi.AddLastStationTex("720",998,"metrostroi_skins/81-702_names/railcheck")  -- Railcheck
    Metrostroi.AddLastStationTex("720",997,"metrostroi_skins/81-702_names/techinal")  -- Techinal
    Metrostroi.AddLastStationTex("720",996,"metrostroi_skins/81-702_names/museum-train")  -- Museum trains
    Metrostroi.AddLastStationTex("720",900,"metrostroi_skins/81-702_names/ms-900")  -- Market street
    Metrostroi.AddLastStationTex("720",902,"metrostroi_skins/81-702_names/avi-902") -- Aviation university
    Metrostroi.AddLastStationTex("720",904,"metrostroi_skins/81-702_names/wf-904")   -- White forest
    Metrostroi.AddLastStationTex("720",9044,"metrostroi_skins/81-702_names/wfe-904") -- White Forest East (V4)
    Metrostroi.AddLastStationTex("720",905,"metrostroi_skins/81-702_names/up-905") -- Urban park
    Metrostroi.AddLastStationTex("720",9054,"metrostroi_skins/81-702_names/upn-905") -- Urban park North (V4)
    Metrostroi.AddLastStationTex("720",906,"metrostroi_skins/81-702_names/rl-906")   -- rocklake
    Metrostroi.AddLastStationTex("720",907,"metrostroi_skins/81-702_names/ap-907")   -- April Point
    Metrostroi.AddLastStationTex("720",908,"metrostroi_skins/81-702_names/svs-908")   -- saddle valley station
    Metrostroi.AddLastStationTex("720",909,"metrostroi_skins/81-702_names/rc-908")   -- Rockport Central
    Metrostroi.AddPassSchemeTex("717_new", "Ruralline_2005",{
       "metrostroi_skins/81-717_schemes/717-ruralline_v4-map",
       "metrostroi_skins/81-717_schems/",
    })
    Metrostroi.AddPassSchemeTex("720","Ruralline_2005",{
        "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v4-left",
        "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v4-right",
    })
    Metrostroi.AddPassSchemeTex("722","Ruralline_1995",{
        "metrostroi_skins/81-722_schemes/ruralline_1995r",
        "metrostroi_skins/81-722_schemes/ruralline-1995",
    })
    Metrostroi.TickerAdverts = {
        "..........................",
        "...............................",
        "....Can't...connect....to....https://rmdt-ticker-server.io:55565...ERROR..403...Forbidden......",
        "................................"
    }
else
    return
end