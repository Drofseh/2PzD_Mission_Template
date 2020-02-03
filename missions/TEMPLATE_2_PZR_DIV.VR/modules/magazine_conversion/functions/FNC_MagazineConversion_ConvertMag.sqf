
// This function starts the conversion process
// It searches through all of the players magazines until it finds a match for the OLD MAG
// Then it gets the remaining ammo in that specific mag, removes the mag, and calls the function to add the NEW mag or mags

// Since the ammo count is based on a specific magazine but the removal of the OLD MAG is based on the classname it's possible for there to be a bug where the removed mag is not the same magazine that the ammo count was taken from.
// I think this is unlikely as I believe they should both always be the first matching magazine of that class in the player's inventory.

Olsen_FW_FNC_MagazineConversion_ConvertMag = {
    params ["_OldMag","_NewMag","_allMags"];
    _OldMag = _this select 0;
    _NewMag = _this select 1;

    if !(_OldMag in magazines player) exitWith {
        [["You don't have any of those to convert."], true] call CBA_fnc_notify;
    };

    if !(player canAdd _NewMag) exitWith {
        [["You don't have room for that magazine."], true] call CBA_fnc_notify;
    };

    // This gets all the players magazines classnames and their current ammo counts.
    _allMags = magazinesAmmo player;

    // Flag the magazine as not removed
    magazine_conversion_nameSpace setVariable ["magRemoved", false];

    // Go through the players magazines until a match for the OLD MAG classname is found.
    // Get the ammo count of that magazine and then remove a magazine of that class (which should be same one as mention above) and set the removed variable to prevent any other mags being removed.
    // Get the `count` of the NEW MAG and call the function to add the NEW MAG.
    {
        if (magazine_conversion_nameSpace getVariable ["magRemoved", false]) exitWith {};

        private _thisMagClass = _x select 0;

        if (_OldMag == _thisMagClass) exitWith {

            private _oldMagCountCurrent = _x select 1;
            private _newMagCountMax = getNumber (configFile >> "CfgMagazines" >> _NewMag >> "count");

            player removeMagazine _thisMagClass;
            magazine_conversion_nameSpace setVariable ["magRemoved", true];

            [_OldMag,_NewMag,_oldMagCountCurrent,_newMagCountMax] call Olsen_FW_FNC_MagazineConversion_AddNewMags;
        };
    } forEach _allMags;
    magazine_conversion_nameSpace setVariable ["magRemoved", false];
};
