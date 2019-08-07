/*
 * Author: Wilhelm Haas (Drofseh)
 *
 * Removes the units map item after mission start.
 *
 * Arguments:
 * 0: unit
 *
 * Return Value:
 * nothing
 *
 * Public: Yes
 */

params ["_unit"];

if (local _unit) then {
    [
        {CBA_missionTime > 1},
        {
            params ["_unit"];
            _unit setVariable ["FW_mapRemoved", true];
            _unit removeWeapon "ItemMap";
        },
        _unit
    ] call CBA_fnc_waitUntilAndExecute;
};
