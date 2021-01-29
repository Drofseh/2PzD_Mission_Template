
["GRAD Persistence", "A server based persistence system.", "McDiod"] call FNC_RegisterModule;

if (getText (missionConfigFile >> "CfgGradPersistence" >> "testing")) then {
    if (isServer) then {
        if (getText (missionConfigFile >> "CfgGradPersistence" >> "warningMessage")) then {
            [{
                "Grad Persistence" hintC [
                    "The Grad Persistence Module is running.",
                    "If you're using this module then you better fucking know what you're doing.",
                    "It saves data to the profileNamespace of either your profile or the server's profile.",
                    "This CAN BREAK THINGS, so don't fuck around with this unless you're a very experienced mission maker.",
                    "Read all the linked documentation so you don't fuck things up.",
                    "To disable this message change the the warningMessage setting to 0."
                ];
            }, [], 5] call CBA_fnc_waitAndExecute;
        };

        [{
            call grad_persistence_fnc_loadMission;
        }, [], 30] call CBA_fnc_waitAndExecute;

        Olsen_FW_FNC_GradPersistence_Save_Loop = {
            [false, 0] call grad_persistence_fnc_saveMission;

            [{
                call Olsen_FW_FNC_GradPersistence_Save_Loop;
            }, [], 60] call CBA_fnc_waitAndExecute;
        };

        if (getText (missionConfigFile >> "CfgGradPersistence" >> "saveLocal")) then {
            [{
                call Olsen_FW_FNC_GradPersistence_Save_Loop;
            }, [], 60*5] call CBA_fnc_waitAndExecute;
        };

        if (getText (missionConfigFile >> "CfgGradPersistence" >> "clearLocal")) then {
            "callMissionRemote" addPublicVariableEventHandler {
                [getText (missionConfigFile >> "CfgGradPersistence" >> "missionTag")] call grad_persistence_fnc_clearMissionData;
            };
        };
    };
} else {
    if (isDedicated) then {
        [{
            call grad_persistence_fnc_loadMission;
        }, [], 30] call CBA_fnc_waitAndExecute;

        Olsen_FW_FNC_GradPersistence_Save_Loop = {
            [false, 0] call grad_persistence_fnc_saveMission;

            [{
                call Olsen_FW_FNC_GradPersistence_Save_Loop;
            }, [], 60] call CBA_fnc_waitAndExecute;
        };

        [{
            call Olsen_FW_FNC_GradPersistence_Save_Loop;
        }, [], 60*5] call CBA_fnc_waitAndExecute;

        if (getText (missionConfigFile >> "CfgGradPersistence" >> "finalMission")) then {
            "callMissionRemote" addPublicVariableEventHandler {
                [getText (missionConfigFile >> "CfgGradPersistence" >> "missionTag")] call grad_persistence_fnc_clearMissionData;
            };
        };
    };
};
