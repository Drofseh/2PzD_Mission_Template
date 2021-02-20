//This checks if the player has a magazine with more than 50 rounds in it and gives a sway penalty to aiming relative to the number of rounds over 50.
Olsen_FW_FNC_HandleLargeMagazine = {
    params ["_unit"];
    private _stance = stance _unit;
    private _magazine = currentMagazine _unit;

    if (_stance isEqualTo "PRONE" || {_stance isEqualTo "UNDEFINED" } || {isWeaponRested _unit} || {isWeaponDeployed _unit} || {_magazine isEqualTo "LIB_M2_Flamethrower_Mag"}) exitWith {
        [_unit, "ACE_setCustomAimCoef", "Olsen_FW_HandleLargeMagazine", {1}] call ace_common_fnc_arithmeticSetSource;
        _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);
    };

    private _ammoCount = _unit ammo currentWeapon _unit;

    if (_ammoCount > 50) then {
        [_unit, "ACE_setCustomAimCoef", "Olsen_FW_HandleLargeMagazine", {linearConversion [50,250,_ammoCount,1,10]}] call ace_common_fnc_arithmeticSetSource;
        _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);
    } else {
        [_unit, "ACE_setCustomAimCoef", "Olsen_FW_HandleLargeMagazine", {1}] call ace_common_fnc_arithmeticSetSource;
        _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);
    };

    true
};

player addEventHandler ["Reloaded", {
    params ["_unit"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["AnimDone", {
    params ["_unit"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["Fired", {
    params ["_unit"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["WeaponRested", {
    params ["_unit"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["WeaponDeployed", {
    params ["_unit"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];
