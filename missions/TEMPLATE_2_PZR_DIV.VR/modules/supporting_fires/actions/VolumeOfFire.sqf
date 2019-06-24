
    // ===== Add Volume of Fire Selection
    _statementVolume = {
        [["Select the number of rounds to fire,"],[format ["%1 currently selected.", supportFire_volumeOfFire]]] call CBA_fnc_notify;
    };
    _actionVolume = ["Volume of Fire","Volume of Fire","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementVolume,_conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionVolume] call ace_interact_menu_fnc_addActionToObject;

        // 1 Round, HE
        _conditionVolumeHE1     = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountWEST > 0})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountEAST > 0}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountGUER > 0}}
        };
        _statementVolumeHE1 = {
            "1 round HE selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 1;
        };
        _actionVolumeHE1 = ["HE - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVolumeHE1,_conditionVolumeHE1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeHE1] call ace_interact_menu_fnc_addActionToObject;

        // 5 Rounds, HE
        _conditionVolumeHE5     = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountWEST > 4})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountEAST > 4}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountGUER > 4}}
        };
        _statementVolumeHE5 = {
            "5 rounds HE selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 5;
        };
        _actionVolumeHE5 = ["HE - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVolumeHE5,_conditionVolumeHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeHE5] call ace_interact_menu_fnc_addActionToObject;

        // 10 Rounds, HE
        _conditionVolumeHE10    = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountWEST > 9})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountEAST > 9}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountGUER > 9}}
        };
        _statementVolumeHE10 = {
            "10 rounds HE selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 10;
        };
        _actionVolumeHE10 = ["HE - 10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVolumeHE10,_conditionVolumeHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeHE10] call ace_interact_menu_fnc_addActionToObject;

        // 15 Rounds, HE
        _conditionVolumeHE15    = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountWEST > 14})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountEAST > 14}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountGUER > 14}}
        };
        _statementVolumeHE15 = {
            "15 rounds HE selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 15;
        };
        _actionVolumeHE15 = ["HE - 15 Rounds","15 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVolumeHE15,_conditionVolumeHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeHE15] call ace_interact_menu_fnc_addActionToObject;

        // 20 Rounds, HE
        _conditionVolumeHE20    = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountWEST > 19})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountEAST > 19}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountGUER > 19}}
        };
        _statementVolumeHE20 = {
            "20 rounds HE selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 20;
        };
        _actionVolumeHE20 = ["HE - 20 Rounds","20 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVolumeHE20,_conditionVolumeHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeHE20] call ace_interact_menu_fnc_addActionToObject;

        // 25 Rounds, HE
        _conditionVolumeHE25    = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountWEST > 24})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountEAST > 24}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "HE"} && {supportFire_shellsHE_AmmoCountGUER > 24}}
        };
        _statementVolumeHE25 = {
            "25 rounds HE selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 25;
        };
        _actionVolumeHE25 = ["HE - 25 Rounds","25 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_he.paa",_statementVolumeHE25,_conditionVolumeHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeHE25] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 1 Round, Smoke
        _conditionVolumeSmoke1  = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountWEST > 0})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountEAST > 0}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountGUER > 0}}
        };
        _statementVolumeSmoke1 = {
            "1 round smoke selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 1;
        };
        _actionVolumeSmoke1 = ["Smoke - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementVolumeSmoke1,_conditionVolumeSmoke1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeSmoke1] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 5 Rounds, Smoke
        _conditionVolumeSmoke5  = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountWEST > 4})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountEAST > 4}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountGUER > 4}}
        };
        _statementVolumeSmoke5 = {
            "5 rounds smoke selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 5;
        };
        _actionVolumeSmoke5 = ["Smoke - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementVolumeSmoke5,_conditionVolumeSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeSmoke5] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 10 Rounds, Smoke
        _conditionVolumeSmoke10 = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountWEST > 9})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountEAST > 9}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "Smoke"} && {supportFire_shellsSmoke_AmmoCountGUER > 9}}
        };
        _statementVolumeSmoke10 = {
            "10 rounds smoke selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 10;
        };
        _actionVolumeSmoke10 = ["Smoke - 10 Rounds","10 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_smoke.paa",_statementVolumeSmoke10,_conditionVolumeSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeSmoke10] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 1 Round, Flare
        _conditionVolumeFlare1  = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "Flare"} && {supportFire_shellsFlare_AmmoCountWEST > 0})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "Flare"} && {supportFire_shellsFlare_AmmoCountEAST > 0}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "Flare"} && {supportFire_shellsFlare_AmmoCountGUER > 0}}
        };
        _statementVolumeFlare1 = {
            "1 round flare selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 1;
        };
        _actionVolumeFlare1 = ["Flare - 1 Round","1 Round","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementVolumeFlare1,_conditionVolumeFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeFlare1] call ace_interact_menu_fnc_addActionToObject;

        // Target 01, 5 Rounds, Flare
        _conditionVolumeFlare5  = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_ammoType == "Flare"} && {supportFire_shellsFlare_AmmoCountWEST > 4})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_ammoType == "Flare"} && {supportFire_shellsFlare_AmmoCountEAST > 4}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_ammoType == "Flare"} && {supportFire_shellsFlare_AmmoCountGUER > 4}}
        };
        _statementVolumeFlare5 = {
            "5 rounds flare selected." call CBA_fnc_notify;
            supportFire_volumeOfFire = 5;
        };
        _actionVolumeFlare5 = ["Flare - 5 Rounds","5 Rounds","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementVolumeFlare5,_conditionVolumeFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Volume of Fire"], _actionVolumeFlare5] call ace_interact_menu_fnc_addActionToObject;