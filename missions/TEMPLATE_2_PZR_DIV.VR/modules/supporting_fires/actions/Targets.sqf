
    // ===== Add Target Base Action
    _statementTargetsMain = {
        [["Select a target,"],[format ["Current target is %1.", (supportFire_targetType call Olsen_FW_FNC_SupportFire_GetTargetName)]], true] call CBA_fnc_notify;
    };
    _actionTargetsMain = ["Select Target","Select Target","Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTargetsMain,_conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTargetsMain] call ace_interact_menu_fnc_addActionToObject;
    if (supportFire_isZEUS) then {
        [["ACE_ZeusActions","Supporting Fires"], _actionTargetsMain] call ace_interact_menu_fnc_addActionToZeus;
    };

    // ===== Add Targets
    if (supportFire_target01 != "") then {
        _statementTarget01 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.",supportFire_target01_Name])], true] call CBA_fnc_notify;
            supportFire_targetType = "Target01";
        };
        _actionTarget01 = [supportFire_target01_Name,supportFire_target01_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTarget01,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionTarget01] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (supportFire_target02 != "") then {
        _statementTarget02 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.",supportFire_target02_Name])], true] call CBA_fnc_notify;
            supportFire_targetType = "Target02";
        };
        _actionTarget02 = [supportFire_target02_Name,supportFire_target02_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTarget02,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionTarget02] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionTarget02] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (supportFire_target03 != "") then {
        _statementTarget03 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.",supportFire_target03_Name])], true] call CBA_fnc_notify;
            supportFire_targetType = "Target03";
        };
        _actionTarget03 = [supportFire_target03_Name,supportFire_target03_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTarget03,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionTarget03] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionTarget03] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (supportFire_target04 != "") then {
        _statementTarget04 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.",supportFire_target04_Name])], true] call CBA_fnc_notify;
            supportFire_targetType = "Target04";
        };
        _actionTarget04 = [supportFire_target04_Name,supportFire_target04_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTarget04,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionTarget04] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionTarget04] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (supportFire_target05 != "") then {
        _statementTarget05 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.",supportFire_target05_Name])], true] call CBA_fnc_notify;
            supportFire_targetType = "Target05";
        };
        _actionTarget05 = [supportFire_target05_Name,supportFire_target05_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTarget05,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionTarget05] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionTarget05] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (supportFire_target06 != "") then {
        _statementTarget06 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.",supportFire_target06_Name])], true] call CBA_fnc_notify;
            supportFire_targetType = "Target06";
        };
        _actionTarget06 = [supportFire_target06_Name,supportFire_target06_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTarget06,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionTarget06] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionTarget06] call ace_interact_menu_fnc_addActionToZeus;
        };
    };

    _statementGrid = {createDialog "Supporting_Fires_Dialog";};
    _actionGrid = ["Grid","Grid","Haas_WWII_Rebalance\UI\icon_supporting_fires_target_grid.paa",_statementGrid,{true}] call ace_interact_menu_fnc_createAction; //TODO change to grid paa
    [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionGrid] call ace_interact_menu_fnc_addActionToObject;
    if (supportFire_isZEUS) then {
        [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionGrid] call ace_interact_menu_fnc_addActionToZeus;
    };

    _statementVisualLoc = {
        _supportFire_terrainPosition = screenToWorld [0.5,0.5];
        _supportFire_cancelled = false;

        _supportFire_targetDistance = player distance2D _supportFire_terrainPosition;
        if (_supportFire_targetDistance < (0.75 * (supportFire_originalShellDispersion + supportFire_originalShellAccuracy))) then {
            [["Negative, target is too close to your position.<br/>Check your target."]] call CBA_fnc_notify;
            _supportFire_cancelled = true;
        } else {
            if (_supportFire_targetDistance < (1.5 * (supportFire_originalShellDispersion + supportFire_originalShellAccuracy))) then {
                [["Warning, target is danger close to your position."]] call CBA_fnc_notify;
            };
            supportFire_TargetVisualLocation = _supportFire_terrainPosition;
        };

        if (_supportFire_cancelled) exitWith {
            // systemChat "Fire mission canceled";
        };

        [["Target is your mark."], true] call CBA_fnc_notify;

        supportFire_targetType = "TargetVisual";
    };
    _actionVisualLoc = ["Visual Location","Visual Location","Haas_WWII_Rebalance\UI\icon_supporting_fires_target_vis.paa",_statementVisualLoc,_conditionVisual] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionVisualLoc] call ace_interact_menu_fnc_addActionToObject;
    if (supportFire_isZEUS) then {
        [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionVisualLoc] call ace_interact_menu_fnc_addActionToZeus;
    };

    _statementRepeat = {
        [[(format ["Target %1 will be repeated.<br/>Select adjustment if required, and the type of ammunition to use.",supportFire_previousTargetName])], true] call CBA_fnc_notify;
        supportFire_targetType = "TargetLast";
        supportFire_firstRepeat = True;
    };
    _actionRepeat = ["Repeat Last Target","Repeat Last Target","Haas_WWII_Rebalance\UI\icon_supporting_fires_target_rep.paa",_statementRepeat,_conditionRepeat] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Select Target"], _actionRepeat] call ace_interact_menu_fnc_addActionToObject;
    if (supportFire_isZEUS) then {
        [["ACE_ZeusActions","Supporting Fires","Select Target"], _actionRepeat] call ace_interact_menu_fnc_addActionToZeus;
    };
