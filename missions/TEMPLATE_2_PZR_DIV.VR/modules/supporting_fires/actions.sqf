
// Start Actions
_supportingFireActions = call {

    // Add conditions for interactions
    _conditionFires        = {([] call acre_api_fnc_getCurrentRadio != "")};
    _conditionTargets      = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsHE_AmmoCountWEST >= 5 || supportFire_shellsSmoke_AmmoCountWEST >= 5 || supportFire_shellsFlare_AmmoCountWEST >= 5))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsHE_AmmoCountEAST >= 5 || supportFire_shellsSmoke_AmmoCountEAST >= 5 || supportFire_shellsFlare_AmmoCountEAST >= 5))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsHE_AmmoCountGUER >= 5 || supportFire_shellsSmoke_AmmoCountGUER >= 5 || supportFire_shellsFlare_AmmoCountGUER >= 5))}
    };
    _conditionVisual      = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (!visibleMap) && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsHE_AmmoCountWEST >= 5 || supportFire_shellsSmoke_AmmoCountWEST >= 5 || supportFire_shellsFlare_AmmoCountWEST >= 5))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (!visibleMap) && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsHE_AmmoCountEAST >= 5 || supportFire_shellsSmoke_AmmoCountEAST >= 5 || supportFire_shellsFlare_AmmoCountEAST >= 5))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (!visibleMap) && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsHE_AmmoCountGUER >= 5 || supportFire_shellsSmoke_AmmoCountGUER >= 5 || supportFire_shellsFlare_AmmoCountGUER >= 5))}
    };
    _conditionRepeat       = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (!(supportFire_previousTarget isEqualTo [])) && (supportFire_shellsHE_AmmoCountWEST >= 5 || supportFire_shellsSmoke_AmmoCountWEST >= 5 || supportFire_shellsFlare_AmmoCountWEST >= 1))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (!(supportFire_previousTarget isEqualTo [])) && (supportFire_shellsHE_AmmoCountEAST >= 5 || supportFire_shellsSmoke_AmmoCountEAST >= 5 || supportFire_shellsFlare_AmmoCountEAST >= 1))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (!(supportFire_previousTarget isEqualTo [])) && (supportFire_shellsHE_AmmoCountGUER >= 5 || supportFire_shellsSmoke_AmmoCountGUER >= 5 || supportFire_shellsFlare_AmmoCountGUER >= 1))}
    };
    _conditionFiresHE5     = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsHE_AmmoCountWEST >= 5))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsHE_AmmoCountEAST >= 5))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsHE_AmmoCountGUER >= 5))}
    };
    _conditionFiresHE10    = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsHE_AmmoCountWEST >= 10))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsHE_AmmoCountEAST >= 10))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsHE_AmmoCountGUER >= 10))}
    };
    _conditionFiresHE15    = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsHE_AmmoCountWEST >= 15))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsHE_AmmoCountEAST >= 15))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsHE_AmmoCountGUER >= 15))}
    };
    _conditionFiresHE20    = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsHE_AmmoCountWEST >= 20))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsHE_AmmoCountEAST >= 20))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsHE_AmmoCountGUER >= 20))}
    };
    _conditionFiresHE25    = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsHE_AmmoCountWEST >= 25))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsHE_AmmoCountEAST >= 25))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsHE_AmmoCountGUER >= 25))}
    };
    _conditionFiresSmoke5  = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsSmoke_AmmoCountWEST >= 5))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsSmoke_AmmoCountEAST >= 5))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsSmoke_AmmoCountGUER >= 5))}
    };
    _conditionFiresSmoke10 = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsSmoke_AmmoCountWEST >= 10))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsSmoke_AmmoCountEAST >= 10))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsSmoke_AmmoCountGUER >= 10))}
    };
    _conditionFiresFlare1  = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsFlare_AmmoCountWEST >= 1))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsFlare_AmmoCountEAST >= 1))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsFlare_AmmoCountGUER >= 1))}
    };
    _conditionFiresFlare5  = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST) && (supportFire_shellsFlare_AmmoCountWEST >= 5))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST) && (supportFire_shellsFlare_AmmoCountEAST >= 5))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER) && (supportFire_shellsFlare_AmmoCountGUER >= 5))}
    };
    _conditionCheck        = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (supportFire_fireMissionAvailableWEST))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (supportFire_fireMissionAvailableEAST))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (supportFire_fireMissionAvailableGUER))}
    };
    _conditionFiring       = {
            (([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo WEST) && (!supportFire_fireMissionAvailableWEST))
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo EAST) && (!supportFire_fireMissionAvailableEAST))}
        || {(([] call acre_api_fnc_getCurrentRadio != "") && (side player isEqualTo RESISTANCE) && (!supportFire_fireMissionAvailableGUER))}
    };

    // ===== Add supporting fires interaction
    _statementFires = {
        if (_side isEqualTo civilian) then {
            hint "Return possession of the radio to the appropriate military authorities.";
        } else {
            hint "Select a Target to be shelled."
        };
    };
    _actionFires = ["Supporting Fires","Supporting Fires","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementFires,_conditionFires] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _actionFires] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to check remaining ammunition
    _statementRounds = { [side player] call FNC_SupportFire_AmmoCheck; };
    _actionRounds = ["Check Remaining Ammunition","Check Remaining Ammunition","Haas_WWII_Rebalance\UI\icon_supporting_fires_ammo.paa",_statementRounds,_conditionCheck] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRounds] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to to indicate fire mission is in progress.
    _statementFiring = { hint "Fire mission is already underway."; };
    _actionFiring = ["Fire Mission In Progress","Fire Mission In Progress","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementFiring,_conditionFiring] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionFiring] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add generic Target statement for all target interation points
    _statementTargets = { hint "Select the number and type of rounds to fire." };


    // ===== Add Target Base Actions

    _actionBaseHE = ["HE","HE","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTargets,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
    _actionBaseSmoke = ["Smoke","Smoke","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTargets,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
    _actionBaseFlare = ["Flare","Flare","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTargets,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;

    // ===== Add Targets
    #include "actions\Target01.sqf"
    #include "actions\Target02.sqf"
    #include "actions\Target03.sqf"
    #include "actions\Target04.sqf"
    #include "actions\Target05.sqf"
    #include "actions\Target06.sqf"
    #include "actions\TargetAdjust.sqf"
    #include "actions\TargetRepeat.sqf"
    #include "actions\TargetVisual.sqf"

};
// End Actions
