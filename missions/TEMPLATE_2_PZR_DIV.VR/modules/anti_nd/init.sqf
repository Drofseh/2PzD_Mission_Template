["Anti ND", "Prevents negligent discharges at spawn.", "Starfox64"] call FNC_RegisterModule;

#include "settings.sqf"

if (isServer) then {

    missionNamespace setVariable ["FW_ND_Active", true];
    publicVariable "FW_ND_Active";

    [] spawn {

        waitUntil {time > ANTI_ND_TIME};

        missionNamespace setVariable ["FW_ND_Active", false];
        publicVariable "FW_ND_Active";

    };

};

if (!isDedicated) then {

    [] spawn {

        waitUntil {!isNull player};

        FW_SpawnPos = getPos player;

        FW_FiredEh = player addEventHandler ["Fired", {
            private ["_p"];

            _p = _this select 6;

            if ((FW_SpawnPos distance player) <= ANTI_ND_DIST || missionNamespace getVariable ["FW_ND_Active", false]) then {
                deleteVehicle _p;
                _msg1 = "";
                _msg2 = "";
                if (missionNamespace getVariable ["FW_ND_Active", false]) then {
                    _msg1 = "\nFiring will be allowed after the timer expires.\nTime remaining: " + str round (ANTI_ND_TIME - time) + " seconds.\n";
                };
                if ((FW_SpawnPos distance player) <= ANTI_ND_DIST) then {
                    _msg2 = "\nFiring is not allowed at the start location, you must move away from the spawn.\nDistance from spawn: " + str round (FW_SpawnPos distance player) + " out of " + str (round ANTI_ND_DIST) + " meters.\n";
                };
                hintC format ["You are firing without approval. Cease your actions Immediately!%1%2", _msg1, _msg2];
                if ((_this select 5) call BIS_fnc_isThrowable) then {
                    player addMagazine (_this select 5);
                }
                else {
                    player setAmmo [currentWeapon player, (player ammo currentWeapon player) + 1];
                };
            };
        }];

    };

};