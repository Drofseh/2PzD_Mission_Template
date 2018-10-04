//These are used to get the casualty numbers for the end screen. To not remove them!
//They use the team names from the setting.sqf
//They MUST match exactly!
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


//=== Time Limit End Message
//This message displayed when the time runs out
//The time limit is set in customization/settings.sqf
    FW_TimeLimitMessage = "TIME LIMIT REACHED!";


//=== Admin/Zeus End Messages
//End messages to be used with the in briefing Admin Tab end mission options.
//These ending must be triggered manually by someone with access to the Admin Tab.
//Change the messages to reflect your mission and add additional messages as required.
    victoryMessage = "
    <br/>The Admin or Zeus has ended the mission.
    <br/>
    <br/>Victory";

    failureMessage = "
    <br/>The Admin or Zeus has ended the mission.
    <br/>
    <br/>Defeat";

/*
    myCustomMessage = "
    <br/>This is an example of a custom message.
    <br/>Make sure you add the ability to call it to the admin tab in the briefing.sqf
    <br/>Defeat/Victory";
*/

//=== Scripted End Conditions
//Scripted end conditions allow you to end the mission automatically based on the state of the mission.
//You can make your own based on basically whatever ARMA will support.

//Some basic examples of casualty based end condition.
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

/*
Alternative methods of counting casualties
    "2 Panzer Division" call FNC_casualtyCount;
        this will count how many members of a team died in the mission

    "2 Panzer Division" call FNC_countTeam;
        this will check how many players are remaining in a team
        be careful as using this method will end the mission instantly if
        not enough players are present in the team


Adding extraction
    ["2 Panzer Division", "ExtractionAreaMarker", 0.8] call FNC_hasExtracted;
        this will check if at least 80% of remaining forces are present in extraction area
*/

sleep (10); //This determines how frequently the end conditions should be checked in seconds