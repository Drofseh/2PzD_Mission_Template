magazine_conversion_speedMultiplier = 1;

magazine_conversion_allMagazinesConfig = "true" configClasses (configFile >> "CfgMagazines");
magazine_conversion_allMagazines = [];

{
    _magazineClass = configName _x;
    _magazineScope = ((getNumber (configFile >> "CfgMagazines" >> _magazineClass >> "scope")) > 0);
    _notVehicleMag = !(_magazineClass isKindOf ["VehicleMagazine", configFile >> "CfgMagazines"]);

    if ((_magazineScope) && (_notVehicleMag)) then {
        magazine_conversion_allMagazines pushBack _magazineClass;
    };
} forEach magazine_conversion_allMagazinesConfig;

magazine_conversion_nameSpace = true call CBA_fnc_createNamespace;

{
    _ammoClass = getText (configFile >> "CfgMagazines" >> _x >> "ammo");

    if (_ammoClass == "") then {
        _ammoClass = "No_Ammo_Class";
    } else {

        _ammoClass = _ammoClass splitString "_";
        if ("NoCartridge" in _ammoClass) then {
            _index = _ammoClass find "NoCartridge";
            _ammoClass deleteAt _index;
        };
        _ammoClass = _ammoClass joinString "_";
    };

    _ammoClassMagazines = magazine_conversion_nameSpace getVariable [("magazine_conversion_" + _ammoClass), []];
    _ammoClassMagazines pushBack _x;
    magazine_conversion_nameSpace setVariable [("magazine_conversion_" + _ammoClass), _ammoClassMagazines];
} forEach magazine_conversion_allMagazines;


_conditionMagazineConversion = {
    [] call FNC_MagazineConversion_CreateChildActions;
    true;
};
_statementMagazineConversion = {
    hint "Select a magazine type to convert.\nIf no magazines are visible you have nothing that can be converted.";
};
_actionMagazineConversion = ["Magazine Conversion","Magazine Conversion","",_statementMagazineConversion,_conditionMagazineConversion] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ACE_Equipment"], _actionMagazineConversion] call ace_interact_menu_fnc_addActionToObject;


FNC_MagazineConversion_CreateChildActions = {

    magazine_conversion_playerMagazines = magazines player;
    magazine_conversion_playerMagazines = magazine_conversion_playerMagazines arrayIntersect magazine_conversion_playerMagazines;

    {
        _OldMag = _x;

        private _OldMag_Action_Missing = magazine_conversion_nameSpace getVariable [(_OldMag + "_parent_action_missing"), true];

        if (_OldMag_Action_Missing) then {

            if (((getNumber (configFile >> "CfgMagazines" >> _OldMag >> "scope")) > 0)
                && {getNumber (configFile >> "CfgMagazines" >> _OldMag >> "count") > 1}
                && {getNumber (configFile >> "CfgMagazines" >> _OldMag >> "initSpeed") >= 180}
                && {!(_OldMag isKindOf ["VehicleMagazine", configFile >> "CfgMagazines"])}
                && {!(_OldMag isKindOf ["CA_LauncherMagazine", configFile >> "CfgMagazines"])}
                && {!(_OldMag isKindOf ["FlareWhite_F", configFile >> "CfgMagazines"])}
                && {!(_OldMag isKindOf ["HandGrenade", configFile >> "CfgMagazines"])}
                && {!(_OldMag isKindOf ["ClaymoreDirectionalMine_Remote_Mag", configFile >> "CfgMagazines"])}
                && {!(_OldMag isKindOf ["SatchelCharge_Remote_Mag", configFile >> "CfgMagazines"])}
            ) then {

                private _nameOldMagazine = getText (configFile >> "CfgMagazines" >> _OldMag >> "displayName");
                private _actionNameOldMag = (format ["Convert %1",_nameOldMagazine]);
                private _pictureOldMagazine = getText (configFile >> "CfgMagazines" >> _OldMag >> "picture");
                private _ammoClass = getText (configFile >> "CfgMagazines" >> _OldMag >> "ammo");

                if (_ammoClass == "") then {
                    _ammoClass = "No_Ammo_Class";
                } else {
                    _ammoClass = _ammoClass splitString "_";
                    if ("NoCartridge" in _ammoClass) then {
                        _index = _ammoClass find "NoCartridge";
                        _ammoClass deleteAt _index;
                    };
                    _ammoClass = _ammoClass joinString "_";
                };

                private _conditionOldMagazine = {(_this select 2 select 0) in magazine_conversion_playerMagazines;};
                private _statementOldMagazine = {hint "Select a magazine type to convert this magazine into.\nIf there are no options then it can't be converted into anything else.";};
                private _parametersOldMagazine = [_OldMag];
                private _actionOldMagazine = [_actionNameOldMag,_actionNameOldMag,_pictureOldMagazine,_statementOldMagazine,_conditionOldMagazine,{},_parametersOldMagazine] call ace_interact_menu_fnc_createAction;
                [player, 1, ["ACE_SelfActions","ACE_Equipment","Magazine Conversion"], _actionOldMagazine] call ace_interact_menu_fnc_addActionToObject;

                private _ammoClassMagazines = magazine_conversion_nameSpace getVariable [("magazine_conversion_" + _ammoClass), []];

                {
                    private _NewMag = _x;

                    private _NewMag_ChildAction_Missing = magazine_conversion_nameSpace getVariable [(_OldMag + "_child_action_" + _NewMag + "_missing"), true];
                    private _NewMagazineScope = ((getNumber (configFile >> "CfgMagazines" >> _NewMag >> "scope")) > 1);
                    private _notVehicleMag = !(_NewMag isKindOf ["VehicleMagazine", configFile >> "CfgMagazines"]);

                    if (_NewMag_ChildAction_Missing && (_notVehicleMag) && (_NewMagazineScope))then {

                        private _NewMagScope = getNumber (configFile >> "CfgMagazines" >> _NewMag >> "scope");

                        if ((_NewMagScope == 2) && (_OldMag != _NewMag)) then {

                            private _nameNewMagazine = getText (configFile >> "CfgMagazines" >> _NewMag >> "displayName");
                            private _actionNameNewMag = (format ["into %1",_nameNewMagazine]);
                            private _pictureNewMagazine = getText (configFile >> "CfgMagazines" >> _NewMag >> "picture");

                            private _conditionNewMagazine = {(_this select 2 select 0) in magazine_conversion_playerMagazines;};
                            private _statementNewMagazine = {
                                _OldMag = _this select 2 select 0;
                                _NewMag = _this select 2 select 1;
                                [_OldMag,_NewMag] call FNC_MagazineConversion_ConvertMag;
                            };
                            private _parametersNewMagazine = [_OldMag,_NewMag];
                            private _actionNewMagazine = [_actionNameNewMag,_actionNameNewMag,_pictureNewMagazine,_statementNewMagazine,_conditionNewMagazine,{},_parametersNewMagazine] call ace_interact_menu_fnc_createAction;
                            [player, 1, ["ACE_SelfActions","ACE_Equipment","Magazine Conversion", _actionNameOldMag], _actionNewMagazine] call ace_interact_menu_fnc_addActionToObject;
                        };

                        magazine_conversion_nameSpace setVariable [(_OldMag + "_child_action_" + _NewMag + "_missing"), false];
                    };
                } forEach _ammoClassMagazines;
            };
        };

        magazine_conversion_nameSpace setVariable [(_OldMag + "_parent_action_missing"), false];
    } forEach magazine_conversion_playerMagazines;
};


FNC_MagazineConversion_ConvertMag = {
    params ["_OldMag","_NewMag","_allMags"];
    _OldMag = _this select 0;
    _NewMag = _this select 1;

    _allMags = magazinesAmmo player;

    magazine_conversion_nameSpace setVariable ["magRemoved", false];

    {
        private _thisMagClass = _x select 0;

        if ((_OldMag == _thisMagClass) && !(magazine_conversion_nameSpace getVariable ["magRemoved", false])) then {

            private _oldMagCountCurrent = _x select 1;
            private _newMagCountMax = getNumber (configFile >> "CfgMagazines" >> _NewMag >> "count");

            player removeMagazine _thisMagClass;
            magazine_conversion_nameSpace setVariable ["magRemoved", true];

            [_OldMag,_NewMag,_oldMagCountCurrent,_newMagCountMax] call FNC_MagazineConversion_AddNewMags;
        };
    } forEach _allMags;
    magazine_conversion_nameSpace setVariable ["magRemoved", false];
};


FNC_MagazineConversion_AddNewMags = {
    params ["_OldMag","_NewMag","_oldMagCountCurrent","_newMagCountMax"];

    private _convertTime = 0;

    if (_oldMagCountCurrent >= _newMagCountMax) then {
        _convertTime = _newMagCountMax * magazine_conversion_speedMultiplier;
    };
    if (_oldMagCountCurrent < _newMagCountMax) then {
        _convertTime = _oldMagCountCurrent * magazine_conversion_speedMultiplier;
    };

    [
        _convertTime,
        [_OldMag,_NewMag,_oldMagCountCurrent,_newMagCountMax],
        {
            private _args = _this select 0;
            private _OldMag = _args select 0;
            private _NewMag = _args select 1;
            private _oldMagCountCurrent = _args select 2;
            private _newMagCountMax = _args select 3;

            if (_oldMagCountCurrent < _newMagCountMax) then {
                player addMagazine [_NewMag, _oldMagCountCurrent];
            } else {
                player addItem _NewMag;
            };

            _oldMagCountCurrent = _oldMagCountCurrent - (_newMagCountMax min _oldMagCountCurrent);

            if (_oldMagCountCurrent > 0) then {
                [_OldMag,_NewMag,_oldMagCountCurrent,_newMagCountMax] call FNC_MagazineConversion_AddNewMags;
                hint ("Converting partially complete.\n" + (str _oldMagCountCurrent) + " rounds remaining");
            } else {
                hint "Converting complete.";
            };
        },
        {
            private _args = _this select 0;
            private _OldMag = _args select 0;
            private _NewMag = _args select 1;
            private _oldMagCountCurrent = _args select 2;
            private _newMagCountMax = _args select 3;

            if (_oldMagCountCurrent > 0) then {
                player addMagazine [_OldMag, _oldMagCountCurrent];
            };

            hint ("Converting interupted!\n" + (str _oldMagCountCurrent) + " rounds remaining");
        },
        "Converting..."
    ] call ace_common_fnc_progressBar;
};
