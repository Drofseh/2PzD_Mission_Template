
// [side, type, number, target, [adjustmentX,Y]]
// [(side player), "HE", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission;
FNC_SupportFire_FireMission = {
    params [
        "_supportFire_side",
        "_supportFire_type",
        "_supportFire_number",
        "_supportFire_target",
        "_supportFire_adjust",
        ["_supportFire_accuracy", supportFire_shellAccuracy],
        "_supportFire_ammoLeft",
        "_supportFire_targetXY",
        "_supportFire_targetName",
        "_supportFire_distance",
        "_supportFire_warning",
        "_supportFire_dispersion",
        "_supportFire_grammar",
        "_supportFire_layingDelay",
        "_supportFire_barrageDelay"
    ];

    // systemChat "Mission start";
    // systemChat ("_supportFire_side - " + str _supportFire_side);
    // systemChat ("_supportFire_type - " + str _supportFire_type);
    // systemChat ("_supportFire_number - " + str _supportFire_number);
    // systemChat ("_supportFire_target - " + str _supportFire_target);
    // systemChat ("_supportFire_adjust - " + str _supportFire_adjust);
    // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

    _supportFire_targetName = _supportFire_target call FNC_SupportFire_GetTargetName;

    _supportFire_targetXY = [_supportFire_target, _supportFire_accuracy, _supportFire_adjust] call FNC_SupportFire_GetTargetLocation;
    // systemChat ("_supportFire_targetXY - " + str _supportFire_targetXY);

    // check if player is too close to target
    _supportFire_distance = _supportFire_targetXY distance2D player;
    if (_supportFire_distance < (0.75 * (supportFire_originalShellDispersion + supportFire_originalShellAccuracy))) exitWith {
        // systemChat "Fire mission canceled";
        (format ["Negative, %1 is too close your position.<br/>No fire mission.", _supportFire_targetName]) call CBA_fnc_notify;
    };

    if (_supportFire_distance < (1.5 * (supportFire_originalShellDispersion + supportFire_originalShellAccuracy))) then {
        _supportFire_warning = "<br/>Warning, target is danger closer, take cover.";
    } else {
        // systemChat ("_supportFire_targetName - " + str _supportFire_targetName);
        _supportFire_warning = "";
    };

    _supportFire_ammoLeft = [_supportFire_side, _supportFire_type, _supportFire_number] call FNC_SupportFire_RemoveAmmo;
    // systemChat ("_supportFire_ammoLeft - " + str _supportFire_ammoLeft);

    // cancel if not enough ammo
    if (_supportFire_ammoLeft < 0) exitWith {
        // systemChat "Fire mission canceled";
        (format ["Negative, not enough %1 rounds available.", _supportFire_type]) call CBA_fnc_notify;
    };

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

    // get dispersion values for players side
    _supportFire_dispersion = supportFire_shellDispersion;
    // systemChat ("_supportFire_dispersion - " + str _supportFire_dispersion);

    if (_supportFire_number > 1 || {_supportFire_number == 0}) then {
        _supportFire_grammar = "rounds";
    } else {
        _supportFire_grammar = "round";
    };

    (format ["Roger, Fire Mission, %1 %2 %3, %4.%5", _supportFire_number, _supportFire_grammar, _supportFire_type, _supportFire_targetName,_supportFire_warning]) call CBA_fnc_notify;

    supportFire_lastType = _supportFire_type;
    supportFire_lastNumber = _supportFire_number;
    supportFire_lastTargetX = _supportFire_targetXY select 0;
    supportFire_lastTargetY = _supportFire_targetXY select 1;

    if (_supportFire_target isEqualTo "TargetVisual") then {
        // systemChat "Visual Target Delays";
        _supportFire_layingDelay = round random [20, 28, 36];
        _supportFire_barrageDelay = round (_supportFire_layingDelay + (3 * (_supportFire_number / 5)));
    } else {
        // systemChat "Non-Visual Target Delays";
        _supportFire_layingDelay = round random [4, 8, 12];
        _supportFire_barrageDelay = round (_supportFire_layingDelay + (3 * (_supportFire_number / 5)));
    };
    // systemChat ("_supportFire_layingDelay - " + str _supportFire_layingDelay);
    // systemChat ("_supportFire_barrageDelay - " + str _supportFire_barrageDelay);

    [
        {
            params ["_supportFire_targetName"];

            [
                [(format ["Shots out on %1.", _supportFire_targetName])],
                ["30 seconds to impact."]
            ] call CBA_fnc_notify;
            // systemChat "Shots Out";
        },
        _supportFire_targetName,
        _supportFire_layingDelay
    ] call CBA_fnc_waitAndExecute;

    [
        {
            params [
                "_supportFire_side",
                "_supportFire_type",
                "_supportFire_number",
                "_supportFire_ammoLeft",
                "_supportFire_targetName",
                "_supportFire_grammar"
            ];

            if (_supportFire_number > 1 || {_supportFire_number == 0}) then {
                _supportFire_grammar = "rounds";
            } else {
                _supportFire_grammar = "round";
            };

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

            [
                [(format ["Rounds complete on %1.", _supportFire_targetName])],
                ["Watch for splash."],
                [(format ["%1 %2 %3 remaining.", _supportFire_ammoLeft, _supportFire_grammar, _supportFire_type])]
            ] call CBA_fnc_notify;
            // systemChat "Rounds complete";
        },
        [_supportFire_side,_supportFire_type,_supportFire_number,_supportFire_ammoLeft,_supportFire_targetName],
        _supportFire_barrageDelay
    ] call CBA_fnc_waitAndExecute;

    [_supportFire_type, _supportFire_number, _supportFire_targetXY, _supportFire_dispersion,_supportFire_targetName,_supportFire_layingDelay] call FNC_SupportFire_Barrage;
};
