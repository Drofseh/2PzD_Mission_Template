//These are based on the team names from setting.sqf
//They MUST match.

_westCasualty = "2 Panzer Division" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Blufor team.
_eastCasualty = "Red Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Opfor team
//_resistanceCasualty = "PUT_TEAM_NAME_HERE, British, US Army, Whatever" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Indfor team.
//_civilianCasualty = "Civilians" call FNC_CasualtyPercentage; //Gets the casualty percentage of the Civilian team.

//Some basic casualty based end conditions, you can make your own based on basically whatever ARMA will support.
//They aren't limited to one per side or anything like that, so make as many as you need
//Just make sure you test to make sure they all work!

if (_eastCasualty >= 75) exitWith { //ends when Opfor deaths above or equal to 75%
	"Red Army forces have taken too many casualties to continue operations.
	<br/>
	<br/>BLUFOR VICTORY" call FNC_EndMission;
};

if (_westCasualty >= 75) exitWith { //ends when Bluefor deaths above or equal to 75%
	"2 Panzer Division has taken too many casualties to continue operations.
	<br/>
	<br/>OPFOR VICTORY" call FNC_EndMission;
};

//Time limit message/time are in settings.sqf

sleep (60); //This determines how frequently the end conditions should be checked in seconds