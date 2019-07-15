PREP(getTeamVariable);
PREP(setTeamVariable);
PREP(eventKilled);
PREP(eventPlayerSpawned);
PREP(eventSpawned);
PREP(eventRespawned);
PREP(eventDisconnect);
PREP(forceTerrainGrid);
PREP(trackUnit);
PREP(untrackUnit);
PREP(StartingCount);
PREP(stackNames);
PREP(getDamagedAssets);
PREP(createRespawnMarker);
PREP(inArea);
PREP(areaCount);
PREP(endMission);
PREP(endMissionRequest);
PREP(casualtyPercentage);
PREP(casualtyCount);
PREP(alive);
PREP(hasEmptyPositions);
PREP(inVehicle);
PREP(addTeam);
PREP(spectateCheck);
PREP(spectatePrep);
PREP(countTeam);
PREP(spawnAI);
PREP(spawnVehicle);
PREP(hasExtracted);

enableSaving [false, false];

if (isServer) then {
    "west" call FNC_CreateRespawnMarker;
    "east" call FNC_CreateRespawnMarker;
    "guer" call FNC_CreateRespawnMarker;
    "civ" call FNC_CreateRespawnMarker;

    FW_Teams = []; //DO NOT REMOVE
    FW_MissionEnded = false; //Mission has not ended

    FW_EventPlayerSpawnedHandle = ["FW_PlayerSpawned", {_this call FNC_EventPlayerSpawned;}] call CBA_fnc_addEventHandler;
    FW_EventRespawnedHandle = addMissionEventHandler ["EntityRespawned", {_this call FNC_EventRespawned;}];
    FW_EventKilledHandle = addMissionEventHandler ["EntityKilled", {_this call FNC_EventKilled;}];

    FW_EventDisconnectHandle = addMissionEventHandler ["HandleDisconnect", {_this call FNC_EventDisconnect;}];
};

if (hasInterface) then {
    //Anything done using "player" must be past this line for JIP compatibility
    waitUntil {!(isNull player)};

    //Tells the server the player has spawned
    ["FW_PlayerSpawned", player] call CBA_fnc_serverEvent;

    //"FW_EndMission" player event sends the received variables to the end screen
    FW_EndMissionEh = ["FW_EndMission", {_this execVM "core\dia\endscreen\dia_endscreen.sqf";}] call CBA_fnc_addEventHandler;

    //Various settings
    enableEngineArtillery true; //Enable Arma 3 artillery computer
    enableRadio false; //Disable Arma 3 regular radio
    enableSentences false; //Disable Arma 3 regular radio chatter
    0 fadeRadio 0; //Lower radio volume to 0

    //Creates the briefing notes for the player
    "" call FNC_Briefing;
    "" call FNC_Menu;

    FW_RespawnTickets = 0; //Initialize respawn tickets to 0

    player setVariable ["FW_Dead", false, true]; //Tells the framework the player is alive

    //Makes the player go into spectator mode when dead or respawn if he has respawn tickets
    FW_KilledEh = player addEventHandler ["Killed", {_this call FNC_SpectateCheck;}];
    FW_RespawnEh = player addEventHandler ["Respawn", {_this call FNC_SpectatePrep;}];

    //Various settings
    player addRating 100000; //Makes sure ai doesnt turn hostile when teamkilling
    player setVariable ["BIS_noCoreConversations", true]; //Disable scroll wheel conversations

    //Check mission date
    private _date = date;
    private _dateYear = _date select 0;
    private _dateMonth = _date select 1;
    private _dateDay = _date select 2;
    if (
        _dateYear < 1939
        || {_dateYear == 1939 && _dateMonth < 9}
        || {_dateYear > 1945}
        || {_dateYear == 1945 && {_dateMonth > 9 || {_dateMonth == 9 && _dateDay > 2}}}
    ) then {
        switch (_dateMonth) do {
            case  1 : {_dateMonth = "Jan"};
            case  2 : {_dateMonth = "Feb"};
            case  3 : {_dateMonth = "Mar"};
            case  4 : {_dateMonth = "Apr"};
            case  5 : {_dateMonth = "May"};
            case  6 : {_dateMonth = "June"};
            case  7 : {_dateMonth = "July"};
            case  8 : {_dateMonth = "Aug"};
            case  9 : {_dateMonth = "Sept"};
            case 10 : {_dateMonth = "Oct"};
            case 11 : {_dateMonth = "Nov"};
            case 12 : {_dateMonth = "Dec"};
        };

        private _tempText = format ["Warning: Mission date is not set during WW2.<br></br>Expected date range is 01 Sept 1939 to 02 Sept 1945.<br></br>Current date is %1 %2 %3.<br></br>If this is intentional ignore this warning, otherwise set the intended date in the Eden Editor's Attributes - Environment menu.", _dateDay, _dateMonth, _dateYear];
        _tempText call FNC_DebugMessage;
    };
};
