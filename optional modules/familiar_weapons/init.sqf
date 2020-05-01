
["Foreign Weapons", "Gives a penalty when using unfamiliar weapons which goes away with enough use.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

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

if (playerSide == WEST) then {
    {
        familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
    } forEach familiarWeapons_weaponWhiteList_west;
} else {
    if (playerSide == EAST) then {
        {
            familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
        } forEach familiarWeapons_weaponWhiteList_east;
    } else {
        if (playerSide == independent) then {
            {
                familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
            } forEach familiarWeapons_weaponWhiteList_ind;
        } else {
            if (playerSide == civilian) then {
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
        familiarWeapons_nameSpace setVariable [(format ["familiarWeapons%1",_nameWeapon]), 100];
    } forEach familiarWeapons_familiarWeapons;

    player addEventHandler ["Fired",{
        _this call Olsen_FW_FNC_Foreign_Weapons_firedEh;
    }];

    player addEventHandler ["Reloaded", {
        _this call Olsen_FW_FNC_Foreign_Weapons_reloadedEh;
    }];

    ["weapon", {
        _this call Olsen_FW_FNC_Foreign_Weapons_weaponChangedEh;
    }] call CBA_fnc_addPlayerEventHandler;

}, [], 2] call CBA_fnc_waitAndExecute;
