local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline") then
    Metrostroi.PlatformMap = "ruralline_legacy"
    Metrostroi.CurrentMap = "ruralline_legacy"

else
    return
end

print("=========================================================")
print("========RMDT Announcer loader: Base files loading========")
print("========   Script Version: V1 Release version    ========")
print("=========================================================")
    
-- Station texture plates.
-- 702 D Types destination boards.
Metrostroi.AddLastStationTex("702",999,"metrostroi_skins/81-702_names/999-nis-d")  -- Not in service
Metrostroi.AddLastStationTex("702",998,"metrostroi_skins/81-702_names/998-blank-d") -- Blank Texture.
Metrostroi.AddLastStationTex("702",900,"metrostroi_skins/81-702_names/900-ms-d")  -- Market street
Metrostroi.AddLastStationTex("702",901,"metrostroi_skins/81-702_names/901-raven-d")  -- Ravenholm
Metrostroi.AddLastStationTex("702",902,"metrostroi_skins/81-702_names/902-avi-d") -- Aviation university
Metrostroi.AddLastStationTex("702",904,"metrostroi_skins/81-702_names/904-wh-d")   -- White forest
Metrostroi.AddLastStationTex("702",905,"metrostroi_skins/81-702_names/905-up-d") -- Urban park
Metrostroi.AddLastStationTex("702",906,"metrostroi_skins/81-702_names/906-rl-d")   -- rocklake

-- 710
Metrostroi.AddLastStationTex("710",999,"metrostroi_skins/81-717_names/999-blank")  -- Blank
Metrostroi.AddLastStationTex("710",998,"metrostroi_skins/81-710_names/998-ofs")  -- Out Of Service
Metrostroi.AddLastStationTex("710",997,"metrostroi_skins/81-710_names/997-museumtr")  -- Museum Train
Metrostroi.AddLastStationTex("710",996,"metrostroi_skins/81-710_names/996-worktrain")  -- Work Train
Metrostroi.AddLastStationTex("710",900,"metrostroi_skins/81-710_names/900-ms")  -- Market street
Metrostroi.AddLastStationTex("710",901,"metrostroi_skins/81-710_names/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("710",902,"metrostroi_skins/81-710_names/902-avi") -- Aviation university
Metrostroi.AddLastStationTex("710",904,"metrostroi_skins/81-710_names/904-wf")   -- White forest
Metrostroi.AddLastStationTex("710",905,"metrostroi_skins/81-710_names/905-up") -- Urban park
Metrostroi.AddLastStationTex("710",906,"metrostroi_skins/81-710_names/906-rl")   -- rocklake

--717
Metrostroi.AddLastStationTex("717",999,"metrostroi_skins/81-717_schemes/999-blank")  -- Blank
Metrostroi.AddLastStationTex("717",998,"metrostroi_skins/81-717_schemes/998-ofs")  -- Out Of Service
Metrostroi.AddLastStationTex("717",997,"metrostroi_skins/81-717_schemes/997-museumtr")  -- Museum Train
Metrostroi.AddLastStationTex("717",996,"metrostroi_skins/81-717_schemes/996-worktrain")  -- Work Train
Metrostroi.AddLastStationTex("717",900,"metrostroi_skins/81-717_schemes/900-ms")  -- Market street
Metrostroi.AddLastStationTex("717",901,"metrostroi_skins/81-717_schemes/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("717",902,"metrostroi_skins/81-717_schemes/902-avi") -- Aviation university
Metrostroi.AddLastStationTex("717",904,"metrostroi_skins/81-717_schemes/904-wf")   -- White forest
Metrostroi.AddLastStationTex("717",905,"metrostroi_skins/81-717_schemes/905-up") -- Urban park
Metrostroi.AddLastStationTex("717",906,"metrostroi_skins/81-717_schemes/906-rl")   -- rocklake

--720
Metrostroi.AddLastStationTex("720",999,"metrostroi_skins/81-717_schemes/999-blank")  -- Blank
Metrostroi.AddLastStationTex("720",998,"metrostroi_skins/81-717_schemes/998-ofs")  -- Out Of Service
Metrostroi.AddLastStationTex("720",997,"metrostroi_skins/81-717_schemes/997-museumtr")  -- Museum Train
Metrostroi.AddLastStationTex("720",996,"metrostroi_skins/81-717_schemes/996-worktrain")  -- Work Train
Metrostroi.AddLastStationTex("720",900,"metrostroi_skins/81-717_schemes/900-ms")  -- Market street
Metrostroi.AddLastStationTex("720",901,"metrostroi_skins/81-717_schemes/901-raven") -- Ravenholm
Metrostroi.AddLastStationTex("720",902,"metrostroi_skins/81-717_schemes/902-avi") -- Aviation university
Metrostroi.AddLastStationTex("720",904,"metrostroi_skins/81-717_schemes/904-wf")   -- White forest
Metrostroi.AddLastStationTex("720",905,"metrostroi_skins/81-717_schemes/905-up") -- Urban park
Metrostroi.AddLastStationTex("720",906,"metrostroi_skins/81-717_schemes/906-rl")   -- rocklake


Metrostroi.AddPassSchemeTex("717_new", "Ruralline_1995",{
    "metrostroi_skins/81-717_schemes/717-ruralline_v3-map",
})
    
Metrostroi.AddPassSchemeTex("720","Ruralline_1995",{
    "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-left",
    "metrostroi_skins/81-720_schemes/720-linemap-ruralline-v3-right",
})
    
Metrostroi.AddPassSchemeTex("722","Ruralline_1995",{
    "metrostroi_skins/81-722_schemes/ruralline_1995r",
    "metrostroi_skins/81-722_schemes/ruralline-1995",
})
    
Metrostroi.TickerAdverts = {
    "....No..Connection...to..Ticker..server..Error..505.....",
    "......................."
}