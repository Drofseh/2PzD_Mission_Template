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

params ["_unit", "_killer", "_instigator", "_useEffects"];

private _nameKiller = name _killer;

if (!isNil "God" && {God isEqualTo _killer || {group _killer isEqualTo group God}}) then {
    _nameKiller = "someone or something";
} else {
    [0, _killer] call ace_spectator_fnc_setCameraAttributes;
    if (_nameKiller == "Error: No vehicle" || {_nameKiller == "Error: No unit"}) then {
        _nameKiller = name (player getVariable ["ace_medical_lastDamageSource", _killer]);
        if (_nameKiller == "Error: No vehicle" || {_nameKiller == "Error: No unit"}) then {
            _nameKiller = "someone or something";
        };
    };
};

// Fade the screen to black and then fade it back in.
[0,"BLACK",0,1] spawn BIS_fnc_fadeEffect;
[{[1,"BLACK",5,1] spawn BIS_fnc_fadeEffect;}, [], 5] call CBA_fnc_waitAndExecute;

// Check if tickets remain and play appropriate dead message
if (FW_RespawnTickets > 0) then {
    [(format ["<t color='#ff0000' size = '1.25'>You are dead.<br/><br/>You were killed by %1.<br/><br/>Respawning", _nameKiller]), 0, 0.2, 5, 0.5, 0, 1000] spawn BIS_fnc_dynamicText;
} else {
    setPlayerRespawnTime 10e10;
    //systemChat str playerRespawnTime;

    [(format ["<t color='#ff0000' size = '1.25'>You are dead.<br/><br/>You were killed by %1.", _nameKiller]), 0, 0.2, 5, 0.5, 0, 1000] spawn BIS_fnc_dynamicText;

    player setVariable ["FW_Dead", true, true]; //Tells the framework the player is dead
};

// force into ACE Spectator and update visible sides based on mission setting

[true] call acre_api_fnc_setSpectator; //Enable this if using ACRE2
// systemChat "Acre Spec Set";

[true] call ace_spectator_fnc_setSpectator; //This enables the ACE_Spectator
// systemChat "ACE Spec Set";

//[allPlayers, [player]] call ace_spectator_fnc_updateUnits;
//[units playerSide, [player]] call ace_spectator_fnc_updateUnits;
//[allUnits, [player]] call ace_spectator_fnc_updateUnits;

switch (playerSide) do { // Sets respawn tickets and sides visible in spectator, based on player side.
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
