
    // ===== Add Ammunition Type Selection
    _statementAmmoType = {
        [["Select the type of ammunition to fire,"],[format ["%1 currently selected.", supportFire_ammoType]]] call CBA_fnc_notify;
    };
    _actionTarget01 = ["Ammunition Type","Ammunition Type","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementAmmoType,_conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;

        // HE
        _conditionAmmoType_HE     = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 0})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 0}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 0}}
        };
        _statementAmmoType_HE = {
            [["HE ammunition selected."],["Select the number of rounds to fire."]] call CBA_fnc_notify;
            supportFire_ammoType = "HE";
        };
        _actionAmmoType_HE = ["HE","HE","Haas_WWII_Rebalance\UI\icon_supporting_fires_HE.paa",_statementAmmoType_HE,_conditionAmmoType_HE] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Ammunition Type"], _actionAmmoType_HE] call ace_interact_menu_fnc_addActionToObject;

        // Smoke
        _conditionAmmoType_Smoke  = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsSmoke_AmmoCountWEST > 0})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsSmoke_AmmoCountEAST > 0}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsSmoke_AmmoCountGUER > 0}}
        };
        _statementAmmoType_Smoke = {
            [["Smoke ammunition selected."],["Select the number of rounds to fire."]] call CBA_fnc_notify;
            supportFire_ammoType = "Smoke";
        };
        _actionAmmoType_Smoke = ["Smoke","Smoke","Haas_WWII_Rebalance\UI\icon_supporting_fires_Smoke.paa",_statementAmmoType_Smoke,_conditionAmmoType_Smoke] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Ammunition Type"], _actionAmmoType_Smoke] call ace_interact_menu_fnc_addActionToObject;

        // Flare
        _conditionAmmoType_Flare  = {
               ((side player isEqualTo WEST)       && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsFlare_AmmoCountWEST > 0})
            || {(side player isEqualTo EAST)       && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsFlare_AmmoCountEAST > 0}}
            || {(side player isEqualTo RESISTANCE) && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsFlare_AmmoCountGUER > 0}}
        };
        _statementAmmoType_Flare = {
            [["Flare ammunition selected."],["Select the number of rounds to fire."]] call CBA_fnc_notify;
            supportFire_ammoType = "Flare";
        };
        _actionAmmoType_Flare = ["Flare","Flare","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementAmmoType_Flare,_conditionAmmoType_Flare] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Ammunition Type"], _actionAmmoType_Flare] call ace_interact_menu_fnc_addActionToObject;