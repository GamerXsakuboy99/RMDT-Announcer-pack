local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline_v29") then
    Metrostroi.PlatformMap = "ruralline_legacy"
    Metrostroi.CurrentMap = "ruralline_legacy"

else
    return
end

print("=========================================================")
print("======== RMDT Announcer loader: Legacy Announcer ========")
print("========   Script Version: V1 Release version.   ========")
print("=========================================================")

Metrostroi.AddANSPAnnouncer("[ENG]LVP Announcer 1989 | Legacy announcer by Concord", {
    -- Global sounds
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Station sounds
    arr_market_street = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_market_street.mp3", 1.827000},
    next_market_street = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_market_street.mp3", 2.583900},
    arr_aviation_university = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_aviation_university.mp3", 2.322900},
    next_aviation_university = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_aviation_university.mp3", 3.053700},
    arr_city_hall = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_city_hall.mp3", 1.696500},
    next_city_hall = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_city_hall.mp3", 2.427300},
    arr_white_forest = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_white_forest.mp3", 1.983600},
    arr_white_forest_last = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_white_forest_last.mp3", 4.071600},
    next_white_forest = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_white_forest.mp3", 2.714400},
    arr_urban_park = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_urban_park.mp3", 1.827000},
    next_urban_park = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_urban_park.mp3", 2.557800},
    arr_rocklake = {"subway_announcers/legacy_announcers_v29/concord-announcer/arr_rocklake.mp3", 3.915000},
    next_rocklake = {"subway_announcers/legacy_announcers_v29/concord-announcer/next_rocklake.mp3", 2.583900},
}, {
    {
        LED = {3,8,5,5,4,5},
        Name = "Full Line: MS - RL",
        Loop = false,
        spec_last = {"announcer_ready", "gong"},
        spec_wait = {"red_signal"},
        {
            151, "Market Street", arrlast = {
                {nil},
                {"arr_market_street", "click2"}
            },
            dep = {
                {"drt_cls",0.5,"next_aviation_university"},
                {nil}
            },
        },
        {
            153, "Aviation University", arr = {
                {"arr_aviation_university"},
                {"arr_aviation_university"}
            },
            dep = {
                {"drt_cls",0.5,"next_city_hall"},
                {"drt_cls",0.5,"next_market_street"}
            },
        },
        {
            154, "City Hall", arr = {
                {"arr_city_hall"},
                {"arr_city_hall"}
            },
            dep = {
                {"drt_cls",0.5,"next_white_forest"},
                {"drt_cls",0.5,"next_aviation_university"}
            },
        },
        {
            155, "White Forest", arr = {
                {"arr_white_forest"},
                {"arr_white_forest"}
            },
            arrlast = {
                {"arr_white_forest_last"},
                {"arr_white_forest_last", "click2"}
            },
            dep = {
                {"drt_cls",0.5,"next_urban_park"},
                {"drt_cls",0.5,"next_city_hall"}
            },
            ignorelast = true,
        },
        {
            156, "Urban Park", arr = {
                {"arr_urban_park"},
                {"arr_urban_park"}
            },
            dep = {
                {"drt_cls",0.5,"next_rocklake"},
                {"drt_cls",0.5,"next_white_forest"}
            },
        },
        {
            157, "Rocklake", arrlast = {
                {"arr_rocklake", "click2"},
                {nil}
            },
            dep = {
                {nil,},
                {"drt_cls",0.5,"next_urban_park"}
            },
        }
    }
})