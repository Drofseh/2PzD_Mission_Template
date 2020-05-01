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

ace_nametags_showPlayerNames = 0;

[{
    ace_nametags_showPlayerNames = 1;
}, [], 5] call CBA_fnc_waitAndExecute;

if (FW_RespawnTickets > 0) then {

    player setVariable ["FW_Dead", false, true]; //Tells the framework the player is alive

    private _respawnName = toLower(format ["fw_%1_respawn", playerSide]);
    private _respawnPoint = missionNamespace getVariable [_respawnName, objNull];
    private _loadout = (player getVariable ["FW_Loadout", ""]);

    if (_loadout != "") then {
        [player, _loadout] call Olsen_FW_FNC_GearScript;
    };

    if (!isNull(_respawnPoint)) then {
        _respawnPosition = getPosATL _respawnPoint;
        player setPosATL ([[[_respawnPosition, 7]]] call BIS_fnc_randomPos); //yes this needs all three square brackets on each side.
    };

    if (player getVariable ["spawnInParachute_parachuteRespawn", false]) then {
        [player, (player getVariable ["spawnInParachute_parachuteRespawnHeight", 300])] call Olsen_FW_FNC_DOPARACHUTE;
    };

    FW_RespawnTickets = FW_RespawnTickets - 1;

    private _text = "respawns left";

    if (FW_RespawnTickets == 1) then {
        _text = "respawn left";
    };

    cutText [format ['%1 %2', FW_RespawnTickets, _text], 'PLAIN DOWN'];

    if (player getVariable ["FW_mapRemoved", true]) then {
        [
            {player call Olsen_FW_FNC_Remove_Map;},
            [],
            5
        ] call CBA_fnc_waitAndExecute;
    };

} else {

    player setVariable ["FW_Dead", true, true]; //Tells the framework the player is dead

    player setCaptive true;

    player allowdamage false;

    player call Olsen_FW_FNC_RemoveAllGear;

    player addWeapon "itemMap";

    player setPos [0, 0, 0];

    [player] join grpNull;

    hideObjectGlobal player;

    [true] call acre_api_fnc_setSpectator;

    [true] call ace_spectator_fnc_setSpectator;

};