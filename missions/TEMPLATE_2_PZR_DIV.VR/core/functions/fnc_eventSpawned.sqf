/*
 * Author: Olsen
 *
 * If unit is tracked increase number of alive units on it's team.
 *
 * Arguments:
 * 0: unit to track <object>
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

private _unit = _this;

if (_unit getVariable ["FW_Tracked", false]) then {

    _unit setVariable ["FW_HasDied", false]; //we will use this variable to make sure killed eventHandler doesn't fire twice

    {
        _x params ["", "_side", "_type", "_total", "_current"];

        if (
            (_unit getVariable "FW_Side") isEqualTo _side
            && {isPlayer _unit || {(toLower _type) isEqualTo "ai"}}
        ) exitWith {
            _x set [3, _total + 1];

            if (_unit call Olsen_FW_FNC_Alive) then {
                _x set [4, _current + 1];
            };
        };
    } forEach FW_Teams;
};
