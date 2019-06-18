
    // ===== Add Target Screen Centre
    _actionVisualLoc = ["Visual Location","Visual Location","Haas_WWII_Rebalance\UI\icon_supporting_fires_target_vis.paa",_statementTargets,_conditionVisual] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionVisualLoc] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 1 Round, HE
            _statementVisualLoc_1 = { [(side player), "HE", 1, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLoc_1 = ["HE - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVisualLoc_1,_conditionFiresHE1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","HE"], _actionVisualLoc_1] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 5 Rounds, HE
            _statementVisualLocHE_5 = { [(side player), "HE", 5, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocHE_5 = ["HE - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVisualLocHE_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","HE"], _actionVisualLocHE_5] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 10 Rounds, HE
            _statementVisualLocHE_10 = { [(side player), "HE", 10, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocHE_10 = ["HE - 10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVisualLocHE_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","HE"], _actionVisualLocHE_10] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 15 Rounds, HE
            _statementVisualLocHE_15 = { [(side player), "HE", 15, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocHE_15 = ["HE - 15 Rounds","15 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVisualLocHE_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","HE"], _actionVisualLocHE_15] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 20 Rounds, HE
            _statementVisualLocHE_20 = { [(side player), "HE", 20, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocHE_20 = ["HE - 20 Rounds","20 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVisualLocHE_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","HE"], _actionVisualLocHE_20] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 25 Rounds, HE
            _statementVisualLocHE_25 = { [(side player), "HE", 25, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocHE_25 = ["HE - 25 Rounds","25 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVisualLocHE_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","HE"], _actionVisualLocHE_25] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 1 Round, Smoke
            _statementVisualLocS_1 = { [(side player), "Smoke", 1, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocS_1 = ["Smoke - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementVisualLocS_1,_conditionFiresSmoke1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","Smoke"], _actionVisualLocS_1] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 5 Rounds, Smoke
            _statementVisualLocS_5 = { [(side player), "Smoke", 5, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocS_5 = ["Smoke - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementVisualLocS_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","Smoke"], _actionVisualLocS_5] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 10 Rounds, Smoke
            _statementVisualLocS_10 = { [(side player), "Smoke", 10, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocS_10 = ["Smoke - 10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementVisualLocS_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","Smoke"], _actionVisualLocS_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 1 Round, Flare
            _statementVisualLocF_1 = { [(side player), "Flare", 1, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocF_1 = ["Flare - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementVisualLocF_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","Flare"], _actionVisualLocF_1] call ace_interact_menu_fnc_addActionToObject;

            // Visual Location, 5 Rounds, Flare
            _statementVisualLocF_5 = { [(side player), "Flare", 5, "TargetVisual", [0,0]] call FNC_SupportFire_FireMission; };
            _actionVisualLocF_5 = ["Flare - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementVisualLocF_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location","Flare"], _actionVisualLocF_5] call ace_interact_menu_fnc_addActionToObject;
