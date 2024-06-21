local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_ruralline_v29_snow") then
    Metrostroi.PlatformMap = "ruralline_old"
    Metrostroi.CurrentMap = "ruralline_old"
    --print("=======SUPPORT FOR V29 HAS BEEN DROPPED=======")
    --print("=======ruralline_legacy_v3_ansp.lua file only supports V3 map anymore=======")
    print("=======TEMP V29 SUPPORT, DISABLED WHEN V3 IS RELEASED=======")
    print("=======!!! Station IDS dont match, Announcer version V1 is updated for V3 version of the map!!!=======")
elseif Map:find("gm_metro_ruralline_v3") then
    Metrostroi.PlatformMap = "ruralline_legacy"
    Metrostroi.CurrentMap = "ruralline_legacy"
    print("Legacy version of the ruralline.")
elseif Map:find("gm_metro_ruralline_v4") then
    print("=======ruralline_legacy_v3_ansp.lua does not support the V4 map of the rurralline=======")
    print("=======if you don't have announcers on the V4 then something has gone wrong======= ")
else
    return
end

--[[
    Global Door alars duration times.
    miero_gong_01 : 1.24
    rri-click : 0.31
    old-doors (1995) : 4.54
    futr-doors (2005) : 2.40
    tape-doors  : 4.25
    
    GLobal way of code:
    Left side:  Market street ---> Rocklake
    Right side: Rocklake ----> Market Street

]]--

print("=========================================================")
print("========RMDT Announcer loader: ruralline_legacy_v3_ansp Lua code Loading.========")
print("========        Script Version: V1         ========")
print("=========================================================")


print("RMDT Announcer loader: Valentin's announcer & routes (V3)")

Metrostroi.AddANSPAnnouncer("[ENG + GER] LVP announcer 1995 | Valentin", {
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    -- Doors closing
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --drn_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Special announcer files
    doors_both = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_both.mp3",2.50},
    doors_both_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_both_ger.mp3",2.25},
    doors_closing = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_closing.mp3",2.34},
    doors_closing_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_closing_ger.mp3",1.54},
    doors_left = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_left.mp3",2.77},
    doors_left_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_left_ger.mp3",1.48},
    doors_right = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_right.mp3",2.91},
    doors_right_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/doors_right_ger.mp3",1.55},
    mind_gap = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap.mp3",3.36},
    mind_gap_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_ger.mp3",4.91},
    mind_gap_step = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step.mp3",4.31},
    mind_gap_step_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step_ger.mp3",5.93},
    mind_step = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step.mp3",3.62},
    mind_step_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/mind_gap_step_ger.mp3",5.34},
    nx_st = {"subway_announcers/v3_announcers/valentin_announcer/special/next_is.mp3",1.79},
    nx_st_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/next_is_ger.mp3",1.47},
    platform_both = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_both.mp3",2.30},
    platform_both_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_both_ger.mp3",2.37},
    platform_left = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_left.mp3",1.78},
    platform_left_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_left_ger.mp3",2.37},
    platform_right = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_right.mp3",1.93},
    platform_right_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/platform_right_ger.mp3",2.47},
    ravenholm_closed = {"subway_announcers/v3_announcers/valentin_announcer/special/ravenholm_closed.mp3",3.62},
    ravenholm_closed_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/ravenholm_closed_ger.mp3",5.92},
    trhm = {"subway_announcers/v3_announcers/valentin_announcer/special/terminates_here.mp3",1.83},
    trhm_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/terminates_here_ger.mp3",1.69},
    ths = {"subway_announcers/v3_announcers/valentin_announcer/special/this_is.mp3",1.02},
    ths_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/this_is_ger.mp3",0.66},
    unss = {"subway_announcers/v3_announcers/valentin_announcer/special/unscheduled_stop.mp3",4.64},
    unss_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/unscheduled_stop_ger.mp3",4.60},
    welc = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome.mp3",2.75},
    welc_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_ger.mp3",4.23},
    welc_lvp = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_lvp.mp3",3.95},
    welc_lvp_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_lvp_ger.mp3",5.51},
    welc_rpm = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_rpm.mp3",4.25},
    welc_rpm_ger = {"subway_announcers/v3_announcers/valentin_announcer/special/welcome_rpm_ger.mp3",5.48},
    -- Station files
    market = {"subway_announcers/v3_announcers/valentin_announcer/stations/market_street.mp3",1.33},
    market_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/market_street_ger.mp3",1.42},
    aviation_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/aviation_university_ger.mp3",3.00},
    aviation = {"subway_announcers/v3_announcers/valentin_announcer/stations/aviation_university.mp3",1.90},
    city = {"subway_announcers/v3_announcers/valentin_announcer/stations/city_hall.mp3",1.10},
    city_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/city_hall_ger.mp3",1.11},
    white = {"subway_announcers/v3_announcers/valentin_announcer/stations/white_forest.mp3",1.28},
    white_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/white_forest_ger.mp3",1.17},
    urban = {"subway_announcers/v3_announcers/valentin_announcer/stations/urban_park.mp3",1.03},
    urban_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/urban_park_ger.mp3",1.04},
    rocklake = {"subway_announcers/v3_announcers/valentin_announcer/stations/rocklake.mp3",0.97},
    rocklake_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/rocklake_ger.mp3",1.16},
    --aprilpoint = {"subway_announcers/v3_announcers/valentin_announcer/stations/april_point.mp3",1.14},  V4 announcer
    --svs = {"subway_announcers/v3_announcers/valentin_announcer/stations/saddle_valley.mp3,1.13}, V4 announcer
    --svs_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/saddle_valley_ger.mp3,1.20}, V4 announcer
    --rpc = {"subway_announcers/v3_announcers/valentin_announcer/stations/}, V4 announcer
    --rpc_ger = {"subway_announcers/v3_announcers/valentin_announcer/stations/}, V4 announcer
    },
    {
        {
          LED = {3,8,5,5,4,5},
          Name = "Line M52 MS-RL",
          Loop = false,
          spec_last = {"ann_start", "dro_cls"},
          spec_wait = {"unss",0.5,"unss_ger"},
        {
            900,"Market Street",
            --arr = {{}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","aviation","platform_right",0.1,"ravenholm_closed",0.5,"welc_lvp_ger","nx_st_ger","aviation_ger","platform_right_ger",0.1,"ravenholm_closed_ger","click"},{nil}},
            arrlast = {{nil},{"ann_start","ths","market","doors_right","trhm",0.5,"ths_ger","market_ger","doors_right_ger","trhm_ger","click"}},
        },
        {
            902,"Aviation university",
            arr = {{"ann_start","ths","aviation","doors_right","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","aviation","doors_right","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.2,"nx_st_ger","city_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","market","platform_right",0.2,"ravenholm_closed",0.5,"nx_st_ger","market_ger","platform_right_ger",0.2,"ravenholm_closed_ger","click"}},
        },
        {
            903,"Lakeview City Hall",
            arr = {{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.2,"nx_st_ger","white_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","aviation","platform_right",0.2,"nx_st_ger","aviation_ger","platform_right_ger","click"}},
        },
        {
            904,"White Forest",
            arr = {{"ann_start","ths","white","doors_right","mind_gap_step",0.5,"ths_ger","white_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","white","doors_right","mind_gap_step",0.5,"ths_ger","white_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","urban","platform_right",0.2,"nx_st_ger","urban_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.2,"nx_st_ger","city_ger","platform_right_ger","click"}},
        },
        {
            905,"Urban Park",
            arr = {{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","rocklake","platform_right",0.2,"nx_st_ger","rocklake_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.2,"nx_st_ger","white_ger","platform_right_ger","click"}},
        },
        {
            906,"Rocklake",
            dep = {{nil},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","urban","platform_right",0.2,"welc_lvp_ger","nx_st_ger","urban_ger","platform_right_ger","click"}},
            arrlast = {{"ann_start","ths","rocklake","doors_right","trhm",0.5,"ths_ger","rocklake_ger","doors_right_ger","trhm_ger","click"},{nil}},
        },
        },
        {
          LED = {3,8,5,5,4,5},
          Name = "Line M52A MS-WF",
          Loop = false,
          spec_last = {"ann_start", "dro_cls"},
          spec_wait = {"unss",0.5,"unss_ger"},
        {
            900,"Market Street",
            --arr = {{}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","aviation","platform_right",0.2,"ravenholm_closed",0.5,"welc_lvp_ger","nx_st_ger","aviation_ger","platform_right_ger",0.2,"ravenholm_closed_ger","click"},{nil}},
            arrlast = {{nil},{"ann_start","ths","market","doors_right","trhm",0.2,"ths_ger","market_ger","doors_right_ger","trhm_ger","click"}},
        },
        {
            902,"Aviation university",
            arr = {{"ann_start","ths","aviation","doors_right","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","aviation","doors_right","mind_gap_step",0.5,"ths_ger","aviation_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.5,"nx_st_ger","city_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","market","platform_right",0.2,"ravenholm_closed",0.5,"nx_st_ger","market_ger","platform_right_ger",0.2,"ravenholm_closed_ger","click"}},
        },
        {
            903,"Lakeview City Hall",
            arr = {{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.5,"nx_st_ger","white_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","aviation","platform_right",0.5,"nx_st_ger","aviation_ger","platform_right_ger","click"}},
        },
        {
            904,"White Forest",
            dep = {{nil},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.5,"nx_st_ger","city_ger","platform_right_ger","click"}},
            arrlast = {{"ann_start","ths","white","doors_both","trhm",0.5,"ths_ger","white_ger","doors_both_ger","trhm_ger","click"},{nil}},
            ignorelast = true,
        },
        },
        {
          LED = {3,8,5,5,4,5},
          Name = "Line M52B WF-RL",
          Loop = false,
          spec_last = {"ann_start", "dro_cls"},
          spec_wait = {"unss",0.5,"unss_ger"},
        {
            904,"White Forest",
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","urban","platform_right",0.5,"nx_st_ger","urban_ger","platform_right_ger","click"},{nil}},
            arrlast = {{nil},{"ann_start","ths","white","doors_right","trhm",0.5,"ths_ger","white_ger","doors_right_ger","trhm_ger","click"}},
        },
        {
            905,"Urban Park",
            arr = {{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","urban","doors_right","mind_gap_step",0.5,"ths_ger","urban_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","rocklake","platform_left",0.5,"nx_st_ger","rocklake_ger","platform_left_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dorcl",5.0,"nx_st","white","platform_right",0.5,"nx_st_ger","white_ger","platform_right_ger","click"}},
        },
        {
            906,"Rocklake",
            dep = {{nil},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"welc_lvp","nx_st","urban","platform_right",0.5,"welc_lvp_ger","nx_st_ger","urban_ger","platform_right_ger","click"}},
            arrlast = {{"ann_start","ths","rocklake","doors_right","trhm",0.5,"ths_ger","rocklake_ger","doors_right_ger","trhm_ger","click"},{nil}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52C AV - UP",
            Loop = false,
            spec_last = {"ann_start", "dro_cls"},
            spec_wait = {"unss",0.5,"unss_ger"},
        {
            902,"Aviation university",
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.5,"nx_st_ger","city_ger","platform_right_ger","click"},{nil}},
            arrlast = {{nil},{"ann_start","ths","aviation","doors_right","trhm",0.5,"ths_ger","aviation_ger","doors_right_ger","trhm_ger"}},
        },
        {
            903,"Lakeview City Hall",
            arr = {{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","city","doors_right","mind_gap_step",0.5,"ths_ger","city_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.5,"nx_st_ger","white_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","aviation","platform_right",0.5,"nx_st_ger","aviation_ger","platform_right_ger","click"}},
        },
        {
            904,"White Forest",
            arr = {{"ann_start","ths","white","doors_right","mind_gap_step",0.5,"ths_ger","white_ger","doors_right_ger","mind_gap_step_ger","click"},{"ann_start","ths","white","doors_right","mind_gap_step",0.5,"ths_ger","white_ger","doors_right_ger","mind_gap_step_ger","click"}},
            dep = {{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","urban","platform_right",0.5,"nx_st_ger","urban_ger","platform_right_ger","click"},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","city","platform_right",0.5,"nx_st_ger","city_ger","platform_right_ger","click"}},
        },
        {
            905,"Urban Park",
            dep = {{nil},{"ann_start","doors_closing","doors_closing_ger","dro_cls",1.0,"nx_st","white","platform_right",0.5,"nx_st_ger","white_ger","platform_right_ger","click"}},
            arrlast = {{"ann_start","ths","urban","doors_right","trhm",0.5,"ths_ger","urban_ger","doors_right_ger","trhm_ger","click"},{nil}},
        },
        },
    }
)

print("RMDT Announcer loader: Trocki's announcer & routes")
print("========== LEGACY ANNOUNCER FROM V29 VERSION ==============")

-- trocki_announcer
Metrostroi.AddANSPAnnouncer("[ENG] LVP announcer 1995 | Trocki", {
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    -- Doors closing
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --drn_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Normal Announcer files
    spc1 = {"subway_announcers/legacy_announcers_v29/trocki_announcer/special_1.mp3",4.15},
    fault = {"subway_announcers/legacy_announcers_v29/trocki_announcer/special_2.mp3",4.60},
    tis = {"subway_announcers/legacy_announcers_v29/trocki_announcer/this_is_station.mp3",1.41},
    eol = {"subway_announcers/legacy_announcers_v29/trocki_announcer/end_of_line.mp3",3.32},
    next_st = {"subway_announcers/legacy_announcers_v29/trocki_announcer/next_station.mp3",2.17},
    market = {"subway_announcers/legacy_announcers_v29/trocki_announcer/market_street.mp3",1.88},
    aviation = {"subway_announcers/legacy_announcers_v29/trocki_announcer/aviation.mp3",2.12},
    city = {"subway_announcers/legacy_announcers_v29/trocki_announcer/city_hall.mp3",1.75},
    white = {"subway_announcers/legacy_announcers_v29/trocki_announcer/white_forest.mp3",1.85},
    urban = {"subway_announcers/legacy_announcers_v29/trocki_announcer/urban_park.mp3",1.59},
    rocklake = {"subway_announcers/legacy_announcers_v29/trocki_announcer/rocklake.mp3",1.38},
    },
    {
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52 MS-RL",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "fault"},
        {
            900, "Market Park",
            dep = {{"ann_start","dro_cls",0.5,"next_st","aviation","click"},{nil}},
            arrlast = {{nil},{"ann_start","tis","market","eol","spec1","click"}},
        },
        {
            902, "Aviation Uni.",
            dep = {{"ann_start","dro_cls",0.5,"next_st","city","click"},{"ann_start","dro_cls",0.5,"next_st","market","click"}},
            arr = {{"ann_start","tis","aviation","click"},{"ann_start","tis","aviation","click"}},
        },
        {
            903, "Lakeview city Hall",
            dep = {{"ann_start","dro_cls",0.5,"next_st","white","click"},{"ann_start","dro_cls",0.5,"next_st","aviation","click"}},
            arr = {{"ann_start","tis","city","click"},{"ann_start","tis","city","click"}},
        },
        {
            904, "White Forest",
            dep = {{"ann_start","dro_cls",0.5,"next_st","urban","click"},{"ann_start","dro_cls",0.5,"next_st","city","click"}},
            arr = {{"ann_start","tis","white","click"},{"ann_start","tis","white","click"}},
        },
        {
            905, "Urban Park",
            dep = {{"ann_start","dro_cls",0.5,"next_st","rocklake","click"},{"ann_start","dro_cls",0.5,"next_st","white","click"}},
            arr = {{"ann_start","tis","urban","click"},{"ann_start","tis","urban","click"}},
        },
        {
            906, "Rocklake",
            dep = {{nil},{"ann_start","dro_cls",0.5,"next_st","urban","click"}},
            arrlast = {{"ann_start","tis","rocklake","eol","spec1","click"},{nil}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52A MS-WF",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "fault"},
        {
            900, "Market Park",
            dep = {{"ann_start","dro_cls",0.5,"next_st","aviation","click"},{nil}},
            arrlast = {{nil},{"ann_start","tis","market","eol","spec1","click"}},
        },
        {
            902, "Aviation Uni.",
            dep = {{"ann_start","dro_cls",0.5,"next_st","city","click"},{"ann_start","dro_cls",0.5,"next_st","market","click"}},
            arr = {{"ann_start","tis","aviation","click"},{"ann_start","tis","aviation","click"}},
        },
        {
            903, "Lakeview city Hall",
            dep = {{"ann_start","dro_cls",0.5,"next_st","white","click"},{"ann_start","dro_cls",0.5,"next_st","aviation","click"}},
            arr = {{"ann_start","tis","city","click"},{"ann_start","tis","city","click"}},
        },
        {
            904, "White Forest",
            dep = {{nil},{"ann_start","dro_cls",0.5,"next_st","city","click"}},
            arrlast = {{"ann_start","tis","white","eol","spec1","click"},{nil}},
            ignorelast = true,
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52B WF - RL",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "fault"},
        {
            904, "White Forest",
            dep = {{"ann_start","dro_cls",0.5,"next_st","urban","click"},{nil}},
            arrlast = {{nil},{"ann_start","tis","white","eol","spec1","click"}},
        },
        {
            905, "Urban Park",
            dep = {{"ann_start","dro_cls",0.5,"next_st","rocklake","click"},{"ann_start","dro_cls",0.5,"next_st","white","click"}},
            arr = {{"ann_start","tis","urban","click"},{"ann_start","tis","urban","click"}},
        },
        {
            906, "Rocklake",
            dep = {{nil},{"ann_start","dro_cls",0.5,"next_st","urban","click"}},
            arrlast = {{"ann_start","tis","rocklake","eol","spec1","click"},{nil}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52C AV - UP",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "fault"},
        {
            902, "Aviation Uni.",
            dep = {{"ann_start","dro_cls",0.5,"next_st","city","click"},{nil}},
            arrlast = {{nil},{"ann_start","tis","aviation","eol","spec1","click"}},
        },
        {
            903, "Lakeview city Hall",
            dep = {{"ann_start","dro_cls",0.5,"next_st","white","click"},{"ann_start","dro_cls",0.5,"next_st","aviation","click"}},
            arr = {{"ann_start","tis","city","click"},{"ann_start","tis","city","click"}},
        },
        {
            904, "White Forest",
            dep = {{"ann_start","dro_cls",0.5,"next_st","urban","click"},{"ann_start","dro_cls",0.5,"next_st","city","click"}},
            arr = {{"ann_start","tis","white","click"},{"ann_start","tis","white","click"}},
        },
        {
            905, "Urban Park",
            dep = {{nil},{"ann_start","dro_cls",0.5,"next_st","white","click"}},
            arrlast = {{"ann_start","tis","urban","eol","spec1","click"},{nil}},
        },
        },
    }
)

print("RMDT Announcer loader: Marius's announcer & routes (V3)")

Metrostroi.AddANSPAnnouncer("[ENG] LVP announcer 1995 | Marius", {
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    -- Doors closing
    --dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --drn_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Normal Announcer files
    market = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/marketstreet.mp3",9.49},
    aviation = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/aviationuniversity.mp3",4.41},
    city = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/lakeviewcityhall.mp3",3.97},
    white = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/whiteforest.mp3",2.64},
    urban = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/urbanpark.mp3",1.60},
    rocklake = {"subway_announcers/v3_announcers/marius_mustang_announcer/normal/rocklake.mp3",2.87},
    -- Special announcers
    drc_cls = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/doors_closing.mp3",7.11},
    drc_lf = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/exit_left.mp3",3.44},
    drc_rh = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/exit_right.mp3",4.36},
    chime = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/announcement_chime.mp3",2.05},
    rh_pass = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/no_stop_at_ravenholm.mp3",9.12},
    terminal = {"subway_announcers/v3_announcers/marius_mustang_announcer/special/this_train_terminates_here.mp3",3.92},
    },
    {
        {
            LED = {3,8,5,5,4,5},
            Name = "M52 MS - RL",
            Loop = false,
            spec_last = {"terminal","click"},
            spec_wait = {"terminal","click"},
        {
            900, "Market Street",
            dep = {{"chime","drc_cls",1.0,"chime","rh_pass","click"},{nil}},
            arrlast = {{nil},{"chime","market","terminal","drc_rh","click"}},
        },
        {
            902, "Aviation Uni.",
            arr = {{"chime","aviation","drc_rh","click"},{"chime","aviation","drc_rh","click"}},
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
        },
        {
            903, "Lakeview City Hall",
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
            arr = {{"chime","city","drc_rh","click"},{"chime","city","drc_rh","click"}},
        },
        {
            902, "White Forest",
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
            arr = {{"chime","white","drc_rh","click"},{"chime","white","drc_rh","click"}},
        },
        {
            902, "Urban Park",
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
            arr = {{"chime","urban","drc_rh","click"},{"chime","urban","drc_rh","click"}},
        },
        {
            902, "Rocklake",
            dep = {{nil},{"chime","drc_cls","click"}},
            arrlast = {{"chime","rocklake","drc_rh","click"},{nil}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "M52A MS - WF",
            Loop = false,
            spec_last = {"terminal","click"},
            spec_wait = {"terminal","click"},
        {
            900, "Market Street",
            dep = {{"chime","drc_cls",1.0,"chime","rh_pass","click"},{nil}},
            arrlast = {{nil},{"chime","market","terminal","drc_rh","click"}},
        },
        {
            902, "Aviation Uni.",
            arr = {{"chime","aviation","drc_rh","click"},{"chime","aviation","drc_rh","click"}},
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
        },
        {
            903, "Lakeview City Hall",
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
            arr = {{"chime","city","drc_rh","click"},{"chime","city","drc_rh","click"}},
        },
        {
            902, "White Forest",
            dep = {{nil},{"chime","drc_cls","click"}},
            arrlast = {{"chime","white","drc_rh","click"},{nil}},
            ignorelast = true,
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "M52B WF - RL",
            Loop = false,
            spec_last = {"terminal","click"},
            spec_wait = {"terminal","click"},
        {
            902, "White Forest",
            dep = {{"chime","drc_cls","click"},{nil}},
            arrlast = {{nil},{"chime","white","drc_rh","click"}},
        },
        {
            902, "Urban Park",
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
            arr = {{"chime","urban","drc_rh","click"},{"chime","urban","drc_rh","click"}},
        },
        {
            902, "Rocklake",
            dep = {{nil},{"chime","drc_cls","click"}},
            arrlast = {{"chime","rocklake","drc_rh","click"},{nil}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "M52C AV - UP",
            Loop = false,
            spec_last = {"terminal","click"},
            spec_wait = {"terminal","click"},
        {
            902, "Aviation Uni.",
            arrlast = {{nil},{"chime","aviation","drc_rh","click"}},
            dep = {{"chime","drc_cls","click"},{nil}},
        },
        {
            903, "Lakeview City Hall",
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
            arr = {{"chime","city","drc_rh","click"},{"chime","city","drc_rh","click"}},
        },
        {
            902, "White Forest",
            dep = {{"chime","drc_cls","click"},{"chime","drc_cls","click"}},
            arr = {{"chime","white","drc_rh","click"},{"chime","white","drc_rh","click"}},
        },
        {
            902, "Urban Park",
            dep = {{nil},{"chime","drc_cls","click"}},
            arrlast = {{"chime","urban","drc_rh","click"},{nil}},
        },
        },
    }
)

print("RMDT Announcer loader: Now loading Ballistic announcer")
-- Waits for new audio files
print("RMDT Announcer loader: Now loading norwaylcandtrains announcer")
Metrostroi.AddANSPAnnouncer("[PL + ENG] LVP announcer 1995 | NorwayLCAndTrains", {
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    -- Doors closing
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --drn_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Normal Announcer files
    market = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - market street.mp3",12.60},
    aviation = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - aviation university.mp3",4.93},
    city = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - lakeview city hall.mp3",4.64},
    white = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - white forest.mp3",4.24},
    urban = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/station - urban park.mp3",3.98},
    rocklake = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - rocklake.mp3",12.23},
    -- Special announcers
    nxt_market = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - market street.mp3",12.01},
    nxt_aviation = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - aviation university.mp3",12.26},
    nxt_city = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - lakeview city hall.mp3",12.03},
    nxt_white = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - white forest.mp3",11.62},
    nxt_urban = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - urban park.mp3",11.74},
    nxt_rock = {"subway_announcers/v3_announcers/norwaylcandtrains_announcer/next - rocklake.mp3",11.60},
    },
    {
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52 MS-RL",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "click"},
        {
            900, "Market Street",
            arrlast = {{nil},{"ann_start","market",0.3,"click"}},
            dep = {{"dro_cls",0.5,"ann_start","nxt_aviation","click"},{nil}},
        },
        {
            902, "Aviation Uni.",
            arr = {{"ann_start","aviation","click"},{"ann_start","aviation","click"}},
            dep = {{"dro_cls",1.0,"nxt_city","click"},{"dro_cls",1.0,"nxt_market","click"}},
        },
        {
            903, "Lakeview City Hall",
            arr = {{"ann_start","city","click"},{"ann_start","city","click"}},
            dep = {{"dro_cls",1.0,"nex_white","click"},{"dro_cls",1.0,"nxt_aviation","click"}},
        },
        {
            904, "White Forest",
            arr = {{"ann_start","white","click"},{"ann_start","white","click"}},
            dep = {{"dro_cls",1.0,"nxt_urban","click"},{"dro_cls",1.0,"nxt_city","click"}},
        },
        {
            905, "Urban Park",
            arr = {{"ann_start","urban","click"},{"ann_start","urban","click"}},
            dep = {{"dro_cls",1.0,"nxt_rock","click"},{"dro_cls",1.0,"next_white","click"}},
        },
        {
            906, "Rocklake",
            arrlast = {{"ann_start","rocklake","click"},{nil}},
            dep = {{nil},{"dro_cls",1.0,"nxt_urban","click"}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52A MS-WF",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "click"},
        {
            900, "Market Street",
            arrlast = {{nil},{"ann_start","market",0.3,"click"}},
            dep = {{"dro_cls",1.0,"nxt_aviation","click"},{nil}},
        },
        {
            902, "Aviation Uni.",
            arr = {{"ann_start","aviation","click"},{"ann_start","aviation","click"}},
            dep = {{"dro_cls",1.0,"nxt_city","click"},{"dro_cls",1.0,"nxt_market","click"}},
        },
        {
            903, "Lakeview City Hall",
            arr = {{"ann_start","city","click"},{"ann_start","city","click"}},
            dep = {{"dro_cls",1.0,"nex_white","click"},{"dro_cls",1.0,"nxt_aviation","click"}},
        },
        {
            904, "White Forest",
            arrlast = {{"ann_start","white","click"},{nil}},
            dep = {{nil},{"dro_cls",1.0,"nxt_city","click"}},
            ignorelast = true,
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52B WF-RL",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "click"},
        {
            904, "White Forest",
            arrlast = {{nil},{"ann_start","white","click"}},
            dep = {{"dro_cls",1.0,"nxt_urban","click"},{nil}},
        },
        {
            905, "Urban Park",
            arr = {{"ann_start","urban","click"},{"ann_start","urban","click"}},
            dep = {{"dro_cls",1.0,"nxt_rock","click"},{"dro_cls",1.0,"next_white","click"}},
        },
        {
            906, "Rocklake",
            arrlast = {{"ann_start","rocklake","click"},{nil}},
            dep = {{nil},{"dro_cls",1.0,"nxt_urban","click"}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52C AV-UP",
            Loop = false,
            spec_last = {"ann_start", "click"},
            spec_wait = {"ann_start", "click"},
        {
            902, "Aviation Uni.",
            arrlast = {{nil},{"ann_start","aviation","click"}},
            dep = {{"dro_cls",1.0,"nxt_city","click"},{nil}},
        },
        {
            903, "Lakeview City Hall",
            arr = {{"ann_start","city","click"},{"ann_start","city","click"}},
            dep = {{"dro_cls",1.0,"nex_white","click"},{"dro_cls",1.0,"nxt_aviation","click"}},
        },
        {
            904, "White Forest",
            arr = {{"ann_start","white","click"},{"ann_start","white","click"}},
            dep = {{"dro_cls",1.0,"nxt_urban","click"},{"dro_cls",1.0,"nxt_city","click"}},
        },
        {
            905, "Urban Park",
            arrlast = {{"ann_start","urban","click"},{nil}},
            dep = {{nil},{"dro_cls",1.0,"next_white","click"}},
        },
        },
    }
)

print("RMDT Announcer loader: Now loading pysco_annoucements announcer")
-- Waits for new files.
--[[
Metrostroi.AddANSPAnnouncer("[ENG + FIN] LVP announcer 1995 | pysco_annoucements", {
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    -- Doors closing
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --drn_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Normal Announcer files
    market = {"subway_announcers/v3_announcers/pysco_annoucements/station - market street.mp3",},
    -- Special announcers
    },
    {
        {
            LED = {1,2,3,4,5,6},
            Name = "Line M52 MS - RL",
            Loop = false,
            spec_last = {"ann_start","click"},
            spec_wait = {"ann_start","click"},
        {
            900, "Market Street",
            arrlast = 
            dep = 
        }
        }
    }
--]]

print("RMDT Announcer loader: Now loading Tankict announcer")
Metrostroi.AddANSPAnnouncer("[ENG + RU] LVP announcer 1995 | Tankict", {
    -- Announcer starting files
    ann_start = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    click = {"subway_announcers/global-sounds/rri-click.mp3",0.31},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    announcer_ready = {"subway_announcers/global-sounds/mireo_gong_01.mp3",1.24},
    -- Doors closing
    dro_cls = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3",4.54},
    --drn_cls = {"subway_announcers/global-sounds/doors_closing/futr-doors.mp3",2.40},
    --drt_cls = {"subway_announcers/global-sounds/doors_closing/tape-doors.mp3",4.25},
    -- Normal Announcer files (english)
    market = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/market_street_eng.mp3",1.47},
    aviation = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/aviation_university_eng.mp3",2.44},
    city = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/lakeview_city_hall_eng.mp3",1.77},
    white = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/white_forest_eng.mp3",1.54},
    urban = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/urban_park_eng.mp3",2.10},
    rock = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/rocklake_eng.mp3",1.44},
    -- Special announcers (English)
    train_goes = {"subway_announcers/v3_announcers/tankict_announcer/en/special/train_goes_to_eng.mp3",2.38},
    nxt_st = {"subway_announcers/v3_announcers/tankict_announcer/en/special/next_station_eng.mp3",3.80},
    mind_gap = {"subway_announcers/v3_announcers/tankict_announcer/en/special/mind_the_gap_eng.mp3",3.37},
    st_end = {"subway_announcers/v3_announcers/tankict_announcer/en/special/end_station_eng.mp3",3.72},
    stuff = {"subway_announcers/v3_announcers/tankict_announcer/en/special/dont_forget_your_stuff_eng.mp3",4.57},
    polite = {"subway_announcers/v3_announcers/tankict_announcer/en/special/be_mutually_polite_eng.mp3",8.51},
    arrival_end = {"subway_announcers/v3_announcers/tankict_announcer/en/special/arrival_to_end_eng.mp3",8.56},
    arrival = {"subway_announcers/v3_announcers/tankict_announcer/en/special/arrival_eng.mp3",0.80},
    -- Normal Announcer files (Russian)
    market_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/market_street.mp3",1.73},
    aviation_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/aviation_university.mp3",2.77},
    city_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/lakeview_city_hall.mp3",2.32},
    white_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/white_forest.mp3",1.71},
    urban_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/urban_park.mp3",},
    rock_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/stations/rocklake.mp3",1.64},
    -- Special announcers (Russian)
    train_goes_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/train_goes_to.mp3",2.79},
    nxt_st_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/next_station.mp3",3.56},
    mind_gap_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/mind_the_gap.mp3",5.13},
    st_end_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/end_station.mp3",8.17},
    stuff_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/dont_forget_your_stuff.mp3",4.68},
    polite_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/be_mutually_polite.mp3",8.41},
    arrival_end_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/arrival_to_end.mp3",8.35},
    arrival_ru = {"subway_announcers/v3_announcers/tankict_announcer/en/special/arrival.mp3",1.14},
    },
    {
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52 MS - RL",
            Loop = false,
            spec_last = {"ann_start","st_end","st_end_ru","click"},
            spec_wait = {"ann_start","click"},
        {
            900, "Market Street",
            arrlast = {{nil},{"ann_start","arrival_end","market",0.5,"arrival_end_ru","market_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","rock",0.3,"nxt_st","aviation",0.5,"train_goes_ru","rock_ru",0.3,"nxt_st_ru","aviation_ru",0.3,"click"},{nil}},
        },
        {
            902, "Aviation Uni.",
            arr = {{"ann_start","arrival","aviation","mind_gap",0.5,"arrival_ru","aviation_ru","mind_gap_ru"},{"ann_start","arrival","aviation","mind_gap",0.5,"arrival_ru","aviation_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","rock",0.3,"nxt_st","city",0.5,"train_goes_ru","rock_ru",0.3,"nxt_st_ru","city_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","market",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","market_ru",0.3,"click"}},
        },
        {
            903, "Lakeview City Hall",
            arr = {{"ann_start","arrival","city","mind_gap",0.5,"arrival_ru","city_ru","mind_gap_ru"},{"ann_start","arrival","city","mind_gap",0.5,"arrival_ru","city_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","rock",0.3,"nxt_st","white",0.5,"train_goes_ru","rock_ru",0.3,"nxt_st_ru","white_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","aviation",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","aviation_ru",0.3,"click"}},
        },
        {
            904, "White Forest",
            arr = {{"ann_start","arrival","white","mind_gap",0.5,"arrival_ru","white_ru","mind_gap_ru"},{"ann_start","arrival","white","mind_gap",0.5,"arrival_ru","white_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","rock",0.3,"nxt_st","urban",0.5,"train_goes_ru","rock_ru",0.3,"nxt_st_ru","city_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","city",0.5,"train_goes_ru","city_ru",0.3,"nxt_st_ru","market_ru",0.3,"click"}},
        },
        {
            905, "Urban Park",
            arr = {{"ann_start","arrival","urban","mind_gap",0.5,"arrival_ru","urban_ru","mind_gap_ru"},{"ann_start","arrival","urban","mind_gap",0.5,"urban_ru","aviation_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","rock",0.3,"nxt_st","rock",0.5,"train_goes_ru","rock_ru",0.3,"nxt_st_ru","rock_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","white",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","white_ru",0.3,"click"}},
        },
        {
            906, "Rocklake",
            arrlast = {{"ann_start","arrival_end","rock","mind_gap",0.5,"arrival_end_ru","rock_ru","mind_gap_ru"},{nil}},
            dep = {{nil},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","urban",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","urban_ru",0.3,"click"}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52A MS - WF",
            Loop = false,
            spec_last = {"ann_start","st_end","st_end_ru","click"},
            spec_wait = {"ann_start","click"},
        {
            900, "Market Street",
            arrlast = {{nil},{"ann_start","arrival_end","market",0.5,"arrival_end_ru","market_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","white",0.3,"nxt_st","aviation",0.5,"train_goes_ru","white_ru",0.3,"nxt_st_ru","white_ru",0.3,"click"},{nil}},
        },
        {
            902, "Aviation Uni.",
            arr = {{"ann_start","arrival","aviation","mind_gap",0.5,"arrival_ru","aviation_ru","mind_gap_ru"},{"ann_start","arrival","aviation","mind_gap",0.5,"arrival_ru","aviation_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","white",0.3,"nxt_st","city",0.5,"train_goes_ru","white_ru",0.3,"nxt_st_ru","city_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","market",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","market_ru",0.3,"click"}},
        },
        {
            903, "Lakeview City Hall",
            arr = {{"ann_start","arrival","city","mind_gap",0.5,"arrival_ru","city_ru","mind_gap_ru"},{"ann_start","arrival","city","mind_gap",0.5,"arrival_ru","city_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","white",0.3,"nxt_st","white",0.5,"train_goes_ru","white_ru",0.3,"nxt_st_ru","white_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","aviation",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","aviation_ru",0.3,"click"}},
        },
        {
            904, "White Forest",
            arrlast = {{"ann_start","arrival_end","white","mind_gap",0.5,"arrival_end_ru","white_ru","mind_gap_ru"},{nil}},
            dep = {{nil},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","city",0.5,"train_goes_ru","city_ru",0.3,"nxt_st_ru","market_ru",0.3,"click"}},
            ignorelast = true,
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52B WF - RL",
            Loop = false,
            spec_last = {"ann_start","st_end","st_end_ru","click"},
            spec_wait = {"ann_start","click"},
        {
            904, "White Forest",
            arrlast = {{nil},{"ann_start","arrival_end","white","mind_gap",0.5,"arrival_end_ru","white_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","rock",0.3,"nxt_st","urban",0.5,"train_goes_ru","rock_ru",0.3,"nxt_st_ru","city_ru",0.3,"click"},{nil}},
        },
        {
            905, "Urban Park",
            arr = {{"ann_start","arrival","urban","mind_gap",0.5,"arrival_ru","urban_ru","mind_gap_ru"},{"ann_start","arrival","urban","mind_gap",0.5,"urban_ru","aviation_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","rock",0.3,"nxt_st","rock",0.5,"train_goes_ru","rock_ru",0.3,"nxt_st_ru","rock_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","white",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","white_ru",0.3,"click"}},
        },
        {
            906, "Rocklake",
            arrlast = {{"ann_start","arrival_end","rock","mind_gap",0.5,"arrival_end_ru","rock_ru","mind_gap_ru"},{nil}},
            dep = {{nil},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","urban",0.5,"train_goes_ru","market_ru",0.3,"nxt_st_ru","urban_ru",0.3,"click"}},
        },
        },
        {
            LED = {3,8,5,5,4,5},
            Name = "Line M52C AV - UP",
            Loop = false,
            spec_last = {"ann_start","st_end","st_end_ru","click"},
            spec_wait = {"ann_start","click"},
        {
            902, "Aviation Uni.",
            arrlast = {{nil},{"ann_start","arrival_end","aviation","mind_gap",0.5,"arrival_end_ru","aviation_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","urban",0.3,"nxt_st","city",0.5,"train_goes_ru","urban_ru",0.3,"nxt_st_ru","city_ru",0.3,"click"},{nil}},
        },
        {
            903, "Lakeview City Hall",
            arr = {{"ann_start","arrival","city","mind_gap",0.5,"arrival_ru","city_ru","mind_gap_ru"},{"ann_start","arrival","city","mind_gap",0.5,"arrival_ru","city_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","urban",0.3,"nxt_st","white",0.5,"train_goes_ru","urban_ru",0.3,"nxt_st_ru","white_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","aviation",0.3,"nxt_st","aviation",0.5,"train_goes_ru","aviation_ru",0.3,"nxt_st_ru","aviation_ru",0.3,"click"}},
        },
        {
            904, "White Forest",
            arr = {{"ann_start","arrival","white","mind_gap",0.5,"arrival_ru","white_ru","mind_gap_ru"},{"ann_start","arrival","white","mind_gap",0.5,"arrival_ru","white_ru","mind_gap_ru"}},
            dep = {{"dro_cls",0.5,"train_goes","urban",0.3,"nxt_st","urban",0.5,"train_goes_ru","urban_ru",0.3,"nxt_st_ru","urban_ru",0.3,"click"},{"dro_cls",0.5,"train_goes","market",0.3,"nxt_st","city",0.5,"train_goes_ru","city_ru",0.3,"nxt_st_ru","aviation_ru",0.3,"click"}},
        },
        {
            905, "Urban Park",
            arrlast = {{"ann_start","arrival","urban","mind_gap",0.5,"arrival_ru","urban_ru","mind_gap_ru"},{"ann_start","arrival","urban","mind_gap",0.5,"urban_ru","aviation_ru","mind_gap_ru"}},
            dep = {{nil},{"dro_cls",0.5,"train_goes","aviation",0.3,"nxt_st","white",0.5,"train_goes_ru","aviation_ru",0.3,"nxt_st_ru","white_ru",0.3,"click"}},
        },
        },
    }
)

print("RMDT Announcer loader: RPM Announcer has now loadded fully.")