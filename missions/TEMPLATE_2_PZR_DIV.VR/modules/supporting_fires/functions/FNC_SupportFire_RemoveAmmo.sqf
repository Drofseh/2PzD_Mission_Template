


FNC_SupportFire_RemoveAmmo = {

    private _supportFire_side   = _this select 0;
    private _supportFire_type   = _this select 1;
    private _supportFire_number = _this select 2;
    private "_supportFire_ammoCount";

    // systemChat ("_supportFire_side - " + str _supportFire_side);
    // systemChat ("_supportFire_type - " + str _supportFire_type);
    // systemChat ("_supportFire_number - " + str _supportFire_number);

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

    // systemChat ("_supportFire_ammoCount - " + str _supportFire_ammoCount);

    _supportFire_ammoCount;
};
