/*
 * Author: Olsen
 *
 * Returns casualty percentage for set team
 *
 * Arguments:
 * 0: team <string>
 *
 * Return Value:
 * casualty percentage (1-100) <number>
 *
 * Public: Yes
 */

private _team = _this;
private _count = 0;
private _start = [_team, 3] call Olsen_FW_FNC_GetTeamVariable;
private _current = [_team, 4] call Olsen_FW_FNC_GetTeamVariable;

if (_start == 0) then {
    (format ["Casualty count: Warning no units on team ""%1"".", _team]) call Olsen_FW_FNC_DebugMessage;
} else {
    _count = (_start - _current) / (_start * 0.01);
};

_count
