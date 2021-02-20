
// [] call Olsen_FW_FNC_SupportFire_AmmoCheck;
Olsen_FW_FNC_SupportFire_AmmoCheck = {
    private ["_supportFire_ammoCountHE","_supportFire_ammoCountSmoke","_supportFire_ammoCountFlare"];
    // systemChat "ammo check started";
    // systemChat str supportFire_side;

    if (supportFire_isZEUS) exitWith {
        [["As Zeus you have unlimited rounds for all types."], true] call CBA_fnc_notify;
    };

    if (supportFire_isWEST) then {
        // systemChat "west ammo counted";
        _supportFire_ammoCountHE = supportFire_shellsHE_AmmoCountWEST;
        _supportFire_ammoCountSmoke = supportFire_shellsSmoke_AmmoCountWEST;
        _supportFire_ammoCountFlare = supportFire_shellsFlare_AmmoCountWEST;
    };

    if (supportFire_isEAST) then {
        // systemChat "east ammo counted";
        _supportFire_ammoCountHE = supportFire_shellsHE_AmmoCountEAST;
        _supportFire_ammoCountSmoke = supportFire_shellsSmoke_AmmoCountEAST;
        _supportFire_ammoCountFlare = supportFire_shellsFlare_AmmoCountEAST;
    };

    if (supportFire_isGUER) then {
        // systemChat "resistance ammo counted";
        _supportFire_ammoCountHE = supportFire_shellsHE_AmmoCountGUER;
        _supportFire_ammoCountSmoke = supportFire_shellsSmoke_AmmoCountGUER;
        _supportFire_ammoCountFlare = supportFire_shellsFlare_AmmoCountGUER;
    };

    // systemChat (str _supportFire_ammoCountHE);
    // systemChat (str _supportFire_ammoCountSmoke);
    // systemChat (str _supportFire_ammoCountFlare);
    // systemChat "ammo count passed";

    [["Roger, checking ammunition."], true] call CBA_fnc_notify;

    [
        {
            params ["_supportFire_ammoCountHE","_supportFire_ammoCountSmoke","_supportFire_ammoCountFlare"];
            [
                ["Available ammunition:"],
                [(format ["%1 rounds HE,", _supportFire_ammoCountHE])],
                [(format ["%1 rounds Smoke,", _supportFire_ammoCountSmoke])],
                [(format ["%1 rounds Flare.", _supportFire_ammoCountFlare])],
                true
            ] call CBA_fnc_notify;
            // systemChat "ammo hint finished";
        },
        [_supportFire_ammoCountHE, _supportFire_ammoCountSmoke, _supportFire_ammoCountFlare],
        5
    ] call CBA_fnc_waitAndExecute;
    // systemChat "ammo check finshed";
};
