
FNC_Foreign_Weapons_firedEh = {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

    _weapon = toLower _weapon;

    if ((_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        (_weapon isEqualTo (toLower (secondaryWeapon player))) ||
        (_weapon isEqualTo (toLower (handgunWeapon player)))
    ) then {
        if (!(_weapon isEqualTo familiarWeapons_assignedPrimaryWeapon)  &&
            !(_weapon isEqualTo familiarWeapons_assignedLauncherWeapon) &&
            !(_weapon isEqualTo familiarWeapons_assignedPistolWeapon)   &&
            !(_weapon in familiarWeapons_familiarWeapons)
        ) then {

            private _dispersion = getNumber (configFile >> "CfgWeapons" >> _weapon >> "dispersion");
            private _dispersionX = (familiarWeapons_pseudoRandomList select ((_unit ammo _weapon) mod (count familiarWeapons_pseudoRandomList))) select 0;
            private _dispersionY = (familiarWeapons_pseudoRandomList select ((_unit ammo _weapon) mod (count familiarWeapons_pseudoRandomList))) select 1;

            [_projectile, ((_dispersionX * _dispersion) * familiarWeapons_accuracyPenalty), ((_dispersionY * _dispersion) * familiarWeapons_accuracyPenalty)] call ace_common_fnc_changeProjectileDirection;
        };
    };
};
