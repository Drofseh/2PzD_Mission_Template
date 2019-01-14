
    // ===== Add Target 01 interaction
    if (supportFire_target01 != "") then {

        _actionTarget01 = [supportFire_target01_Name,supportFire_target01_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 5 Rounds, HE
            _statementTarget01_5 = { [(side player), "HE", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01_5 = ["HE - 5 Rounds","HE - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget01_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"HE"], _actionTarget01_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 10 Rounds, HE
            _statementTarget01_10 = { [(side player), "HE", 10, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01_10 = ["HE - 10 Rounds","HE - 10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget01_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"HE"], _actionTarget01_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 15 Rounds, HE
            _statementTarget01_15 = { [(side player), "HE", 15, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01_15 = ["HE - 15 Rounds","HE - 15 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget01_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"HE"], _actionTarget01_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 20 Rounds, HE
            _statementTarget01_20 = { [(side player), "HE", 20, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01_20 = ["HE - 20 Rounds","HE - 20 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget01_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"HE"], _actionTarget01_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 25 Rounds, HE
            _statementTarget01_25 = { [(side player), "HE", 25, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01_25 = ["HE - 25 Rounds","HE - 25 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget01_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"HE"], _actionTarget01_25] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 5 Rounds, Smoke
            _statementTarget01S_5 = { [(side player), "Smoke", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget01S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"Smoke"], _actionTarget01S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 10 Rounds, Smoke
            _statementTarget01S_10 = { [(side player), "Smoke", 10, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget01S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"Smoke"], _actionTarget01S_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 1 Round, Flare
            _statementTarget01F_1 = { [(side player), "Flare", 1, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01F_1 = ["Flare - 1 Round","Flare - 1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget01F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"Flare"], _actionTarget01F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 5 Rounds, Flare
            _statementTarget01F_5 = { [(side player), "Flare", 5, "Target01", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget01F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget01F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target01_Name,"Flare"], _actionTarget01F_5] call ace_interact_menu_fnc_addActionToObject;
    };
