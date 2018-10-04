
#define framework

if (isDedicated) then {
    ['Mission Started', 'info'] call MAR_fnc_log;
};

loggingEnabled = 0; // Set this to 1 to enable inventory logging for players and named vehicles. See scripts\gearLog.sqf for more requirements.
loggingTime = 60; // How often (in seconds) an inventory log will be created during play. I do not recommend changing this except when doing testing and diagnostics.

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

    "" call FNC_StartingCount; //DO NOT REMOVE

    [] spawn { //Spawns code running in parallel

        while {!FW_MissionEnded} do { //Loops while the mission is not ended

            persistantJipTime = time;
            publicVariable "persistantJipTime";

            #include "customization\endConditions.sqf" //DO NOT REMOVE

            //The time limit in minutes variable called FW_TimeLimit is set in customization/endConditions.sqf, to disable the time limit set it to 0
            if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition

                FW_TimeLimitMessage call FNC_EndMission;

            };
        };
    };

    [] spawn {
        sleep 1;
        {
            _callsignPrep01 = roleDescription (leader _x);
            //systemChat str _callsignPrep01;
            if (["@",_callsignPrep01] call BIS_fnc_inString) then {
                _callsignPrep02 = _callsignPrep01 splitString "@";
                //systemChat str _callsignPrep02;
                _callsignValue = _callsignPrep02 select 1;
                //systemChat str _callsignValue;
                [_x, _callsignValue] call CBA_fnc_setCallsign;
                //systemChat ((str _callsignValue) + "done.");
            };
        } forEach allGroups;
    };
};

["respawnWave", {
    FW_RespawnTickets = 1;
    publicVariable "FW_RespawnTickets";
    10 remoteExec ["setPlayerRespawnTime"];
    [] spawn {
        sleep 30;
        FW_RespawnTickets = 0;
        publicVariable "FW_RespawnTickets";
        10e10 remoteExec ["setPlayerRespawnTime"];
    };
}, "admin"] call CBA_fnc_registerChatCommand;

/*
if (!isDedicated) then { //This scope is for the player & the Headless Clients
    if (FW_RespawnTickets > 0) then {
        [player, FW_RespawnTickets] call BIS_fnc_respawnTickets;
    };
};
*/
#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

LIB_GLOBAL_ENABLE_RADIO_IN_VEHICLE = false;

//#include "scripts\gearLog.sqf"
