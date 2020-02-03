//This checks if the player has a magazine with more than 50 rounds in it and gives a sway penalty to aiming relative to the number of rounds over 50.
Olsen_FW_FNC_HandleLargeMagazine = {
    params ["_unit"];
    private _stance = stance _unit;
    private _magazine = primaryWeaponMagazine _unit;

    if (_stance == "PRONE" || {_stance == "UNDEFINED" } || {isWeaponRested _unit} || {isWeaponDeployed _unit} || {primaryWeaponMagazine _unit select 0 == "LIB_M2_Flamethrower_Mag"}) exitWith {
        _unit setCustomAimCoef (_unit getVariable ["cache_CustomAimCoef", 1]);
    };

    private _ammoCount = _unit ammo primaryWeapon _unit;
    private _cachedCustomAimCoef = _unit getVariable ["cache_CustomAimCoef", 1];

    if (_ammoCount > 50) then {
        if (_cachedCustomAimCoef != 1) then {
            _unit setVariable ["cache_CustomAimCoef", (getCustomAimCoef _unit)];
        };
        _unit setCustomAimCoef (linearConversion [50,250,_ammoCount,1,10]);
    } else {
        _unit setVariable ["cache_CustomAimCoef", _cachedCustomAimCoef];
        _unit setCustomAimCoef _cachedCustomAimCoef;
    };

    true
};

player addEventHandler ["Reloaded", {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["AnimDone", {
    params ["_unit", "_ammoCountnim"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["Fired", {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["WeaponRested", {
    params ["_unit", "_isRested"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];

player addEventHandler ["WeaponDeployed", {
    params ["_unit", "_isDeployed"];
    _unit call Olsen_FW_FNC_HandleLargeMagazine;
}];
