
    // ===== Add Target 02 interaction
    if (supportFire_target02 != "") then {

        _actionTarget02 = [supportFire_target02_Name,supportFire_target02_Name,"Haas_WWII_Rebalance\UI\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget02] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 5 Rounds, HE
            _statementTarget02_5 = { [(side player), "HE", 5, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02_5 = ["HE - 5 Rounds","HE - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget02_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"HE"], _actionTarget02_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 10 Rounds, HE
            _statementTarget02_10 = { [(side player), "HE", 10, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02_10 = ["HE - 10 Rounds","HE - 10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget02_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"HE"], _actionTarget02_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 15 Rounds, HE
            _statementTarget02_15 = { [(side player), "HE", 15, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02_15 = ["HE - 15 Rounds","HE - 15 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget02_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"HE"], _actionTarget02_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 20 Rounds, HE
            _statementTarget02_20 = { [(side player), "HE", 20, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02_20 = ["HE - 20 Rounds","HE - 20 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget02_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"HE"], _actionTarget02_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 25 Rounds, HE
            _statementTarget02_25 = { [(side player), "HE", 25, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02_25 = ["HE - 25 Rounds","HE - 25 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementTarget02_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"HE"], _actionTarget02_25] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 5 Rounds, Smoke
            _statementTarget02S_5 = { [(side player), "Smoke", 5, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget02S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"Smoke"], _actionTarget02S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 10 Rounds, Smoke
            _statementTarget02S_10 = { [(side player), "Smoke", 10, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementTarget02S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"Smoke"], _actionTarget02S_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 1 Round, Flare
            _statementTarget02F_1 = { [(side player), "Flare", 1, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02F_1 = ["Flare - 1 Round","Flare - 1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget02F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"Flare"], _actionTarget02F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 5 Rounds, Flare
            _statementTarget02F_5 = { [(side player), "Flare", 5, "Target02", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget02F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementTarget02F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target02_Name,"Flare"], _actionTarget02F_5] call ace_interact_menu_fnc_addActionToObject;
    };
