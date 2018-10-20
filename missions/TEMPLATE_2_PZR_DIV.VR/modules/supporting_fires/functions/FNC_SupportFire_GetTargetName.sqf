
FNC_SupportFire_GetTargetName = {

    private _supportFire_target = _this select 0;

    // systemChat ("_supportFire_target - " + str _supportFire_target);

    if (_supportFire_target isEqualTo "TargetVisual") then {
        supportFire_targetName = "On your mark";
    };
    if (_supportFire_target isEqualTo "AdjustFire") then {
        supportFire_targetName = "Adjusting Fire";
    };
    if (_supportFire_target isEqualTo "Target01") then {
        supportFire_targetName = supportFire_target01_Name;
    };
    if (_supportFire_target isEqualTo "Target02") then {
        supportFire_targetName = supportFire_target02_Name;
    };
    if (_supportFire_target isEqualTo "Target03") then {
        supportFire_targetName = supportFire_target03_Name;
    };
    if (_supportFire_target isEqualTo "Target04") then {
        supportFire_targetName = supportFire_target04_Name;
    };
    if (_supportFire_target isEqualTo "Target05") then {
        supportFire_targetName = supportFire_target05_Name;
    };
    if (_supportFire_target isEqualTo "Target06") then {
        supportFire_targetName = supportFire_target06_Name;
    };

    // systemChat ("supportFire_targetName - " + str supportFire_targetName);

    supportFire_targetName;
};