
// [side, type, number, target, [adjustmentX,Y]]
// ["HE", 5, "Target01", [0,0]] call Olsen_FW_FNC_SupportFire_FireMission;
Olsen_FW_FNC_SupportFire_FireMission = {
    params [
        ["_supportFire_type", "Smoke"],
        ["_supportFire_number", 1],
        ["_supportFire_target", "TargetVisual"],
        ["_supportFire_adjust", [0,0]],
        ["_supportFire_accuracy", supportFire_shellAccuracy],
        "_supportFire_ammoLeft",
        "_supportFire_targetXY",
        "_supportFire_targetName",
        "_supportFire_distance",
        "_supportFire_adjustDir",
        "_supportFire_warning",
        "_supportFire_dispersion",
        "_supportFire_grammar",
        "_supportFire_layingDelay",
        "_supportFire_completionDelay"
    ];

    // systemChat "Mission start";
    // systemChat ("_supportFire_type - " + str _supportFire_type);
    // systemChat ("_supportFire_number - " + str _supportFire_number);
    // systemChat ("_supportFire_target - " + str _supportFire_target);
    // systemChat ("_supportFire_adjust - " + str _supportFire_adjust);
    // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

    _supportFire_targetName = _supportFire_target call Olsen_FW_FNC_SupportFire_GetTargetName;
    // systemChat _supportFire_target;
    // systemChat _supportFire_targetName;

    _supportFire_targetXY = [_supportFire_target, _supportFire_accuracy, _supportFire_adjust] call Olsen_FW_FNC_SupportFire_GetTargetLocation;
    // systemChat ("_supportFire_targetXY - " + str _supportFire_targetXY);

    // check if player is too close to target
    _supportFire_targetDistance = player distance2D _supportFire_targetXY;
    _supportFire_warning = "";
    _supportFire_cancelled = false;
    if (_supportFire_targetDistance < (0.75 * (supportFire_originalShellDispersion + supportFire_originalShellAccuracy))) then {
        [[(format ["Negative, %1 is too close to your position.<br/>No fire mission.", _supportFire_targetName])], true] call CBA_fnc_notify;
        _supportFire_cancelled = true;
    } else {
        if (_supportFire_targetDistance < (1.5 * (supportFire_originalShellDispersion + supportFire_originalShellAccuracy))) then {
            _supportFire_warning = "<br/>Warning, target is danger closer, take cover.";
        };
    };

    if (_supportFire_cancelled) exitWith {
        // systemChat "Fire mission canceled";
    };

    if (_supportFire_target isEqualTo "TargetLast" && {supportFire_firstRepeat}) then {
        _supportFire_adjustDir = format [" %1", supportFire_adjustmentDirection];
        supportFire_firstRepeat = False;
    } else {
        // systemChat ("_supportFire_targetName - " + str _supportFire_targetName);
        _supportFire_adjustDir = "";
    };

    if (supportFire_isZEUS) then {
        _supportFire_ammoLeft = 99;
    } else {
        _supportFire_ammoLeft = [_supportFire_type, _supportFire_number] call Olsen_FW_FNC_SupportFire_RemoveAmmo;
        // systemChat ("_supportFire_ammoLeft - " + str _supportFire_ammoLeft);

        // cancel if not enough ammo
        if (_supportFire_ammoLeft < 0) exitWith {
            // systemChat "Fire mission canceled";
            [[(format ["Negative, not enough %1 rounds available.", _supportFire_type])], true] call CBA_fnc_notify;
            [] call Olsen_FW_FNC_SupportFire_AmmoCheck;
        };
    };

    // make fire missions unavailable for that side
    if (supportFire_isZEUS) then {
        supportFire_fireMissionAvailableZEUS = False;
        publicVariable "supportFire_fireMissionAvailableZEUS";
        // systemChat "Fire missions disabled";
    };
    if (supportFire_isWEST) then {
        supportFire_fireMissionAvailableWEST = False;
        publicVariable "supportFire_fireMissionAvailableWEST";
        // systemChat "Fire missions disabled";
    };
    if (supportFire_isEAST) then {
        supportFire_fireMissionAvailableEAST = False;
        publicVariable "supportFire_fireMissionAvailableEAST";
        // systemChat "Fire missions disabled";
    };
    if (supportFire_isGUER) then {
        supportFire_fireMissionAvailableGUER = False;
        publicVariable "supportFire_fireMissionAvailableGUER";
        // systemChat "Fire missions disabled";
    };

    // get dispersion values for players side
    _supportFire_dispersion = supportFire_shellDispersion;
    // systemChat ("_supportFire_dispersion - " + str _supportFire_dispersion);

    _supportFire_grammar = "rounds";

    if (_supportFire_number == 1) then {
        _supportFire_grammar = "round";
    };

    [[(format ["Roger, fire mission, %1 %2 %3, on %4%5.%6", _supportFire_number, _supportFire_grammar, _supportFire_type, _supportFire_targetName,_supportFire_adjustDir,_supportFire_warning])], true] call CBA_fnc_notify;

    supportFire_lastType = _supportFire_type;
    supportFire_lastNumber = _supportFire_number;
    supportFire_lastTargetX = _supportFire_targetXY select 0;
    supportFire_lastTargetY = _supportFire_targetXY select 1;
    supportFire_adjustmentCoords = [0,0];

    if (_supportFire_target isEqualTo "TargetVisual") then {
        // systemChat "Visual Target Delays";
        _supportFire_layingDelay = round random [20, 28, 36];
    } else {
        // systemChat "Non-Visual Target Delays";
        _supportFire_layingDelay = round random [4, 8, 12];
    };
    _supportFire_completionDelay = round (_supportFire_layingDelay + (3 * (1 max (_supportFire_number / supportFire_batterySize))));
    // systemChat ("_supportFire_layingDelay - " + str _supportFire_layingDelay);
    // systemChat ("_supportFire_completionDelay - " + str _supportFire_completionDelay);

    [_supportFire_type, _supportFire_number, _supportFire_targetXY, _supportFire_dispersion,_supportFire_targetName,_supportFire_layingDelay] call Olsen_FW_FNC_SupportFire_Barrage;

    [
        {
            params [
                "_supportFire_type",
                "_supportFire_ammoLeft",
                "_supportFire_targetName",
                "_supportFire_grammar"
            ];
            
            if (supportFire_isZEUS) exitWith {
                [
                    [(format ["Rounds complete on %1.", _supportFire_targetName])],
                    true
                ] call CBA_fnc_notify;
            } else {
                [
                    [(format ["Rounds complete on %1.", _supportFire_targetName])],
                    [(format ["%1 %2 %3 remaining.", _supportFire_ammoLeft, _supportFire_grammar, _supportFire_type])],
                    true
                ] call CBA_fnc_notify;
            }:
            // systemChat "Rounds complete";

            // make fire missions available again for the players side
            if (supportFire_isZEUS) exitWith {
                supportFire_fireMissionAvailableZEUS = True;
                publicVariable "supportFire_fireMissionAvailableZEUS";
                // systemChat "Fire missions disabled";
            };
            if (supportFire_isWEST) exitWith {
                supportFire_fireMissionAvailableWEST = True;
                publicVariable "supportFire_fireMissionAvailableWEST";
                // systemChat "Fire missions enabled";
            };
            if (supportFire_isEAST) exitWith {
                supportFire_fireMissionAvailableEAST = True;
                publicVariable "supportFire_fireMissionAvailableEAST";
                // systemChat "Fire missions enabled";
            };
            if (supportFire_isGUER) exitWith {
                supportFire_fireMissionAvailableGUER = True;
                publicVariable "supportFire_fireMissionAvailableGUER";
                // systemChat "Fire missions enabled";
            };
        },
        [_supportFire_type,_supportFire_ammoLeft,_supportFire_targetName,_supportFire_grammar],
        _supportFire_completionDelay
    ] call CBA_fnc_waitAndExecute;
};
