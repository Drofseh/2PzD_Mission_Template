/*
 * Author: Olsen
 *
 * Display a debug message.
 * Must be ran during init in order to work properly.
 *
 * Arguments:
 * 0: message <string>
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_message","_found"];

_message = _this;
_found = false;

{

    if (_x == _message) exitWith {

        _found = true;

    };

} forEach FW_DebugMessages;

if (!_found) then {

    FW_DebugMessages set [count FW_DebugMessages, _message];

};
