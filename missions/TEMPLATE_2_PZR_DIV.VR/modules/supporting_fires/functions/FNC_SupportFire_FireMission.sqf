
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
        private _supportFire_canceled  = false;

        // systemChat ("_supportFire_side - " + str _supportFire_side);
        // systemChat ("_supportFire_type - " + str _supportFire_type);
        // systemChat ("_supportFire_number - " + str _supportFire_number);
        // systemChat ("_supportFire_target - " + str _supportFire_target);
        // systemChat ("_supportFire_adjust - " + str _supportFire_adjust);
        // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

        // get accuracy and dispersion values for players side
        // make fire missions unavailable for that side
        if (_supportFire_side isEqualTo WEST) then {
            supportFire_fireMissionAvailableWEST = False;
            publicVariable "supportFire_fireMissionAvailableWEST";
            // systemChat "Fire missions disabled";

            // cancel if the player managed to call a fire mission even if no ammo was avaiable.
            if (_supportFire_number > supportFire_shellsFlare_AmmoCountWEST) then {
                (format ["Negative, Not enough %1 rounds available.", _supportFire_type]) call CBA_fnc_notify;
                _supportFire_canceled  = true;
            };
        };
        if (_supportFire_side isEqualTo EAST) then {
            supportFire_fireMissionAvailableEAST = False;
            publicVariable "supportFire_fireMissionAvailableEAST";
            // systemChat "Fire missions disabled";

            // cancel if the player managed to call a fire mission even if no ammo was avaiable.
            if (_supportFire_number > supportFire_shellsFlare_AmmoCountWEST) then {
                (format ["Negative, Not enough %1 rounds available.", _supportFire_type]) call CBA_fnc_notify;
                _supportFire_canceled  = true;
            };
        };
        if (_supportFire_side isEqualTo RESISTANCE) then {
            supportFire_fireMissionAvailableGUER = False;
            publicVariable "supportFire_fireMissionAvailableGUER";
            // systemChat "Fire missions disabled";

            // cancel if the player managed to call a fire mission even if no ammo was avaiable.
            if (_supportFire_number > supportFire_shellsFlare_AmmoCountWEST) then {
                (format ["Negative, Not enough %1 rounds available.", _supportFire_type]) call CBA_fnc_notify;
                _supportFire_canceled  = true;
            };
        };


        // exit if the fire mission even was canceled.
        if (_supportFire_canceled) exitWith {
            // systemChat "Fire missions canceled";
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
        };

        private _supportFire_ammoLeft = [_supportFire_side, _supportFire_type, _supportFire_number] call FNC_SupportFire_RemoveAmmo;
        // systemChat ("_supportFire_ammoLeft - " + str _supportFire_ammoLeft);

        private _supportFire_targetXY = [_supportFire_target, _supportFire_accuracy, _supportFire_adjust] call FNC_SupportFire_GetTargetLocation;
        // systemChat ("_supportFire_targetXY - " + str _supportFire_targetXY);

        private _supportFire_dispersion = supportFire_shellDispersion;
        // systemChat ("_supportFire_dispersion - " + str _supportFire_dispersion);

        private _supportFire_targetName = [_supportFire_target] call FNC_SupportFire_GetTargetName;
        // systemChat ("supportFire_targetName - " + str supportFire_targetName);

        (format ["Roger, Fire Mission, %1 rounds %2, %3.", _supportFire_number, _supportFire_type, _supportFire_targetName]) call CBA_fnc_notify;

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

        [
            ["Rounds complete."],
            ["30 seconds to impact."],
            [(format ["%1 rounds remaining.", _supportFire_ammoLeft])]
        ] call CBA_fnc_notify;

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
