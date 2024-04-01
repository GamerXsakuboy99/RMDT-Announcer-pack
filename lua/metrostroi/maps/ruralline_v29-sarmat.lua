local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline_v29") or Map:find("gm_metro_ruralline_v3") or Map:find("gm_metro_ruralline_v4") then
    Metrostroi.PlatformMap = "ruralline"
    Metrostroi.CurrentMap = "ruralline_v29"
elseif Map:find("gm_metro_ruralline_v29_old") then
  print("Old Ruralline V29 support has been dropped.")
end
    return
end

Metrostroi.AddSarmatUPOAnnouncer("[UPO] Rockport metropolitan | Ballistic",{
    --Announcer Startup
	name = "[UPO] Rockport metropolitan | Ballistic",
	tone = {"subway_announcers/valentin_announcer/sarmat_upo/mireo_gong_01.mp3",1.31},
	click1 = {"subway_announcers/upo/click1.mp3", 0.3},
    click2 = {"subway_announcers/upo/click2.mp3", 0.1},
	--Stations
	AVI = {"subway_announcers/ballistic_announcer/stations/aviation_university.mp3",2.27},
	CIT = {"subway_announcers/ballistic_announcer/stations/city_hall.mp3",1.36},
	MAR = {"subway_announcers/ballistic_announcer/stations/market_street.mp3",1.28},
	ROC = {"subway_announcers/ballistic_announcer/stations/rocklake.mp3",1.10},
	URB = {"subway_announcers/ballistic_announcer/stations/urban_park.mp3",1.33},
	WHI = {"subway_announcers/ballistic_announcer/stations/white_forest.mp3",1.57},
	--Station Commands
	NEXIS = {"subway_announcers/ballistic_announcer/special-files/the_next_station_is.mp3",2.32},
	THIIS = {"subway_announcers/ballistic_announcer/special-files/this_is.mp3",1.33},
	TERHE = {"subway_announcers/ballistic_announcer/special-files/this_train_terminates_here.mp3",2.22},
	--Warning Bell
	st_cm = {"subway_announcers/global-sounds/announcer-play.mp3", 2.27},
},{
    { --МАРШРУТ
        LED = {3,4,5,5,5,5,3,2},
        {
            151,"Market Street",
            arr_last = {nil,{"THIIS","MAR","TERHE"}},
            dep = {{"NEXIS","AVI",0.5,"st_cm"},nil},
            right_doors = true,
          },
          {
            153,"Aviation University",
            arr = {{"THIIS","AVI"},{"THIIS","AVI"}},
            dep = {{"NEXIS","CIT",0.2,"st_cm"},{"NEXIS","MAR",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            154,"City Hall",
            arr = {{"THIIS","CIT"},{"THIIS","CIT"}},
            dep = {{"NEXIS","WHI",0.2,"st_cm"},{"NEXIS","AVI",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            155,"White Forest",
            arr = {{"THIIS","WHI"},{"THIIS","WHI"}},
            dep = {{"NEXIS","URB",0.2,"st_cm"},{"NEXIS","CIT",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            156,"Urban Park",
            arr = {{"THIIS","URB"},{"THIIS","URB"}},
            dep = {{"NEXIS","ROC",0.2,"st_cm"},{"NEXIS","WHI",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            157,"Rocklake",
            arr_last = {{"THIIS","ROC","TERHE"},{nil}},
            dep = {nil,{"NEXIS","URB",0.2,"st_cm"}},
            right_doors = true,
          },
        }
    }
)
