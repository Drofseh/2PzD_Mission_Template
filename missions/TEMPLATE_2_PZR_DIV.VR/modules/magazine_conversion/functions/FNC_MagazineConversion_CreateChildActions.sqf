
// This function creates all child actions from the main magazine conversion interaction point
// It runs every time the interaction menu is opened, checks the magazines the player has, creates conversion OLD MAG points for them and conversion NEW MAG child action for all magzines that can be converted into.
// It sets a variable in namespace for each combination of magazines which is checked to prevent against in order to prevent duplicate actions from being created.

Olsen_FW_FNC_MagazineConversion_CreateChildActions = {

    // get all the player's magazines and then find the unique ones.
    magazine_conversion_playerMagazines = magazines player arrayIntersect magazines player;
    magazine_conversion_playerMagazines sort true;

    // start of the `forEach magazine_conversion_playerMagazines` loop
    {
        private _OldMag = _x;

        // check if the OLD MAG interaction point has been created, TRUE if no interaction point, FALSE if already extant.
        private _OldMag_Action_Missing = magazine_conversion_nameSpace getVariable [(format ["%1_parent_action_missing",_OldMag]), true];

        if (_OldMag_Action_Missing) then {

            // Skip OLD MAG magazines for the following reasons and do not create interaction points for them.
            // Scope 1 is allowed as they may be in inventory from scripts or similar
            // Count > 1 and initSpeed >= 180 should filter most non-bullet magazines such as grenades and launcher mags.
            // 180 was chosen for minimum initSpeed as that was the lowest speed I could find on a bullet magazine, fow_6Rnd_455 from the Faces of War mod
            // If an undesirable type slips through those then additional hard checks by kind should catch the rest.
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

                // Get the OLD MAG magazine's display name, make the interaction point name based on it.
                // Get the invetory icon to use as the interaction point icon, and get the ammunition class the OLD MAG magazine uses.
                private _nameOldMagazine = getText (configFile >> "CfgMagazines" >> _OldMag >> "displayName");
                private _actionNameOldMag = (format ["Convert %1",_nameOldMagazine]);
                private _pictureOldMagazine = getText (configFile >> "CfgMagazines" >> _OldMag >> "picture");
                private _ammoClass = toUpper (getText (configFile >> "CfgMagazines" >> _OldMag >> "ammo"));

                // This is a workaround for some IFA3 ammo that uses a special ammo with no 'cartridge' model entry but should otherwise interchange.
                if (_ammoClass isEqualTo "") then {
                    _ammoClass = "No_Ammo_Class";
                } else {
                    _ammoClass = _ammoClass splitString "_";
                    if ("NOCARTRIDGE" in _ammoClass) then {
                        _index = _ammoClass find "NOCARTRIDGE";
                        _ammoClass deleteAt _index;
                    };
                    _ammoClass = _ammoClass joinString "_";
                };

                // Creat the OLD MAG action and add it to the player
                // Create the interaction point only when the mag is in the inventory.
                // Give a hint if the OLD MAG interaction point is activated to prompt the player to select one of the NEW MAG interaction points to begin coverting.
                private _conditionOldMagazine = {(_this select 2 select 0) in magazine_conversion_playerMagazines;};
                private _statementOldMagazine = {
                    [
                        ["Select a magazine type to convert this magazine into."],
                        ["If there are no options then it can't be converted into anything else."],
                        true
                    ] call CBA_fnc_notify;
                };
                private _parametersOldMagazine = [_OldMag];
                private _actionOldMagazine = [_OldMag,_actionNameOldMag,_pictureOldMagazine,_statementOldMagazine,_conditionOldMagazine,{},_parametersOldMagazine] call ace_interact_menu_fnc_createAction;
                [player, 1, ["ACE_SelfActions","Magazine Conversion"], _actionOldMagazine] call ace_interact_menu_fnc_addActionToObject;

                private _ammoClassMagazines = magazine_conversion_nameSpace getVariable [(format ["magazine_conversion_%1",_ammoClass]), []];
                _ammoClassMagazines sort true;

                // start of the `forEach _ammoClassMagazines` loop
                {
                    private _NewMag = _x;

                    // Check if the NEW MAG interaction point has been created, TRUE if no interaction point, FALSE if already extant.
                    private _NewMag_ChildAction_Missing = magazine_conversion_nameSpace getVariable [(format ["%1_child_action_%2_missing",_OldMag,_NewMag]), true];

                    if (_NewMag_ChildAction_Missing) then {

                        // Skip if OLD MAG mag and NEW MAG mag are the same class
                        // Skip if OLD MAG mag and NEW MAG mag have the same name
                        // Skip if NEW MAG mag is a vehicle magazine.
                        // Skip if NEW MAG mag scope is not public.
                        // Skip if the mags have the same name.
                        private _nameNewMagazine = getText (configFile >> "CfgMagazines" >> _NewMag >> "displayName");
                        if (_OldMag == _NewMag || {_NewMag isKindOf ["VehicleMagazine", configFile >> "CfgMagazines"]} || {(getNumber (configFile >> "CfgMagazines" >> _NewMag >> "scope")) != 2} || {_nameOldMagazine == _nameNewMagazine}) exitWith {};

                        // Make the interaction point name based on the NEW MAG magazine's display name.
                        // Get the invetory icon to use as the interaction point icon, and get the ammunition class the OLD MAG magazine uses.
                        private _actionNameNewMag = (format ["into %1",_nameNewMagazine]);
                        private _pictureNewMagazine = getText (configFile >> "CfgMagazines" >> _NewMag >> "picture");

                        // Create NEW MAG the action and assign it to the player and a child of the OLD MAG mag action
                        // Condition true so it always shows as long as the parent point is showing
                        // Call the magazine conversion with the OLD MAG and NEW MAG magazines in the action's parameters
                        private _conditionNewMagazine = {(_this select 2 select 0) in magazine_conversion_playerMagazines;};
                        private _statementNewMagazine = {
                            _OldMag = _this select 2 select 0;
                            _NewMag = _this select 2 select 1;
                            [_OldMag,_NewMag] call Olsen_FW_FNC_MagazineConversion_ConvertMag;
                        };
                        private _parametersNewMagazine = [_OldMag,_NewMag];
                        private _actionNewMagazine = [_NewMag,_actionNameNewMag,_pictureNewMagazine,_statementNewMagazine,_conditionNewMagazine,{},_parametersNewMagazine] call ace_interact_menu_fnc_createAction;

                        [player, 1, ["ACE_SelfActions","Magazine Conversion", _OldMag], _actionNewMagazine] call ace_interact_menu_fnc_addActionToObject;

                        [
                            "#Magazine", // item
                            ["CONTAINER", "MAGAZINE"], // slots
                            [
                                (format ["Convert into %2", _actionNameNewMag]), // display name
                                (format ["%1 %2", _actionNameOldMag, _actionNameNewMag]) // tool tip
                            ],
                            [], // colour
                            _pictureNewMagazine, // icon
                            [
                                {true}, //conditionEnable
                                {true} // conditionShow
                            ],
                            { // statement
                                (findDisplay 602) closeDisplay 1;
                                [] call Olsen_FW_FNC_MagazineConversion_CreateChildActions;

                                _OldMag = (_this select 4) select 0;
                                _NewMag = (_this select 4) select 1;
                                [_OldMag,_NewMag] call Olsen_FW_FNC_MagazineConversion_ConvertMag;
                            },
                            false,
                            _parametersNewMagazine // params
                        ] call CBA_fnc_addItemContextMenuOption;
                    };

                    // set that the NEW MAG interaction point has been created for this magazine so it doesn't create them again
                    magazine_conversion_nameSpace setVariable [(format ["%1_child_action_%2_missing",_OldMag,_NewMag]), false];
                } forEach _ammoClassMagazines;
            };
        };

        // set that the OLD MAG interaction point has been created for this magazine so it doesn't create them again
        magazine_conversion_nameSpace setVariable [(format ["%1_parent_action_missing",_OldMag]), false];
    } forEach magazine_conversion_playerMagazines;
};
