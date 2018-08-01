
// (side, type, number, target)
// [(side player), "HE", 5, "Target01"] call FNC_SupportFire_FireMission;
FNC_SupportFire_FireMission = {

    // systemChat "Mission start";

    _this spawn {

        supportFire_side       = _this select 0;
        supportFire_type       = _this select 1;
        supportFire_number     = _this select 2;
        supportFire_target     = _this select 3;
        supportFire_accuracy   = shellAccuracy;
        supportFire_dispersion = shellDispersion;

        // systemChat ("supportFire_side - " +str supportFire_side);
        // systemChat ("supportFire_type - " +str supportFire_type);
        // systemChat ("supportFire_number - " +str supportFire_number);
        // systemChat ("supportFire_target - " +str supportFire_target);
        // systemChat ("supportFire_accuracy - " +str supportFire_accuracy);
        // systemChat ("supportFire_dispersion - " +str supportFire_dispersion);

        // get accuracy and dispersion values for players side
        // make fire missions unavailable for that side
        if (supportFire_side isEqualTo WEST) then {
            fireMissionAvailableWEST = False;
            publicVariable "fireMissionAvailableWEST";
            // systemChat "Fire missions disabled";
        };
        if (supportFire_side isEqualTo EAST) then {
            fireMissionAvailableEAST = False;
            publicVariable "fireMissionAvailableEAST";
            // systemChat "Fire missions disabled";
        };
        if (supportFire_side isEqualTo RESISTANCE) then {
            fireMissionAvailableGUER = False;
            publicVariable "fireMissionAvailableGUER";
            // systemChat "Fire missions disabled";
        };

        supportFire_ammoLeft = [supportFire_side, supportFire_type, supportFire_number] call FNC_SupportFire_RemoveAmmo;
        // systemChat ("supportFire_ammoLeft - " +str supportFire_ammoLeft);

        supportFire_targetXY = [supportFire_target, supportFire_accuracy] call FNC_SupportFire_GetTargetLocation;
        // systemChat ("supportFire_targetXY - " +str supportFire_targetXY);

        supportFire_targetName = [supportFire_target] call FNC_SupportFire_GetTargetName;
        // systemChat ("supportFire_targetName - " +str supportFire_targetName);

        hint format ["Roger, Fire Mission, \n%1 Rounds, %2, \n%3.", supportFire_number, supportFire_type, supportFire_targetName];

        // systemChat "fake firing sleep started";
        if (supportFire_target isEqualTo "TargetVisual") then {
            sleep 28 + (2 * (supportFire_number / 5));
        } else {
            sleep 8 + (2 * (supportFire_number / 5));
        };
        // systemChat "fake firing sleep over";

        hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", supportFire_ammoLeft];

        // make fire missions available again for the players side
        if (supportFire_side isEqualTo WEST) then {
            fireMissionAvailableWEST = True;
            publicVariable "fireMissionAvailableWEST";
            // systemChat "Fire missions enabled";
        };
        if (supportFire_side isEqualTo EAST) then {
            fireMissionAvailableEAST = True;
            publicVariable "fireMissionAvailableEAST";
            // systemChat "Fire missions enabled";
        };
        if (supportFire_side isEqualTo RESISTANCE) then {
            fireMissionAvailableWEST = True;
            publicVariable "fireMissionAvailableWEST";
            // systemChat "Fire missions enabled";
        };

        // systemChat "fake time to impact sleep started";
        sleep 3; //30
        // systemChat "fake time to impact sleep over";

        [supportFire_type, supportFire_number, supportFire_targetXY] call FNC_SupportFire_Barrage;

    };

    // systemChat "Mission over";
};

FNC_SupportFire_RemoveAmmo = {

    supportFire_side   = _this select 0;
    supportFire_type   = _this select 1;
    supportFire_number = _this select 2;

    // systemChat ("supportFire_side - " +str supportFire_side);
    // systemChat ("supportFire_type - " +str supportFire_type);
    // systemChat ("supportFire_number - " +str supportFire_number);

    if (supportFire_side isEqualTo WEST) then {
        // systemChat "side WEST";
        if (supportFire_type isEqualTo "HE") then {
            shellsHE_AmmoCountWEST = shellsHE_AmmoCountWEST - supportFire_number;
            publicVariable "shellsHE_AmmoCountWEST";
            supportFire_ammoCount = shellsHE_AmmoCountWEST;
            // systemChat "HE removed";
        };
        if (supportFire_type isEqualTo "Smoke") then {
            shellsSmoke_AmmoCountWEST = shellsSmoke_AmmoCountWEST - supportFire_number;
            publicVariable "shellsSmoke_AmmoCountWEST";
            supportFire_ammoCount = shellsSmoke_AmmoCountWEST;
            // systemChat "Smoke removed";
        };
        if (supportFire_type isEqualTo "Flare") then {
            shellsFlare_AmmoCountWEST = shellsFlare_AmmoCountWEST - supportFire_number;
            publicVariable "shellsFlare_AmmoCountWEST";
            supportFire_ammoCount = shellsFlare_AmmoCountWEST;
            // systemChat "Flare removed";
        };
    };

    if (supportFire_side isEqualTo EAST) then {
        // systemChat "side EAST";
        if (supportFire_type isEqualTo "HE") then {
            shellsHE_AmmoCountEAST = shellsHE_AmmoCountEAST - supportFire_number;
            publicVariable "shellsHE_AmmoCountEAST";
            supportFire_ammoCount = shellsHE_AmmoCountEAST;
            // systemChat "HE removed";
        };
        if (supportFire_type isEqualTo "Smoke") then {
            shellsSmoke_AmmoCountEAST = shellsSmoke_AmmoCountEAST - supportFire_number;
            publicVariable "shellsSmoke_AmmoCountEAST";
            supportFire_ammoCount = shellsSmoke_AmmoCountEAST;
            // systemChat "Smoke removed";
        };
        if (supportFire_type isEqualTo "Flare") then {
            shellsFlare_AmmoCountEAST = shellsFlare_AmmoCountEAST - supportFire_number;
            publicVariable "shellsFlare_AmmoCountEAST";
            supportFire_ammoCount = shellsFlare_AmmoCountEAST;
            // systemChat "Flare removed";
        };
    };

    if (supportFire_side isEqualTo RESISTANCE) then {
        // systemChat "side RESISTANCE";
        if (supportFire_type isEqualTo "HE") then {
            shellsHE_AmmoCountGUER = shellsHE_AmmoCountGUER - supportFire_number;
            publicVariable "shellsHE_AmmoCountGUER";
            supportFire_ammoCount = shellsHE_AmmoCountGUER;
            // systemChat "HE removed";
        };
        if (supportFire_type isEqualTo "Smoke") then {
            shellsSmoke_AmmoCountGUER = shellsSmoke_AmmoCountGUER - supportFire_number;
            publicVariable "shellsSmoke_AmmoCountGUER";
            supportFire_ammoCount = shellsSmoke_AmmoCountGUER;
            // systemChat "Smoke removed";
        };
        if (supportFire_type isEqualTo "Flare") then {
            shellsFlare_AmmoCountGUER = shellsFlare_AmmoCountGUER - supportFire_number;
            publicVariable "shellsFlare_AmmoCountGUER";
            supportFire_ammoCount = shellsFlare_AmmoCountGUER;
            // systemChat "Flare removed";
        };
    };

    // systemChat ("supportFire_ammoCount - " +str supportFire_ammoCount);

    supportFire_ammoCount;
};

FNC_SupportFire_GetTargetLocation = {

    supportFire_target   = _this select 0;
    supportFire_accuracy = _this select 1;

    // systemChat ("supportFire_target - " +str supportFire_target);
    // systemChat ("supportFire_accuracy - " +str supportFire_accuracy);

    // checks for repeat target
    // if TRUE apply accuracy/dispersion bonus and recalculate
    // else reset accuracy and calculate the new target
    if (supportFire_target isEqualTo "TargetLast") then {

        supportFire_targetLoc = previousTargetLoc;

        repeatFireBonus = repeatFireBonus + 0.25;

        shellDispersion = originalshellDispersion / repeatFireBonus;
        shellAccuracy = originalshellAccuracy / repeatFireBonus;
        supportFire_accuracy = shellAccuracy;

        // systemChat ("shellDispersion - " +str shellDispersion);
        // systemChat ("shellAccuracy - " +str shellAccuracy);
        // systemChat ("supportFire_accuracy - " +str supportFire_accuracy);

        supportFire_targetX = (supportFire_targetLoc select 0) + (random [-supportFire_accuracy, 0, supportFire_accuracy]);
        supportFire_targetY = (supportFire_targetLoc select 1) + (random [-supportFire_accuracy, 0, supportFire_accuracy]);

        // systemChat ("supportFire_targetX - " +str supportFire_targetX);
        // systemChat ("supportFire_targetY - " +str supportFire_targetY);

    } else {

        // resets dispesion and accuracy to original values
        shellDispersion = originalshellDispersion;
        shellAccuracy = originalshellAccuracy;
        supportFire_accuracy = shellAccuracy;

        // systemChat ("shellDispersion - " +str shellDispersion);
        // systemChat ("shellAccuracy - " +str shellAccuracy);
        // systemChat ("supportFire_accuracy - " +str supportFire_accuracy);

        // gets new target location
        if (supportFire_target isEqualTo "TargetVisual") then {
            supportFire_targetLoc = screenToWorld [0.5, 0.5];
        };
        if (supportFire_target isEqualTo "Target01") then {
            supportFire_targetLoc = getMarkerPos target01;
        };
        if (supportFire_target isEqualTo "Target02") then {
            supportFire_targetLoc = getMarkerPos target02;
        };
        if (supportFire_target isEqualTo "Target03") then {
            supportFire_targetLoc = getMarkerPos target03;
        };
        if (supportFire_target isEqualTo "Target04") then {
            supportFire_targetLoc = getMarkerPos target04;
        };
        if (supportFire_target isEqualTo "Target05") then {
            supportFire_targetLoc = getMarkerPos target05;
        };
        if (supportFire_target isEqualTo "Target06") then {
            supportFire_targetLoc = getMarkerPos target06;
        };
        // systemChat ("supportFire_targetLoc - " +str supportFire_targetLoc);

        // sets newest target as repeat target and resets accuracy/dispersion bonus
        previousTarget = supportFire_target;
        previousTargetLoc = supportFire_targetLoc;
        repeatFireBonus = 1;

        // systemChat ("previousTarget - " +str previousTarget);
        // systemChat ("previousTargetLoc - " +str previousTargetLoc);
        // systemChat ("repeatFireBonus - " +str repeatFireBonus);

        supportFire_targetX = (supportFire_targetLoc select 0) + (random [-supportFire_accuracy, 0, supportFire_accuracy]);
        supportFire_targetY = (supportFire_targetLoc select 1) + (random [-supportFire_accuracy, 0, supportFire_accuracy]);

        // systemChat ("supportFire_targetX - " +str supportFire_targetX);
        // systemChat ("supportFire_targetY - " +str supportFire_targetY);
    };

    [supportFire_targetX, supportFire_targetY];
};

FNC_SupportFire_GetTargetName = {

    supportFire_target = _this select 0;

    // systemChat ("supportFire_target - " +str supportFire_target);

    if (supportFire_target isEqualTo "TargetVisual") then {
        supportFire_targetName = "On your mark";
    };
    if (supportFire_target isEqualTo "Target01") then {
        supportFire_targetName = target01_Name;
    };
    if (supportFire_target isEqualTo "Target02") then {
        supportFire_targetName = target02_Name;
    };
    if (supportFire_target isEqualTo "Target03") then {
        supportFire_targetName = target03_Name;
    };
    if (supportFire_target isEqualTo "Target04") then {
        supportFire_targetName = target04_Name;
    };
    if (supportFire_target isEqualTo "Target05") then {
        supportFire_targetName = target05_Name;
    };
    if (supportFire_target isEqualTo "Target06") then {
        supportFire_targetName = target06_Name;
    };

    // systemChat ("supportFire_targetName - " +str supportFire_targetName);

    supportFire_targetName;
};

FNC_SupportFire_Barrage = {

    supportFire_type       = _this select 0;
    supportFire_number     = _this select 1;
    supportFire_targetX    = (_this select 2) select 0;
    supportFire_targetY    = (_this select 2) select 1;

    // systemChat ("supportFire_type - " +str supportFire_type);
    // systemChat ("supportFire_number - " +str supportFire_number);
    // systemChat ("supportFire_targetX - " +str supportFire_targetX);
    // systemChat ("supportFire_targetY - " +str supportFire_targetY);

    _this spawn {

        supportFire_rounds_fired = 0;

        // systemChat ("supportFire_rounds_fired - " +str supportFire_rounds_fired);

        for "_i" from 1 to supportFire_number do {

            if (supportFire_type isEqualTo "HE") then {
                supportFire_bomb = shellsHE_Type createVehicle [supportFire_targetX, supportFire_targetY, 300];
                // systemChat "supportFire_bomb HE";
            };
            if (supportFire_type isEqualTo "Smoke") then {
                supportFire_bomb = shellsSmoke_Type createVehicle [supportFire_targetX, supportFire_targetY, 300];
                // systemChat "supportFire_bomb Smoke";
            };
            if (supportFire_type isEqualTo "Flare") then {
                supportFire_bomb = shellsFlare_Type createVehicle [supportFire_targetX, supportFire_targetY, 300];
                // systemChat "supportFire_bomb Smoke";
            };

            supportFire_bombPosition = supportFire_bomb getPos [random supportFire_dispersion, random 360];
            // systemChat ("supportFire_bombPosition - " +str supportFire_bombPosition);

            supportFire_bombPositionX = (supportFire_bombPosition select 0);
            // systemChat ("supportFire_bombPositionX - " +str supportFire_bombPositionX);

            supportFire_bombPositionY = (supportFire_bombPosition select 1);
            // systemChat ("supportFire_bombPositionY - " +str supportFire_bombPositionY);

            supportFire_bomb setPos [supportFire_bombPositionX, supportFire_bombPositionY, 300];
            supportFire_bomb setVelocity [0, 0, -10];

            supportFire_rounds_fired = supportFire_rounds_fired + 1;
            // systemChat ("supportFire_rounds_fired - " +str supportFire_rounds_fired);

            sleep (random [0.1, 0.2, 0.5]);

            if (supportFire_rounds_fired >= 5) then {
                sleep 2;
                supportFire_rounds_fired = 0;
            };
        };
    };
};

// [side player] call FNC_SupportFire_AmmoCheck;
FNC_SupportFire_AmmoCheck = {

    // systemChat "ammo check started";

    supportFire_side = _this select 0;
    // systemChat str supportFire_side;

    if (supportFire_side isEqualTo WEST) then {
        // systemChat "west ammo counted";
        supportFire_ammoCountHE = shellsHE_AmmoCountWEST;
        supportFire_ammoCountSmoke = shellsSmoke_AmmoCountWEST;
        supportFire_ammoCountFlare = shellsFlare_AmmoCountWEST;
    };

    if (supportFire_side isEqualTo EAST) then {
        // systemChat "east ammo counted";
        supportFire_ammoCountHE = shellsHE_AmmoCountEAST;
        supportFire_ammoCountSmoke = shellsSmoke_AmmoCountEAST;
        supportFire_ammoCountFlare = shellsFlare_AmmoCountEAST;
    };

    if (supportFire_side isEqualTo RESISTANCE) then {
        // systemChat "resistance ammo counted";
        supportFire_ammoCountHE = shellsHE_AmmoCountGUER;
        supportFire_ammoCountSmoke = shellsSmoke_AmmoCountGUER;
        supportFire_ammoCountFlare = shellsFlare_AmmoCountGUER;
    };

    // systemChat (str supportFire_ammoCountHE);
    // systemChat (str supportFire_ammoCountSmoke);
    // systemChat (str supportFire_ammoCountFlare);
    // systemChat "ammo count passed";

    [supportFire_ammoCountHE, supportFire_ammoCountSmoke, supportFire_ammoCountFlare] spawn {
        // systemChat "ammo hint spawn started";
        supportFire_ammoCountHE = _this select 0;
        supportFire_ammoCountSmoke = _this select 1;
        supportFire_ammoCountFlare = _this select 2;
        // systemChat (str supportFire_ammoCountHE);
        // systemChat (str supportFire_ammoCountSmoke);
        // systemChat (str supportFire_ammoCountFlare);
        hint "Roger, checking ammunition.";
        sleep 5;
        hint format ["%1 Rounds, HE, \n%2 rounds Smoke, \n%3 rounds Flare, \nremaining.", supportFire_ammoCountHE, supportFire_ammoCountSmoke, supportFire_ammoCountFlare];
        // systemChat "ammo hint spawn finished";
    };
    // systemChat "ammo check finshed";
};