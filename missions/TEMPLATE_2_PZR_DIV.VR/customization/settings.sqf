if (isServer) then { //This scope is only for the server

    setViewDistance 1000; //View distance for the server and any AI controlled by the server (Note - the server does not normally control the AI, instead the Headless Clients do)

    FW_TimeLimit = 4*60; //Time limit in minutes, to disable the time limit set it to 0 - Is is strongly recommended that every mission has a time limit simply to force the mission to end if it is accidentally left running.

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

if (!hasInterface && !isDedicated) then { //This scope is only for the Headless Clients only

    setViewDistance 1000;
    //View distance for any AI controlled by the Headless Clients (which is normally all the AI)
    //Do not change this without Council permission.

};

if (hasInterface) then { //This scope is for the players

    FW_DebugMessagesEnabled = true;//Only disable debug messages when the mission is released - to disable messages, set this to false

    if ((vehicle player) == player) then {
        player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; //This moves all players to the kneeling position at mission start, unless they start inside a vehicle
    };

    setViewDistance 2000; //View distance for the player set lower on urbanised map to increase player performance

    //[[1,2], [0]] call ace_spectator_fnc_updateCameraModes; //Set ACE Spectator camera modes. Should only be enabled for TvT. See https://ace3mod.com/wiki/framework/spectator-framework.html#44-addremove-available-camera-modes
    //[[-2], [-1,0,1,2,3,4,5,6,7]] call ace_spectator_fnc_updateVisionModes; //Set ACE Spectator camera vision mods. Should only be enabled for TvT. See https://ace3mod.com/wiki/framework/spectator-framework.html#45-addremove-available-vision-modes
    
    switch (side player) do { // Sets respawn tickets and sides visible in spectator, based on player side.
        case west: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
            FW_SpectatorSides = [[west], [east,independent,civilian]]; //[[allowed sides],[disallowed sides]] move a side to the other array to change it's visibility.  Example: [[west,independent], [east,civilian]]
        };
        case east: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_east_respawn
            FW_SpectatorSides = [[east], [west,independent,civilian]];
        };
        case resistance: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_guer_respawn
            FW_SpectatorSides = [[independent], [west,east,civilian]];
        };
        case civilian: {
            FW_RespawnTickets = 0; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_civilian_respawn
            FW_SpectatorSides = [[civilian], [west,east,independent]];
        };
    };
};
