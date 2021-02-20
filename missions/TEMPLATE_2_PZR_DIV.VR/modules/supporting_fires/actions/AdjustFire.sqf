
    // ===== Add Adjust Fire from Last Target
    _conditionAdjust = {
            supportFire_isWEST && {supportFire_fireMissionAvailableWEST} && {"TargetLast" == supportFire_targetType}
        || {supportFire_isEAST && {supportFire_fireMissionAvailableEAST} && {"TargetLast" == supportFire_targetType}}
        || {supportFire_isGUER && {supportFire_fireMissionAvailableGUER} && {"TargetLast" == supportFire_targetType}}
    };
    _statementAdjust = {
        if (supportFire_adjustmentCoords isEqualTo [0,0]) then {
            [["Select the direction and distance to adjust fire,"],[format ["No adjustment currently requested.", supportFire_adjustmentDirection]], true] call CBA_fnc_notify;
        } else {
            [["Select the direction and distance to adjust fire,"],[format ["Current adjustment is %1.", supportFire_adjustmentDirection]], true] call CBA_fnc_notify;
        };
    };
    _actionAdjust = ["Adjust Fire","Adjust Fire","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjust.paa",_statementAdjust,_conditionAdjust] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionAdjust] call ace_interact_menu_fnc_addActionToObject;

        //No Adjustment
        _conditionAdjustNone = {!(supportFire_adjustmentCoords isEqualTo [0,0])};
        _statementAdjustNone = {
            supportFire_targetType = "TargetLast";
            supportFire_adjustmentCoords = [0,0];
            supportFire_adjustmentDirection = "with no adjustment";
            [["No fire adjustment will be made"], true] call CBA_fnc_notify;
        };
        _actionAdjustNone = ["Remove Adjustment Direction","Remove Adjustment Direction","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjust.paa",_statementAdjustNone,_conditionAdjustNone] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjustNone] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire North
        _actionAdjust_N = ["Adjust North","Adjust North","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustN.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_N] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50N = {
                supportFire_adjustmentCoords = [0, 50];
                supportFire_adjustmentDirection = "adjust fire north 50m";
                [["Adjust fire 50m north.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50N = ["Adjust North 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustN.paa",_statementAdjust_50N,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust North"], _actionAdjust_50N] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100N = {
                supportFire_adjustmentCoords = [0, 100];
                supportFire_adjustmentDirection = "adjust fire north 100m";
                [["Adjust fire 100m north.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_100N = ["Adjust North 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustN.paa",_statementAdjust_100N,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust North"], _actionAdjust_100N] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Northeast
        _actionAdjust_NE = ["Adjust Northeast","Adjust Northeast","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNE.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_NE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50NE = {
                supportFire_adjustmentCoords = [35.4, 35.4];
                supportFire_adjustmentDirection = "adjust fire northeast 50m";
                [["Adjust fire 50m northeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50NE = ["Adjust Northeast 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNE.paa",_statementAdjust_50NE,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northeast"], _actionAdjust_50NE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100NE = {
                supportFire_adjustmentCoords = [70.7, 70.7];
                supportFire_adjustmentDirection = "adjust fire northeast 100m";
                [["Adjust fire 100m northeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_100NE = ["Adjust Northeast 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNE.paa",_statementAdjust_100NE,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northeast"], _actionAdjust_100NE] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire East
        _actionAdjust_E = ["Adjust East","Adjust East","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustE.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50E = {
                supportFire_adjustmentCoords = [50, 0];
                supportFire_adjustmentDirection = "adjust fire east 50m";
                [["Adjust fire 50m east.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50E = ["Adjust East 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustE.paa",_statementAdjust_50E,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust East"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100E = {
                supportFire_adjustmentCoords = [100, 0];
                supportFire_adjustmentDirection = "adjust fire east 100m";
                [["Adjust fire 100m east.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_100E = ["Adjust East 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustE.paa",_statementAdjust_100E,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust East"], _actionAdjust_100E] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Southeast
        _actionAdjust_SE = ["Adjust Southeast","Adjust Southeast","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSE.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_SE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50SE = {
                supportFire_adjustmentCoords = [35.4, -35.4];
                supportFire_adjustmentDirection = "adjust fire southeast 50m";
                [["Adjust fire 50m southeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50E = ["Adjust Southeast 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSE.paa",_statementAdjust_50SE,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southeast"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100SE = {
                supportFire_adjustmentCoords = [70.7, -70.7];
                supportFire_adjustmentDirection = "adjust fire southeast 100m";
                [["Adjust fire 100m southeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_100SE = ["Adjust Southeast 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSE.paa",_statementAdjust_100SE,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southeast"], _actionAdjust_100SE] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire South
        _actionAdjust_S = ["Adjust South","Adjust South","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustS.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_S] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50S = {
                supportFire_adjustmentCoords = [0, -50];
                supportFire_adjustmentDirection = "adjust fire south 50m";
                [["Adjust fire 50m south.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50S = ["Adjust South 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustS.paa",_statementAdjust_50S,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust South"], _actionAdjust_50S] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100S = {
                supportFire_adjustmentCoords = [0, -100];
                supportFire_adjustmentDirection = "adjust fire south 100m";
                [["Adjust fire 100m south.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_100S = ["Adjust South 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustS.paa",_statementAdjust_100S,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust South"], _actionAdjust_100S] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Southwest
        _actionAdjust_SW = ["Adjust Southwest","Adjust Southwest","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSW.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_SW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50SW = {
                supportFire_adjustmentCoords = [-35.4, -35.4];
                supportFire_adjustmentDirection = "adjust fire southwest 50m";
                [["Adjust fire 50m southwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50SW = ["Adjust Southwest 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSW.paa",_statementAdjust_50SW,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southwest"], _actionAdjust_50SW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100SW = {
                supportFire_adjustmentCoords = [-70.7, -70.7];
                supportFire_adjustmentDirection = "adjust fire southwest 100m";
                [["Adjust fire 100m southwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_100SW = ["Adjust Southwest 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSW.paa",_statementAdjust_100SW,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southwest"], _actionAdjust_100SW] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire West
        _actionAdjust_W = ["Adjust West","Adjust West","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustW.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_W] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50W = {
                supportFire_adjustmentCoords = [-50, 0];
                supportFire_adjustmentDirection = "adjust fire west 50m";
                [["Adjust fire 50m west.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50W = ["Adjust West 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustW.paa",_statementAdjust_50W,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust West"], _actionAdjust_50W] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100W = {
                supportFire_adjustmentCoords = [-100, 0];
                supportFire_adjustmentDirection = "adjust fire west 100m";
                [["Adjust fire 100m west.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_100W = ["Adjust West 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustW.paa",_statementAdjust_100W,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust West"], _actionAdjust_100W] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Northwest
        _actionAdjust_NW = ["Adjust Northwest","Adjust Northwest","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNW.paa",_statementAdjust,{true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_NW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50NW = {
                supportFire_adjustmentCoords = [-35.4, 35.4];
                supportFire_adjustmentDirection = "adjust fire northwest 50m";
                [["Adjust fire 50m northwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            _actionAdjust_50NW = ["Adjust Northwest 50","50m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNW.paa",_statementAdjust_50NW,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northwest"], _actionAdjust_50NW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100NW = {
                supportFire_adjustmentCoords = [-70.7, 70.7];
                supportFire_adjustmentDirection = "adjust fire northwest 100m";
                [["Adjust fire 100m northwest.<br/>Select the type of ammunition to use."], true] call CBA_fnc_notify;
            };
            _actionAdjust_100NW = ["Adjust Northwest 100","100m","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNW.paa",_statementAdjust_100NW,{true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northwest"], _actionAdjust_100NW] call ace_interact_menu_fnc_addActionToObject;
