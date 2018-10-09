


FNC_SupportFire_GetTargetLocation = {

    private _supportFire_target   = _this select 0;
    private _supportFire_accuracy = _this select 1;
    private _supportFire_adjustX = (_this select 2) select 0;
    private _supportFire_adjustY = (_this select 2) select 1;
    private "_supportFire_targetX";
    private "_supportFire_targetY";
    private "_supportFire_targetLoc";

    // systemChat ("_supportFire_target - " + str _supportFire_target);
    // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);
    // systemChat ("_supportFire_adjust - " + str _supportFire_adjust);

    // checks for repeat target
    // if TRUE apply accuracy/dispersion bonus and recalculate
    // else reset accuracy and calculate the new target
    if (_supportFire_target isEqualTo "TargetLast") then {

        _supportFire_targetLoc = previousTargetLoc;

        if (repeatFireBonus < 1) then {repeatFireBonus = 1};
        repeatFireBonus = repeatFireBonus + 0.25;
        if (repeatFireBonus >= 3) then {repeatFireBonus = 3};

        shellDispersion = originalshellDispersion / repeatFireBonus;
        shellAccuracy = originalshellAccuracy / repeatFireBonus;
        _supportFire_accuracy = shellAccuracy;

        // systemChat ("shellDispersion - " + str shellDispersion);
        // systemChat ("shellAccuracy - " + str shellAccuracy);
        // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

        _supportFire_targetX = (supportFire_lastTargetX) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);
        _supportFire_targetY = (supportFire_lastTargetY) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);

        // systemChat ("_supportFire_targetX - " + str _supportFire_targetX);
        // systemChat ("_supportFire_targetY - " + str _supportFire_targetY);

    } else {

        if (_supportFire_target isEqualTo "AdjustFire") then {

            _supportFire_targetLoc = previousTargetLoc;

        if (repeatFireBonus < 1) then {repeatFireBonus = 1};
        repeatFireBonus = repeatFireBonus + 0.25;
        if (repeatFireBonus >= 3) then {repeatFireBonus = 3};

            shellDispersion = originalshellDispersion / repeatFireBonus;
            shellAccuracy = originalshellAccuracy / repeatFireBonus;
            _supportFire_accuracy = shellAccuracy;

            // systemChat ("shellDispersion - " + str shellDispersion);
            // systemChat ("shellAccuracy - " + str shellAccuracy);
            // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

            _supportFire_targetX = (supportFire_lastTargetX) + _supportFire_adjustX + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);
            _supportFire_targetY = (supportFire_lastTargetY) + _supportFire_adjustY + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);

            // systemChat ("_supportFire_targetX - " + str _supportFire_targetX);
            // systemChat ("_supportFire_targetY - " + str _supportFire_targetY);

        } else {

            // resets dispesion and accuracy to original values
            shellDispersion = originalshellDispersion;
            shellAccuracy = originalshellAccuracy;
            _supportFire_accuracy = shellAccuracy;

            // systemChat ("shellDispersion - " + str shellDispersion);
            // systemChat ("shellAccuracy - " + str shellAccuracy);
            // systemChat ("_supportFire_accuracy - " + str _supportFire_accuracy);

            // gets new target location
            if (_supportFire_target isEqualTo "TargetVisual") then {
                _supportFire_targetLoc = screenToWorld [0.5, 0.5];
            };
            if (_supportFire_target isEqualTo "Target01") then {
                _supportFire_targetLoc = getMarkerPos supportFire_target01;
            };
            if (_supportFire_target isEqualTo "Target02") then {
                _supportFire_targetLoc = getMarkerPos supportFire_target02;
            };
            if (_supportFire_target isEqualTo "Target03") then {
                _supportFire_targetLoc = getMarkerPos supportFire_target03;
            };
            if (_supportFire_target isEqualTo "Target04") then {
                _supportFire_targetLoc = getMarkerPos supportFire_target04;
            };
            if (_supportFire_target isEqualTo "Target05") then {
                _supportFire_targetLoc = getMarkerPos supportFire_target05;
            };
            if (_supportFire_target isEqualTo "Target06") then {
                _supportFire_targetLoc = getMarkerPos supportFire_target06;
            };
            // systemChat ("_supportFire_targetLoc - " + str _supportFire_targetLoc);

            // sets newest target as repeat target and resets accuracy/dispersion bonus
            previousTarget = _supportFire_target;
            previousTargetLoc = _supportFire_targetLoc;
            repeatFireBonus = 1;

            // systemChat ("previousTarget - " + str previousTarget);
            // systemChat ("previousTargetLoc - " + str previousTargetLoc);
            // systemChat ("repeatFireBonus - " + str repeatFireBonus);

            _supportFire_targetX = (_supportFire_targetLoc select 0) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);
            _supportFire_targetY = (_supportFire_targetLoc select 1) + (random [-_supportFire_accuracy, 0, _supportFire_accuracy]);

            // systemChat ("_supportFire_targetX - " + str _supportFire_targetX);
            // systemChat ("_supportFire_targetY - " + str _supportFire_targetY);
        };
    };

    [_supportFire_targetX, _supportFire_targetY];
};
