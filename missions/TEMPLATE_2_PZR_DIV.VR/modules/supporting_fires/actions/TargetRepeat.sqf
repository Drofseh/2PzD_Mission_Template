
    // ===== Add Fire Mission on Last Target
    _actionRepeat = ["Repeat Last Target","Repeat Last Target","Haas_WWII_Rebalance\UI\icon_supporting_fires_target_rep.paa",_statementTargets,_conditionRepeat] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRepeat] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Target, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 5 Rounds, HE
            _statementRepeatHE_5 = { [(side player), "HE", 5, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatHE_5 = ["5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementRepeatHE_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","HE"], _actionRepeatHE_5] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 10 Rounds, HE
            _statementRepeatHE_10 = { [(side player), "HE", 10, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatHE_10 = ["10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementRepeatHE_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","HE"], _actionRepeatHE_10] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 15 Rounds, HE
            _statementRepeatHE_15 = { [(side player), "HE", 15, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatHE_15 = ["15 Rounds","15 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementRepeatHE_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","HE"], _actionRepeatHE_15] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 20 Rounds, HE
            _statementRepeatHE_20 = { [(side player), "HE", 20, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatHE_20 = ["20 Rounds","20 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementRepeatHE_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","HE"], _actionRepeatHE_20] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 25 Rounds, HE
            _statementRepeatHE_25 = { [(side player), "HE", 25, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatHE_25 = ["25 Rounds","25 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementRepeatHE_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","HE"], _actionRepeatHE_25] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Target, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 5 Rounds, Smoke
            _statementRepeatS_5 = { [(side player), "Smoke", 5, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatS_5 = ["5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementRepeatS_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","Smoke"], _actionRepeatS_5] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 10 Rounds, Smoke
            _statementRepeatS_10 = { [(side player), "Smoke", 10, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatS_10 = ["10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementRepeatS_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","Smoke"], _actionRepeatS_10] call ace_interact_menu_fnc_addActionToObject;

        // Repeat Target, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target"], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 1 Round, Flare
            _statementRepeatF_1 = { [(side player), "Flare", 1, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatF_1 = ["1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementRepeatF_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","Flare"], _actionRepeatF_1] call ace_interact_menu_fnc_addActionToObject;

            // Repeat Last Target, 5 Rounds, Flare
            _statementRepeatF_5 = { [(side player), "Flare", 5, "TargetLast", [0,0]] call FNC_SupportFire_FireMission; };
            _actionRepeatF_5 = ["5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementRepeatF_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Last Target","Flare"], _actionRepeatF_5] call ace_interact_menu_fnc_addActionToObject;
