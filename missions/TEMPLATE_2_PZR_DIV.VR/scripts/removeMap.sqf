if (local (_this select 0)) then {
    [{
        FW_mapRemoved = 1;
        _this removeWeapon "ItemMap";
    }, (_this select 0), 1] call CBA_fnc_waitAndExecute;
};
