
Olsen_FW_FNC_Familiar_Weapons_reloadedEh = {
    params ["_unit", "_weapon", "", "_newMagazine"];

    _weapon = toLower _weapon;
    if (_weapon in familiarWeapons_familiarWeaponsReloading || {(toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeaponsReloading}) exitWith {};

    if (
        (_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {
        private _weaponLearningVarName = format ["familiarWeapons_reloading %1", getText (configFile >> "CfgWeapons" >> _weapon >> "displayName")];
        private _weaponLearning = familiarWeapons_nameSpace getVariable [_weaponLearningVarName, 0];
        private _reloadFailed = [true,false] selectRandomWeighted [linearConversion [0,100,_weaponLearning,familiarWeapons_reloadSuccessChance,100],linearConversion [0,100,_weaponLearning,0,familiarWeapons_reloadFailureChance]];

        if (_reloadFailed) then {
            _unit addMagazine [_newMagazine select 0, _newMagazine select 1];
            _unit setAmmo [_weapon, 0];
            _weaponLearning = _weaponLearning + 10;
            "Failed to reload the weapon!" call CBA_fnc_notify;
        };

        familiarWeapons_nameSpace setVariable [_weaponLearningVarName, _weaponLearning];

        if (_weaponLearning >= 100) exitWith {
            familiarWeapons_familiarWeaponsReloading pushBackUnique (toLower [_weapon] call BIS_fnc_baseWeapon);
        };
    };
};
