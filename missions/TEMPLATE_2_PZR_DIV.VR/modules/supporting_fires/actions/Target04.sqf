
    // ===== Add Target 04 interaction
    if (supportFire_target04 != "") then {

        _actionTarget04 = [supportFire_target04_Name,supportFire_target04_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget04] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 5 Rounds, HE
            _statementTarget04_5 = { [(side player), "HE", 5, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04_5 = ["HE - 5 Rounds","HE - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget04_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"HE"], _actionTarget04_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 10 Rounds, HE
            _statementTarget04_10 = { [(side player), "HE", 10, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04_10 = ["HE - 10 Rounds","HE - 10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget04_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"HE"], _actionTarget04_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 15 Rounds, HE
            _statementTarget04_15 = { [(side player), "HE", 15, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04_15 = ["HE - 15 Rounds","HE - 15 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget04_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"HE"], _actionTarget04_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 20 Rounds, HE
            _statementTarget04_20 = { [(side player), "HE", 20, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04_20 = ["HE - 20 Rounds","HE - 20 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget04_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"HE"], _actionTarget04_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 25 Rounds, HE
            _statementTarget04_25 = { [(side player), "HE", 25, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04_25 = ["HE - 25 Rounds","HE - 25 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget04_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"HE"], _actionTarget04_25] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 5 Rounds, Smoke
            _statementTarget04S_5 = { [(side player), "Smoke", 5, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget04S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"Smoke"], _actionTarget04S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 10 Rounds, Smoke
            _statementTarget04S_10 = { [(side player), "Smoke", 10, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget04S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"Smoke"], _actionTarget04S_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 1 Round, Flare
            _statementTarget04F_1 = { [(side player), "Flare", 1, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04F_1 = ["Flare - 1 Round","Flare - 1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget04F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"Flare"], _actionTarget04F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 5 Rounds, Flare
            _statementTarget04F_5 = { [(side player), "Flare", 5, "Target04", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget04F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget04F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target04_Name,"Flare"], _actionTarget04F_5] call ace_interact_menu_fnc_addActionToObject;
    };
