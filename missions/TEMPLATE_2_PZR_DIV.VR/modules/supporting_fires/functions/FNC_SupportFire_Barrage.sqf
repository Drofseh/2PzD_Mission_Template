
Olsen_FW_FNC_SupportFire_Barrage = {
    params [
        "_supportFire_type",
        "_supportFire_number",
        "_supportFire_targetXY",
        "_supportFire_dispersion",
        "_supportFire_targetName",
        "_supportFire_layingDelay",
        "_supportFire_targetX",
        "_supportFire_targetY",
        ["_supportFire_rounds_fired",0]
    ];

    _supportFire_targetX = _supportFire_targetXY select 0;
    _supportFire_targetY = _supportFire_targetXY select 1;

    // systemChat str _this;
    // systemChat ("_supportFire_targetX - " + str _supportFire_targetX);
    // systemChat ("_supportFire_targetY - " + str _supportFire_targetY);
    // systemChat "fake time to impact simulation started";

    [
        {
            params ["_supportFire_targetName"];

            [
                [(format ["Shots out on %1.", _supportFire_targetName])],
                ["30 seconds to impact."],
                ["Watch for splash."],
                true
            ] call CBA_fnc_notify;
            // systemChat "Shots Out";
        },
        _supportFire_targetName,
        _supportFire_layingDelay
    ] call CBA_fnc_waitAndExecute;

    [
        {
            params [
                "_supportFire_type",
                "_supportFire_number",
                "_supportFire_targetX",
                "_supportFire_targetY",
                "_supportFire_dispersion",
                "_supportFire_targetName",
                "_supportFire_rounds_fired",
                "_supportFire_bombType",
                "_supportFire_shotDelay"
            ];
            // systemChat "fake time to impact simulation over";

            if (_supportFire_type isEqualTo "HE") then {
                _supportFire_bombType = supportFire_shellsHE_Type;
                // systemChat "_supportFire_bomb HE";
            };
            if (_supportFire_type isEqualTo "Smoke") then {
                _supportFire_bombType = supportFire_shellsSmoke_Type;
                // systemChat "_supportFire_bomb Smoke";
            };
            if (_supportFire_type isEqualTo "Flare") then {
                _supportFire_bombType = supportFire_shellsFlare_Type;
                // systemChat "_supportFire_bomb Smoke";
            };

            _supportFire_shotDelay = (random [0.1, 0.2, 0.5]);
            _supportFire_rounds_fired = 0;

            [
                [(format ["Splash out on %1.", _supportFire_targetName])],
                true
            ] call CBA_fnc_notify;
            // systemChat "Splash out";

            for "_i" from 1 to _supportFire_number do {
                [
                    {
                        params [
                            "_supportFire_bombType",
                            "_supportFire_targetX",
                            "_supportFire_targetY",
                            "_supportFire_dispersion",
                            "_supportFire_number",
                            "_supportFire_bomb",
                            "_supportFire_bombPosition",
                            "_supportFire_bombPositionX",
                            "_supportFire_bombPositionY"
                        ];

                        _supportFire_bomb = _supportFire_bombType createVehicle [_supportFire_targetX, _supportFire_targetY, 300];
                        // systemChat ("_supportFire_bombType - " + str _supportFire_bombType);

                        _supportFire_bombPosition = _supportFire_bomb getPos [random _supportFire_dispersion, random 360];
                        // systemChat ("_supportFire_bombPosition - " + str _supportFire_bombPosition);

                        _supportFire_bombPositionX = (_supportFire_bombPosition select 0);
                        // systemChat ("_supportFire_bombPositionX - " + str _supportFire_bombPositionX);

                        _supportFire_bombPositionY = (_supportFire_bombPosition select 1);
                        // systemChat ("_supportFire_bombPositionY - " + str _supportFire_bombPositionY);

                        _supportFire_bomb setPos [_supportFire_bombPositionX, _supportFire_bombPositionY, 300];
                        _supportFire_bomb setVelocity [0, 0, -10];
                    },
                    [_supportFire_bombType, _supportFire_targetX, _supportFire_targetY,_supportFire_dispersion],
                    _supportFire_shotDelay
                ] call CBA_fnc_waitAndExecute;

                _supportFire_rounds_fired = _supportFire_rounds_fired + 1;
                _supportFire_shotDelay = _supportFire_shotDelay + (random [0.1, 0.2, 0.5]);
                // systemChat ("_supportFire_rounds_fired - " + str _supportFire_rounds_fired);
                // systemChat ("_supportFire_shotDelay - " + str _supportFire_shotDelay);

                if (_supportFire_rounds_fired >= supportFire_batterySize) then {
                    _supportFire_shotDelay = _supportFire_shotDelay + 3;
                    _supportFire_rounds_fired = 0;
                };
            };
        },
        [_supportFire_type,_supportFire_number,_supportFire_targetX,_supportFire_targetY,_supportFire_dispersion,_supportFire_targetName,_supportFire_rounds_fired],
        (25 + _supportFire_layingDelay)
    ] call CBA_fnc_waitAndExecute;
    // systemChat "Barrage over";
};
