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

Metrostroi.SetRRIAnnouncer("[ENG + GER] LVP announcer 1995 | Valentin", {
    gong = {"subway_announcers/v29_announcers/valentin_announcer/sarmat_upo/mireo_gong_01.mp3",1.31},
    click_start = {"subway_announcers/v29_announcers/global-sounds/rri-click.mp3", 0.2},
    click_end = {"subway_announcers/v29_announcers/global-sounds/rri-click.mp3", 0.2},
    announcer_ready = {"subway_announcers/v29_announcers/global-sounds/announcer-starting.mp3", 2.27},
    click1 = {"subway_announcers/v29_announcers/global-sounds/rri-click.mp3", 0.2},
    click2 = {"subway_announcers/v29_announcers/global-sounds/rri-click.mp3", 0.2},
    door_ring = {"subway_announcers/v29_announcers/global-sounds/doors_closing_alarm(retro).mp3", 2.19},
    st_cm = {"subway_announcers/v29_announcers/global-sounds/announcer-play.mp3", 2.27},
    spc1 = {"subway_announcers/v29_announcers/trocki_announcer/special_1.mp3",4.15},
    fault = {"subway_announcers/v29_announcers/trocki_announcer/special_2.mp3",4.60},
    tis = {"subway_announcers/v29_announcers/trocki_announcer/this_is_station.mp3",1.41},
    eol = {"subway_announcers/v29_announcers/trocki_announcer/end_of_line.mp3",3.32},
    next_st = {"subway_announcers/v29_announcers/trocki_announcer/next_station.mp3",2.17},
    market = {"subway_announcers/v29_announcers/trocki_announcer/market_street.mp3",1.88},
    aviation = {"subway_announcers/v29_announcers/trocki_announcer/aviation.mp3",2.12},
    city = {"subway_announcers/v29_announcers/trocki_announcer/city_hall.mp3",1.75},
    white = {"subway_announcers/v29_announcers/trocki_announcer/white_forest.mp3",1.85},
    urban = {"subway_announcers/v29_announcers/trocki_announcer/urban_park.mp3",1.59},
    rocklake = {"subway_announcers/v29_announcers/trocki_announcer/rocklake.mp3",1.38},
},
{
    {
        LED = {3, 3, 3, 4, 4, 4, 4, 5},
        Name = "Cyan line (1987 tape)",
        spec_last = {"eol"},
        spec_wait = {{"fault"},{"door_ring"}},
        Loop = false,
        {
            151,"Market street",
            arrlast = {{nil},{"gong", "tis", "market","eol","spc1"}},
            dep = {{"st_cm", "next_st", "aviation"},{nil}},
            have_inrerchange = true,
        },
        {
            153,"Aviation University",
            arr = {{"gong", "tis", "aviation", "spc1"},{"gong", "tis", "aviation", "spc1"}},
            dep = {{"st_cm", "next_st", "city"}, {"st_cm", "next_st", "market"}},
            arrlast = {{"gong","this","aviation","eol","spc1"},{"gong","this","aviation","eol","spc1"}},
            -- ignorelast = true,
            have_inrerchange = false,
        },
        {
            154,"City Hall",
            arr = {{"gong", "tis", "city","spc1"},{"gong", "tis", "city","spc1"}},
            dep = {{"st_cm", "next_st", "white"}, {"st_cm", "next_st", "aviation"}},
            -- arrlast = {{"gong","this","city","eol","spc1"},{"gong","this","city","eol","spc1"}},
            have_inrerchange = true,
        },
        {
            155,"white forest",
            arr = {{"gong", "tis", "white","spc1"},{"gong", "tis", "white","spc1"}},
            dep = {{"st_cm", "next_st", "urban"}, {"st_cm", "next_st", "city"}},
            arrlast = {{"gong", "tis", "white", "eol","spc1"},{"gong", "tis", "white", "eol","spc1"}},
            have_inrerchange = true,
            ignorelast = true,
        },
        {
            156,"Urban park",
            arr = {{"gong", "tis", "urban","spc1"},{"gong", "tis", "urban","spc1"}},
            dep = {{"st_cm", "next_st", "rocklake"}, {"st_cm", "next_st", "white"}},
            arrlast = {{"gong","tis","urban","terminal","spc1"},{"gong","tis","urban","terminal","spc1"}},
            -- ignorelast = true,
            have_inrerchange = true,
        },
        {
            157,"rocklake",
            arrlast = {{"gong", "tis", "rocklake","eol","spc1"},{nil}},
            dep = {{nil}, {"st_cm", "next_st", "urban"}},
            ignorelast = true,
            have_inrerchange = false,
        }
    }
}
)