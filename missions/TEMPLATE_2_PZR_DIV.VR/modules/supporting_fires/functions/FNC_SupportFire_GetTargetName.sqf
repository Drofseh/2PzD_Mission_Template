
Olsen_FW_FNC_SupportFire_GetTargetName = {
    params ["_supportFire_target"];
    // systemChat ("_supportFire_target - " + str _supportFire_target);
    _supportFire_targetName = "";

    switch (_supportFire_target) do {
        case "TargetGrid"   : {_supportFire_targetName = supportFire_gridTargetName};
        case "TargetLast"   : {_supportFire_targetName = supportFire_previousTargetName};
        case "TargetVisual" : {_supportFire_targetName = "your mark"};
        case "Target01"     : {_supportFire_targetName = supportFire_target01_Name};
        case "Target02"     : {_supportFire_targetName = supportFire_target02_Name};
        case "Target03"     : {_supportFire_targetName = supportFire_target03_Name};
        case "Target04"     : {_supportFire_targetName = supportFire_target04_Name};
        case "Target05"     : {_supportFire_targetName = supportFire_target05_Name};
        case "Target06"     : {_supportFire_targetName = supportFire_target06_Name};
    };
    supportFire_previousTargetName = _supportFire_targetName;
    // systemChat ("_supportFire_targetName - " + str _supportFire_targetName);

    _supportFire_targetName
};
