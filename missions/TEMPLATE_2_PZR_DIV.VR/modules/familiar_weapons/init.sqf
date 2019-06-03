
["Foreign Weapons", "Gives a penalty when using unfamiliar weapons which goes away with enough use.", "Wilhelm Haas (Drofseh)"] call FNC_RegisterModule;

#include "default_whitelists.sqf"
#include "settings.sqf"
#include "functions.sqf"

// This CBA namespace is used to store all the arrays of compatible magazines and ammo
familiarWeapons_nameSpace = true call CBA_fnc_createNamespace;

if (familiarWeapons_accuracyPenalty < 1) then {
    familiarWeapons_accuracyPenalty = 1;
};

if (familiarWeapons_swayPenalty < 1) then {
    familiarWeapons_swayPenalty = 1;
};

if (familiarWeapons_recoilPenalty < 1) then {
    familiarWeapons_recoilPenalty = 1;
};

familiarWeapons_familiarWeapons = [];

if (side player == WEST) then {
    {
        familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
    } forEach familiarWeapons_weaponWhiteList_west;
} else {
    if (side player == EAST) then {
        {
            familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
        } forEach familiarWeapons_weaponWhiteList_east;
    } else {
        if (side player == independent) then {
            {
                familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
            } forEach familiarWeapons_weaponWhiteList_ind;
        } else {
            if (side player == civilian) then {
                {
                    familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
                } forEach familiarWeapons_weaponWhiteList_civ;
            };
        };
    };
};

[{
    private _primary = primaryWeapon player;
    private _launcher = secondaryWeapon player;
    private _pistol = handgunWeapon player;

    if (_primary != "") then {
        familiarWeapons_familiarWeapons pushBackUnique (toLower _primary);
    };

    if (_launcher  != "") then {
        familiarWeapons_familiarWeapons pushBackUnique (toLower _launcher);
    };

    if (_pistol != "") then {
        familiarWeapons_familiarWeapons pushBackUnique (toLower _pistol);
    };

    {
        private _nameWeapon = getText (configFile >> "CfgWeapons" >> _x >> "displayName");
        familiarWeapons_nameSpace setVariable [("familiarWeapons" + _nameWeapon), 100];
    } forEach familiarWeapons_familiarWeapons;

    player addEventHandler ["Fired",{
        _this call FNC_Foreign_Weapons_firedEh;
    }];

    player addEventHandler ["Reloaded", {
        _this call FNC_Foreign_Weapons_reloadedEh;
    }];

    ["weapon", {
        _this call FNC_Foreign_Weapons_weaponChangedEh;
    }] call CBA_fnc_addPlayerEventHandler;

}, [], 2] call CBA_fnc_waitAndExecute;
