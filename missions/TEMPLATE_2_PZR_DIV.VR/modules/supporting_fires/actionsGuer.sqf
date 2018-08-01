// Start Definitions

#define def_setFireMission(BOOL) \
    fireMissionAvailableGUER = BOOL; \
    publicVariable "fireMissionAvailableGUER";

#define def_removeShellsHE(NUMBER) \
    shellsHE_AmmoCountGUER = shellsHE_AmmoCountGUER - NUMBER; \
    publicVariable "shellsHE_AmmoCountGUER";

#define def_removeShellsSmoke(NUMBER) \
    shellsSmoke_AmmoCountGUER = shellsSmoke_AmmoCountGUER - NUMBER; \
    publicVariable "shellsSmoke_AmmoCountGUER";

#define def_removeShellsFlare(NUMBER) \
    shellsFlare_AmmoCountGUER = shellsFlare_AmmoCountGUER - NUMBER; \
    publicVariable "shellsFlare_AmmoCountGUER";

#define def_TargetVisual \
    _target = screenToWorld [0.5,0.5]; \
    previousTarget = _target; \
    shellDispersionGUER = originalShellDispersionGUER; \
    shellAccuracyGUER = originalShellAccuracyGUER; \
    repeatFire = 1; \
    _targetX = (_target select 0) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]); \
    _targetY = (_target select 1) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]);

#define def_Target01 \
    _target = getMarkerPos target01GUER; \
    previousTarget = _target; \
    shellDispersionGUER = originalShellDispersionGUER; \
    shellAccuracyGUER = originalShellAccuracyGUER; \
    repeatFire = 1; \
    _targetX = (_target select 0) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]); \
    _targetY = (_target select 1) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]);

#define def_Target02 \
    _target = getMarkerPos target02GUER; \
    previousTarget = _target; \
    shellDispersionGUER = originalShellDispersionGUER; \
    shellAccuracyGUER = originalShellAccuracyGUER; \
    repeatFire = 1; \
    _targetX = (_target select 0) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]); \
    _targetY = (_target select 1) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]);

#define def_Target03 \
    _target = getMarkerPos target03GUER; \
    previousTarget = _target; \
    shellDispersionGUER = originalShellDispersionGUER; \
    shellAccuracyGUER = originalShellAccuracyGUER; \
    repeatFire = 1; \
    _targetX = (_target select 0) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]); \
    _targetY = (_target select 1) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]);

#define def_Target04 \
    _target = getMarkerPos target04GUER; \
    previousTarget = _target; \
    shellDispersionGUER = originalShellDispersionGUER; \
    shellAccuracyGUER = originalShellAccuracyGUER; \
    repeatFire = 1; \
    _targetX = (_target select 0) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]); \
    _targetY = (_target select 1) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]);

#define def_Target05 \
    _target = getMarkerPos target05GUER; \
    previousTarget = _target; \
    shellDispersionGUER = originalShellDispersionGUER; \
    shellAccuracyGUER = originalShellAccuracyGUER; \
    repeatFire = 1; \
    _targetX = (_target select 0) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]); \
    _targetY = (_target select 1) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]);

#define def_Target06 \
    _target = getMarkerPos target06GUER; \
    previousTarget = _target; \
    shellDispersionGUER = originalShellDispersionGUER; \
    shellAccuracyGUER = originalShellAccuracyGUER; \
    repeatFire = 1; \
    _targetX = (_target select 0) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]); \
    _targetY = (_target select 1) + (random [-shellAccuracyGUER, 0, shellAccuracyGUER]);

#define def_TargetRepeat \
    repeatFire = repeatFire + 0.25; \
    repeatShellAccuracyGUER = shellAccuracyGUER / repeatFire; \
    shellDispersionGUER = shellDispersionGUER / repeatFire; \
    _targetX = (previousTarget select 0) + (random [-repeatShellAccuracyGUER, 0, repeatShellAccuracyGUER]); \
    _targetY = (previousTarget select 1) + (random [-repeatShellAccuracyGUER, 0, repeatShellAccuracyGUER]);

#define def_barrage5RoundsHE_GUER \
    _bomb = shellsHE_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsHE_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsHE_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsHE_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsHE_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (2 + random [0.1, 0.2, 0.5]);

#define def_barrage5RoundsSmoke_GUER \
    _bomb = shellsSmoke_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsSmoke_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsSmoke_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsSmoke_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsSmoke_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (2 + random [0.1, 0.2, 0.5]);
    
#define def_barrage1RoundFlare_GUER \
    _bomb = shellsFlare_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]);

#define def_barrage5RoundsFlare_GUER \
    _bomb = shellsFlare_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsFlare_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsFlare_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsFlare_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (random [0.1, 0.2, 0.5]); \
    _bomb = shellsFlare_TypeGUER createVehicle [_targetX,_targetY,300]; \
    _bombPosition = _bomb getPos [random shellDispersionGUER, random 360]; \
    _bombPositionX = (_bombPosition select 0); \
    _bombPositionY = (_bombPosition select 1); \
    _bomb setPos [_bombPositionX,_bombPositionY,300]; \
    _bomb setVelocity [0,0,-10]; \
    sleep (2 + random [0.1, 0.2, 0.5]);
// End Definitions

// Start Actions
_supportingFireActions = call {

    // Add conditions for interactions
    _conditionFires        = {([] call acre_api_fnc_getCurrentRadio != "")};
    _conditionTargets      = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 5 || shellsSmoke_AmmoCountGUER >= 5 || shellsFlare_AmmoCountGUER >= 5)};
    _conditionRepeat       = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (!(previousTarget isEqualTo [])) && (shellsHE_AmmoCountGUER >= 5 || shellsSmoke_AmmoCountGUER >= 5 || shellsFlare_AmmoCountGUER >= 1)};
    _conditionFiresHE5     = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 5)};
    _conditionFiresHE10    = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 10)};
    _conditionFiresHE15    = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 15)};
    _conditionFiresHE20    = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 20)};
    _conditionFiresHE25    = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsHE_AmmoCountGUER >= 25)};
    _conditionFiresSmoke5  = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsSmoke_AmmoCountGUER >= 5)};
    _conditionFiresSmoke10 = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsSmoke_AmmoCountGUER >= 10)};
    _conditionFiresFlare1  = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsFlare_AmmoCountGUER >= 1)};
    _conditionFiresFlare5  = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER) && (shellsFlare_AmmoCountGUER >= 5)};
    _conditionCheck        = {([] call acre_api_fnc_getCurrentRadio != "") && (fireMissionAvailableGUER)};
    _conditionFiring       = {([] call acre_api_fnc_getCurrentRadio != "") && (!fireMissionAvailableGUER)};

    // Add supporting fires interaction
    _statementFires = {
            hint "Select a Target to be shelled."
    };
    _actionFires = ["Supporting Fires","Supporting Fires","",_statementFires,_conditionFires] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _actionFires] call ace_interact_menu_fnc_addActionToObject;

    // Add action to check remaining ammunition
    _statementRounds = {
        [] spawn {
            hint "Roger, checking ammunition.";
            sleep 5;
            hint format ["%1 Rounds, HE,\n%2 rounds Smoke,\n%3 rounds Flare,\nremaining.", shellsHE_AmmoCountGUER, shellsSmoke_AmmoCountGUER, shellsFlare_AmmoCountGUER];
        };
    };
    _actionRounds = ["Check Remaining Ammunition","Check Remaining Ammunition","",_statementRounds,_conditionCheck] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRounds] call ace_interact_menu_fnc_addActionToObject;

    // Add action to to indicate fire mission is in progress.
    _statementFiring = {
        hint "Fire mission is already underway.";
    };
    _actionFiring = ["Fire Mission In Progress","Fire Mission In Progress","",_statementFiring,_conditionFiring] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionFiring] call ace_interact_menu_fnc_addActionToObject;

    // Add generic Target statement
    _statementTargets = {
        hint "Select the number of rounds to fire."
    };

    // Add Target Screen Centre interaction
    _actionVisualLoc = ["Visual Location","Visual Location","",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionVisualLoc] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 5 Rounds, HE
    _statementVisualLoc_5 = {
        def_setFireMission(False);
        def_removeShellsHE(5);
        publicVariable "shellsHE_AmmoCountGUER";
        [] spawn {
            /* // Alternate targeting method that detects objects
            _startVisual = AGLToASL positionCameraToWorld [0, 0, 0];
            _endVisual = AGLToASL positionCameraToWorld [0, 0, 5000];
            _lineVisual = lineIntersectsSurfaces [
                _startVisual, _endVisual,
                cameraOn, objNull,
                true, 1,
                "VIEW", "GEOM"
            ];
            _target = _lineVisual select 0 select 0;
            */
            def_TargetVisual;
            hint "Roger, Fire Mission,\n5 Rounds, HE,\nOn your Mark.";
            sleep 30;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
        };
    };
    _actionVisualLoc_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementVisualLoc_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_5] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 10 Rounds, HE
    _statementVisualLoc_10 = {
        def_setFireMission(False);
        def_removeShellsHE(10);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n10 Rounds, HE,\nOn your Mark.";
            sleep 32;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
        };
    };
    _actionVisualLoc_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementVisualLoc_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_10] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 15 Rounds, HE
    _statementVisualLoc_15 = {
        def_setFireMission(False);
        def_removeShellsHE(15);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n15 Rounds, HE,\nOn your Mark.";
            sleep 34;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
        };
    };
    _actionVisualLoc_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementVisualLoc_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_15] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 20 Rounds, HE
    _statementVisualLoc_20 = {
        def_setFireMission(False);
        def_removeShellsHE(20);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n20 Rounds, HE,\nOn your Mark.";
            sleep 36;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
        };
    };
    _actionVisualLoc_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementVisualLoc_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_20] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 25 Rounds, HE
    _statementVisualLoc_25 = {
        def_setFireMission(False);
        def_removeShellsHE(25);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n25 Rounds, HE,\nOn your Mark.";
            sleep 38;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
        };
    };
    _actionVisualLoc_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementVisualLoc_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLoc_25] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 5 Rounds, Smoke
    _statementVisualLocS_5 = {
        def_setFireMission(False);
        def_removeShellsSmoke(5);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n5 Rounds, Smoke,\nOn your Mark.";
            sleep 30;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsSmoke_GUER;
        };
    };
    _actionVisualLocS_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementVisualLocS_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocS_5] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 10 Rounds, Smoke
    _statementVisualLocS_10 = {
        def_setFireMission(False);
        def_removeShellsSmoke(10);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n10 Rounds, Smoke,\nOn your Mark.";
            sleep 32;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsSmoke_GUER;
            def_barrage5RoundsSmoke_GUER;
        };
    };
    _actionVisualLocS_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementVisualLocS_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocS_10] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 1 Round, Flare
    _statementVisualLocF_1 = {
        def_setFireMission(False);
        def_removeShellsFlare(1);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n1 Round, Flare,\nOn your Mark.";
            sleep 30;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage1RoundFlare_GUER;
        };
    };
    _actionVisualLocF_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementVisualLocF_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocF_1] call ace_interact_menu_fnc_addActionToObject;

    // Visual Location, 5 Rounds, Flare
    _statementVisualLocF_5 = {
        def_setFireMission(False);
        def_removeShellsFlare(5);
        [] spawn {
            def_TargetVisual;
            hint "Roger, Fire Mission,\n5 Rounds, Flare,\nOn your Mark.";
            sleep 32;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsFlare_GUER;
        };
    };
    _actionVisualLocF_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementVisualLocF_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Visual Location"], _actionVisualLocF_5] call ace_interact_menu_fnc_addActionToObject;

    // Add Target 01 interaction
    if (target01GUER != "") then {
        _actionTarget01 = [target01GUER_Name,target01GUER_Name,"",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 5 Rounds, HE
            _statementTarget01_5 = {
                def_setFireMission(False);
                def_removeShellsHE(5);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n5 Rounds, HE,\n%1.", target01GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget01_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementTarget01_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 10 Rounds, HE
            _statementTarget01_10 = {
                def_setFireMission(False);
                def_removeShellsHE(10);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n10 Rounds, HE,\n%1.", target01GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget01_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementTarget01_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 15 Rounds, HE
            _statementTarget01_15 = {
                def_setFireMission(False);
                def_removeShellsHE(15);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n15 Rounds, HE,\n%1.", target01GUER_Name];
                    sleep 14;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 26;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget01_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementTarget01_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 20 Rounds, HE
            _statementTarget01_20 = {
                def_setFireMission(False);
                def_removeShellsHE(20);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n20 Rounds, HE,\n%1.", target01GUER_Name];
                    sleep 16;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 24;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget01_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementTarget01_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 25 Rounds, HE
            _statementTarget01_25 = {
                def_setFireMission(False);
                def_removeShellsHE(25);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n25 Rounds, HE,\n%1.", target01GUER_Name];
                    sleep 18;
                    hint format ["Rounds complete.\n20 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 22;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget01_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementTarget01_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01_25] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 5 Rounds, Smoke
            _statementTarget01S_5 = {
                def_setFireMission(False);
                def_removeShellsSmoke(5);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Smoke,\n%1.", target01GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget01S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementTarget01S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 10 Rounds, Smoke
            _statementTarget01S_10 = {
                def_setFireMission(False);
                def_removeShellsSmoke(10);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n10 Rounds, Smoke,\n%1.", target01GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsSmoke_GUER;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget01S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementTarget01S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01S_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 1 Round, Flare
            _statementTarget01F_1 = {
                def_setFireMission(False);
                def_removeShellsFlare(1);
                [] spawn {
                    def_Target01;
                    // player setPosATL [_targetX,_targetY,600]; // For testing location
                    // player allowDamage false; // Cause you'll fall a long way when testing
                    hint format ["Roger, Fire Mission,\n1 Round, Flare,\n%1.", target01GUER_Name];
                    sleep 30;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage1RoundFlare_GUER;
                };
            };
            _actionTarget01F_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementTarget01F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 01, 5 Rounds, Flare
            _statementTarget01F_5 = {
                def_setFireMission(False);
                def_removeShellsFlare(5);
                [] spawn {
                    def_Target01;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Flare,\n%1.", target01GUER_Name];
                    sleep 32;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsFlare_GUER;
                };
            };
            _actionTarget01F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementTarget01F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target01GUER_Name], _actionTarget01F_5] call ace_interact_menu_fnc_addActionToObject;
        };

    // Add Target 02 interaction
    if (target02GUER != "") then {
        _actionTarget02 = [target02GUER_Name,target02GUER_Name,"",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget02] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 5 Rounds, HE
            _statementTarget02_5 = {
                def_setFireMission(False);
                def_removeShellsHE(5);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n5 Rounds, HE,\n%1.", target02GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget02_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementTarget02_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 10 Rounds, HE
            _statementTarget02_10 = {
                def_setFireMission(False);
                def_removeShellsHE(10);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n10 Rounds, HE,\n%1.", target02GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget02_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementTarget02_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 15 Rounds, HE
            _statementTarget02_15 = {
                def_setFireMission(False);
                def_removeShellsHE(15);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n15 Rounds, HE,\n%1.", target02GUER_Name];
                    sleep 14;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 26;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget02_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementTarget02_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 20 Rounds, HE
            _statementTarget02_20 = {
                def_setFireMission(False);
                def_removeShellsHE(20);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n20 Rounds, HE,\n%1.", target02GUER_Name];
                    sleep 16;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 24;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget02_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementTarget02_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 25 Rounds, HE
            _statementTarget02_25 = {
                def_setFireMission(False);
                def_removeShellsHE(25);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n25 Rounds, HE,\n%1.", target02GUER_Name];
                    sleep 18;
                    hint format ["Rounds complete.\n20 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 22;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget02_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementTarget02_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02_25] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 5 Rounds, Smoke
            _statementTarget02S_5 = {
                def_setFireMission(False);
                def_removeShellsSmoke(5);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Smoke,\n%1.", target02GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget02S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementTarget02S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 10 Rounds, Smoke
            _statementTarget02S_10 = {
                def_setFireMission(False);
                def_removeShellsSmoke(10);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n10 Rounds, Smoke,\n%1.", target02GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsSmoke_GUER;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget02S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementTarget02S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02S_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 1 Round, Flare
            _statementTarget02F_1 = {
                def_setFireMission(False);
                def_removeShellsFlare(1);
                [] spawn {
                    def_Target02;
                    // player setPosATL [_targetX,_targetY,600]; // For testing location
                    // player allowDamage false; // Cause you'll fall a long way when testing
                    hint format ["Roger, Fire Mission,\n1 Round, Flare,\n%1.", target02GUER_Name];
                    sleep 30;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage1RoundFlare_GUER;
                };
            };
            _actionTarget02F_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementTarget02F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 02, 5 Rounds, Flare
            _statementTarget02F_5 = {
                def_setFireMission(False);
                def_removeShellsFlare(5);
                [] spawn {
                    def_Target02;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Flare,\n%1.", target02GUER_Name];
                    sleep 32;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsFlare_GUER;
                };
            };
            _actionTarget02F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementTarget02F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target02GUER_Name], _actionTarget02F_5] call ace_interact_menu_fnc_addActionToObject;
        };

    // Add Target 03 interaction
    if (target03GUER != "") then {
        _actionTarget03 = [target03GUER_Name,target03GUER_Name,"",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget03] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 5 Rounds, HE
            _statementTarget03_5 = {
                def_setFireMission(False);
                def_removeShellsHE(5);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n5 Rounds, HE,\n%1.", target03GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget03_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementTarget03_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 10 Rounds, HE
            _statementTarget03_10 = {
                def_setFireMission(False);
                def_removeShellsHE(10);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n10 Rounds, HE,\n%1.", target03GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget03_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementTarget03_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 15 Rounds, HE
            _statementTarget03_15 = {
                def_setFireMission(False);
                def_removeShellsHE(15);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n15 Rounds, HE,\n%1.", target03GUER_Name];
                    sleep 14;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 26;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget03_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementTarget03_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 20 Rounds, HE
            _statementTarget03_20 = {
                def_setFireMission(False);
                def_removeShellsHE(20);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n20 Rounds, HE,\n%1.", target03GUER_Name];
                    sleep 16;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 24;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget03_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementTarget03_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 25 Rounds, HE
            _statementTarget03_25 = {
                def_setFireMission(False);
                def_removeShellsHE(25);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n25 Rounds, HE,\n%1.", target03GUER_Name];
                    sleep 18;
                    hint format ["Rounds complete.\n20 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 22;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget03_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementTarget03_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03_25] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 5 Rounds, Smoke
            _statementTarget03S_5 = {
                def_setFireMission(False);
                def_removeShellsSmoke(5);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Smoke,\n%1.", target03GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget03S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementTarget03S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 10 Rounds, Smoke
            _statementTarget03S_10 = {
                def_setFireMission(False);
                def_removeShellsSmoke(10);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n10 Rounds, Smoke,\n%1.", target03GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsSmoke_GUER;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget03S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementTarget03S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03S_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 1 Round, Flare
            _statementTarget03F_1 = {
                def_setFireMission(False);
                def_removeShellsFlare(1);
                [] spawn {
                    def_Target03;
                    // player setPosATL [_targetX,_targetY,600]; // For testing location
                    // player allowDamage false; // Cause you'll fall a long way when testing
                    hint format ["Roger, Fire Mission,\n1 Round, Flare,\n%1.", target03GUER_Name];
                    sleep 30;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage1RoundFlare_GUER;
                };
            };
            _actionTarget03F_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementTarget03F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 03, 5 Rounds, Flare
            _statementTarget03F_5 = {
                def_setFireMission(False);
                def_removeShellsFlare(5);
                [] spawn {
                    def_Target03;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Flare,\n%1.", target03GUER_Name];
                    sleep 32;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsFlare_GUER;
                };
            };
            _actionTarget03F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementTarget03F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target03GUER_Name], _actionTarget03F_5] call ace_interact_menu_fnc_addActionToObject;
        };

    // Add Target 04 interaction
    if (target04GUER != "") then {
        _actionTarget04 = [target04GUER_Name,target04GUER_Name,"",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget04] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 5 Rounds, HE
            _statementTarget04_5 = {
                def_setFireMission(False);
                def_removeShellsHE(5);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n5 Rounds, HE,\n%1.", target04GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget04_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementTarget04_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 10 Rounds, HE
            _statementTarget04_10 = {
                def_setFireMission(False);
                def_removeShellsHE(10);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n10 Rounds, HE,\n%1.", target04GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget04_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementTarget04_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 15 Rounds, HE
            _statementTarget04_15 = {
                def_setFireMission(False);
                def_removeShellsHE(15);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n15 Rounds, HE,\n%1.", target04GUER_Name];
                    sleep 14;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 26;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget04_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementTarget04_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 20 Rounds, HE
            _statementTarget04_20 = {
                def_setFireMission(False);
                def_removeShellsHE(20);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n20 Rounds, HE,\n%1.", target04GUER_Name];
                    sleep 16;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 24;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget04_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementTarget04_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 25 Rounds, HE
            _statementTarget04_25 = {
                def_setFireMission(False);
                def_removeShellsHE(25);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n25 Rounds, HE,\n%1.", target04GUER_Name];
                    sleep 18;
                    hint format ["Rounds complete.\n20 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 22;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget04_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementTarget04_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04_25] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 5 Rounds, Smoke
            _statementTarget04S_5 = {
                def_setFireMission(False);
                def_removeShellsSmoke(5);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Smoke,\n%1.", target04GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget04S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementTarget04S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 10 Rounds, Smoke
            _statementTarget04S_10 = {
                def_setFireMission(False);
                def_removeShellsSmoke(10);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n10 Rounds, Smoke,\n%1.", target04GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsSmoke_GUER;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget04S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementTarget04S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04S_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 1 Round, Flare
            _statementTarget04F_1 = {
                def_setFireMission(False);
                def_removeShellsFlare(1);
                [] spawn {
                    def_Target04;
                    // player setPosATL [_targetX,_targetY,600]; // For testing location
                    // player allowDamage false; // Cause you'll fall a long way when testing
                    hint format ["Roger, Fire Mission,\n1 Round, Flare,\n%1.", target04GUER_Name];
                    sleep 30;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage1RoundFlare_GUER;
                };
            };
            _actionTarget04F_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementTarget04F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 04, 5 Rounds, Flare
            _statementTarget04F_5 = {
                def_setFireMission(False);
                def_removeShellsFlare(5);
                [] spawn {
                    def_Target04;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Flare,\n%1.", target04GUER_Name];
                    sleep 32;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsFlare_GUER;
                };
            };
            _actionTarget04F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementTarget04F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target04GUER_Name], _actionTarget04F_5] call ace_interact_menu_fnc_addActionToObject;
        };

    // Add Target 05 interaction
    if (target05GUER != "") then {
        _actionTarget05 = [target05GUER_Name,target05GUER_Name,"",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget05] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 5 Rounds, HE
            _statementTarget05_5 = {
                def_setFireMission(False);
                def_removeShellsHE(5);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n5 Rounds, HE,\n%1.", target05GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget05_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementTarget05_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 10 Rounds, HE
            _statementTarget05_10 = {
                def_setFireMission(False);
                def_removeShellsHE(10);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n10 Rounds, HE,\n%1.", target05GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget05_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementTarget05_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 15 Rounds, HE
            _statementTarget05_15 = {
                def_setFireMission(False);
                def_removeShellsHE(15);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n15 Rounds, HE,\n%1.", target05GUER_Name];
                    sleep 14;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 26;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget05_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementTarget05_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 20 Rounds, HE
            _statementTarget05_20 = {
                def_setFireMission(False);
                def_removeShellsHE(20);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n20 Rounds, HE,\n%1.", target05GUER_Name];
                    sleep 16;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 24;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget05_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementTarget05_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 25 Rounds, HE
            _statementTarget05_25 = {
                def_setFireMission(False);
                def_removeShellsHE(25);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n25 Rounds, HE,\n%1.", target05GUER_Name];
                    sleep 18;
                    hint format ["Rounds complete.\n20 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 22;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget05_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementTarget05_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05_25] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 5 Rounds, Smoke
            _statementTarget05S_5 = {
                def_setFireMission(False);
                def_removeShellsSmoke(5);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Smoke,\n%1.", target05GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget05S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementTarget05S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 10 Rounds, Smoke
            _statementTarget05S_10 = {
                def_setFireMission(False);
                def_removeShellsSmoke(10);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n10 Rounds, Smoke,\n%1.", target05GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsSmoke_GUER;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget05S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementTarget05S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05S_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 1 Round, Flare
            _statementTarget05F_1 = {
                def_setFireMission(False);
                def_removeShellsFlare(1);
                [] spawn {
                    def_Target05;
                    // player setPosATL [_targetX,_targetY,600]; // For testing location
                    // player allowDamage false; // Cause you'll fall a long way when testing
                    hint format ["Roger, Fire Mission,\n1 Round, Flare,\n%1.", target05GUER_Name];
                    sleep 30;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage1RoundFlare_GUER;
                };
            };
            _actionTarget05F_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementTarget05F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 05, 5 Rounds, Flare
            _statementTarget05F_5 = {
                def_setFireMission(False);
                def_removeShellsFlare(5);
                [] spawn {
                    def_Target05;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Flare,\n%1.", target05GUER_Name];
                    sleep 32;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsFlare_GUER;
                };
            };
            _actionTarget05F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementTarget05F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target05GUER_Name], _actionTarget05F_5] call ace_interact_menu_fnc_addActionToObject;
        };

    // Add Target 06 interaction
    if (target06GUER != "") then {
        _actionTarget06 = [target06GUER_Name,target06GUER_Name,"",_statementTargets,_conditionTargets] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionTarget06] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 5 Rounds, HE
            _statementTarget06_5 = {
                def_setFireMission(False);
                def_removeShellsHE(5);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n5 Rounds, HE,\n%1.", target06GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget06_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementTarget06_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 10 Rounds, HE
            _statementTarget06_10 = {
                def_setFireMission(False);
                def_removeShellsHE(10);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n10 Rounds, HE,\n%1.", target06GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget06_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementTarget06_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 15 Rounds, HE
            _statementTarget06_15 = {
                def_setFireMission(False);
                def_removeShellsHE(15);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n15 Rounds, HE,\n%1.", target06GUER_Name];
                    sleep 14;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 26;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget06_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementTarget06_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06_15] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 20 Rounds, HE
            _statementTarget06_20 = {
                def_setFireMission(False);
                def_removeShellsHE(20);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n20 Rounds, HE,\n%1.", target06GUER_Name];
                    sleep 16;
                    hint format ["Rounds complete.\n25 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 24;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget06_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementTarget06_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06_20] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 25 Rounds, HE
            _statementTarget06_25 = {
                def_setFireMission(False);
                def_removeShellsHE(25);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n25 Rounds, HE,\n%1.", target06GUER_Name];
                    sleep 18;
                    hint format ["Rounds complete.\n20 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 22;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                    def_barrage5RoundsHE_GUER;
                };
            };
            _actionTarget06_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementTarget06_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06_25] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 5 Rounds, Smoke
            _statementTarget06S_5 = {
                def_setFireMission(False);
                def_removeShellsSmoke(5);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Smoke,\n%1.", target06GUER_Name];
                    sleep 10;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget06S_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementTarget06S_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06S_5] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 10 Rounds, Smoke
            _statementTarget06S_10 = {
                def_setFireMission(False);
                def_removeShellsSmoke(10);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n10 Rounds, Smoke,\n%1.", target06GUER_Name];
                    sleep 12;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 28;
                    def_barrage5RoundsSmoke_GUER;
                    def_barrage5RoundsSmoke_GUER;
                };
            };
            _actionTarget06S_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementTarget06S_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06S_10] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 1 Round, Flare
            _statementTarget06F_1 = {
                def_setFireMission(False);
                def_removeShellsFlare(1);
                [] spawn {
                    def_Target06;
                    // player setPosATL [_targetX,_targetY,600]; // For testing location
                    // player allowDamage false; // Cause you'll fall a long way when testing
                    hint format ["Roger, Fire Mission,\n1 Round, Flare,\n%1.", target06GUER_Name];
                    sleep 30;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage1RoundFlare_GUER;
                };
            };
            _actionTarget06F_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementTarget06F_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06F_1] call ace_interact_menu_fnc_addActionToObject;

            // Target 06, 5 Rounds, Flare
            _statementTarget06F_5 = {
                def_setFireMission(False);
                def_removeShellsFlare(5);
                [] spawn {
                    def_Target06;
                    hint format ["Roger, Fire Mission,\n5 Rounds, Flare,\n%1.", target06GUER_Name];
                    sleep 32;
                    hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
                    def_setFireMission(True);
                    sleep 30;
                    def_barrage5RoundsFlare_GUER;
                };
            };
            _actionTarget06F_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementTarget06F_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions","Supporting Fires",target06GUER_Name], _actionTarget06F_5] call ace_interact_menu_fnc_addActionToObject;
        };

    // Add Repeat Fire Mission
    _actionRepeat = ["Repeat Fire Mission","Repeat Fire Mission","",_statementTargets,_conditionRepeat] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires"], _actionRepeat] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 5 Rounds, HE
    _statementRepeat_5 = {
        def_setFireMission(False);
        def_removeShellsHE(5);
        publicVariable "shellsHE_AmmoCountGUER";
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n5 Rounds, HE,\nOn your previous target.";
            sleep 10;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeat_5 = ["HE - 5 Rounds","HE - 5 Rounds","",_statementRepeat_5,_conditionFiresHE5] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeat_5] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 10 Rounds, HE
    _statementRepeat_10 = {
        def_setFireMission(False);
        def_removeShellsHE(10);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n10 Rounds, HE,\nOn your previous target.";
            sleep 12;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeat_10 = ["HE - 10 Rounds","HE - 10 Rounds","",_statementRepeat_10,_conditionFiresHE10] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeat_10] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 15 Rounds, HE
    _statementRepeat_15 = {
        def_setFireMission(False);
        def_removeShellsHE(15);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n15 Rounds, HE,\nOn your previous target.";
            sleep 14;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeat_15 = ["HE - 15 Rounds","HE - 15 Rounds","",_statementRepeat_15,_conditionFiresHE15] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeat_15] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 20 Rounds, HE
    _statementRepeat_20 = {
        def_setFireMission(False);
        def_removeShellsHE(20);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n20 Rounds, HE,\nOn your previous target.";
            sleep 16;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeat_20 = ["HE - 20 Rounds","HE - 20 Rounds","",_statementRepeat_20,_conditionFiresHE20] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeat_20] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 25 Rounds, HE
    _statementRepeat_25 = {
        def_setFireMission(False);
        def_removeShellsHE(25);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n25 Rounds, HE,\nOn your previous target.";
            sleep 18;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsHE_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            def_barrage5RoundsHE_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeat_25 = ["HE - 25 Rounds","HE - 25 Rounds","",_statementRepeat_25,_conditionFiresHE25] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeat_25] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 5 Rounds, Smoke
    _statementRepeatS_5 = {
        def_setFireMission(False);
        def_removeShellsSmoke(5);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n5 Rounds, Smoke,\nOn your previous target.";
            sleep 10;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsSmoke_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeatS_5 = ["Smoke - 5 Rounds","Smoke - 5 Rounds","",_statementRepeatS_5,_conditionFiresSmoke5] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeatS_5] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 10 Rounds, Smoke
    _statementRepeatS_10 = {
        def_setFireMission(False);
        def_removeShellsSmoke(10);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n10 Rounds, Smoke,\nOn your previous target.";
            sleep 12;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsSmoke_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsSmoke_GUER;
            def_barrage5RoundsSmoke_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeatS_10 = ["Smoke - 10 Rounds","Smoke - 10 Rounds","",_statementRepeatS_10,_conditionFiresSmoke10] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeatS_10] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 1 Round, Flare
    _statementRepeatF_1 = {
        def_setFireMission(False);
        def_removeShellsFlare(1);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n1 Round, Flare,\nOn your previous target.";
            sleep 10;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage1RoundFlare_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeatF_1 = ["Flare - 1 Round","Flare - 1 Round","",_statementRepeatF_1,_conditionFiresFlare1] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeatF_1] call ace_interact_menu_fnc_addActionToObject;

    // Repeat Fire Mission, 5 Rounds, Flare
    _statementRepeatF_5 = {
        def_setFireMission(False);
        def_removeShellsFlare(5);
        [] spawn {
            def_TargetRepeat;
            hint "Repeat Fire Mission,\n5 Rounds, Flare,\nOn your previous target.";
            sleep 10;
            hint format ["Rounds complete.\n30 seconds to impact.\n%1 rounds remaining.", shellsFlare_AmmoCountGUER];
            def_setFireMission(True);
            sleep 30;
            def_barrage5RoundsFlare_GUER;
            shellAccuracyGUER = repeatShellAccuracyGUER;
        };
    };
    _actionRepeatF_5 = ["Flare - 5 Rounds","Flare - 5 Rounds","",_statementRepeatF_5,_conditionFiresFlare5] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions","Supporting Fires","Repeat Fire Mission"], _actionRepeatF_5] call ace_interact_menu_fnc_addActionToObject;
};
// End Actions
