
// Add search for weapons action
_conditionWeaponSearch = {
    alive _target
    && {side _target in Partisan_sidePartisan || {side _target isEqualTo civilian}}
};
_statementWeaponSearch = {
    if (_target distance player > 2) exitWith {
        (format ["%1 is too far away for you to search them.", name _target]) call cba_fnc_notify;
    };

    [(format ["%1 is searching you for weapons.", name player])] remoteExec ["cba_fnc_notify", _target];

    [
        10,
        [_target],
        {
            private _target = _this select 0 select 0;
            private _findPistolChance = random 100;

            if (
                (_findPistolChance < 75 && {handgunWeapon _target != ""})
                || {currentWeapon _target != ""}
                || {primaryWeapon _target != ""}
                || {secondaryWeapon _target != ""}
            ) exitWith {
                (format ["%1 is carrying a prohibited weapon.", name _target]) call cba_fnc_notify;
            };

            private _hasProhibitedWeapon = false;
            private _hasProhibitedItem = false;
            private _hasPistolWeapon = false;
            private _itemsList = vestitems player + uniformitems player + backpackitems player;

            {
                if (_x isKindOf ["Pistol", configFile >> "CfgWeapons"]) exitWith {
                    _hasPistolWeapon = true;
                };
                if (
                    _x isKindOf ["Rifle", configFile >> "CfgWeapons"]
                    || {_x isKindOf ["HandGrenade", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["MiniGrenade", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["HandGrenade", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["TimeBomb", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["TimeBomb", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["SatchelCharge_Remote_Mag", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["Launcher", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["ATMine_Range_Mag", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["ClaymoreDirectionalMine_Remote_Mag", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["csa38_dyn", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["LIB_Mine_Magazine", configFile >> "CfgMagazines"]}
                    || {_x isKindOf ["CA_LauncherMagazine", configFile >> "CfgMagazines"]}
                ) exitWith {
                    _hasProhibitedWeapon = true;
                };
                if (
                    _x isKindOf ["ACE_Clacker", configFile >> "CfgWeapons"]
                    || {_x isKindOf ["ACE_DeadManSwitch", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["ACE_LIB_FireCord", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["ACE_LIB_LadungPM", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["ACE_wirecutter", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["ACRE_BaseRadio", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["Binocular", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["BinocularItem", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["CSA38_Binocular", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["muzzle_snds_H", configFile >> "CfgWeapons"]}
                    || {_x isKindOf ["Files", configFile >> "CfgMagazines"] && {!(_x isEqualTo "Wallet_ID")}}
                ) exitWith {
                    _hasProhibitedItem = true;
                };
            } forEach _itemsList;

            if (_hasProhibitedWeapon) exitWith {
                (format ["%1 is carrying a prohibited weapon.", name _target]) call cba_fnc_notify;
            };
            if (_hasProhibitedItem) exitWith {
                (format ["%1 is carrying a prohibited item.", name _target]) call cba_fnc_notify;
            };
            if (_hasPistolWeapon && {_findPistolChance < 50}) exitWith {
                (format ["%1 is carrying a prohibited pistol.", name _target]) call cba_fnc_notify;
            };

            (format ["You didn't find any prohibited items in %1's things.", name _target]) call cba_fnc_notify;
        },
        {
            private _target = _this select 0 select 0;
            (format ["Your search of %1 was interupted before you finished.", name _target]) call cba_fnc_notify;
        },
        (format ["Searching %1 for weapons...",(name _target)])
    ] call ace_common_fnc_progressBar;
};
_actionWeaponSearch = ["Search for Weapons","Search for Weapons","",_statementWeaponSearch,_conditionWeaponSearch] call ace_interact_menu_fnc_createAction;
["Man", 0, ["ACE_MainActions"], _actionWeaponSearch, true] call ace_interact_menu_fnc_addActionToClass;
