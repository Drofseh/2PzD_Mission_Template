
Olsen_FW_FNC_Familiar_Weapons_firedEh = {
    params ["_unit", "_weapon", "", "_mode", "", "", "_projectile"];
    _weapon = toLower _weapon;

    if ((toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeaponsShooting) exitWith {
        [_unit, "ACE_setUnitRecoilCoefficient", "Olsen_FW_Familiar_Weapons", {1}] call ace_common_fnc_arithmeticSetSource;
        _unit setUnitRecoilCoefficient ([_unit, "ACE_setUnitRecoilCoefficient", "max"] call ace_common_fnc_arithmeticGetResult);
    };

    if (
        (_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {
        private _weaponLearningVarName = format ["familiarWeapons_shooting %1", getText (configFile >> "CfgWeapons" >> _weapon >> "displayName")];
        private _weaponLearning = familiarWeapons_nameSpace getVariable [_weaponLearningVarName, 0];
        private _dispersion = getNumber (configFile >> "CfgWeapons" >> _weapon >> _mode >> "dispersion");
        private _dispersionPenalty = linearConversion [0,100,_weaponLearning,familiarWeapons_accuracyPenalty,1];
        private _dispersionX = (familiarWeapons_pseudoRandomList select ((_unit ammo _weapon) mod (count familiarWeapons_pseudoRandomList))) select 0;
        private _dispersionY = (familiarWeapons_pseudoRandomList select ((_unit ammo _weapon) mod (count familiarWeapons_pseudoRandomList))) select 1;

        [
            _projectile,
            ((_dispersionX * _dispersion) * _dispersionPenalty),
            ((_dispersionY * _dispersion) * _dispersionPenalty)
        ] call ace_common_fnc_changeProjectileDirection;

        private _modeType = toLower (getText (configFile >> "CfgWeapons" >> _weapon >> _mode >> "textureType"));

        switch (_modeType) do {
            case "semi" : {_weaponLearning = _weaponLearning + 2};
            case "fullauto" : {_weaponLearning = _weaponLearning + 0.25};
            case "fastauto" : {_weaponLearning = _weaponLearning + 0.25};
            case "burst" : {_weaponLearning = _weaponLearning + 0.25};
            default {_weaponLearning = _weaponLearning + 2};
        };

        familiarWeapons_nameSpace setVariable [_weaponLearningVarName, _weaponLearning];

        if (_weaponLearning >= 100) exitWith {
            familiarWeapons_familiarWeaponsShooting pushBackUnique (toLower [_weapon] call BIS_fnc_baseWeapon);
            
            [_unit, "ACE_setUnitRecoilCoefficient", "Olsen_FW_Familiar_Weapons", {1}] call ace_common_fnc_arithmeticSetSource;
            _unit setUnitRecoilCoefficient ([_unit, "ACE_setUnitRecoilCoefficient", "max"] call ace_common_fnc_arithmeticGetResult);
        };

        [_unit, "ACE_setUnitRecoilCoefficient", "Olsen_FW_Familiar_Weapons", {linearConversion [0,100,_weaponLearning,familiarWeapons_recoilPenalty,1]}] call ace_common_fnc_arithmeticSetSource;
        _unit setUnitRecoilCoefficient ([_unit, "ACE_setUnitRecoilCoefficient", "max"] call ace_common_fnc_arithmeticGetResult);
    };
};
