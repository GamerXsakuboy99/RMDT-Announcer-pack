local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_ruralline_v29_old") or Map:find("gm_metro_ruralline_v29_snow") then
    Metrostroi.PlatformMap = "ruralline"
    Metrostroi.CurrentMap = "ruralline_v29"
else
    return
end
--[[
    Global door alarms duration times.

    - doors_closing_alarm(bell).mp3 2.19
    - announcer-starting.mp3 2.27

]]--

Metrostroi.SetRRIAnnouncer({
    gong = {"subway_announcers/valentin_announcer/sarmat_upo/mireo_gong_01.mp3",1.31},
    click_start = {"subway_announcers/global-sounds/rri-click.mp3", 0.2},
    click_end = {"subway_announcers/global-sounds/rri-click.mp3", 0.2},
    announcer_ready = {"subway_announcers/global-sounds/announcer-starting.mp3", 2.27},
    click1 = {"subway_announcers/global-sounds/rri-click.mp3", 0.2},
    click2 = {"subway_announcers/global-sounds/rri-click.mp3", 0.2},
    door_ring = {"subway_announcers/global-sounds/doors_closing_alarm(retro).mp3", 2.19},
    st_cm = {"subway_announcers/global-sounds/announcer-play.mp3", 2.27},
    spc1 = {"subway_announcers/trocki_announcer/special_1.mp3",4.15},
    fault = {"subway_announcers/trocki_announcer/special_2.mp3",4.60},
    tis = {"subway_announcers/trocki_announcer/this_is_station.mp3",1.41},
    eol = {"subway_announcers/trocki_announcer/end_of_line.mp3",3.32},
    next_st = {"subway_announcers/trocki_announcer/next_station.mp3",2.17},
    market = {"subway_announcers/trocki_announcer/market_street.mp3",1.88},
    aviation = {"subway_announcers/trocki_announcer/aviation.mp3",2.12},
    city = {"subway_announcers/trocki_announcer/city_hall.mp3",1.75},
    white = {"subway_announcers/trocki_announcer/white_forest.mp3",1.85},
    urban = {"subway_announcers/trocki_announcer/urban_park.mp3",1.59},
    rocklake = {"subway_announcers/trocki_announcer/rocklake.mp3",1.38},
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
            arrlast = {{nil},{"gong","this","aviation","eol","spc1"}},
            have_inrerchange = false,
        },
        {
            154,"City Hall",
            arr = {{"gong", "tis", "city","spc1"},{"gong", "tis", "city","spc1"}},
            dep = {{"st_cm", "next_st", "white"}, {"st_cm", "next_st", "aviation"}},
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
            arrlast = {{"gong","tis","urban","terminal","spc1"},{nil}},
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