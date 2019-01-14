
FNC_Foreign_Weapons_reloadedEh = {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];

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

            private _reloadFailed = [true,false] selectRandomWeighted [familiarWeapons_reloadFailureChance,familiarWeapons_reloadSuccessChance];

            if (_reloadFailed) then {
                ace_player addMagazine [_newMagazine select 0, _newMagazine select 1];
                ace_player setAmmo [_weapon, 0];
                hint "Failed to reload this unfamiliar weapon!";
            };
        };
    };
};
