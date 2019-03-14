
    // ===== Add Adjust Fire on Last Target
    _statementAdjust = { "Select the direction and distance to adjust fire." call CBA_fnc_notify;};
    _actionAdjust = ["Adjust Fire","Adjust Fire","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjust.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionAdjust] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire North
        _actionAdjust_N = ["Adjust North","Adjust North","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustN.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_N] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50N = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, 50]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50N = ["Adjust North 50","Adjust North 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustN.paa",_statementAdjust_50N,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust North"], _actionAdjust_50N] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100N = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, 100]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100N = ["Adjust North 100","Adjust North 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustN.paa",_statementAdjust_100N,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust North"], _actionAdjust_100N] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Northeast
        _actionAdjust_NE = ["Adjust Northeast","Adjust Northeast","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNE.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_NE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50NE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [35.4, 35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50NE = ["Adjust Northeast 50","Adjust Northeast 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNE.paa",_statementAdjust_50NE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northeast"], _actionAdjust_50NE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100NE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [70.7, 70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100NE = ["Adjust Northeast 100","Adjust Northeast 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNE.paa",_statementAdjust_100NE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northeast"], _actionAdjust_100NE] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire East
        _actionAdjust_E = ["Adjust East","Adjust East","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustE.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50E = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [50, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50E = ["Adjust East 50","Adjust East 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustE.paa",_statementAdjust_50E,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust East"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100E = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [100, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100E = ["Adjust East 100","Adjust East 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustE.paa",_statementAdjust_100E,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust East"], _actionAdjust_100E] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Southeast
        _actionAdjust_SE = ["Adjust Southeast","Adjust Southeast","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSE.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_SE] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50SE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [35.4, -35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50E = ["Adjust Southeast 50","Adjust Southeast 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSE.paa",_statementAdjust_50SE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southeast"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100SE = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [70.7, -70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100SE = ["Adjust Southeast 100","Adjust Southeast 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSE.paa",_statementAdjust_100SE,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southeast"], _actionAdjust_100SE] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire South
        _actionAdjust_S = ["Adjust South","Adjust South","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustS.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_S] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50S = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, -50]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50S = ["Adjust South 50","Adjust South 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustS.paa",_statementAdjust_50S,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust South"], _actionAdjust_50S] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100S = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [0, -100]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100S = ["Adjust South 100","Adjust South 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustS.paa",_statementAdjust_100S,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust South"], _actionAdjust_100S] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Southwest
        _actionAdjust_SW = ["Adjust Southwest","Adjust Southwest","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSW.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_SW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50SW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-35.4, -35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50SW = ["Adjust Southwest 50","Adjust Southwest 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSW.paa",_statementAdjust_50SW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southwest"], _actionAdjust_50SW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100SW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-70.7, -70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100SW = ["Adjust Southwest 100","Adjust Southwest 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustSW.paa",_statementAdjust_100SW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Southwest"], _actionAdjust_100SW] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire West
        _actionAdjust_W = ["Adjust West","Adjust West","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustW.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_W] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50W = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-50, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50W = ["Adjust West 50","Adjust West 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustW.paa",_statementAdjust_50W,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust West"], _actionAdjust_50W] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100W = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-100, 0]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100W = ["Adjust West 100","Adjust West 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustW.paa",_statementAdjust_100W,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust West"], _actionAdjust_100W] call ace_interact_menu_fnc_addActionToObject;

        // Adjust Fire Northwest
        _actionAdjust_NW = ["Adjust Northwest","Adjust Northwest","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNW.paa",_statementAdjust,_conditionRepeat] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire"], _actionAdjust_NW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_50NW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-35.4, 35.4]] call FNC_SupportFire_FireMission; };
            _actionAdjust_50NW = ["Adjust Northwest 50","Adjust Northwest 50","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNW.paa",_statementAdjust_50NW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northwest"], _actionAdjust_50NW] call ace_interact_menu_fnc_addActionToObject;

            _statementAdjust_100NW = { [(side player), supportFire_lastType, supportFire_lastNumber, "AdjustFire", [-70.7, 70.7]] call FNC_SupportFire_FireMission; };
            _actionAdjust_100NW = ["Adjust Northwest 100","Adjust Northwest 100","Haas_WWII_Rebalance\UI\icon_supporting_fires_adjustNW.paa",_statementAdjust_100NW,_conditionRepeat] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Adjust Fire", "Adjust Northwest"], _actionAdjust_100NW] call ace_interact_menu_fnc_addActionToObject;
