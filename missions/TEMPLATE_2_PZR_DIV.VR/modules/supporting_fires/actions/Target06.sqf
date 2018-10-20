
    // ===== Add Target 06 interaction
    if (supportFire_target06 != "") then {

        _actionTarget06 = [supportFire_target06_Name,supportFire_target06_Name,"modules\supporting_fires\icons\icon_supporting_fires_target.paa",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget06] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, HE
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name], _actionBaseHE] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 5 Rounds, HE
            _statementTarget06_5 = { [(side player), "HE", 5, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06_5 = ["HE - 5 Rounds","HE - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"HE"], _actionTarget06_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 10 Rounds, HE
            _statementTarget06_10 = { [(side player), "HE", 10, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06_10 = ["HE - 10 Rounds","HE - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"HE"], _actionTarget06_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 15 Rounds, HE
            _statementTarget06_15 = { [(side player), "HE", 15, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06_15 = ["HE - 15 Rounds","HE - 15 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"HE"], _actionTarget06_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 20 Rounds, HE
            _statementTarget06_20 = { [(side player), "HE", 20, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06_20 = ["HE - 20 Rounds","HE - 20 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"HE"], _actionTarget06_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 25 Rounds, HE
            _statementTarget06_25 = { [(side player), "HE", 25, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06_25 = ["HE - 25 Rounds","HE - 25 Rounds","modules\supporting_fires\icons\icon_supporting_fires_he.paa",_statementTarget06_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"HE"], _actionTarget06_25] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Smoke
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name], _actionBaseSmoke] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 5 Rounds, Smoke
            _statementTarget06S_5 = { [(side player), "Smoke", 5, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget06S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"Smoke"], _actionTarget06S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 10 Rounds, Smoke
            _statementTarget06S_10 = { [(side player), "Smoke", 10, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","modules\supporting_fires\icons\icon_supporting_fires_smoke.paa",_statementTarget06S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"Smoke"], _actionTarget06S_10] call ace_interact_menu_fnc_addActionToObject;

        // Visual Location, Flare
        [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name], _actionBaseFlare] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 1 Round, Flare
            _statementTarget06F_1 = { [(side player), "Flare", 1, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06F_1 = ["Flare - 1 Round","Flare - 1 Round","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget06F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"Flare"], _actionTarget06F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 5 Rounds, Flare
            _statementTarget06F_5 = { [(side player), "Flare", 5, "Target06", [0,0]] call FNC_SupportFire_FireMission; };
            _actionTarget06F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","modules\supporting_fires\icons\icon_supporting_fires_flare.paa",_statementTarget06F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",supportFire_target06_Name,"Flare"], _actionTarget06F_5] call ace_interact_menu_fnc_addActionToObject;
    };