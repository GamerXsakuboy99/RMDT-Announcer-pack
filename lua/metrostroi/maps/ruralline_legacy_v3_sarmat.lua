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
        LED = {4,7,6,5,5,5},
        {
            900,"Market Street",
            arr_last = {nil,{"THIIS","MAR","TERHE"}},
            dep = {{"NEXIS","AVI",0.5,"st_cm"},nil},
            right_doors = true,
          },
          {
            902,"Aviation University",
            arr = {{"THIIS","AVI"},{"THIIS","AVI"}},
            dep = {{"NEXIS","CIT",0.2,"st_cm"},{"NEXIS","MAR",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            903,"City Hall",
            arr = {{"THIIS","CIT"},{"THIIS","CIT"}},
            dep = {{"NEXIS","WHI",0.2,"st_cm"},{"NEXIS","AVI",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            904,"White Forest",
            arr = {{"THIIS","WHI"},{"THIIS","WHI"}},
            dep = {{"NEXIS","URB",0.2,"st_cm"},{"NEXIS","CIT",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            905,"Urban Park",
            arr = {{"THIIS","URB"},{"THIIS","URB"}},
            dep = {{"NEXIS","ROC",0.2,"st_cm"},{"NEXIS","WHI",0.2,"st_cm"}},
            right_doors = true,
          },
          {
            906,"Rocklake",
            arr_last = {{"THIIS","ROC","TERHE"},{nil}},
            dep = {nil,{"NEXIS","URB",0.2,"st_cm"}},
            right_doors = true,
          },
        }
    }
)

Metrostroi.SetUPOAnnouncer({
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
    {
	  151,"Market Street",
	  arr_last = {nil,{"THIIS","MAR","TERHE"}},
	  dep = {{"NEXIS","AVI",0.5,"st_cm"},nil},
	},
	{
	  153,"Aviation University",
	  arr = {{"THIIS","AVI"},{"THIIS","AVI"}},
	  dep = {{"NEXIS","CIT",0.2,"st_cm"},{"NEXIS","MAR",0.2,"st_cm"}},
	},
	{
	  154,"City Hall",
	  arr = {{"THIIS","CIT"},{"THIIS","CIT"}},
	  dep = {{"NEXIS","WHI",0.2,"st_cm"},{"NEXIS","AVI",0.2,"st_cm"}},
	},
	{
	  155,"White Forest",
	  arr = {{"THIIS","WHI"},{"THIIS","WHI"}},
	  dep = {{"NEXIS","URB",0.2,"st_cm"},{"NEXIS","CIT",0.2,"st_cm"}},
	},
	{
	  156,"Urban Park",
	  arr = {{"THIIS","URB"},{"THIIS","URB"}},
	  dep = {{"NEXIS","ROC",0.2,"st_cm"},{"NEXIS","WHI",0.2,"st_cm"}},
	},
	{
	  157,"Rocklake",
	  arr_last = {{"THIIS","ROC","TERHE"},{nil}},
	  dep = {nil,{"NEXIS","URB",0.2,"st_cm"}},
	},
})