//These are based on the team names from setting.sqf
//They MUST match.

westCasualty = "2 Panzer Division" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Blufor team.
    publicVariable "westCasualty";
eastCasualty = "Red Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Opfor team
    publicVariable "eastCasualty";
//resistanceCasualty = "PUT_TEAM_NAME_HERE" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Indfor team.
    //publicVariable "resistanceCasualty";
//civilianCasualty = "Civilians" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Civilian team.
    //publicVariable "civilianCasualty";

    testVar = TRUE;
    publicVariable "testVar";

//Some basic casualty based end conditions, you can make your own based on basically whatever ARMA will support.
//They aren't limited to one per side or anything like that, so make as many as you need
//Just make sure you test to make sure they all work!
/*
if (eastCasualty >= 75) exitWith { //ends when Opfor deaths above or equal to 75%
    "Red Army forces have taken too many casualties to continue operations.
    <br/>
    <br/>BLUFOR VICTORY" call FNC_EndMission;
};

if (westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
    "2 Panzer Division has taken too many casualties to continue operations.
    <br/>
    <br/>OPFOR VICTORY" call FNC_EndMission;
};
*/

//Time limit message/time are in settings.sqf

/*
Alternative methods of counting casualties

    "USMC" call FNC_casualtyCount;
        this will count how many members of a team died in the mission

    "USMC" call FNC_countTeam;
        this will check how many players are remaining in a team
        be careful as using this method will end the mission instantly if
        not enough players are present in the team


Adding extraction

    ["USMC", "ExtractionAreaMarker", 0.8] call FNC_hasExtracted;
        this will check if at least 80% of remaining forces are present in extraction area
*/

sleep (10); //This determines how frequently the end conditions should be checked in seconds