
    // ===== Add Target 05 interaction
    if (supportFire_target05 != "") then {

        _actionTarget05 = [supportFire_target05_Name,supportFire_target05_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget05] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 1 Round, HE
            _statementTarget05_1 = { [(side player), "HE", 1, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05_1 = ["HE - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget05_1,_conditionFiresHE1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"HE"], _actionTarget05_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 5 Rounds, HE
            _statementTarget05_5 = { [(side player), "HE", 5, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05_5 = ["HE - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget05_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"HE"], _actionTarget05_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 10 Rounds, HE
            _statementTarget05_10 = { [(side player), "HE", 10, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05_10 = ["HE - 10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget05_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"HE"], _actionTarget05_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 15 Rounds, HE
            _statementTarget05_15 = { [(side player), "HE", 15, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05_15 = ["HE - 15 Rounds","15 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget05_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"HE"], _actionTarget05_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 20 Rounds, HE
            _statementTarget05_20 = { [(side player), "HE", 20, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05_20 = ["HE - 20 Rounds","20 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget05_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"HE"], _actionTarget05_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 25 Rounds, HE
            _statementTarget05_25 = { [(side player), "HE", 25, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05_25 = ["HE - 25 Rounds","25 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget05_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"HE"], _actionTarget05_25] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 1 Round, Smoke
            _statementTarget05S_1 = { [(side player), "Smoke", 1, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05S_1 = ["Smoke - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget05S_1,_conditionFiresSmoke1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_Target05_Name,"Smoke"], _actionTarget05S_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 5 Rounds, Smoke
            _statementTarget05S_5 = { [(side player), "Smoke", 5, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05S_5 = ["Smoke - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget05S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"Smoke"], _actionTarget05S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 10 Rounds, Smoke
            _statementTarget05S_10 = { [(side player), "Smoke", 10, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05S_10 = ["Smoke - 10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget05S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"Smoke"], _actionTarget05S_10] call ace_interact_menu_fnc_addActionToObject;

        // Target 05, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 1 Round, Flare
            _statementTarget05F_1 = { [(side player), "Flare", 1, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05F_1 = ["Flare - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget05F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"Flare"], _actionTarget05F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 5 Rounds, Flare
            _statementTarget05F_5 = { [(side player), "Flare", 5, "Target05", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget05F_5 = ["Flare - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget05F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target05_Name,"Flare"], _actionTarget05F_5] call ace_interact_menu_fnc_addActionToObject;
    };
