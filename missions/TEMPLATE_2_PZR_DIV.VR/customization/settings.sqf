if (isServer) then { //This scope is only for the server

	setViewDistance 2000; //View distance for the server (the ai), lower will give better server performance, but you probably don't want to go lower than 1000
	
	FW_TimeLimit = 120; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
	
	// Teams, used for the end screen and to calculate casualties on each side
	// The names in endConditions.sqf used in the casualty calls MUST match these names.
	[west, "2 Panzer Division", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
	[east, "Red Army", "ai"] call FNC_AddTeam; //Adds a ai team called MSV on side east
	//[resistance, "PUT_TEAM_NAME_HERE, British, US Army, Whatever", "ai"] call FNC_AddTeam; //Adds an ai team called PUT_TEAM_NAME_HERE on side resistance (aka independent)
	//[civilian, "Civilians", "ai"] call FNC_AddTeam; // civilians

};

if (!isDedicated) then { //This scope is only for the player

	FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released
	
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon";

	setViewDistance 2500; //View distance for the player - set lower on urbanised map to increase player performance
	
	FW_RespawnTickets = 0;//If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
};