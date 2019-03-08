
FNC_Foreign_Weapons_reloadedEh = {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];

    _weapon = toLower _weapon;

    if ((_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {

        if (_weapon in familiarWeapons_familiarWeapons) exitWith {};

        private _reloadFailed = [true,false] selectRandomWeighted [familiarWeapons_reloadFailureChance,familiarWeapons_reloadSuccessChance];

        if (_reloadFailed) then {
            ace_player addMagazine [_newMagazine select 0, _newMagazine select 1];
            ace_player setAmmo [_weapon, 0];
            hint "Failed to reload this unfamiliar weapon!";
        };

        private _nameWeapon = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");
        private _weaponLearning = familiarWeapons_nameSpace getVariable [("familiarWeapons" + _nameWeapon), 0];

        if (_weaponLearning < 100) exitWith {
            _weaponLearning = _weaponLearning + 10;
            familiarWeapons_nameSpace setVariable [("familiarWeapons" + _nameWeapon), _weaponLearning];
        };

        if (_weaponLearning >= 100) then {
            hint format ["You've used the %1 to become familiar with it.", _nameWeapon,];
            familiarWeapons_familiarWeapons pushBackUnique (toLower _weapon);
            familiarWeapons_nameSpace setVariable [("familiarWeapons" + _nameWeapon), _weaponLearning];
        };
    };
};
