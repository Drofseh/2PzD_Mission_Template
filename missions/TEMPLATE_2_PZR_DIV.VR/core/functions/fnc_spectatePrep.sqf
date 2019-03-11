/*
 * Author: Olsen
 *
 * Checks and handles if the player should respawn or begin spectating.
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

[false] call acre_api_fnc_setSpectator;
// systemChat "Acre Spec UnSet";

[false] call ace_spectator_fnc_setSpectator;
// systemChat "ACE Spec UnSet";

if (FW_RespawnTickets > 0) then {

    player setVariable ["FW_Dead", false, true]; //Tells the framework the player is alive

    private _respawnName = toLower(format ["fw_%1_respawn", side player]);
    private _respawnPoint = missionNamespace getVariable [_respawnName, objNull];

    private _loadout = (player getVariable ["FW_Loadout", ""]);

    if (_loadout != "") then {
        [player, _loadout] call FNC_GearScript;
    };

    if (!isNull(_respawnPoint)) then {
        _respawnPosition = getPosATL _respawnPoint;
        player setPosATL ([[[_respawnPosition, 7]]] call BIS_fnc_randomPos); //yes this needs all three square brackets on each side.
    };

    FW_RespawnTickets = FW_RespawnTickets - 1;

    private _text = "respawns left";

    if (FW_RespawnTickets == 1) then {
        _text = "respawn left";
    };

    cutText [format ['%1 %2', FW_RespawnTickets, _text], 'PLAIN DOWN'];

    if (isNil "FW_mapRemoved") then {
        FW_mapRemoved = 0;
    } else {
        if (FW_mapRemoved == 1) then {
            nul = [player] execVM "scripts\removeMap.sqf";
        };
    };

} else {

    player setVariable ["FW_Dead", true, true]; //Tells the framework the player is dead

    player setCaptive true;

    player allowdamage false;

    player call FNC_RemoveAllGear;

    player addWeapon "itemMap";

    player setPos [0, 0, 0];

    [player] join grpNull;

    hideObjectGlobal player;

    [true] call acre_api_fnc_setSpectator;

    [true] call ace_spectator_fnc_setSpectator;
};