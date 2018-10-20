
FNC_SupportFire_Barrage = {

    _this spawn {

        // systemChat str _this;

        private _supportFire_type       = _this select 0;
        private _supportFire_number     = _this select 1;
        private _supportFire_targetX    = (_this select 2) select 0;
        private _supportFire_targetY    = (_this select 2) select 1;
        private _supportFire_dispersion = _this select 3;
        private _supportFire_rounds_fired = 0;

        // systemChat ("_supportFire_type - " + str _supportFire_type);
        // systemChat ("_supportFire_number - " + str _supportFire_number);
        // systemChat ("_supportFire_targetX - " + str _supportFire_targetX);
        // systemChat ("_supportFire_targetY - " + str _supportFire_targetY);
        // systemChat "fake time to impact sleep started";
        sleep 30; //30
        // systemChat "fake time to impact sleep over";

        for "_i" from 1 to _supportFire_number do {

            private "_supportFire_bomb";
            private "_supportFire_bombPosition";
            private "_supportFire_bombPositionX";
            private "_supportFire_bombPositionY";

            // systemChat ("_supportFire_rounds_fired - " + str _supportFire_rounds_fired);

            if (_supportFire_type isEqualTo "HE") then {
                _supportFire_bomb = supportFire_shellsHE_Type createVehicle [_supportFire_targetX, _supportFire_targetY, 300];
                // systemChat "_supportFire_bomb HE";
            };
            if (_supportFire_type isEqualTo "Smoke") then {
                _supportFire_bomb = supportFire_shellsSmoke_Type createVehicle [_supportFire_targetX, _supportFire_targetY, 300];
                // systemChat "_supportFire_bomb Smoke";
            };
            if (_supportFire_type isEqualTo "Flare") then {
                _supportFire_bomb = supportFire_shellsFlare_Type createVehicle [_supportFire_targetX, _supportFire_targetY, 300];
                // systemChat "_supportFire_bomb Smoke";
            };

            _supportFire_bombPosition = _supportFire_bomb getPos [random _supportFire_dispersion, random 360];
            // systemChat ("_supportFire_bombPosition - " + str _supportFire_bombPosition);

            _supportFire_bombPositionX = (_supportFire_bombPosition select 0);
            // systemChat ("_supportFire_bombPositionX - " + str _supportFire_bombPositionX);

            _supportFire_bombPositionY = (_supportFire_bombPosition select 1);
            // systemChat ("_supportFire_bombPositionY - " + str _supportFire_bombPositionY);

            _supportFire_bomb setPos [_supportFire_bombPositionX, _supportFire_bombPositionY, 300];
            _supportFire_bomb setVelocity [0, 0, -10];

            _supportFire_rounds_fired = _supportFire_rounds_fired + 1;
            // systemChat ("_supportFire_rounds_fired - " + str _supportFire_rounds_fired);

            sleep (random [0.1, 0.2, 0.5]);

            if (_supportFire_rounds_fired >= 5) then {
                sleep 2;
                _supportFire_rounds_fired = 0;
            };
        };

        // systemChat "Barrage over";
    };
};