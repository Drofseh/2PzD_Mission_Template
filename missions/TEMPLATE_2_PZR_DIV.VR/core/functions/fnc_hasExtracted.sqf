/*
 * Author: BlackHawk && Wilhelm Haas
 *
 * Checks if given part of team has extracted to set area.
 * This function accounts for team starting in extraction area.
 *
 * Arguments:
 * 0: team name <string>
 * 1: extraction area marker <string>
 * 2: part of team that has to extract (0.8 - 80%, etc.) <number> (OPTIONAL)
 *
 * Return Value:
 * has team extracted <bool>
 *
 * Public: Yes
 */

params [
    ["_team", "", [""]],
    ["_marker", "", [""]],
    ["_ratio", 1, [0]],
    "_side",
    "_count",
    "_result"
];

_result = false;
_side = [_team, 1] call FNC_getTeamVariable;
_count = {
    side _x == _side && {_x inArea _marker};
} count allUnits;

if (_count >= _ratio * ([_team, 4] call FNC_getTeamVariable)) then {
    _result = true;
};

_result
