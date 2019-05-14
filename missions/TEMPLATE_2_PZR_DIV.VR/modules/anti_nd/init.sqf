["Anti ND", "Prevents negligent discharges at spawn.", "Starfox64"] call FNC_RegisterModule;

#include "settings.sqf"

if (isServer) then {

    missionNamespace setVariable ["FW_ND_Active", true];
    publicVariable "FW_ND_Active";

    [{CBA_missionTime > ANTI_ND_TIME}, {
        missionNamespace setVariable ["FW_ND_Active", false];
        publicVariable "FW_ND_Active";
    }, []] call CBA_fnc_waitUntilAndExecute;
};

if (hasInterface) then {

    [{!isNull player}, {
        FW_SpawnPos = getPos player;

        FW_FiredEh = player addEventHandler ["Fired", {
            params ["_unit", "_weapon", "_muzle", "_mode", "_ammo", "_magazine", "_projectile"];
            private _distance = FW_SpawnPos distance2D player;

            if (_distance <= ANTI_ND_DIST || missionNamespace getVariable ["FW_ND_Active", false]) then {
                deleteVehicle _projectile;
                _msg1 = "";
                _msg2 = "";
                if (missionNamespace getVariable ["FW_ND_Active", false]) then {
                    _msg1 = "\nFiring will be allowed after the timer expires.\nTime remaining: " + str round (ANTI_ND_TIME - CBA_missionTime) + " seconds.\n";
                };
                if (_distance <= ANTI_ND_DIST) then {
                    _msg2 = "\nFiring is not allowed at the start location, you must move away from the spawn.\nDistance from spawn: " + str (round _distance) + " out of " + str (round ANTI_ND_DIST) + " meters.\n";
                };
                hintC format ["You are firing without approval. Cease your actions immediately!%1%2", _msg1, _msg2];
                if ((_this select 5) call BIS_fnc_isThrowable) then {
                    player addMagazine _magazine;
                }
                else {
                    player setAmmo [currentWeapon player, (player ammo currentWeapon player) + 1];
                };
            };
        }];
    }, []] call CBA_fnc_waitUntilAndExecute;
};
