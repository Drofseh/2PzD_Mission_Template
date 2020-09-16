
// ["012","021"] call Olsen_FW_FNC_SupportFire_SetTargetGrid;
Olsen_FW_FNC_SupportFire_SetTargetGrid = {
    params [
        "_supportFire_TargetGrid_gridX",
        "_supportFire_TargetGrid_gridY",
        ["_supportFire_TargetGrid_testFail",false]
    ];
/*
    _supportFire_TargetGrid_gridX = (_supportFire_TargetGrid_gridX splitString ".") select 0;
    _supportFire_TargetGrid_gridY = (_supportFire_TargetGrid_gridY splitString ".") select 0;
*/
    if ((count _supportFire_TargetGrid_gridX) != 3 || {(count _supportFire_TargetGrid_gridY) != 3}) exitWith {
        "Target grid format is invalid, please input correct grid format." call CBA_fnc_notify;
    };

    {
        _supportFire_TargetGrid_testValue = toArray _x;
        if !((_supportFire_TargetGrid_testValue select 0) in [48,49,50,51,52,53,54,55,56,57]) exitWith {
            _supportFire_TargetGrid_testFail = True;
        };
    } forEach ((_supportFire_TargetGrid_gridX splitString "") + (_supportFire_TargetGrid_gridY splitString ""));

    if (_supportFire_TargetGrid_testFail) exitWith {
        "Target grid format is invalid, please input correct grid format." call CBA_fnc_notify;
    };

    [
        ["Target Grid:"],
        [format ["East:  %1 - North: %2", _supportFire_TargetGrid_gridX, _supportFire_TargetGrid_gridY]]
    ] call CBA_fnc_notify;

    supportFire_gridTargetName = format ["Grid %1 %2", _supportFire_TargetGrid_gridX, _supportFire_TargetGrid_gridY];

    _supportFire_TargetGrid_gridX = (parseNumber _supportFire_TargetGrid_gridX) * 100 + 50;
    _supportFire_TargetGrid_gridY = (parseNumber _supportFire_TargetGrid_gridY) * 100 + 50;

    supportFire_targetGrid = [_supportFire_TargetGrid_gridX,_supportFire_TargetGrid_gridY,0];
    supportFire_targetType = "TargetGrid";

    //hint format ["TarX: %1 - Y: %2", _supportFire_TargetGrid_gridX, _supportFire_TargetGrid_gridY];
    //systemChat format ["X: %1 - Y: %2", _supportFire_TargetGrid_gridX, _supportFire_TargetGrid_gridY];
    //systemChat str supportFire_targetGrid;
};
