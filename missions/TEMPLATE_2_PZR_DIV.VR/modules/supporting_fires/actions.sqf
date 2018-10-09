// Start Actions
_supportingFireActions = call {

    // Add conditions for interactions
    _conditionFires        = {([] call acre_api_fnc_getCurrentRadio != "")};
    _conditionTargets      = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsHE_AmmoCountWEST >= 5 || shellsSmoke_AmmoCountWEST >= 5 || shellsFlare_AmmoCountWEST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsHE_AmmoCountEAST >= 5 || shellsSmoke_AmmoCountEAST >= 5 || shellsFlare_AmmoCountEAST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 5 || shellsSmoke_AmmoCountGUER >= 5 || shellsFlare_AmmoCountGUER >= 5))
    };
    _conditionVisual      = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (!visibleMap) && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsHE_AmmoCountWEST >= 5 || shellsSmoke_AmmoCountWEST >= 5 || shellsFlare_AmmoCountWEST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (!visibleMap) && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsHE_AmmoCountEAST >= 5 || shellsSmoke_AmmoCountEAST >= 5 || shellsFlare_AmmoCountEAST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (!visibleMap) && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 5 || shellsSmoke_AmmoCountGUER >= 5 || shellsFlare_AmmoCountGUER >= 5))
    };
    _conditionRepeat       = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (!(previousTarget isEqualTo [])) && (shellsHE_AmmoCountWEST >= 5 || shellsSmoke_AmmoCountWEST >= 5 || shellsFlare_AmmoCountWEST >= 1))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (!(previousTarget isEqualTo [])) && (shellsHE_AmmoCountEAST >= 5 || shellsSmoke_AmmoCountEAST >= 5 || shellsFlare_AmmoCountEAST >= 1))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (!(previousTarget isEqualTo [])) && (shellsHE_AmmoCountGUER >= 5 || shellsSmoke_AmmoCountGUER >= 5 || shellsFlare_AmmoCountGUER >= 1))
    };
    _conditionFiresHE5     = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsHE_AmmoCountWEST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsHE_AmmoCountEAST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 5))
    };
    _conditionFiresHE10    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsHE_AmmoCountWEST >= 10))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsHE_AmmoCountEAST >= 10))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 10))
    };
    _conditionFiresHE15    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsHE_AmmoCountWEST >= 15))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsHE_AmmoCountEAST >= 15))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 15))
    };
    _conditionFiresHE20    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsHE_AmmoCountWEST >= 20))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsHE_AmmoCountEAST >= 20))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 20))
    };
    _conditionFiresHE25    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsHE_AmmoCountWEST >= 25))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsHE_AmmoCountEAST >= 25))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 25))
    };
    _conditionFiresSmoke5  = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsSmoke_AmmoCountWEST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsSmoke_AmmoCountEAST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsSmoke_AmmoCountGUER >= 5))
    };
    _conditionFiresSmoke10 = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsSmoke_AmmoCountWEST >= 10))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsSmoke_AmmoCountEAST >= 10))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsSmoke_AmmoCountGUER >= 10))
    };
    _conditionFiresFlare1  = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsFlare_AmmoCountWEST >= 1))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsFlare_AmmoCountEAST >= 1))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsFlare_AmmoCountGUER >= 1))
    };
    _conditionFiresFlare5  = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST) && (shellsFlare_AmmoCountWEST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST) && (shellsFlare_AmmoCountEAST >= 5))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER) && (shellsFlare_AmmoCountGUER >= 5))
    };
    _conditionCheck        = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (fireMissionAvailableWEST))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (fireMissionAvailableEAST))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (fireMissionAvailableGUER))
    };
    _conditionFiring       = {
           (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (!fireMissionAvailableWEST))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (!fireMissionAvailableEAST))
        || (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (!fireMissionAvailableGUER))
    };

    // ===== Add supporting fires interaction
    _statementFires = {
        if (_side isEqualTo civilian) then {
            hint "Return possession of the radio to the appropriate military authorities.";
        } else {
            hint "Select a Target to be shelled."
        };
    };
    _actionFires = ["Supporting Fires","Supporting Fires","modules\supporting_fires\icons\icon_supporting_fires.paa",_statementFires,_conditionFires] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _actionFires] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to check remaining ammunition
    _statementRounds = { [side player] call FNC_SupportFire_AmmoCheck; };
    _actionRounds = ["Check Remaining Ammunition","Check Remaining Ammunition","modules\supporting_fires\icons\icon_supporting_fires_ammo.paa",_statementRounds,_conditionCheck] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRounds] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to to indicate fire mission is in progress.
    _statementFiring = { hint "Fire mission is already underway."; };
    _actionFiring = ["Fire Mission In Progress","Fire Mission In Progress","modules\supporting_fires\icons\icon_supporting_fires.paa",_statementFiring,_conditionFiring] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionFiring] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add generic Target statement for all target interation points
    _statementTargets = { hint "Select the number and type of rounds to fire." };

    // ===== Add Target Screen Centre
    _actionVisualLoc = ["Visual Location","Visual Location","modules\supporting_fires\icons\icon_supporting_fires_target_vis.paa",_statementTargets,_conditionVisual] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionVisualLoc] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 5 Rounds, HE
        _statementVisualLoc_5 = { [(side player), "HE", 5, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLoc_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementVisualLoc_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_5] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 10 Rounds, HE
        _statementVisualLoc_10 = { [(side player), "HE", 10, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLoc_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementVisualLoc_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 15 Rounds, HE
        _statementVisualLoc_15 = { [(side player), "HE", 15, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLoc_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementVisualLoc_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_15] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 20 Rounds, HE
        _statementVisualLoc_20 = { [(side player), "HE", 20, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLoc_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementVisualLoc_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_20] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 25 Rounds, HE
        _statementVisualLoc_25 = { [(side player), "HE", 25, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLoc_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementVisualLoc_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_25] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 5 Rounds, Smoke
        _statementVisualLocS_5 = { [(side player), "Smoke", 5, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLocS_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementVisualLocS_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocS_5] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 10 Rounds, Smoke
        _statementVisualLocS_10 = { [(side player), "Smoke", 10, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLocS_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementVisualLocS_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocS_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 1 Round, Flare
        _statementVisualLocF_1 = { [(side player), "Flare", 1, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLocF_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementVisualLocF_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocF_1] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, 5 Rounds, Flare
        _statementVisualLocF_5 = { [(side player), "Flare", 5, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
        _actionVisualLocF_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementVisualLocF_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocF_5] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add Target 01 interaction
    if (target01 != "") then {

        _actionTarget01 = [target01_Name,target01_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 5 Rounds, HE
        _statementTarget01_5 = { [(side player), "HE", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget01_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 10 Rounds, HE
        _statementTarget01_10 = { [(side player), "HE", 10, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget01_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 15 Rounds, HE
        _statementTarget01_15 = { [(side player), "HE", 15, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget01_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01_15] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 20 Rounds, HE
        _statementTarget01_20 = { [(side player), "HE", 20, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget01_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01_20] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 25 Rounds, HE
        _statementTarget01_25 = { [(side player), "HE", 25, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget01_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01_25] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 5 Rounds, Smoke
        _statementTarget01S_5 = { [(side player), "Smoke", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget01S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01S_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 10 Rounds, Smoke
        _statementTarget01S_10 = { [(side player), "Smoke", 10, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget01S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01S_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 1 Round, Flare
        _statementTarget01F_1 = { [(side player), "Flare", 1, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget01F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01F_1] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 5 Rounds, Flare
        _statementTarget01F_5 = { [(side player), "Flare", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget01F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget01F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",target01WEST_Name], _actionTarget01F_5] call ace_interact_menu_fnc_addActionToObject;
    };

    // ===== Add Target 02 interaction
    if (Target02 != "") then {

        _actionTarget02 = [Target02_Name,Target02_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget02] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 5 Rounds, HE
        _statementTarget02_5 = { [(side player), "HE", 5, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget02_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 10 Rounds, HE
        _statementTarget02_10 = { [(side player), "HE", 10, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget02_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 15 Rounds, HE
        _statementTarget02_15 = { [(side player), "HE", 15, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget02_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02_15] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 20 Rounds, HE
        _statementTarget02_20 = { [(side player), "HE", 20, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget02_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02_20] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 25 Rounds, HE
        _statementTarget02_25 = { [(side player), "HE", 25, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget02_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02_25] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 5 Rounds, Smoke
        _statementTarget02S_5 = { [(side player), "Smoke", 5, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget02S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02S_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 10 Rounds, Smoke
        _statementTarget02S_10 = { [(side player), "Smoke", 10, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget02S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02S_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 1 Round, Flare
        _statementTarget02F_1 = { [(side player), "Flare", 1, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget02F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02F_1] call ace_interact_menu_fnc_addActionToObject;

        // Target 02, 5 Rounds, Flare
        _statementTarget02F_5 = { [(side player), "Flare", 5, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget02F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget02F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target02WEST_Name], _actionTarget02F_5] call ace_interact_menu_fnc_addActionToObject;
    };

    // ===== Add Target 03 interaction
    if (Target03 != "") then {

        _actionTarget03 = [Target03_Name,Target03_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget03] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 5 Rounds, HE
        _statementTarget03_5 = { [(side player), "HE", 5, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 10 Rounds, HE
        _statementTarget03_10 = { [(side player), "HE", 10, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 15 Rounds, HE
        _statementTarget03_15 = { [(side player), "HE", 15, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03_15] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 20 Rounds, HE
        _statementTarget03_20 = { [(side player), "HE", 20, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03_20] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 25 Rounds, HE
        _statementTarget03_25 = { [(side player), "HE", 25, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03_25] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 5 Rounds, Smoke
        _statementTarget03S_5 = { [(side player), "Smoke", 5, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget03S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03S_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 10 Rounds, Smoke
        _statementTarget03S_10 = { [(side player), "Smoke", 10, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget03S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03S_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 1 Round, Flare
        _statementTarget03F_1 = { [(side player), "Flare", 1, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget03F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03F_1] call ace_interact_menu_fnc_addActionToObject;

        // Target 03, 5 Rounds, Flare
        _statementTarget03F_5 = { [(side player), "Flare", 5, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget03F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget03F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target03WEST_Name], _actionTarget03F_5] call ace_interact_menu_fnc_addActionToObject;
    };

    // ===== Add Target 04 interaction
    if (Target04 != "") then {

        _actionTarget04 = [Target04_Name,Target04_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget04] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 5 Rounds, HE
        _statementTarget04_5 = { [(side player), "HE", 5, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget04_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 10 Rounds, HE
        _statementTarget04_10 = { [(side player), "HE", 10, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget04_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 15 Rounds, HE
        _statementTarget04_15 = { [(side player), "HE", 15, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget04_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04_15] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 20 Rounds, HE
        _statementTarget04_20 = { [(side player), "HE", 20, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget04_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04_20] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 25 Rounds, HE
        _statementTarget04_25 = { [(side player), "HE", 25, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget04_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04_25] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 5 Rounds, Smoke
        _statementTarget04S_5 = { [(side player), "Smoke", 5, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget04S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04S_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 10 Rounds, Smoke
        _statementTarget04S_10 = { [(side player), "Smoke", 10, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget04S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04S_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 1 Round, Flare
        _statementTarget04F_1 = { [(side player), "Flare", 1, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget04F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04F_1] call ace_interact_menu_fnc_addActionToObject;

        // Target 04, 5 Rounds, Flare
        _statementTarget04F_5 = { [(side player), "Flare", 5, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget04F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget04F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target04WEST_Name], _actionTarget04F_5] call ace_interact_menu_fnc_addActionToObject;
    };

    // ===== Add Target 05 interaction
    if (Target05 != "") then {

        _actionTarget05 = [Target05_Name,Target05_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget05] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 5 Rounds, HE
        _statementTarget05_5 = { [(side player), "HE", 5, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget05_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 10 Rounds, HE
        _statementTarget05_10 = { [(side player), "HE", 10, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget05_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 15 Rounds, HE
        _statementTarget05_15 = { [(side player), "HE", 15, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget05_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05_15] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 20 Rounds, HE
        _statementTarget05_20 = { [(side player), "HE", 20, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget05_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05_20] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 25 Rounds, HE
        _statementTarget05_25 = { [(side player), "HE", 25, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget05_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05_25] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 5 Rounds, Smoke
        _statementTarget05S_5 = { [(side player), "Smoke", 5, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget05S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05S_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 10 Rounds, Smoke
        _statementTarget05S_10 = { [(side player), "Smoke", 10, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget05S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05S_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 1 Round, Flare
        _statementTarget05F_1 = { [(side player), "Flare", 1, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget05F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05F_1] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, 5 Rounds, Flare
        _statementTarget05F_5 = { [(side player), "Flare", 5, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget05F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget05F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target05WEST_Name], _actionTarget05F_5] call ace_interact_menu_fnc_addActionToObject;
    };

    // ===== Add Target 06 interaction
    if (Target06 != "") then {

        _actionTarget06 = [Target06_Name,Target06_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget06] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 5 Rounds, HE
        _statementTarget06_5 = { [(side player), "HE", 5, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 10 Rounds, HE
        _statementTarget06_10 = { [(side player), "HE", 10, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 15 Rounds, HE
        _statementTarget06_15 = { [(side player), "HE", 15, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06_15] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 20 Rounds, HE
        _statementTarget06_20 = { [(side player), "HE", 20, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06_20] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 25 Rounds, HE
        _statementTarget06_25 = { [(side player), "HE", 25, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06_25] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 5 Rounds, Smoke
        _statementTarget06S_5 = { [(side player), "Smoke", 5, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget06S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06S_5] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 10 Rounds, Smoke
        _statementTarget06S_10 = { [(side player), "Smoke", 10, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget06S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06S_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 1 Round, Flare
        _statementTarget06F_1 = { [(side player), "Flare", 1, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget06F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06F_1] call ace_interact_menu_fnc_addActionToObject;

        // Target 06, 5 Rounds, Flare
        _statementTarget06F_5 = { [(side player), "Flare", 5, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
        _actionTarget06F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget06F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires",Target06WEST_Name], _actionTarget06F_5] call ace_interact_menu_fnc_addActionToObject;
    };

    // ===== Add Fire Mission on Last Target
    _actionRepeat = ["Repeat Last Target","Repeat Last Target","modules\supporting_fires\icons\icon_supporting_fires_target_rep.paa",_statementTargets,_conditionRepeat] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRepeat] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 5 Rounds, HE
        _statementRepeat_5 = { [(side player), "HE", 5, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeat_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementRepeat_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeat_5] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 10 Rounds, HE
        _statementRepeat_10 = { [(side player), "HE", 10, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeat_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementRepeat_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeat_10] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 15 Rounds, HE
        _statementRepeat_15 = { [(side player), "HE", 15, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeat_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementRepeat_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeat_15] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 20 Rounds, HE
        _statementRepeat_20 = { [(side player), "HE", 20, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeat_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementRepeat_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeat_20] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 25 Rounds, HE
        _statementRepeat_25 = { [(side player), "HE", 25, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeat_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementRepeat_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeat_25] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 5 Rounds, Smoke
        _statementRepeatS_5 = { [(side player), "Smoke", 5, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeatS_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementRepeatS_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeatS_5] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 10 Rounds, Smoke
        _statementRepeatS_10 = { [(side player), "Smoke", 10, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeatS_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementRepeatS_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeatS_10] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 1 Round, Flare
        _statementRepeatF_1 = { [(side player), "Flare", 1, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeatF_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementRepeatF_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeatF_1] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Last Target, 5 Rounds, Flare
        _statementRepeatF_5 = { [(side player), "Flare", 5, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
        _actionRepeatF_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementRepeatF_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionRepeatF_5] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add Adjust Fire on Last Target
    _statementAdjust = { hint "Select the direction and distance to adjust fire." };
    _actionAdjust = ["Adjust Fire","Adjust Fire","modules\supporting_fires\icons\icon_supporting_fires_adjust.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionAdjust] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire North
        _actionAdjust_N = ["Adjust North","Adjust North","modules\supporting_fires\icons\icon_supporting_fires_adjustN.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_N] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50N = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, 50]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50N = ["Adjust North 50","Adjust North 50","modules\supporting_fires\icons\icon_supporting_fires_adjustN.paa",_statementAdjust_50N,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust North"], _actionAdjust_50N] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100N = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, 100]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100N = ["Adjust North 100","Adjust North 100","modules\supporting_fires\icons\icon_supporting_fires_adjustN.paa",_statementAdjust_100N,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust North"], _actionAdjust_100N] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Northeast
        _actionAdjust_NE = ["Adjust Northeast","Adjust Northeast","modules\supporting_fires\icons\icon_supporting_fires_adjustNE.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_NE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50NE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [35.4, 35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50NE = ["Adjust Northeast 50","Adjust Northeast 50","modules\supporting_fires\icons\icon_supporting_fires_adjustNE.paa",_statementAdjust_50NE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northeast"], _actionAdjust_50NE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100NE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [70.7, 70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100NE = ["Adjust Northeast 100","Adjust Northeast 100","modules\supporting_fires\icons\icon_supporting_fires_adjustNE.paa",_statementAdjust_100NE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northeast"], _actionAdjust] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire East
        _actionAdjust_E = ["Adjust East","Adjust East","modules\supporting_fires\icons\icon_supporting_fires_adjustE.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50E = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [50, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50E = ["Adjust East 50","Adjust East 50","modules\supporting_fires\icons\icon_supporting_fires_adjustE.paa",_statementAdjust_50E,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust East"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100E = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [100, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100E = ["Adjust East 100","Adjust East 100","modules\supporting_fires\icons\icon_supporting_fires_adjustE.paa",_statementAdjust_100E,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust East"], _actionAdjust_100E] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Southeast
        _actionAdjust_SE = ["Adjust Southeast","Adjust Southeast","modules\supporting_fires\icons\icon_supporting_fires_adjustSE.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_SE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50SE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [35.4, -35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50E = ["Adjust Southeast 50","Adjust Southeast 50","modules\supporting_fires\icons\icon_supporting_fires_adjustSE.paa",_statementAdjust_50SE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southeast"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100SE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [70.7, -70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100SE = ["Adjust Southeast 100","Adjust Southeast 100","modules\supporting_fires\icons\icon_supporting_fires_adjustSE.paa",_statementAdjust_100SE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southeast"], _actionAdjust_100SE] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire South
        _actionAdjust_S = ["Adjust South","Adjust South","modules\supporting_fires\icons\icon_supporting_fires_adjustS.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_S] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50S = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, -50]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50S = ["Adjust South 50","Adjust South 50","modules\supporting_fires\icons\icon_supporting_fires_adjustS.paa",_statementAdjust_50S,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust South"], _actionAdjust_50S] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100S = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, -100]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100S = ["Adjust South 100","Adjust South 100","modules\supporting_fires\icons\icon_supporting_fires_adjustS.paa",_statementAdjust_100S,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust South"], _actionAdjust_100S] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Southwest
        _actionAdjust_SW = ["Adjust Southwest","Adjust Southwest","modules\supporting_fires\icons\icon_supporting_fires_adjustSW.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_SW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50SW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-35.4, -35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50SW = ["Adjust Southwest 50","Adjust Southwest 50","modules\supporting_fires\icons\icon_supporting_fires_adjustSW.paa",_statementAdjust_50SW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southwest"], _actionAdjust_50SW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100SW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-70.7, -70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100SW = ["Adjust Southwest 100","Adjust Southwest 100","modules\supporting_fires\icons\icon_supporting_fires_adjustSW.paa",_statementAdjust_100SW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southwest"], _actionAdjust_100SW] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire West
        _actionAdjust_W = ["Adjust West","Adjust West","modules\supporting_fires\icons\icon_supporting_fires_adjustW.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_W] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50W = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-50, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50W = ["Adjust West 50","Adjust West 50","modules\supporting_fires\icons\icon_supporting_fires_adjustW.paa",_statementAdjust_50W,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust West"], _actionAdjust_50W] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100W = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-100, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100W = ["Adjust West 100","Adjust West 100","modules\supporting_fires\icons\icon_supporting_fires_adjustW.paa",_statementAdjust_100W,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust West"], _actionAdjust_100W] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Northwest
        _actionAdjust_NW = ["Adjust Northwest","Adjust Northwest","modules\supporting_fires\icons\icon_supporting_fires_adjustNW.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_NW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50NW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-35.4, 35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50NW = ["Adjust Northwest 50","Adjust Northwest 50","modules\supporting_fires\icons\icon_supporting_fires_adjustNW.paa",_statementAdjust_50NW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northwest"], _actionAdjust_50NW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100NW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-70.7, 70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100NW = ["Adjust Northwest 100","Adjust Northwest 100","modules\supporting_fires\icons\icon_supporting_fires_adjustNW.paa",_statementAdjust_100NW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northwest"], _actionAdjust_100NW] call ace_interact_menu_fnc_addActionToObject;

};
// End Actions
