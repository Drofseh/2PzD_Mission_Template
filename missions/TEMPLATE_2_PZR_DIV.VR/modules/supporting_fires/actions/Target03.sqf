
    // ===== Add Target 03 interaction
    if (supportFire_target03 != "") then {

        _actionTarget03 = [supportFire_target03_Name,supportFire_target03_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget03] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 5 Rounds, HE
            _statementTarget03_5 = { [(side player), "HE", 5, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"HE"], _actionTarget03_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 10 Rounds, HE
            _statementTarget03_10 = { [(side player), "HE", 10, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"HE"], _actionTarget03_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 15 Rounds, HE
            _statementTarget03_15 = { [(side player), "HE", 15, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"HE"], _actionTarget03_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 20 Rounds, HE
            _statementTarget03_20 = { [(side player), "HE", 20, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"HE"], _actionTarget03_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 25 Rounds, HE
            _statementTarget03_25 = { [(side player), "HE", 25, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget03_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"HE"], _actionTarget03_25] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 5 Rounds, Smoke
            _statementTarget03S_5 = { [(side player), "Smoke", 5, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget03S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"Smoke"], _actionTarget03S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 10 Rounds, Smoke
            _statementTarget03S_10 = { [(side player), "Smoke", 10, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget03S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"Smoke"], _actionTarget03S_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 1 Round, Flare
            _statementTarget03F_1 = { [(side player), "Flare", 1, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget03F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"Flare"], _actionTarget03F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 5 Rounds, Flare
            _statementTarget03F_5 = { [(side player), "Flare", 5, "Target03", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget03F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget03F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target03_Name,"Flare"], _actionTarget03F_5] call ace_interact_menu_fnc_addActionToObject;
    };
