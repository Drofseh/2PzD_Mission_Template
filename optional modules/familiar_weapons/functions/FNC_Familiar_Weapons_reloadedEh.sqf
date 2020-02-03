
Olsen_FW_FNC_Foreign_Weapons_reloadedEh = {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];

    _weapon = toLower _weapon;

    if ((_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {
        if (_weapon in familiarWeapons_familiarWeapons || {(toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeapons}) exitWith {};

        private _reloadFailed = [true,false] selectRandomWeighted [familiarWeapons_reloadFailureChance,familiarWeapons_reloadSuccessChance];

        if (_reloadFailed) then {
            ace_player addMagazine [_newMagazine select 0, _newMagazine select 1];
            ace_player setAmmo [_weapon, 0];
            "Failed to reload this unfamiliar weapon!" call CBA_fnc_notify;
        };

        private _nameWeapon = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");
        private _weaponLearning = familiarWeapons_nameSpace getVariable [(format ["familiarWeapons%1",_nameWeapon]), 0];

        _weaponLearning = _weaponLearning + 10;

        familiarWeapons_nameSpace setVariable [(format ["familiarWeapons%1",_nameWeapon]), _weaponLearning];

        if (_weaponLearning >= 100) then {
            (format ["You've used the %1 enough to become familiar with it.", _nameWeapon]) call CBA_fnc_notify;
            familiarWeapons_familiarWeapons pushBackUnique (toLower _weapon);
            familiarWeapons_nameSpace setVariable [(format ["familiarWeapons%1",_nameWeapon]), _weaponLearning];
        };
    };
};
