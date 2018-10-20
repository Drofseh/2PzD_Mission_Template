
// [side, type, number, target, [adjustmentX,Y]]
// [(side player), "HE", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission;
FNC_SupportFire_FireMission = {

    // systemChat "Mission start";

    _this spawn {

        private _supportFire_side       = _this select 0;
        private _supportFire_type       = _this select 1;
        private _supportFire_number     = _this select 2;
        private _supportFire_target     = _this select 3;
        private _supportFire_adjust     = _this select 4;
        private _supportFire_accuracy   = supportFire_shellAccuracy;

        // systemChat ("_supportFire_side - " + str _supportFire_side);
        // systemChat ("_supportFire_type - " + str _supportFire_type);
        // systemChat ("_supportFire_number - " + str _supportFire_number);
        // systemChat ("_supportFire_target - " + str _supportFire_target);
        // systemChat ("_supportFire_adjust - " + str _supportFire_adjust);
        // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

        // exit if the player managed to call a fire mission even if no ammo was avaiable.
        if (_supportFire_number <= 0) exitWith {
            hint format ["Negative, No more\n%1 rounds available.", _supportFire_type];
        };

        // get accuracy and dispersion values for players side
        // make fire missions unavailable for that side
        if (_supportFire_side isEqualTo WEST) then {
            supportFire_fireMissionAvailableWEST = False;
            publicVariable "supportFire_fireMissionAvailableWEST";
            // systemChat "Fire missions disabled";
        };
        if (_supportFire_side isEqualTo EAST) then {
            supportFire_fireMissionAvailableEAST = False;
            publicVariable "supportFire_fireMissionAvailableEAST";
            // systemChat "Fire missions disabled";
        };
        if (_supportFire_side isEqualTo RESISTANCE) then {
            supportFire_fireMissionAvailableGUER = False;
            publicVariable "supportFire_fireMissionAvailableGUER";
            // systemChat "Fire missions disabled";
        };

        private _supportFire_ammoLeft = [_supportFire_side, _supportFire_type, _supportFire_number] call FNC_SupportFire_RemoveAmmo;
        // systemChat ("_supportFire_ammoLeft - " + str _supportFire_ammoLeft);

        private _supportFire_targetXY = [_supportFire_target, _supportFire_accuracy, _supportFire_adjust] call FNC_SupportFire_GetTargetLocation;
        // systemChat ("_supportFire_targetXY - " + str _supportFire_targetXY);

        private _supportFire_dispersion = supportFire_shellDispersion;
        // systemChat ("_supportFire_dispersion - " + str _supportFire_dispersion);

        private _supportFire_targetName = [_supportFire_target] call FNC_SupportFire_GetTargetName;
        // systemChat ("supportFire_targetName - " + str supportFire_targetName);

        hint format ["Roger, Fire Mission, \n%1 Rounds, %2, \n%3.", _supportFire_number, _supportFire_type, _supportFire_targetName];

        supportFire_lastType = _supportFire_type;
        supportFire_lastNumber = _supportFire_number;
        supportFire_lastTargetX = _supportFire_targetXY select 0;
        supportFire_lastTargetY = _supportFire_targetXY select 1;

        // systemChat "fake firing sleep started";
        if (_supportFire_target isEqualTo "TargetVisual") then {
            sleep 28 + (2 * (_supportFire_number / 5)); // 28 +
        } else {
            sleep 8 + (2 * (_supportFire_number / 5)); // 8 +
        };
        // systemChat "fake firing sleep over";

        hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", _supportFire_ammoLeft];

        // systemChat "Mission over";

        // make fire missions available again for the players side
        if (_supportFire_side isEqualTo WEST) then {
            supportFire_fireMissionAvailableWEST = True;
            publicVariable "supportFire_fireMissionAvailableWEST";
            // systemChat "Fire missions enabled";
        };
        if (_supportFire_side isEqualTo EAST) then {
            supportFire_fireMissionAvailableEAST = True;
            publicVariable "supportFire_fireMissionAvailableEAST";
            // systemChat "Fire missions enabled";
        };
        if (_supportFire_side isEqualTo RESISTANCE) then {
            supportFire_fireMissionAvailableGUER = True;
            publicVariable "supportFire_fireMissionAvailableGUER";
            // systemChat "Fire missions enabled";
        };

        [_supportFire_type, _supportFire_number, _supportFire_targetXY, _supportFire_dispersion] call FNC_SupportFire_Barrage;

    };
};
