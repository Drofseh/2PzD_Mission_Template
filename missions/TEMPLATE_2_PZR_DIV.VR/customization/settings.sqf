if (isServer) then { //This scope is only for the server

    setViewDistance 2000; //View distance for the server and any AI controlled by the server (Note - the server does not normally control the AI, instead the Headless Clients do)

    FW_TimeLimit = 4*60; //Time limit in minutes, to disable the time limit set it to 0
    FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out

    // Teams, used for the end screen and to calculate casualties on each side
    // The names in endConditions.sqf used in the casualty calls MUST match these names.
    [west, "2 Panzer Division", "player"] call FNC_AddTeam; //Adds a player team called USA on side west
    [east, "Red Army", "ai"] call FNC_AddTeam; //Adds a ai team called Red Army on side east
    //[resistance, "PUT_TEAM_NAME_HERE", "ai"] call FNC_AddTeam; //Adds an ai team called PUT_TEAM_NAME_HERE on side resistance (aka independent)
    //[civilian, "Civilians", "ai"] call FNC_AddTeam; // civilians

    publicVariable "callMissionRemote";

    "callMissionRemote" addPublicVariableEventHandler {
        _endStringMessage = _this select 1;
        _endString = _endStringMessage select 0;
        _endString call FNC_EndMission;
    };
};

if (!isDedicated) then { //This scope is for the player & the Headless Clients

    FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released

    player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon";

    setViewDistance 2000; //View distance for the player and any AI controlled by the Headless Clients (which is normally all the AI) - set lower on urbanised map to increase player performance
    
    switch (side player) do { // Sets respawn tickets based on player side.
        case west: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
        };
        case east: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_east_respawn
        };
        case resistance: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_resistance_respawn
        };
        case civilian: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_civilian_respawn
        };
    };
};

//New end messages to be used with the in briefing Admin Tab end mission options.
//Change the messages to reflect your mission.
    victoryMessage = "
    <br/>The Admin or Zeus has ended the mission.
    <br/>
    <br/>Victory";

    failureMessage = "
    <br/>The Admin or Zeus has ended the mission.
    <br/>
    <br/>Defeat";