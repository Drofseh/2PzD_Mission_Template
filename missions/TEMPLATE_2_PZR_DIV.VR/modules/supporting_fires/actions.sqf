
// Start Actions
_supportingFireActions = call {

    // Add conditions for interactions  
    _conditionFires        = {([] call acre_api_fnc_getCurrentRadio != "")};
    _conditionTargets      = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 0 || supportFire_shellsSmoke_AmmoCountWEST > 0 || supportFire_shellsFlare_AmmoCountWEST > 0})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 0 || supportFire_shellsSmoke_AmmoCountEAST > 0 || supportFire_shellsFlare_AmmoCountEAST > 0}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 0 || supportFire_shellsSmoke_AmmoCountGUER > 0 || supportFire_shellsFlare_AmmoCountGUER > 0}}
    };
    _conditionVisual      = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {!visibleMap} && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 0 || supportFire_shellsSmoke_AmmoCountWEST > 0 || supportFire_shellsFlare_AmmoCountWEST > 0})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {!visibleMap} && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 0 || supportFire_shellsSmoke_AmmoCountEAST > 0 || supportFire_shellsFlare_AmmoCountEAST > 0}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {!visibleMap} && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 0 || supportFire_shellsSmoke_AmmoCountGUER > 0 || supportFire_shellsFlare_AmmoCountGUER > 0}}
    };
    _conditionRepeat       = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {!(supportFire_previousTarget isEqualTo [])} && {supportFire_shellsHE_AmmoCountWEST > 0 || supportFire_shellsSmoke_AmmoCountWEST > 0 || supportFire_shellsFlare_AmmoCountWEST > 0})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {!(supportFire_previousTarget isEqualTo [])} && {supportFire_shellsHE_AmmoCountEAST > 0 || supportFire_shellsSmoke_AmmoCountEAST > 0 || supportFire_shellsFlare_AmmoCountEAST > 0}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {!(supportFire_previousTarget isEqualTo [])} && {supportFire_shellsHE_AmmoCountGUER > 0 || supportFire_shellsSmoke_AmmoCountGUER > 0 || supportFire_shellsFlare_AmmoCountGUER > 0}}
    };
    _conditionFiresHE1     = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 0})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 0}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 0}}
    };
    _conditionFiresHE5     = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 4})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 4}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 4}}
    };
    _conditionFiresHE10    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 9})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 9}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 9}}
    };
    _conditionFiresHE15    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 14})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 14}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 14}}
    };
    _conditionFiresHE20    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 19})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 19}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 19}}
    };
    _conditionFiresHE25    = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 24})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 24}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 24}}
    };
    _conditionFiresSmoke1  = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsSmoke_AmmoCountWEST > 0})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsSmoke_AmmoCountEAST > 0}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsSmoke_AmmoCountGUER > 0}}
    };
    _conditionFiresSmoke5  = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsSmoke_AmmoCountWEST > 4})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsSmoke_AmmoCountEAST > 4}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsSmoke_AmmoCountGUER > 4}}
    };
    _conditionFiresSmoke10 = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsSmoke_AmmoCountWEST > 9})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsSmoke_AmmoCountEAST > 9}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsSmoke_AmmoCountGUER > 9}}
    };
    _conditionFiresFlare1  = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsFlare_AmmoCountWEST > 0})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsFlare_AmmoCountEAST > 0}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsFlare_AmmoCountGUER > 0}}
    };
    _conditionFiresFlare5  = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsFlare_AmmoCountWEST > 4})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsFlare_AmmoCountEAST > 4}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsFlare_AmmoCountGUER > 4}}
    };
    _conditionCheck        = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER}}
    };
    _conditionFiring       = {
           (([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo WEST}       && {!supportFire_fireMissionAvailableWEST})
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo EAST}       && {!supportFire_fireMissionAvailableEAST}}
        || {([] call acre_api_fnc_getCurrentRadio != "") && {side player isEqualTo RESISTANCE} && {!supportFire_fireMissionAvailableGUER}}
    };

    // ===== Add supporting fires interaction
    _statementFires = {
        if (_side isEqualTo civilian) then {
            "Return possession of the radio to the appropriate military authorities." call CBA_fnc_notify;
        } else {
            "Select a Target to be shelled." call CBA_fnc_notify;
        };
    };
    _actionFires = ["Supporting Fires","Supporting Fires","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementFires,_conditionFires] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _actionFires] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to check remaining ammunition
    _statementRounds = { (side player) call FNC_SupportFire_AmmoCheck; };
    _actionRounds = ["Check Remaining Ammunition","Check Remaining Ammunition","Haas_WWII_Rebalance\UI\icon_supporting_fires_ammo.paa",_statementRounds,_conditionCheck] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRounds] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to indicate fire mission is in progress.
    _statementFiring = { "Fire mission is already underway." call CBA_fnc_notify;};
    _actionFiring = ["Fire Mission In Progress","Fire Mission In Progress","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementFiring,_conditionFiring] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionFiring] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add generic Target statement for all target interation points
    _statementTargets = { "Select the number and type of rounds to fire." call CBA_fnc_notify;};


    // ===== Add Target Base Actions
    _actionBaseHE = ["HE","HE","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTargets,_conditionFiresHE1] call ace_interact_menu_fnc_createAction;
    _actionBaseSmoke = ["Smoke","Smoke","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTargets,_conditionFiresSmoke1] call ace_interact_menu_fnc_createAction;
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
