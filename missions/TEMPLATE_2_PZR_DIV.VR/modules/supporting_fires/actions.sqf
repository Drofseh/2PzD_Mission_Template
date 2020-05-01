
// Start Actions
_supportingFireActions = call {

    // Add conditions for interactions
    _conditionFires        = {call acre_api_fnc_getCurrentRadio != ""};

    _conditionTargets      = {
            (playerSide isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 0 || supportFire_shellsSmoke_AmmoCountWEST > 0 || supportFire_shellsFlare_AmmoCountWEST > 0}
        || {(playerSide isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 0 || supportFire_shellsSmoke_AmmoCountEAST > 0 || supportFire_shellsFlare_AmmoCountEAST > 0}}
        || {(playerSide isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 0 || supportFire_shellsSmoke_AmmoCountGUER > 0 || supportFire_shellsFlare_AmmoCountGUER > 0}}
    };

    _conditionVisual      = {
            (!visibleMap) && {playerSide isEqualTo WEST}       && {supportFire_fireMissionAvailableWEST}
        || {(!visibleMap) && {playerSide isEqualTo EAST}       && {supportFire_fireMissionAvailableEAST}}
        || {(!visibleMap) && {playerSide isEqualTo RESISTANCE} && {supportFire_fireMissionAvailableGUER}}
    };

    _conditionRepeat       = {
            (playerSide isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_previousTarget == supportFire_targetType}
        || {(playerSide isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_previousTarget == supportFire_targetType}}
        || {(playerSide isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_previousTarget == supportFire_targetType}}
    };

    _conditionCheck        = {
            (playerSide isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST}
        || {(playerSide isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST}}
        || {(playerSide isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER}}
    };

    _conditionFiring       = {
            (playerSide isEqualTo WEST)       && {!supportFire_fireMissionAvailableWEST}
        || {(playerSide isEqualTo EAST)       && {!supportFire_fireMissionAvailableEAST}}
        || {(playerSide isEqualTo RESISTANCE) && {!supportFire_fireMissionAvailableGUER}}
    };

    // ===== Add supporting fires interaction
    _statementFires = {
        if (playerSide isEqualTo civilian) then {
            [["Return possession of this radio to the appropriate military authorities."], true] call CBA_fnc_notify;
        } else {
            [["Select a target, type of ammunition, and number of rounds, then call the fire mission."], true] call CBA_fnc_notify;
        };
    };
    _actionFires = ["Supporting Fires","Supporting Fires","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementFires,_conditionFires] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _actionFires] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to check remaining ammunition
    _statementRounds = {[(playerSide),true] call Olsen_FW_FNC_SupportFire_AmmoCheck; };
    _actionRounds = ["Check Ammo Supply","Check Ammo Supply","Haas_WWII_Rebalance\UI\icon_supporting_fires_ammo.paa",_statementRounds,_conditionCheck] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRounds] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add action to indicate fire mission is in progress.
    _statementFiring = {[["Fire mission is already underway."], true] call CBA_fnc_notify;};
    _actionFiring = ["Fire Mission In Progress","Fire Mission In Progress","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementFiring,_conditionFiring] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionFiring] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add Targets
    #include "actions\Targets.sqf"

    // ===== Add Adjust Fire from Last Target
    #include "actions\AdjustFire.sqf"

    // ===== Add Ammo Type
    #include "actions\AmmoType.sqf"

    // ===== Add Round Count
    #include "actions\VolumeOfFire.sqf"

    // ===== Add Fire Mission Safety
    _statementSafety = {
        [["Select 'Confirm' to call the fire mission."], true] call CBA_fnc_notify
    };
    _actionSafety = ["Call for Fire","Call for Fire","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementSafety,_conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionSafety] call ace_interact_menu_fnc_addActionToObject;

    // ===== Add Fire Mission
    _statementFireMission = {
        [(playerSide), supportFire_ammoType, supportFire_volumeOfFire, supportFire_targetType, supportFire_adjustmentCoords] call Olsen_FW_FNC_SupportFire_FireMission;
    };
    _actionFireMission = ["Confirm!","Confirm!","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementFireMission,{true}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Call for Fire"], _actionFireMission] call ace_interact_menu_fnc_addActionToObject;

};
// End Actions
