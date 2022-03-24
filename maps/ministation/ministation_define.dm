/datum/map/ministation
	name = "Ministation"
	full_name = "Ministation Zebra"
	path = "ministation"
	ground_noun = "floor"

	station_name = "Infernum"
	station_short = "Hell"

	dock_name     = "Finite Beginnings Free Dock"
	boss_name     = "Hades"
	boss_short    = "Admin"
	company_name  = "Free Trade Union Residual Delta"
	company_short = "RD"

	default_law_type = /datum/ai_laws/nanotrasen

	lobby_screens = list('maps/ministation/ministation_lobby.png')
	lobby_tracks = list(/decl/music_track/hades)

	//TEMPORARY NOTE: Evac messages are temporary until its set up properly. Make sure they're changed later.
	emergency_shuttle_leaving_dock = "Attention all crew members: the escape shuttle will be arriving shortly, please prepare to board."
	emergency_shuttle_called_message = "Attention all crew members: emergency evacuation procedures are now in effect. Please make your way to the port hallway docking area in a calm and orderly manner."
	emergency_shuttle_recall_message = "Attention all crew members: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/ministation_substitute

	pray_reward_type = /obj/item/mollusc/clam

	starting_money = 5000
	department_money = 1000
	salary_modifier = 0.2

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Station wide maintenance access has been granted. Please take shelter within the nearest maintenance tunnel."

	allowed_spawns = list(
		/decl/spawnpoint/arrivals,
		/decl/spawnpoint/cryo
	)
	default_spawn = /decl/spawnpoint/arrivals


/datum/map/ministation/get_map_info()
	return "Welcome to <b>[station_name]</b>, otherwise known as <b>[station_short]</b>, <b>[boss_name]'s</b> domain"

/datum/evacuation_controller/ministation_substitute
	name = "lazy ministation evac controller"
	evac_prep_delay =    6 MINUTES
	evac_launch_delay =  1 SECONDS
	evac_transit_delay = 1 SECONDS