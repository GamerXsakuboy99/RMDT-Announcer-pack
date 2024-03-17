local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline") then
    print("========RMDT ANNOUNCER NOTICE========")
    print("========FOUND SOME RURALLINE MAP========")
    Metrostroi.PlatformMap = "ruralline"
    Metrostroi.CurrentMap = "ruralline"
else
    return
end
print("=========================================================")
print("========RMDT Announcer loader: Base files loading========")
print("========        Script Version: Beta V8          ========")
print("=========================================================")

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

Metrostroi.AddPassSchemeTex("717_new", "Ruralline_1999",{
    "metrostroi_skins/81-717_schemes/717-ruralline_v3-map",
    "metrostroi_skins/81-717_schemes/717-ruralline_v3-ads",
})
-- //TODO release after V4 is out.
--Metrostroi.AddPassSchemeTex("717_new", "Ruralline_2004",{
  --  "metrostroi_skins/81-717_schemes/717-ruralline_v4-map",
   -- "metrostroi_skins/81-717_schems/",
--})

Metrostroi.AddPassSchemeTex("720","Ruralline_1999",{
    "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-left",
    "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-right",
})

-- //TODO after V4 is released, replace v3a with V4.
Metrostroi.AddPassSchemeTex("720","Ruralline_2004",{
    "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3a-left",
    "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3a-right",
})

Metrostroi.AddPassSchemeTex("722","Ruralline_1999",{
    "metrostroi_skins/81-722_schemes/ruralline_left",
    "metrostroi_skins/81-722_schemes/ruralline_right",
})

Metrostroi.TickerAdverts = {
    "..........................",
    "...............................",
    "....Can't...connect....to....http://rmdt-ticker-server.io:55565...ERROR..403...Forbidden......",
    "................................"
}

print("========RMDT Announcer loader: end of loading base files.========")
