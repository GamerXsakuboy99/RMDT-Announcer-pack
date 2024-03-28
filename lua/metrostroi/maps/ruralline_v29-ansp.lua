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
    - doors_closing_alarm(digital).mp3 2.59
    - doors_closing_alarm(old_digital).mp3 1.41
    - announcer-starting.mp3 2.27

    GLobal way of code:

    Left side:  Market street ---> Rocklake
    Right side: Rocklake ----> Market Street

]]--

print("Valentin Announcer loading....")

Metrostroi.AddANSPAnnouncer("[ANSP | EN] Rockport metropolitan | Valentin", {
    -- Announcer starting files
    announcer_ready = {"subway_announcers/global-sounds/announcer-starting.mp3", 2.27},
    st_cm = {"subway_announcers/global-sounds/announcer-play.mp3", 2.27},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    gong = {"subway_announcers/valentin_announcer/sarmat_upo/mireo_gong_01.mp3",1.31},
    -- Special announcer files
    doors_clsing = {"subway_announcers/valentin_announcer/special_files/doors_closing.mp3",2.19},
    doors_left = {"subway_announcers/valentin_announcer/special_files/doors_left.mp3",2.51},
    doors_right = {"subway_announcers/valentin_announcer/special_files/doors_right.mp3",2.66},
    next_st = {"subway_announcers/valentin_announcer/special_files/next_is.mp3",1.57},
    platfrom_left = {"subway_announcers/valentin_announcer/special_files/platform_left.mp3",1.80},
    platform_right = {"subway_announcers/valentin_announcer/special_files/platform_right.mp3",1.88},
    red_signal = {"subway_announcers/valentin_announcer/special_files/red_signal.mp3",5.07},
    terminal = {"subway_announcers/valentin_announcer/special_files/terminates_here.mp3",1.83},
    this_st = {"subway_announcers/valentin_announcer/special_files/this_is.mp3",0.94},

    -- Station files
    market = {"subway_announcers/valentin_announcer/stations/market_street.mp3",1.07},
    aviation = {"subway_announcers/valentin_announcer/stations/aviation_university.mp3",1.62},
    city = {"subway_announcers/valentin_announcer/stations/city_hall.mp3",0.91},
    white = {"subway_announcers/valentin_announcer/stations/white_forest.mp3",1.12},
    urban = {"subway_announcers/valentin_announcer/stations/urban_park.mp3",0.94},
    rocklake = {"subway_announcers/valentin_announcer/stations/rocklake.mp3",0.81},

    -- interchanges
    bus42 = {"subway_announcers/valentin_announcer/change/bus_42.mp3",2.30},
    tram63 = {"subway_announcers/valentin_announcer/change/tram_63.mp3",2.38},
  },
  {
        {
          LED = {5,8,4,5,4,4},
          Name = "TR-52 line",
          Loop = false,
          spec_last = {"announcer_ready", "gong"},
          spec_wait = {"red_signal"},
        {
            151,"Market Street",
            arrlast = {{nil},{"gong","this_st","market","terminal","doors_right","bus42"}},
            dep = {{"gong","doors_clsing","st_cm","next_st","aviation","platform_right"},{nil}},
        },
        {
            153,"Aviation university",
            arr = {{"gong","this_st","aviation","doors_right"},{"gong","this_st","aviation","doors_right"}},
            dep = {{"gong","doors_clsing","st_cm","next_st","city","platform_right"},{"gong","doors_clsing","st_cm","next_st","market","platform_right"}},
            arrlast = {{nil},{"gong","this_st","aviation","terminal","doors_right"}},
        },
        {
            154,"City Hall",
            arr = {{"gong","this_st","city","doors_right"},{"gong","this_st","city","doors_right"}},
            dep = {{"gong","doors_clsing","st_cm","next_st","white","platform_right"},{"gong","doors_clsing","st_cm","next_st","aviation","platform_right"}},
        },
        {
            155,"White Forest",
            arr = {{"gong","this_st","white","doors_right"},{"gong","this_st","white","doors_right"}},
            dep = {{"gong","doors_clsing","st_cm","next_st","urban","platform_right"},{"gong","doors_clsing","st_cm","next_st","city","platform_right"}},
            arrlast = {{"gong","this_st","white","terminal","doors_right"},{"gong","this_st","white","terminal","doors_right"}},
        },
        {
            156,"Urban Park",
            arr = {{"gong","this_st","urban","doors_right","tram63"},{"gong","this_st","urban","doors_right","tram63"}},
            dep = {{"gong","doors_clsing","st_cm","next_st","rocklake","platform_right"},{"gong","doors_clsing","st_cm","next_st","white","platform_right"}},
            arrlast = {{"gong","this_st","urban","terminal","doors_right"},{nil}},
        },
        {
            157,"Rocklake",
            dep = {{nil},{"gong","doors_clsing","st_cm","next_st","urban","platform_right"}},
            arrlast = {{"gong","this_st","rocklake","terminal","doors_right"},{nil}},
        }
    }
}
)

print("Valentin Announcer loaded")
print("Trocki Announcer loading....")

-- trocki_announcer
Metrostroi.AddANSPAnnouncer("[ANSP | EN] Rockport metropolitan | Trocki", {
        -- Announcer starting files
        announcer_ready = {"subway_announcers/global-sounds/announcer-starting.mp3", 2.27},
        gong = {"subway_announcers/valentin_announcer/sarmat_upo/mireo_gong_01.mp3",1.31},
        st_cm = {"subway_announcers/global-sounds/announcer-play.mp3", 2.27},
        click1 = {"subway_announcers/asnp/click.mp3", 0.30},
        click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
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
                LED = {5,8,4,5,4,4},
                Name = "TR-52 line",
                Loop = false,
                spec_last = {"announcer_ready"},
                spec_wait = {"gong", "fault"},
            {
                151,"Market Street",
                arrlast = {{nil},{"gong","tis","market","eol","spc1"}},
                dep = {{"gong","next_st","aviation","st_cm"},{nil}},
            },
            {
                153,"Aviation University",
                arr = {{"gong","tis","aviation","spc1"},{"gong","tis","aviation","spc1"}},
                dep = {{"st_cm","next_st","city"},{"st_cm","next_st","market"}},
                arrlast = {{nil},{"gong","this","aviation","eol","spc1"}}
            },
            {
                154,"City Hall",
                arr = {{"gong","tis","city","spc1"},{"gong","tis","city","spc1"}},
                dep = {{"st_cm","next_st","white"},{"st_cm","next_st","aviation"}},
            },
            {
                155,"White Forest",
                arr = {{"gong","tis","white","spc1"},{"gong","tis","white","spc1"}},
                dep = {{"st_cm","next_st","urban"},{"st_cm","next_st","city"}},
                arrlast = {{"gong","this","white","eol","spc1"},{"gong","this","white","eol","spc1"}},
            },
            {
                156,"Urban Park",
                arr = {{"gong","tis","urban","spc1"},{"gong","tis","urban","spc1"}},
                dep = {{"st_cm","next_st","rocklake"},{"st_cm","next_st","white"}},
                arrlast = {{"gong","this","urban","eol","spec1"},{nil}},
            },
            {
                157,"Rocklake",
                arrlast = {{"gong","tis","rocklake","eol","spc1"},{nil}},
                dep = {{nil},{"st_cm","next_st","urban"}},
            }
        }
    }
)

print("Trocki Announcer loaded")
print("Marius Announcer loading....")

-- marius_announcer
Metrostroi.AddANSPAnnouncer("[ANSP | EN] Rockport metropolitan | Marius", {
    -- Announcer main
    announcer_ready = {"subway_announcers/global-sounds/announcer-starting.mp3", 2.27},
    st_cm = {"subway_announcers/global-sounds/announcer-play.mp3", 2.27},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    gong = {"subway_announcers/valentin_announcer/sarmat_upo/mireo_gong_01.mp3",1.31},
    -- Special announcers
    doors = {"subway_announcers/marius_announcer/special/doors_closing.mp3",3.85},
    exit_left = {"subway_announcers/marius_announcer/special/exit_left.mp3",2.83},
    exit_right = {"subway_announcers/marius_announcer/special/exit_right.mp3",2.50},
    terminal = {"subway_announcers/marius_announcer/special/this_train_terminates_here.mp3",2.47},
    next_st = {"subway_announcers/marius_announcer/special/the_next_station_is.mp3",2.24},
    -- Station alarm
    market = {"subway_announcers/marius_announcer/normal/market_street.mp3",1.79},
    aviation = {"subway_announcers/marius_announcer/normal/aviation_university.mp3",2.71},
    city = {"subway_announcers/marius_announcer/normal/city_hall.mp3",2.92},
    white = {"subway_announcers/marius_announcer/normal/white_forest.mp3",3.64},
    urban = {"subway_announcers/marius_announcer/normal/urban_park.mp3",2.50},
    rock = {"subway_announcers/marius_announcer/normal/rocklake.mp3",2.12},
    },
        {
            {
            LED = {5,8,4,5,4,4},
            Name = "TR-52 Line",
            Loop = false,
            spec_last = {"announcer_ready", "st_cm"},
            spec_wait = {"terminal"},
            {
                151,"Market Street",
                arrlast = {{nil},{"gong","market","terminal","exit_right"}},
                dep = {{"gong","doors","st_cm","next_st","aviation"},{nil}},
            },
            {
                153,"Aviation University",
                arr = {{"gong","aviation","exit_right"},{"gong","aviation","exit_right"}},
                dep = {{"gong","doors","st_cm","next_st","city"},{"gong","doors","st_cm","next_st","market"}},
                arrlast = {{nil},{"gong","aviation","terminal","exit_right"}},
            },
            {
                154,"City Hall",
                arr = {{"gong","city","exit_right"},{"gong","city","exit_right"}},
                dep = {{"gong","doors","st_cm","next_st","white"},{"gong","doors","st_cm","next_st","aviation"}},
            },
            {
                155,"White Forest",
                arr = {{"gong","white","exit_right"},{"gong","white","exit_right"}},
                dep = {{"gong","doors","st_cm","next_st","urban"},{"gong","doors","st_cm","next_st","city"}},
                arrlast = {{"gong","white","terminal","exit_right"},{"gong","white","terminal","exit_right"}},
                ignorelast = true,
            },
            {
                156,"Urban Park",
                arr = {{"gong","urban","exit_right"},{"gong","urban","exit_right"}},
                dep = {{"gong","doors","st_cm","next_st","rock"},{"gong","doors","st_cm","next_st","white"}},
                arrlast = {{"gong","urban","terminal","exit_right"},{nil}},
            },
            {
                157,"Rocklake",
                arrlast = {{"gong","rock","exit_right","terminal"},{nil}},
                dep = {{nil},{"gong","next_st","urban","doors","st_cm"}},
            }
        }
    }
)

print("Marius Announcer loaded")
print("Now loading Ballistic announcer")

-- ballistic_announcer
Metrostroi.AddANSPAnnouncer("[ANSP | EN] Rockport metropolitan | Ballistic", {
    -- Announcer starting files
    announcer_ready = {"subway_announcers/global-sounds/announcer-starting.mp3", 2.27},
    st_cm = {"subway_announcers/global-sounds/announcer-play.mp3", 2.27},
    click1 = {"subway_announcers/asnp/click.mp3", 0.30},
    click2 = {"subway_announcers/asnp/click2.mp3", 0.10},
    door_ring = {"subway_announcers/global-sounds/doors_closing_alarm(retro).mp3", 2.19},
    gong = {"subway_announcers/valentin_announcer/sarmat_upo/mireo_gong_01.mp3",1.31},
    --Special announcers
    next_st = {"subway_announcers/ballistic_announcer/special-files/the_next_station_is.mp3",2.32},
    this_st = {"subway_announcers/ballistic_announcer/special-files/this_is.mp3",1.33},
    terminal = {"subway_announcers/ballistic_announcer/special-files/this_train_terminates_here.mp3",2.22},
    -- Stations
    rocklake = {"subway_announcers/ballistic_announcer/stations/rocklake.mp3",1.10},
    urban = {"subway_announcers/ballistic_announcer/stations/urban_park.mp3",1.33},
    white = {"subway_announcers/ballistic_announcer/stations/white_forest.mp3",1.57},
    city = {"subway_announcers/ballistic_announcer/stations/city_hall.mp3",1.36},
    aviation = {"subway_announcers/ballistic_announcer/stations/aviation_university.mp3",2.27},
    market = {"subway_announcers/ballistic_announcer/stations/market_street.mp3",1.28},
  },
  {
        {
          LED = {5,8,4,5,4,4},
          Name = "TR-52 Line",
          Loop = false,
          spec_last = {"announcer_ready", "terminal"},
          spec_wait = {{"st_cm"},{nil}},
        {
            151,"Market Street",
            arrlast = {{nil},{"gong","this_st","market","terminal"}},
            dep = {{"st_cm","next_st","aviation"},{nil}},
        },
        {
            153,"Aviation University",
            arr = {{"gong","this_st","aviation"},{"gong","this_st","aviation"}},
            dep = {{"st_cm","next_st","city,"},{"st_cm","next_st","market"}},
            arrlast = {{nil},{"gong","this_st","aviation","terminal"}},
        },
        {
            154,"City Hall",
            arr = {{"gong","this_st","city"},{"gong","this_st","city"}},
            dep = {{"st_cm","next_st","white","st_cm"},{"st_cm","next_st","aviation","st_cm"}},
        },
        {
            155,"White Forest",
            arr = {{"gong","this_st","white"},{"gong","this_st","white"}},
            arrlast = {{"gong","this_st","white","terminal"},{"gong","this_st","white","terminal"}},
            dep = {{"st_cm","next_st","urban","st_cm"},{"st_cm","next_st","city","st_cm"}},
            ignorelast = true,
        },
        {
            156,"Urban Park",
            arr = {{"gong","this_st","urban"},{"gong","this_st","urban"}},
            arrlast = {{"gong","this_st","urban","terminal"},{nil}},
            dep = {{"st_cm","next_st","rocklake"},{"st_cm","next_st","white","st_cm"}},
        },
        {
            157,"Rocklake",
            arrlast = {{"gong","this_st","rocklake","terminal"},{nil}},
            dep = {{nil},{"st_cm","next_st","urban","st_cm"}},
        }
        }
    }
)

print("RPM Announcer has now loadded fully.")