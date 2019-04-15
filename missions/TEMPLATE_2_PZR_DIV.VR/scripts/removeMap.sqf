params ["_unit"];

if (local _unit) then {
    [
        {time > 5},
        {
            FW_mapRemoved = 1;
            _this removeWeapon "ItemMap";
        },
        _unit
    ] call CBA_fnc_waitUntilAndExecute;
};
