
#define framework

if (isDedicated) then {
    ['Mission Started', 'info'] call MAR_fnc_log;
};

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

    "" call FNC_StartingCount; //DO NOT REMOVE

    FNC_EndConditions = { //create an end condition fuction that loops by calling itself using CBA_fnc_waitAndExecute.

        #include "customization\endConditions.sqf" //DO NOT REMOVE

        //The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
        //Do not remove this time limit end condition
        if ((CBA_missionTime / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith {
            FW_TimeLimitMessage call FNC_EndMission;
        };

        if (FW_MissionEnded) exitWith {}; //stop the end condition loop once the mission is ended.

        //call the end condition function again to restart the loop, it's called every 10 seconds by default.
        [{
            call FNC_EndConditions;
        }, [], 10] call CBA_fnc_waitAndExecute;
    };

    call FNC_EndConditions; //start the end condition function loop by calling it for the first time.

    [{
        {
            _callsignPrep01 = roleDescription (leader _x);
            if (["@",_callsignPrep01] call BIS_fnc_inString) then {
                _callsignPrep02 = _callsignPrep01 splitString "@";
                _callsignValue = _callsignPrep02 select 1;
                [_x, _callsignValue] call CBA_fnc_setCallsign;
            };
        } forEach allGroups;
    }, [], 1] call CBA_fnc_waitAndExecute;
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

#include "scripts\Scripts.sqf"
