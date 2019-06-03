
FNC_Foreign_Weapons_firedEh = {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

    _weapon = toLower _weapon;

    if ((_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {
        if (_weapon in familiarWeapons_familiarWeapons || {(toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeapons}) exitWith {};

        private _dispersion = getNumber (configFile >> "CfgWeapons" >> _weapon >> "dispersion");
        private _dispersionX = (familiarWeapons_pseudoRandomList select ((_unit ammo _weapon) mod (count familiarWeapons_pseudoRandomList))) select 0;
        private _dispersionY = (familiarWeapons_pseudoRandomList select ((_unit ammo _weapon) mod (count familiarWeapons_pseudoRandomList))) select 1;

        [_projectile, ((_dispersionX * _dispersion) * familiarWeapons_accuracyPenalty), ((_dispersionY * _dispersion) * familiarWeapons_accuracyPenalty)] call ace_common_fnc_changeProjectileDirection;

        private _modeType = getText (configFile >> "CfgWeapons" >> "_weapon" >> "_mode" >> "textureType");
        private _weaponLearning = familiarWeapons_nameSpace getVariable [("familiarWeapons" + _nameWeapon), 0];

        switch (_condition) do {
            case "semi" : {_weaponLearning = _weaponLearning + 2};
            case "fullAuto" : {_weaponLearning = _weaponLearning + 0.25};
            case "fastAuto" : {_weaponLearning = _weaponLearning + 0.25};
            case "burst" : {_weaponLearning = _weaponLearning + 0.25};
            default {_weaponLearning = _weaponLearning + 2};
        };

        familiarWeapons_nameSpace setVariable [("familiarWeapons" + _nameWeapon), _weaponLearning];

        if (_weaponLearning >= 100) then {
            (format ["You've used the %1 enough to become familiar with it.", _nameWeapon]) call CBA_fnc_notify;
            familiarWeapons_familiarWeapons pushBackUnique (toLower _weapon);
        };
    };
};
