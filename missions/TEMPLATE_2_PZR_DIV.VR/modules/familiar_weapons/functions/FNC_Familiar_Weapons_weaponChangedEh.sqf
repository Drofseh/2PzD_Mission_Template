
FNC_Foreign_Weapons_weaponChangedEh = {
    params ["_unit", "_weapon"];

    _weapon = toLower _weapon;

    if ((_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {

        if (_weapon in familiarWeapons_familiarWeapons) exitWith {
            player setCustomAimCoef familiarWeapons_originalAimCoef;
            player setUnitRecoilCoefficient familiarWeapons_originalRecoilCoef;
        };

        private _nameWeapon = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");
        (format ["You're unfamiliar with the %1 and won't be able to use it as well as a weapon you are trained with.", _nameWeapon]) call CBA_fnc_notify;
    
        player setCustomAimCoef (familiarWeapons_originalAimCoef * familiarWeapons_swayPenalty);
        player setUnitRecoilCoefficient (familiarWeapons_originalRecoilCoef * familiarWeapons_recoilPenalty);
    };
};
