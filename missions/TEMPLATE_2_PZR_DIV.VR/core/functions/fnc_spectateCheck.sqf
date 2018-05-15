/*
 * Author: Olsen
 *
 * Locally displays the appropriate message when the player dies.
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

if (FW_RespawnTickets > 0) then {

    ["<t color='#ff0000' size = '1.25'><br/>You are dead.<br/><br/>Respawning", 0, 0.2, 5, 0.5, 0, 1000] spawn BIS_fnc_dynamicText;

} else {

    setPlayerRespawnTime 10e10;
    
    //systemChat str playerRespawnTime;

    ["<t color='#ff0000' size = '1.25'>You are dead.", 0, 0.2, 5, 0.5, 0, 1000] spawn BIS_fnc_dynamicText;

    player setVariable ["FW_Dead", true, true]; //Tells the framework the player is dead

    //"DeadText" cutText ["<t size = '2'>You are dead.</t>", "BLACK", 0.1, true, true];
    //"DeadText" cutFadeOut 5;
};

[true] call acre_api_fnc_setSpectator; //Enable this if using ACRE2
// systemChat "Acre Spec Set";

[true] call ace_spectator_fnc_setSpectator; //This enables the ACE_Spectator
// systemChat "ACE Spec Set";

//[allPlayers, [player]] call ace_spectator_fnc_updateUnits;
//[units side player, [player]] call ace_spectator_fnc_updateUnits;
//[allUnits, [player]] call ace_spectator_fnc_updateUnits;

switch (side player) do { // Sets respawn tickets and sides visible in spectator, based on player side.
    case west: {
        //[[west], [east,independent,civilian]] call ace_spectator_fnc_updateSides;
        FW_SpectatorSides call ace_spectator_fnc_updateSides;
        // systemChat "ACE Spec Side West";
    };
    case east: {
        //[[east], [west,independent,civilian]] call ace_spectator_fnc_updateSides;
        FW_SpectatorSides call ace_spectator_fnc_updateSides;
        // systemChat "ACE Spec Side East";
    };
    case resistance: {
        //[[independent], [west,east,civilian]] call ace_spectator_fnc_updateSides;
        FW_SpectatorSides call ace_spectator_fnc_updateSides;
        // systemChat "ACE Spec Side Ind";
    };
    case civilian: {
        //[[civilian], [west,east,independent]] call ace_spectator_fnc_updateSides;
        FW_SpectatorSides call ace_spectator_fnc_updateSides;
        // systemChat "ACE Spec Side Vic";
    };
    // systemChat "ACE Spec Sides Updated";
};
