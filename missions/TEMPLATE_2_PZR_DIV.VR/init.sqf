
#define framework

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

            //The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
            if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition

                FW_TimeLimitMessage call FNC_EndMission;

            };
        };
    };
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE

LIB_GLOBAL_ENABLE_RADIO_IN_VEHICLE = false;

#include "scripts\gearLog.sqf"

//restrict camera to 1PP
thirdperson_allowed = false;
waituntil {
    if(cameraView == "EXTERNAL" || cameraView == "GROUP") then {
        vehicle player switchCamera "INTERNAL";
    };
    thirdperson_allowed
};
