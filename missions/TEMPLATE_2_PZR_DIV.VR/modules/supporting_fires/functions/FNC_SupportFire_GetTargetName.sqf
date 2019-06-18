
FNC_SupportFire_GetTargetName = {
    params ["_supportFire_target"];

    // systemChat ("_supportFire_target - " + str _supportFire_target);

    switch (_supportFire_target) do {
        case "TargetVisual" : {_supportFire_targetName = "your mark"};
        case "AdjustFire"   : {_supportFire_targetName = "Adjust Fire"};
        case "TargetLast"   : {_supportFire_targetName = "Repeat Fire"};
        case "Target01"     : {_supportFire_targetName = supportFire_target01_Name};
        case "Target02"     : {_supportFire_targetName = supportFire_target02_Name};
        case "Target03"     : {_supportFire_targetName = supportFire_target03_Name};
        case "Target04"     : {_supportFire_targetName = supportFire_target04_Name};
        case "Target05"     : {_supportFire_targetName = supportFire_target05_Name};
        case "Target06"     : {_supportFire_targetName = supportFire_target06_Name};
    };

    // systemChat ("_supportFire_targetName - " + str _supportFire_targetName);

    _supportFire_targetName;
};
