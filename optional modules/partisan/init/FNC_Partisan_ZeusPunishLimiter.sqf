
Olsen_FW_FNC_Partisan_ZeusPunishLimiter = {
    params ["_nearestMen"];

    [{
        call Olsen_FW_FNC_Partisan_ZeusPunishLimiter;
    },[],1] call CBA_fnc_waitAndExecute;

    _nearestMen = ace_player nearObjects ["Man", 5];

    {
        if (isPlayer _x && {side _x in (Partisan_sidePartisan + [civilian])}) then {
            _x setCaptive true;
        };
    } forEach _nearestMen;
};
