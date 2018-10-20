
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
            supportFire_shellsHE_AmmoCountWEST = supportFire_shellsHE_AmmoCountWEST - _supportFire_number;
            publicVariable "supportFire_shellsHE_AmmoCountWEST";
            _supportFire_ammoCount = supportFire_shellsHE_AmmoCountWEST;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") then {
            supportFire_shellsSmoke_AmmoCountWEST = supportFire_shellsSmoke_AmmoCountWEST - _supportFire_number;
            publicVariable "supportFire_shellsSmoke_AmmoCountWEST";
            _supportFire_ammoCount = supportFire_shellsSmoke_AmmoCountWEST;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") then {
            supportFire_shellsFlare_AmmoCountWEST = supportFire_shellsFlare_AmmoCountWEST - _supportFire_number;
            publicVariable "supportFire_shellsFlare_AmmoCountWEST";
            _supportFire_ammoCount = supportFire_shellsFlare_AmmoCountWEST;
            // systemChat "Flare removed";
        };
    };

    if (_supportFire_side isEqualTo EAST) then {
        // systemChat "side EAST";
        if (_supportFire_type isEqualTo "HE") then {
            supportFire_shellsHE_AmmoCountEAST = supportFire_shellsHE_AmmoCountEAST - _supportFire_number;
            publicVariable "supportFire_shellsHE_AmmoCountEAST";
            _supportFire_ammoCount = supportFire_shellsHE_AmmoCountEAST;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") then {
            supportFire_shellsSmoke_AmmoCountEAST = supportFire_shellsSmoke_AmmoCountEAST - _supportFire_number;
            publicVariable "supportFire_shellsSmoke_AmmoCountEAST";
            _supportFire_ammoCount = supportFire_shellsSmoke_AmmoCountEAST;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") then {
            supportFire_shellsFlare_AmmoCountEAST = supportFire_shellsFlare_AmmoCountEAST - _supportFire_number;
            publicVariable "supportFire_shellsFlare_AmmoCountEAST";
            _supportFire_ammoCount = supportFire_shellsFlare_AmmoCountEAST;
            // systemChat "Flare removed";
        };
    };

    if (_supportFire_side isEqualTo RESISTANCE) then {
        // systemChat "side RESISTANCE";
        if (_supportFire_type isEqualTo "HE") then {
            supportFire_shellsHE_AmmoCountGUER = supportFire_shellsHE_AmmoCountGUER - _supportFire_number;
            publicVariable "supportFire_shellsHE_AmmoCountGUER";
            _supportFire_ammoCount = supportFire_shellsHE_AmmoCountGUER;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") then {
            supportFire_shellsSmoke_AmmoCountGUER = supportFire_shellsSmoke_AmmoCountGUER - _supportFire_number;
            publicVariable "supportFire_shellsSmoke_AmmoCountGUER";
            _supportFire_ammoCount = supportFire_shellsSmoke_AmmoCountGUER;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") then {
            supportFire_shellsFlare_AmmoCountGUER = supportFire_shellsFlare_AmmoCountGUER - _supportFire_number;
            publicVariable "supportFire_shellsFlare_AmmoCountGUER";
            _supportFire_ammoCount = supportFire_shellsFlare_AmmoCountGUER;
            // systemChat "Flare removed";
        };
    };

    // systemChat ("_supportFire_ammoCount - " + str _supportFire_ammoCount);

    _supportFire_ammoCount;
};
