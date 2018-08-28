
// (side, type, number, target)
// [(side player), "HE", 5, "Target01"] call FNC_SupportFire_FireMission;
FNC_SupportFire_FireMission = {

    // systemChat "Mission start";

    _this spawn {

        private _supportFire_side       = _this select 0;
        private _supportFire_type       = _this select 1;
        private _supportFire_number     = _this select 2;
        private _supportFire_target     = _this select 3;
        private _supportFire_accuracy   = shellAccuracy;
        private _supportFire_dispersion = shellDispersion;

        // systemChat ("_supportFire_side - " +str _supportFire_side);
        // systemChat ("_supportFire_type - " +str _supportFire_type);
        // systemChat ("_supportFire_number - " +str _supportFire_number);
        // systemChat ("_supportFire_target - " +str _supportFire_target);
        // systemChat ("_supportFire_accuracy - " +str _supportFire_accuracy);
        // systemChat ("_supportFire_dispersion - " +str _supportFire_dispersion);

        // get accuracy and dispersion values for players side
        // make fire missions unavailable for that side
        if (_supportFire_side isEqualTo WEST) then {
            fireMissionAvailableWEST = False;
            publicVariable "fireMissionAvailableWEST";
            // systemChat "Fire missions disabled";
        };
        if (_supportFire_side isEqualTo EAST) then {
            fireMissionAvailableEAST = False;
            publicVariable "fireMissionAvailableEAST";
            // systemChat "Fire missions disabled";
        };
        if (_supportFire_side isEqualTo RESISTANCE) then {
            fireMissionAvailableGUER = False;
            publicVariable "fireMissionAvailableGUER";
            // systemChat "Fire missions disabled";
        };

        private _supportFire_ammoLeft = [_supportFire_side, _supportFire_type, _supportFire_number] call FNC_SupportFire_RemoveAmmo;
        // systemChat ("_supportFire_ammoLeft - " +str _supportFire_ammoLeft);

        private _supportFire_targetXY = [_supportFire_target, _supportFire_accuracy] call FNC_SupportFire_GetTargetLocation;
        // systemChat ("_supportFire_targetXY - " +str _supportFire_targetXY);

        supportFire_targetName = [_supportFire_target] call FNC_SupportFire_GetTargetName;
        // systemChat ("supportFire_targetName - " +str supportFire_targetName);

        hint format ["Roger, Fire Mission, \n%1 Rounds, %2, \n%3.", _supportFire_number, _supportFire_type, supportFire_targetName];

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
            fireMissionAvailableWEST = True;
            publicVariable "fireMissionAvailableWEST";
            // systemChat "Fire missions enabled";
        };
        if (_supportFire_side isEqualTo EAST) then {
            fireMissionAvailableEAST = True;
            publicVariable "fireMissionAvailableEAST";
            // systemChat "Fire missions enabled";
        };
        if (_supportFire_side isEqualTo RESISTANCE) then {
            fireMissionAvailableWEST = True;
            publicVariable "fireMissionAvailableWEST";
            // systemChat "Fire missions enabled";
        };

        [_supportFire_type, _supportFire_number, _supportFire_targetXY] call FNC_SupportFire_Barrage;

    };
};

FNC_SupportFire_RemoveAmmo = {

    private _supportFire_side   = _this select 0;
    private _supportFire_type   = _this select 1;
    private _supportFire_number = _this select 2;
    private "_supportFire_ammoCount";

    // systemChat ("_supportFire_side - " +str _supportFire_side);
    // systemChat ("_supportFire_type - " +str _supportFire_type);
    // systemChat ("_supportFire_number - " +str _supportFire_number);

    if (_supportFire_side isEqualTo WEST) then {
        // systemChat "side WEST";
        if (_supportFire_type isEqualTo "HE") then {
            shellsHE_AmmoCountWEST = shellsHE_AmmoCountWEST - _supportFire_number;
            publicVariable "shellsHE_AmmoCountWEST";
            _supportFire_ammoCount = shellsHE_AmmoCountWEST;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") then {
            shellsSmoke_AmmoCountWEST = shellsSmoke_AmmoCountWEST - _supportFire_number;
            publicVariable "shellsSmoke_AmmoCountWEST";
            _supportFire_ammoCount = shellsSmoke_AmmoCountWEST;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") then {
            shellsFlare_AmmoCountWEST = shellsFlare_AmmoCountWEST - _supportFire_number;
            publicVariable "shellsFlare_AmmoCountWEST";
            _supportFire_ammoCount = shellsFlare_AmmoCountWEST;
            // systemChat "Flare removed";
        };
    };

    if (_supportFire_side isEqualTo EAST) then {
        // systemChat "side EAST";
        if (_supportFire_type isEqualTo "HE") then {
            shellsHE_AmmoCountEAST = shellsHE_AmmoCountEAST - _supportFire_number;
            publicVariable "shellsHE_AmmoCountEAST";
            _supportFire_ammoCount = shellsHE_AmmoCountEAST;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") then {
            shellsSmoke_AmmoCountEAST = shellsSmoke_AmmoCountEAST - _supportFire_number;
            publicVariable "shellsSmoke_AmmoCountEAST";
            _supportFire_ammoCount = shellsSmoke_AmmoCountEAST;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") then {
            shellsFlare_AmmoCountEAST = shellsFlare_AmmoCountEAST - _supportFire_number;
            publicVariable "shellsFlare_AmmoCountEAST";
            _supportFire_ammoCount = shellsFlare_AmmoCountEAST;
            // systemChat "Flare removed";
        };
    };

    if (_supportFire_side isEqualTo RESISTANCE) then {
        // systemChat "side RESISTANCE";
        if (_supportFire_type isEqualTo "HE") then {
            shellsHE_AmmoCountGUER = shellsHE_AmmoCountGUER - _supportFire_number;
            publicVariable "shellsHE_AmmoCountGUER";
            _supportFire_ammoCount = shellsHE_AmmoCountGUER;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") then {
            shellsSmoke_AmmoCountGUER = shellsSmoke_AmmoCountGUER - _supportFire_number;
            publicVariable "shellsSmoke_AmmoCountGUER";
            _supportFire_ammoCount = shellsSmoke_AmmoCountGUER;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") then {
            shellsFlare_AmmoCountGUER = shellsFlare_AmmoCountGUER - _supportFire_number;
            publicVariable "shellsFlare_AmmoCountGUER";
            _supportFire_ammoCount = shellsFlare_AmmoCountGUER;
            // systemChat "Flare removed";
        };
    };

    // systemChat ("_supportFire_ammoCount - " +str _supportFire_ammoCount);

    _supportFire_ammoCount;
};

FNC_SupportFire_GetTargetLocation = {

    private _supportFire_target   = _this select 0;
    private _supportFire_accuracy = _this select 1;
    private "_supportFire_targetX";
    private "_supportFire_targetY";
    private "_supportFire_targetLoc";
    private "_supportFire_targetLoc";

    // systemChat ("_supportFire_target - " +str _supportFire_target);
    // systemChat ("_supportFire_accuracy - " +str _supportFire_accuracy);

    // checks for repeat target
    // if TRUE apply accuracy/dispersion bonus and recalculate
    // else reset accuracy and calculate the new target
    if (_supportFire_target isEqualTo "TargetLast") then {

        _supportFire_targetLoc = previousTargetLoc;

        repeatFireBonus = repeatFireBonus + 0.25;

        shellDispersion = originalshellDispersion / repeatFireBonus;
        shellAccuracy = originalshellAccuracy / repeatFireBonus;
        _supportFire_accuracy = shellAccuracy;

        // systemChat ("shellDispersion - " +str shellDispersion);
        // systemChat ("shellAccuracy - " +str shellAccuracy);
        // systemChat ("_supportFire_accuracy - " +str _supportFire_accuracy);

        _supportFire_targetX = (_supportFire_targetLoc select 0) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);
        _supportFire_targetY = (_supportFire_targetLoc select 1) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);

        // systemChat ("_supportFire_targetX - " +str _supportFire_targetX);
        // systemChat ("_supportFire_targetY - " +str _supportFire_targetY);

    } else {

        // resets dispesion and accuracy to original values
        shellDispersion = originalshellDispersion;
        shellAccuracy = originalshellAccuracy;
        _supportFire_accuracy = shellAccuracy;

        // systemChat ("shellDispersion - " +str shellDispersion);
        // systemChat ("shellAccuracy - " +str shellAccuracy);
        // systemChat ("_supportFire_accuracy - " +str _supportFire_accuracy);

        // gets new target location
        if (_supportFire_target isEqualTo "TargetVisual") then {
            _supportFire_targetLoc = screenToWorld [0.5, 0.5];
        };
        if (_supportFire_target isEqualTo "Target01") then {
            _supportFire_targetLoc = getMarkerPos target01;
        };
        if (_supportFire_target isEqualTo "Target02") then {
            _supportFire_targetLoc = getMarkerPos target02;
        };
        if (_supportFire_target isEqualTo "Target03") then {
            _supportFire_targetLoc = getMarkerPos target03;
        };
        if (_supportFire_target isEqualTo "Target04") then {
            _supportFire_targetLoc = getMarkerPos target04;
        };
        if (_supportFire_target isEqualTo "Target05") then {
            _supportFire_targetLoc = getMarkerPos target05;
        };
        if (_supportFire_target isEqualTo "Target06") then {
            _supportFire_targetLoc = getMarkerPos target06;
        };
        // systemChat ("_supportFire_targetLoc - " +str _supportFire_targetLoc);

        // sets newest target as repeat target and resets accuracy/dispersion bonus
        previousTarget = _supportFire_target;
        previousTargetLoc = _supportFire_targetLoc;
        repeatFireBonus = 1;

        // systemChat ("previousTarget - " +str previousTarget);
        // systemChat ("previousTargetLoc - " +str previousTargetLoc);
        // systemChat ("repeatFireBonus - " +str repeatFireBonus);

        _supportFire_targetX = (_supportFire_targetLoc select 0) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);
        _supportFire_targetY = (_supportFire_targetLoc select 1) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);

        // systemChat ("_supportFire_targetX - " +str _supportFire_targetX);
        // systemChat ("_supportFire_targetY - " +str _supportFire_targetY);
    };

    [_supportFire_targetX, _supportFire_targetY];
};

FNC_SupportFire_GetTargetName = {

    private _supportFire_target = _this select 0;

    // systemChat ("_supportFire_target - " +str _supportFire_target);

    if (_supportFire_target isEqualTo "TargetVisual") then {
        supportFire_targetName = "On your mark";
    };
    if (_supportFire_target isEqualTo "Target01") then {
        supportFire_targetName = target01_Name;
    };
    if (_supportFire_target isEqualTo "Target02") then {
        supportFire_targetName = target02_Name;
    };
    if (_supportFire_target isEqualTo "Target03") then {
        supportFire_targetName = target03_Name;
    };
    if (_supportFire_target isEqualTo "Target04") then {
        supportFire_targetName = target04_Name;
    };
    if (_supportFire_target isEqualTo "Target05") then {
        supportFire_targetName = target05_Name;
    };
    if (_supportFire_target isEqualTo "Target06") then {
        supportFire_targetName = target06_Name;
    };

    // systemChat ("supportFire_targetName - " +str supportFire_targetName);

    supportFire_targetName;
};

FNC_SupportFire_Barrage = {

    _this spawn {

        // systemChat str _this;

        private _supportFire_type       = _this select 0;
        private _supportFire_number     = _this select 1;
        private _supportFire_targetX    = (_this select 2) select 0;
        private _supportFire_targetY    = (_this select 2) select 1;
        private _supportFire_rounds_fired = 0;

        // systemChat ("_supportFire_type - " +str _supportFire_type);
        // systemChat ("_supportFire_number - " +str _supportFire_number);
        // systemChat ("_supportFire_targetX - " +str _supportFire_targetX);
        // systemChat ("_supportFire_targetY - " +str _supportFire_targetY);

        // systemChat "fake time to impact sleep started";
        sleep 30; //30
        // systemChat "fake time to impact sleep over";

        for "_i" from 1 to _supportFire_number do {

            private "_supportFire_bomb";
            private "_supportFire_bombPosition";
            private _supportFire_dispersion = shellDispersion;
            private "_supportFire_bombPositionX";
            private "_supportFire_bombPositionY";

            // systemChat ("_supportFire_rounds_fired - " +str _supportFire_rounds_fired);

            if (_supportFire_type isEqualTo "HE") then {
                _supportFire_bomb = shellsHE_Type createVehicle [_supportFire_targetX, _supportFire_targetY, 300];
                // systemChat "_supportFire_bomb HE";
            };
            if (_supportFire_type isEqualTo "Smoke") then {
                _supportFire_bomb = shellsSmoke_Type createVehicle [_supportFire_targetX, _supportFire_targetY, 300];
                // systemChat "_supportFire_bomb Smoke";
            };
            if (_supportFire_type isEqualTo "Flare") then {
                _supportFire_bomb = shellsFlare_Type createVehicle [_supportFire_targetX, _supportFire_targetY, 300];
                // systemChat "_supportFire_bomb Smoke";
            };

            _supportFire_bombPosition = _supportFire_bomb getPos [random _supportFire_dispersion, random 360];
            // systemChat ("_supportFire_bombPosition - " +str _supportFire_bombPosition);

            _supportFire_bombPositionX = (_supportFire_bombPosition select 0);
            // systemChat ("_supportFire_bombPositionX - " +str _supportFire_bombPositionX);

            _supportFire_bombPositionY = (_supportFire_bombPosition select 1);
            // systemChat ("_supportFire_bombPositionY - " +str _supportFire_bombPositionY);

            _supportFire_bomb setPos [_supportFire_bombPositionX, _supportFire_bombPositionY, 300];
            _supportFire_bomb setVelocity [0, 0, -10];

            _supportFire_rounds_fired = _supportFire_rounds_fired + 1;
            // systemChat ("_supportFire_rounds_fired - " +str _supportFire_rounds_fired);

            sleep (random [0.1, 0.2, 0.5]);

            if (_supportFire_rounds_fired >= 5) then {
                sleep 2;
                _supportFire_rounds_fired = 0;
            };
        };

        // systemChat "Barrage over";
    };
};

// [side player] call FNC_SupportFire_AmmoCheck;
FNC_SupportFire_AmmoCheck = {

    // systemChat "ammo check started";

    private _supportFire_side = _this select 0;
    // systemChat str supportFire_side;

    private "_supportFire_ammoCountHE";
    private "_supportFire_ammoCountSmoke";
    private "_supportFire_ammoCountFlare";

    if (_supportFire_side isEqualTo WEST) then {
        // systemChat "west ammo counted";
        _supportFire_ammoCountHE = shellsHE_AmmoCountWEST;
        _supportFire_ammoCountSmoke = shellsSmoke_AmmoCountWEST;
        _supportFire_ammoCountFlare = shellsFlare_AmmoCountWEST;
    };

    if (_supportFire_side isEqualTo EAST) then {
        // systemChat "east ammo counted";
        _supportFire_ammoCountHE = shellsHE_AmmoCountEAST;
        _supportFire_ammoCountSmoke = shellsSmoke_AmmoCountEAST;
        _supportFire_ammoCountFlare = shellsFlare_AmmoCountEAST;
    };

    if (_supportFire_side isEqualTo RESISTANCE) then {
        // systemChat "resistance ammo counted";
        _supportFire_ammoCountHE = shellsHE_AmmoCountGUER;
        _supportFire_ammoCountSmoke = shellsSmoke_AmmoCountGUER;
        _supportFire_ammoCountFlare = shellsFlare_AmmoCountGUER;
    };

    // systemChat (str _supportFire_ammoCountHE);
    // systemChat (str _supportFire_ammoCountSmoke);
    // systemChat (str _supportFire_ammoCountFlare);
    // systemChat "ammo count passed";

    [_supportFire_ammoCountHE, _supportFire_ammoCountSmoke, _supportFire_ammoCountFlare] spawn {
        // systemChat "ammo hint spawn started";
        private _supportFire_ammoCountHE = _this select 0;
        private _supportFire_ammoCountSmoke = _this select 1;
        private _supportFire_ammoCountFlare = _this select 2;
        // systemChat (str _supportFire_ammoCountHE);
        // systemChat (str _supportFire_ammoCountSmoke);
        // systemChat (str _supportFire_ammoCountFlare);
        hint "Roger, checking ammunition.";
        sleep 5;
        hint format ["%1 Rounds, HE, \n%2 rounds Smoke, \n%3 rounds Flare, \nremaining.", _supportFire_ammoCountHE, _supportFire_ammoCountSmoke, _supportFire_ammoCountFlare];
        // systemChat "ammo hint spawn finished";
    };
    // systemChat "ammo check finshed";
};