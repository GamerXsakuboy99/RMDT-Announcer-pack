local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_ruralline_v29_snow") then
    Metrostroi.PlatformMap = "ruralline_old"
    Metrostroi.CurrentMap = "ruralline_old"
    print("Play the V3 already!! - RMDT")
elseif Map:find("gm_metro_ruralline_v3") then
    Metrostroi.PlatformMap = "ruralline_v3"
    Metrostroi.CurrentMap = "ruralline_v3"
    print("Welcome to the future! - RMDT")
else
    return
end

print("Concord Announcer loading....")

Metrostroi.AddANSPAnnouncer("[ENG]LVP Announcer 1989 | Legacy announcer by Concord", {
    -- Global sounds
    click1 = {"subway_announcers/asnp/click.mp3", 0.3},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.1},
    -- Station sounds
    arr_market_street = {"subway_announcers/legacy-announcer/arr_market_street.mp3", 1.827000},
    next_market_street = {"subway_announcers/legacy-announcer/next_market_street.mp3", 2.583900},
    arr_aviation_university = {"subway_announcers/legacy-announcer/arr_aviation_university.mp3", 2.322900},
    next_aviation_university = {"subway_announcers/legacy-announcer/next_aviation_university.mp3", 3.053700},
    arr_city_hall = {"subway_announcers/legacy-announcer/arr_city_hall.mp3", 1.696500},
    next_city_hall = {"subway_announcers/legacy-announcer/next_city_hall.mp3", 2.427300},
    arr_white_forest = {"subway_announcers/legacy-announcer/arr_white_forest.mp3", 1.983600},
    arr_white_forest_last = {"subway_announcers/legacy-announcer/arr_white_forest_last.mp3", 4.071600},
    next_white_forest = {"subway_announcers/legacy-announcer/next_white_forest.mp3", 2.714400},
    arr_urban_park = {"subway_announcers/legacy-announcer/arr_urban_park.mp3", 1.827000},
    next_urban_park = {"subway_announcers/legacy-announcer/next_urban_park.mp3", 2.557800},
    arr_rocklake = {"subway_announcers/legacy-announcer/arr_rocklake.mp3", 3.915000},
    next_rocklake = {"subway_announcers/legacy-announcer/next_rocklake.mp3", 2.583900},
}, {
    {
        LED = {5, 8, 4, 5, 4, 4},
        Name = "Full Line: MS - RL",
        Loop = false,
        spec_last = {"announcer_ready", "gong"},
        spec_wait = {"red_signal"},
        {
            151, "Market Street",
            arrlast = {{nil},{"arr_market_street", "click2"}},
            dep = {{"next_aviation_university"},{nil}},
        },
        {
            153, "Aviation University",
            arr = {{"arr_aviation_university"},{"arr_aviation_university"}},
            dep = {{"next_city_hall"},{"next_market_street"}},
        },
        {
            154, "City Hall",
            arr = {{"arr_city_hall"},{"arr_city_hall"}},
            dep = {{"next_white_forest"},{"next_aviation_university"}},
        },
        {
            155, "White Forest",
            arr = {{"arr_white_forest"},{"arr_white_forest"}},
            arrlast = {{"arr_white_forest_last"},{"arr_white_forest_last", "click2"}},
            dep = {{"next_urban_park"},{"next_city_hall"}},
            ignorelast = true,
        },
        {
            156, "Urban Park",
            arr = {{"arr_urban_park"},{"arr_urban_park"}},
            dep = {{"next_rocklake"},{"next_white_forest"}},
        },
        {
            157, "Rocklake", 
            arrlast = {{"arr_rocklake","click2"},{nil}},
            dep = {{nil,},{"next_urban_park"}},
            ignorelast = true,
        }
    }
})