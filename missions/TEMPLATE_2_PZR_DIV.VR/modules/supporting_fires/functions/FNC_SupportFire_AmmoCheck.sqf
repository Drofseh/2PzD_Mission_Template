
// [side player] call FNC_SupportFire_AmmoCheck;
FNC_SupportFire_AmmoCheck = {

    // systemChat "ammo check started";

    private _supportFire_side = _this select 0;
    // systemChat str supportFire_side;

    private "_supportFire_ammoCountHE";
    private "_supportFire_ammoCountSmoke";
    private "_supportFire_ammoCountFlare";

    if (_supportFire_side isEqualTo WEST) then {
        // systemChat "west ammo counted";
        _supportFire_ammoCountHE = supportFire_shellsHE_AmmoCountWEST;
        _supportFire_ammoCountSmoke = supportFire_shellsSmoke_AmmoCountWEST;
        _supportFire_ammoCountFlare = supportFire_shellsFlare_AmmoCountWEST;
    };

    if (_supportFire_side isEqualTo EAST) then {
        // systemChat "east ammo counted";
        _supportFire_ammoCountHE = supportFire_shellsHE_AmmoCountEAST;
        _supportFire_ammoCountSmoke = supportFire_shellsSmoke_AmmoCountEAST;
        _supportFire_ammoCountFlare = supportFire_shellsFlare_AmmoCountEAST;
    };

    if (_supportFire_side isEqualTo RESISTANCE) then {
        // systemChat "resistance ammo counted";
        _supportFire_ammoCountHE = supportFire_shellsHE_AmmoCountGUER;
        _supportFire_ammoCountSmoke = supportFire_shellsSmoke_AmmoCountGUER;
        _supportFire_ammoCountFlare = supportFire_shellsFlare_AmmoCountGUER;
    };

    // systemChat (str _supportFire_ammoCountHE);
    // systemChat (str _supportFire_ammoCountSmoke);
    // systemChat (str _supportFire_ammoCountFlare);
    // systemChat "ammo count passed";

    [_supportFire_ammoCountHE, _supportFire_ammoCountSmoke, _supportFire_ammoCountFlare] spawn {
        // systemChat "ammo hint spawn started";
        private _supportFire_ammoCountHE = _this select 0;
        private _supportFire_ammoCountSmoke = _this select 1;
        private _supportFire_ammoCountFlare = _this select 2;
        // systemChat (str _supportFire_ammoCountHE);
        // systemChat (str _supportFire_ammoCountSmoke);
        // systemChat (str _supportFire_ammoCountFlare);
        "Roger, checking ammunition." call CBA_fnc_notify;
        sleep 5;
        (format ["%1 Rounds, HE, \n%2 rounds Smoke, \n%3 rounds Flare, \nremaining.", _supportFire_ammoCountHE, _supportFire_ammoCountSmoke, _supportFire_ammoCountFlare]) call CBA_fnc_notify;
        // systemChat "ammo hint spawn finished";
    };
    // systemChat "ammo check finshed";
};