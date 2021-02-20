
Olsen_FW_FNC_Familiar_Weapons_sway = {
    params ["_unit"];

    if (cameraView != "GUNNER" || {cameraView == (familiarWeapons_nameSpace getVariable ["cameraViewCache", "INTERNAL"])}) exitWith {
        familiarWeapons_nameSpace setVariable ["cameraViewCache", cameraView];
    };

    private _weapon = toLower (currentWeapon _unit);
    if ((toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeaponsSway) exitWith {
        [_unit, "ACE_setCustomAimCoef", "Olsen_FW_Familiar_Weapons", {1}] call ace_common_fnc_arithmeticSetSource;
        _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);
    };

    if (
        (_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {
        private _weaponLearningVarName = format ["familiarWeapons_sway %1", getText (configFile >> "CfgWeapons" >> _weapon >> "displayName")];
        private _weaponLearning = familiarWeapons_nameSpace getVariable [_weaponLearningVarName, 0] + 0.5;
        familiarWeapons_nameSpace setVariable [_weaponLearningVarName, _weaponLearning];
        familiarWeapons_nameSpace setVariable ["cameraViewCache", cameraView];

        if (_weaponLearning >= 100) exitWith {
            [_unit, "ACE_setCustomAimCoef", "Olsen_FW_Familiar_Weapons", {1}] call ace_common_fnc_arithmeticSetSource;
            _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);
            familiarWeapons_familiarWeaponsSway pushBackUnique (toLower [_weapon] call BIS_fnc_baseWeapon);
        };

        [_unit, "ACE_setCustomAimCoef", "Olsen_FW_Familiar_Weapons", {linearConversion [0,100,_weaponLearning,familiarWeapons_swayPenalty,1]}] call ace_common_fnc_arithmeticSetSource;
        _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);
    };
};
