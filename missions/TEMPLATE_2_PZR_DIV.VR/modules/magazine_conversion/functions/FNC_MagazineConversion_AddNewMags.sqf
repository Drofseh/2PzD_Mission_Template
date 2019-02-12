
// This function creates NEW MAGs based on the number of rounds in the OLD MAG.
// It checks the number of rounds, creates a NEW MAG with a number of rounds up to that number or the `count` of the NEW MAG.
// If a full NEW MAG is created it checks if there are rounds remaining and call itself to create another NEW MAG.
// This continues until all rounds are accounted for or the player cancels it.
// If the player cancels, then it will readd an OLD MAG with the correct number of remaining rounds in it.
// For example, if I take an OLD MAG with 5 rounds in it and want to make it into a NEW MAG that has a max of 20 I will get a NEW MAG with 5 rounds in it.
// If I take an OLD MAG with 20 rounds in it but the NEW MAG has a max of 5 then it will create a NEW MAG with 5, loop, create another NEW MAG with 5, loop, until I have four NEW MAG each with 5 rounds.
// If I cancel it after two loops then I will get the OLD MAG with 10 rounds in it and two NEW MAG with 5 rounds each.

FNC_MagazineConversion_AddNewMags = {
    params ["_OldMag","_NewMag","_oldMagCountCurrent","_newMagCountMax"];

    private _convertTime = 0;

    // Set the time to run the progress bar based on the number of rounds that can be moved in one batch and the speed multiplier setting.
    // If moving 5 rounds into a 30 round 
    if (_oldMagCountCurrent >= _newMagCountMax) then {
        _convertTime = _newMagCountMax * magazine_conversion_speedMultiplier;
    };
    if (_oldMagCountCurrent < _newMagCountMax) then {
        _convertTime = _oldMagCountCurrent * magazine_conversion_speedMultiplier;
    };

    // Call Ace Progress Bar for the time it takes to convert.
    [
        _convertTime,
        [_OldMag,_NewMag,_oldMagCountCurrent,_newMagCountMax],
        {
            private _args = _this select 0;
            private _OldMag = _args select 0;
            private _NewMag = _args select 1;
            private _oldMagCountCurrent = _args select 2;
            private _newMagCountMax = _args select 3;

            // If the OLD MAG has fewer rounds that the max of the NEW MAG, create the NEW MAG with that number of rounds else create a full NEW MAG
            if (_oldMagCountCurrent < _newMagCountMax) then {
                player addMagazine [_NewMag, _oldMagCountCurrent];
            } else {
                player addItem _NewMag;
            };

            // Subtract the number of rounds removed from the OLD MAG
            _oldMagCountCurrent = _oldMagCountCurrent - (_newMagCountMax min _oldMagCountCurrent);

            // If any rounds are left over, call this function again to put them into another NEW MAG. Repeats until all 
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