
Olsen_FW_FNC_Familiar_Weapons_weaponChangedEh = {
    params ["_unit", "_weapon"];

    _weapon = toLower _weapon;
    if ((toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeapons) exitWith {
        [_unit, "ACE_setCustomAimCoef", "Olsen_FW_Familiar_Weapons", {1}] call ace_common_fnc_arithmeticSetSource;
        _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);

        [_unit, "ACE_setUnitRecoilCoefficient", "Olsen_FW_Familiar_Weapons", {1}] call ace_common_fnc_arithmeticSetSource;
        _unit setUnitRecoilCoefficient ([_unit, "ACE_setUnitRecoilCoefficient", "max"] call ace_common_fnc_arithmeticGetResult);
    };

    if (
        (_weapon isEqualTo (toLower (primaryWeapon _unit)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon _unit))} ||
        {_weapon isEqualTo (toLower (handgunWeapon _unit))}
    ) then {
        private _weaponName = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");

        if (
            (toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeaponsReloading &&
            {(toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeaponsShooting} &&
            {(toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeaponsSway}
        ) exitWith {
            familiarWeapons_familiarWeapons pushBackUnique (toLower [_weapon] call BIS_fnc_baseWeapon);
            (format ["You've used the %1 enough to become completely familiar with it.", _weaponName]) call CBA_fnc_notify;
            [_unit,_weapon] call Olsen_FW_FNC_Familiar_Weapons_weaponChangedEh;
        }

        [[(format ["You're unfamiliar with the %1 and won't be able to use it as well as a weapon you are trained with.", _weaponName])], true] call CBA_fnc_notify;
        private _weaponLearning_shooting = familiarWeapons_nameSpace getVariable [format ["familiarWeapons_shooting %1", _weaponName], 0];
        private _weaponLearning_sway = familiarWeapons_nameSpace getVariable [format ["familiarWeapons_sway %1", _weaponName], 0];

        [_unit, "ACE_setCustomAimCoef", "Olsen_FW_Familiar_Weapons", {linearConversion [0,100,_weaponLearning_sway,familiarWeapons_swayPenalty,1]}] call ace_common_fnc_arithmeticSetSource;
        _unit setCustomAimCoef ([_unit, "ACE_setCustomAimCoef", "max"] call ace_common_fnc_arithmeticGetResult);

        [_unit, "ACE_setUnitRecoilCoefficient", "Olsen_FW_Familiar_Weapons", {linearConversion [0,100,_weaponLearning_shooting,familiarWeapons_recoilPenalty,1]}] call ace_common_fnc_arithmeticSetSource;
        _unit setUnitRecoilCoefficient ([_unit, "ACE_setUnitRecoilCoefficient", "max"] call ace_common_fnc_arithmeticGetResult);
    };
};

