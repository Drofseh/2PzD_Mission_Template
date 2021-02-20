
Olsen_FW_FNC_SupportFire_RemoveAmmo = {
    params ["_supportFire_type","_supportFire_number","_supportFire_ammoCount"];

    // systemChat ("_supportFire_type - " + str _supportFire_type);
    // systemChat ("_supportFire_number - " + str _supportFire_number);
    // systemChat ("_supportFire_ammoCount - " + str _supportFire_ammoCount);

    if (supportFire_isWEST) then {
        // systemChat "side WEST";
        if (_supportFire_type isEqualTo "HE") exitWith {
            if (_supportFire_number > supportFire_shellsHE_AmmoCountWEST) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsHE_AmmoCountWEST = supportFire_shellsHE_AmmoCountWEST - _supportFire_number;
            publicVariable "supportFire_shellsHE_AmmoCountWEST";
            _supportFire_ammoCount = supportFire_shellsHE_AmmoCountWEST;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") exitWith {
            if (_supportFire_number > supportFire_shellsSmoke_AmmoCountWEST) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsSmoke_AmmoCountWEST = supportFire_shellsSmoke_AmmoCountWEST - _supportFire_number;
            publicVariable "supportFire_shellsSmoke_AmmoCountWEST";
            _supportFire_ammoCount = supportFire_shellsSmoke_AmmoCountWEST;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") exitWith {
            if (_supportFire_number > supportFire_shellsFlare_AmmoCountWEST) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsFlare_AmmoCountWEST = supportFire_shellsFlare_AmmoCountWEST - _supportFire_number;
            publicVariable "supportFire_shellsFlare_AmmoCountWEST";
            _supportFire_ammoCount = supportFire_shellsFlare_AmmoCountWEST;
            // systemChat "Flare removed";
        };
    };
    if (supportFire_isEAST) then {
        // systemChat "side EAST";
        if (_supportFire_type isEqualTo "HE") exitWith {
            if (_supportFire_number > supportFire_shellsHE_AmmoCountEAST) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsHE_AmmoCountEAST = supportFire_shellsHE_AmmoCountEAST - _supportFire_number;
            publicVariable "supportFire_shellsHE_AmmoCountEAST";
            _supportFire_ammoCount = supportFire_shellsHE_AmmoCountEAST;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") exitWith {
            if (_supportFire_number > supportFire_shellsSmoke_AmmoCountEAST) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsSmoke_AmmoCountEAST = supportFire_shellsSmoke_AmmoCountEAST - _supportFire_number;
            publicVariable "supportFire_shellsSmoke_AmmoCountEAST";
            _supportFire_ammoCount = supportFire_shellsSmoke_AmmoCountEAST;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") exitWith {
            if (_supportFire_number > supportFire_shellsFlare_AmmoCountEAST) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsFlare_AmmoCountEAST = supportFire_shellsFlare_AmmoCountEAST - _supportFire_number;
            publicVariable "supportFire_shellsFlare_AmmoCountEAST";
            _supportFire_ammoCount = supportFire_shellsFlare_AmmoCountEAST;
            // systemChat "Flare removed";
        };
    };
    if (supportFire_isGUER) then {
        // systemChat "side RESISTANCE";
        if (_supportFire_type isEqualTo "HE") exitWith {
            if (_supportFire_number > supportFire_shellsHE_AmmoCountGUER) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsHE_AmmoCountGUER = supportFire_shellsHE_AmmoCountGUER - _supportFire_number;
            publicVariable "supportFire_shellsHE_AmmoCountGUER";
            _supportFire_ammoCount = supportFire_shellsHE_AmmoCountGUER;
            // systemChat "HE removed";
        };
        if (_supportFire_type isEqualTo "Smoke") exitWith {
            if (_supportFire_number > supportFire_shellsSmoke_AmmoCountGUER) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsSmoke_AmmoCountGUER = supportFire_shellsSmoke_AmmoCountGUER - _supportFire_number;
            publicVariable "supportFire_shellsSmoke_AmmoCountGUER";
            _supportFire_ammoCount = supportFire_shellsSmoke_AmmoCountGUER;
            // systemChat "Smoke removed";
        };
        if (_supportFire_type isEqualTo "Flare") exitWith {
            if (_supportFire_number > supportFire_shellsFlare_AmmoCountGUER) exitWith {_supportFire_ammoCount = -1};
            supportFire_shellsFlare_AmmoCountGUER = supportFire_shellsFlare_AmmoCountGUER - _supportFire_number;
            publicVariable "supportFire_shellsFlare_AmmoCountGUER";
            _supportFire_ammoCount = supportFire_shellsFlare_AmmoCountGUER;
            // systemChat "Flare removed";
        };
    };

    // systemChat ("_supportFire_ammoCount - " + str _supportFire_ammoCount);

    _supportFire_ammoCount
};
