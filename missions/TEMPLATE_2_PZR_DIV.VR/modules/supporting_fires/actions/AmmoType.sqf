
    // ===== Add Ammunition Type Selection
    _statementAmmoType = {
        [["Select the type of ammunition to fire,"],[format ["%1 currently selected.", supportFire_ammoType]], true] call CBA_fnc_notify;
    };
    _actionTarget01 = ["Ammunition Type","Ammunition Type","Haas_WWII_Rebalance\UI\icon_supporting_fires.paa",_statementAmmoType,_conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;
    if (supportFire_isZEUS) then {
        [["ACE_ZeusActions","Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToZeus;
    };

        // HE
        _conditionAmmoType_HE = {
                supportFire_isWEST && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsHE_AmmoCountWEST > 0}
            || {supportFire_isEAST && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsHE_AmmoCountEAST > 0}}
            || {supportFire_isGUER && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsHE_AmmoCountGUER > 0}}
            || {supportFire_isZEUS && {supportFire_fireMissionAvailableZEUS}}
        };
        _statementAmmoType_HE = {
            [["HE ammunition selected."],["Select the number of rounds to fire."], true] call CBA_fnc_notify;
            supportFire_ammoType = "HE";
        };
        _actionAmmoType_HE = ["HE","HE","Haas_WWII_Rebalance\UI\icon_supporting_fires_HE.paa",_statementAmmoType_HE,_conditionAmmoType_HE] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Ammunition Type"], _actionAmmoType_HE] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Ammunition Type"], _actionAmmoType_HE] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Smoke
        _conditionAmmoType_Smoke = {
                supportFire_isWEST && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsSmoke_AmmoCountWEST > 0}
            || {supportFire_isEAST && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsSmoke_AmmoCountEAST > 0}}
            || {supportFire_isGUER && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsSmoke_AmmoCountGUER > 0}}
            || {supportFire_isZEUS && {supportFire_fireMissionAvailableZEUS}}
        };
        _statementAmmoType_Smoke = {
            [["Smoke ammunition selected."],["Select the number of rounds to fire."], true] call CBA_fnc_notify;
            supportFire_ammoType = "Smoke";
        };
        _actionAmmoType_Smoke = ["Smoke","Smoke","Haas_WWII_Rebalance\UI\icon_supporting_fires_Smoke.paa",_statementAmmoType_Smoke,_conditionAmmoType_Smoke] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Ammunition Type"], _actionAmmoType_Smoke] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Ammunition Type"], _actionAmmoType_Smoke] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Flare
        _conditionAmmoType_Flare = {
                supportFire_isWEST && {supportFire_fireMissionAvailableWEST} && {supportFire_shellsFlare_AmmoCountWEST > 0}
            || {supportFire_isEAST && {supportFire_fireMissionAvailableEAST} && {supportFire_shellsFlare_AmmoCountEAST > 0}}
            || {supportFire_isGUER && {supportFire_fireMissionAvailableGUER} && {supportFire_shellsFlare_AmmoCountGUER > 0}}
            || {supportFire_isZEUS && {supportFire_fireMissionAvailableZEUS}}
        };
        _statementAmmoType_Flare = {
            [["Flare ammunition selected."],["Select the number of rounds to fire."], true] call CBA_fnc_notify;
            supportFire_ammoType = "Flare";
        };
        _actionAmmoType_Flare = ["Flare","Flare","Haas_WWII_Rebalance\UI\icon_supporting_fires_flare.paa",_statementAmmoType_Flare,_conditionAmmoType_Flare] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires","Ammunition Type"], _actionAmmoType_Flare] call ace_interact_menu_fnc_addActionToObject;
        if (supportFire_isZEUS) then {
            [["ACE_ZeusActions","Supporting Fires","Ammunition Type"], _actionAmmoType_Flare] call ace_interact_menu_fnc_addActionToZeus;
        };
