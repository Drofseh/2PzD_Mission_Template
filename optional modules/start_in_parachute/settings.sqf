/*
    Start in Parachute module by Briland
    V1.0
    This module starts all defined players inside a parachute at a defined altitude
    Optionally respawned players can also respawn in parachute
    Does not work for AI

    Syntax:
    [target, altitude, altituderandom, parachuteisstearable] call Olsen_FW_FNC_DOPARACHUTE;

    Paramaters:
    target: either the SIDE, UNIT, or ARRAY of units that you want to parachute when they spawn
    altitude: the elevation above terrain level that the parachute will open
    altituderandom (optional, default 50): A random number between 0 and altituderandom will be added to altitude for the effect to look better.
    parachuteisstearable (optional, default false): true for parachute to be stearable, false for nonstearable.
    respawn (optional, default true): will the target spawn in a parachute if they respawn.

    Examples:
    [west, 300] call Olsen_FW_FNC_DOPARACHUTE;
    [east, 200, 150] call Olsen_FW_FNC_DOPARACHUTE;
    [[coUnit, unit2], 200, 20, true] call Olsen_FW_FNC_DOPARACHUTE;
    [west, 300, 50, false, true] call Olsen_FW_FNC_DOPARACHUTE;

*/

//Set this to true if you want respawn to also start in a parachute.
spawnInParachute_respawnInParachute = True;

[west, 300, 50, false, true] call Olsen_FW_FNC_DOPARACHUTE;