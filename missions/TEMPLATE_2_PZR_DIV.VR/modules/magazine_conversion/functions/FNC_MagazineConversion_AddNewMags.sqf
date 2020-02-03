
// This function creates NEW MAGs based on the number of rounds in the OLD MAG.
// It checks the number of rounds, creates a NEW MAG with a number of rounds up to that number or the `count` of the NEW MAG.
// If a full NEW MAG is created it checks if there are rounds remaining and call itself to create another NEW MAG.
// This continues until all rounds are accounted for or the player cancels it.
// If the player cancels, then it will readd an OLD MAG with the correct number of remaining rounds in it.
// For example, if I take an OLD MAG with 5 rounds in it and want to make it into a NEW MAG that has a max of 20 I will get a NEW MAG with 5 rounds in it.
// If I take an OLD MAG with 20 rounds in it but the NEW MAG has a max of 5 then it will create a NEW MAG with 5, loop, create another NEW MAG with 5, loop, until I have four NEW MAG each with 5 rounds.
// If I cancel it after two loops then I will get the OLD MAG with 10 rounds in it and two NEW MAG with 5 rounds each.

Olsen_FW_FNC_MagazineConversion_AddNewMags = {
    params ["_OldMag","_NewMag","_oldMagCountCurrent","_newMagCountMax"];

    if !(player canAdd _NewMag) exitWith {
        [["You don't have room for that magazine."], true] call CBA_fnc_notify;
    };

    private _convertTime = 0;
    private _nameOldMagazine = getText (configFile >> "CfgMagazines" >> _OldMag >> "displayName");
    private _nameNewMagazine = getText (configFile >> "CfgMagazines" >> _NewMag >> "displayName");
    private _isBeltOldMagazine = getNumber (configFile >> "CfgMagazines" >> _OldMag >> "ace_isbelt");
    private _isBeltNewMagazine = getNumber (configFile >> "CfgMagazines" >> _NewMag >> "ace_isbelt");
    private _oldMagCountMax = getNumber (configFile >> "CfgMagazines" >> _OldMag >> "count");

    // Set the time to run the progress bar based on the number of rounds that can be moved in one batch and the speed multiplier setting.
    _convertTime = (_oldMagCountCurrent min _newMagCountMax) * magazine_conversion_speedMultiplier;

    if (_oldMagCountMax < _newMagCountMax) then {
        _convertTime = _convertTime * ((_oldMagCountMax / _newMagCountMax) max 0.5);
    };
    if (_isBeltOldMagazine == 1 && {_isBeltOldMagazine == _isBeltNewMagazine} && {_oldMagCountMax > 49} && {_newMagCountMax > 49}) then {
        _convertTime = _convertTime * 0.1;
    };

    // Call Ace Progress Bar for the time it takes to convert.
    [
        _convertTime,
        [_OldMag,_NewMag,_oldMagCountCurrent,_oldMagCountMax,_newMagCountMax,_nameOldMagazine,_nameNewMagazine],
        {
            private _args = _this select 0;
            private _OldMag = _args select 0;
            private _NewMag = _args select 1;
            private _oldMagCountCurrent = _args select 2;
            private _oldMagCountMax = _args select 3;
            private _newMagCountMax = _args select 4;
            private _nameOldMagazine = _args select 5;
            private _nameNewMagazine = _args select 6;

            // If the OLD MAG has fewer rounds that the max of the NEW MAG, create the NEW MAG with that number of rounds else create a full NEW MAG
            if (_oldMagCountCurrent < _newMagCountMax) then {
                player addMagazine [_NewMag, _oldMagCountCurrent];
            } else {
                player addItem _NewMag;
            };

            // Subtract the number of rounds removed from the OLD MAG
            _oldMagCountCurrent = _oldMagCountCurrent - (_newMagCountMax min _oldMagCountCurrent);

            // If any rounds are left over, call this function again to put them into another NEW MAG. Repeats until all rounds are removed from the old magazine.
            if (_oldMagCountCurrent > 0) then {
                [_OldMag,_NewMag,_oldMagCountCurrent,_newMagCountMax] call Olsen_FW_FNC_MagazineConversion_AddNewMags;
                [
                    [(format ["Converting %1 into %2 partially complete.",_nameOldMagazine,_nameNewMagazine])],
                    [(format ["%1 rounds remaining in %2",str _oldMagCountCurrent,_nameOldMagazine])],
                    true
                ] call CBA_fnc_notify;
            } else {
                if (_oldMagCountMax < _newMagCountMax) then {
                    if (_OldMag in magazines player) then {
                        [_OldMag,_NewMag] call Olsen_FW_FNC_MagazineConversion_ConvertMag;
                        [
                            [(format ["Converting %1 into partial %2 complete.",_nameOldMagazine,_nameNewMagazine])],
                            ["Make sure to repack your mags."],
                            ["Converting another one."],
                            true
                        ] call CBA_fnc_notify;
                    } else {
                        [
                            [(format ["Converting %1 into partial %2 complete.",_nameOldMagazine,_nameNewMagazine])],
                            ["Make sure to repack your mags."],
                            true
                        ] call CBA_fnc_notify;
                    };
                } else {
                    if (_OldMag in magazines player) then {
                        [_OldMag,_NewMag] call Olsen_FW_FNC_MagazineConversion_ConvertMag;
                        [
                            [(format ["Converting %1 into %2 complete.",_nameOldMagazine,_nameNewMagazine])],
                            ["Converting another one."],
                            true
                        ] call CBA_fnc_notify;
                    } else {
                        [
                            [(format ["Converting %1 into %2 complete.",_nameOldMagazine,_nameNewMagazine])],
                            true
                        ] call CBA_fnc_notify;
                    };
                };
            };
        },
        {
            private _args = _this select 0;
            private _OldMag = _args select 0;
            private _NewMag = _args select 1;
            private _oldMagCountCurrent = _args select 2;
            private _oldMagCountMax = _args select 3;
            private _newMagCountMax = _args select 4;
            private _nameOldMagazine = _args select 5;
            private _nameNewMagazine = _args select 6;

            if (_oldMagCountCurrent > 0) then {
                player addMagazine [_OldMag, _oldMagCountCurrent];
            };

            [
                [(format ["Converting %1 into %2 cancelled.",_nameOldMagazine,_nameNewMagazine])],
                [(format ["%1 rounds remaining in %2",str _oldMagCountCurrent,_nameOldMagazine])],
                true
            ] call CBA_fnc_notify;
        },
        (format ["Converting %1 into %2... Press Ace Interaction to cancel.",_nameOldMagazine,_nameNewMagazine]),
        nil,
        ["isNotInside", "isNotSitting"]
    ] call ace_common_fnc_progressBar;
};
