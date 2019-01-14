
["Foreign Weapons", "Gives a penalty to using unfamiliar weapons.", "Wilhelm Haas (Drofseh)"] call FNC_RegisterModule;

#include "white_lists.sqf"
#include "settings.sqf"
#include "functions.sqf"

if (familiarWeapons_accuracyPenalty < 1) then {
    familiarWeapons_accuracyPenalty = 1;
};

if (familiarWeapons_swayPenalty < 1) then {
    familiarWeapons_swayPenalty = 1;
};

if (familiarWeapons_recoilPenalty < 1) then {
    familiarWeapons_recoilPenalty = 1;
};

if (side player == WEST) then {
    familiarWeapons_familiarWeapons = [];
    {
        familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
    } forEach familiarWeapons_weaponWhiteList_west;
} else {
    if (side player == EAST) then {
        familiarWeapons_familiarWeapons = [];
        {
            familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
        } forEach familiarWeapons_weaponWhiteList_east;
    } else {
        if (side player == independent) then {
            familiarWeapons_familiarWeapons = [];
            {
                familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
            } forEach familiarWeapons_weaponWhiteList_ind;
        } else {
            if (side player == civilian) then {
                familiarWeapons_familiarWeapons = [];
                {
                    familiarWeapons_familiarWeapons pushBackUnique (toLower _x);
                } forEach familiarWeapons_weaponWhiteList_civ;
            };
        };
    };
};

if (isNil "familiarWeapons_assignedPrimaryWeapon") then {
    private _weaponPrep = getUnitLoadout player select 0;

    if (_weaponPrep isEqualTo []) then {
        familiarWeapons_assignedPrimaryWeapon = "";
    } else {
        familiarWeapons_assignedPrimaryWeapon = toLower (_weaponPrep select 0);
    };
};

if (isNil "familiarWeapons_assignedLauncherWeapon") then {
    private _weaponPrep = getUnitLoadout player select 1;

    if (_weaponPrep isEqualTo []) then {
        familiarWeapons_assignedLauncherWeapon = "";
    } else {
        familiarWeapons_assignedLauncherWeapon = toLower (_weaponPrep select 0);
    };
};

if (isNil "familiarWeapons_assignedPistolWeapon") then {
    private _weaponPrep = getUnitLoadout player select 2;

    if (_weaponPrep isEqualTo []) then {
        familiarWeapons_assignedPistolWeapon = "";
    } else {
        familiarWeapons_assignedPistolWeapon = toLower (_weaponPrep select 0);
    };
};

player addEventHandler["Fired",{
    _this call FNC_Foreign_Weapons_firedEh;
}];

player addEventHandler["Reloaded", {
    _this call FNC_Foreign_Weapons_reloadedEh;
}];

["weapon", {
    _this call FNC_Foreign_Weapons_weaponChangedEh;
}] call CBA_fnc_addPlayerEventHandler;
