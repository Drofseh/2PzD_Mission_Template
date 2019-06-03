
FNC_Foreign_Weapons_weaponChangedEh = {
    params ["_unit", "_weapon"];

    _weapon = toLower _weapon;

    if ((_weapon isEqualTo (toLower (primaryWeapon player)))   ||
        {_weapon isEqualTo (toLower (secondaryWeapon player))} ||
        {_weapon isEqualTo (toLower (handgunWeapon player))}
    ) then {
        if (_weapon in familiarWeapons_familiarWeapons || {(toLower [_weapon] call BIS_fnc_baseWeapon) in familiarWeapons_familiarWeapons}) exitWith {
            player setCustomAimCoef 1;
            player setUnitRecoilCoefficient 1;
        };

        private _nameWeapon = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");
        (format ["You're unfamiliar with the %1 and won't be able to use it as well as a weapon you are trained with.", _nameWeapon]) call CBA_fnc_notify;
    
        player setCustomAimCoef (1 * familiarWeapons_swayPenalty);
        player setUnitRecoilCoefficient (1 * familiarWeapons_recoilPenalty);
    };
};
