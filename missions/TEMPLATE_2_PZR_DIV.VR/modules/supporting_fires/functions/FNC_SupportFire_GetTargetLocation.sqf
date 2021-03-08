
Olsen_FW_FNC_SupportFire_GetTargetLocation = {
    params [
        "_supportFire_target",
        "_supportFire_accuracy",
        "_supportFire_adjust",
        "_supportFire_adjustX",
        "_supportFire_adjustY",
        "_supportFire_targetX",
        "_supportFire_targetY",
        "_supportFire_targetLoc"
    ];

    _supportFire_adjustX = _supportFire_adjust select 0;
    _supportFire_adjustY = _supportFire_adjust select 1;

    // systemChat ("_supportFire_target - " + str _supportFire_target);
    // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);
    // systemChat ("_supportFire_adjust - " + str _supportFire_adjust);

    // checks for repeat target
    // if TRUE apply accuracy/dispersion bonus and recalculate
    // else reset accuracy and calculate the new target
    if (_supportFire_target isEqualTo "TargetLast") then {

        _supportFire_targetLoc = supportFire_previousTargetLoc;

        if !(supportFire_isZEUS) then {
            if (supportFire_repeatFireBonus < 1) then {supportFire_repeatFireBonus = 1};
            supportFire_repeatFireBonus = supportFire_repeatFireBonus + 0.2;
            if (supportFire_repeatFireBonus >= 3) then {supportFire_repeatFireBonus = 3};

            supportFire_shellDispersion = supportFire_originalShellDispersion / supportFire_repeatFireBonus;
            supportFire_shellAccuracy = supportFire_originalShellAccuracy / supportFire_repeatFireBonus;
        };
        _supportFire_accuracy = supportFire_shellAccuracy;

        // systemChat ("supportFire_shellDispersion - " + str supportFire_shellDispersion);
        // systemChat ("supportFire_shellAccuracy - " + str supportFire_shellAccuracy);
        // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

        _supportFire_targetX = (supportFire_lastTargetX) + _supportFire_adjustX + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);
        _supportFire_targetY = (supportFire_lastTargetY) + _supportFire_adjustY + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);

        // systemChat ("_supportFire_targetX - " + str _supportFire_targetX);
        // systemChat ("_supportFire_targetY - " + str _supportFire_targetY);

    } else {

        // resets dispesion and accuracy to original values
        supportFire_shellDispersion = supportFire_originalShellDispersion;
        supportFire_shellAccuracy = supportFire_originalShellAccuracy;
        _supportFire_accuracy = supportFire_shellAccuracy;

        // systemChat ("supportFire_shellDispersion - " + str supportFire_shellDispersion);
        // systemChat ("supportFire_shellAccuracy - " + str supportFire_shellAccuracy);
        // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

        // gets new target location
        switch (true) do {
            case (_supportFire_target isEqualTo "TargetGrid") : {
                _supportFire_targetLoc = supportFire_targetGrid;
            };
            case (_supportFire_target isEqualTo "TargetVisual") : {
                _supportFire_targetLoc = screenToWorld [0.5, 0.5];
            };
            case (_supportFire_target isEqualTo "Target01") : {
                _supportFire_targetLoc = getMarkerPos supportFire_target01;
            };
            case (_supportFire_target isEqualTo "Target02") : {
                _supportFire_targetLoc = getMarkerPos supportFire_target02;
            };
            case (_supportFire_target isEqualTo "Target03") : {
                _supportFire_targetLoc = getMarkerPos supportFire_target03;
            };
            case (_supportFire_target isEqualTo "Target04") : {
                _supportFire_targetLoc = getMarkerPos supportFire_target04;
            };
            case (_supportFire_target isEqualTo "Target05") : {
                _supportFire_targetLoc = getMarkerPos supportFire_target05;
            };
            case (_supportFire_target isEqualTo "Target06") : {
                _supportFire_targetLoc = getMarkerPos supportFire_target06;
            };
        };
        // systemChat ("_supportFire_targetLoc - " + str _supportFire_targetLoc);

        // sets newest target as repeat target and resets accuracy/dispersion bonus
        supportFire_previousTarget = _supportFire_target;
        supportFire_previousTargetLoc = _supportFire_targetLoc;
        supportFire_repeatFireBonus = 1;

        // systemChat ("supportFire_previousTarget - " + str supportFire_previousTarget);
        // systemChat ("supportFire_previousTargetLoc - " + str supportFire_previousTargetLoc);
        // systemChat ("supportFire_repeatFireBonus - " + str supportFire_repeatFireBonus);

        _supportFire_targetX = (_supportFire_targetLoc select 0) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);
        _supportFire_targetY = (_supportFire_targetLoc select 1) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);

        // systemChat ("_supportFire_targetX - " + str _supportFire_targetX);
        // systemChat ("_supportFire_targetY - " + str _supportFire_targetY);
    };

    [_supportFire_targetX, _supportFire_targetY]
};
