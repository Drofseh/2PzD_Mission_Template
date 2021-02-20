["Anti ND", "Prevents negligent discharges at spawn.", "Starfox64"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

if (isServer) then {
    missionNamespace setVariable ["FW_ND_Active", true, true];

    [{CBA_missionTime > ANTI_ND_TIME}, {
        missionNamespace setVariable ["FW_ND_Active", false, true];
    }, []] call CBA_fnc_waitUntilAndExecute;
};

if (hasInterface) then {
    [{!isNull player}, {
        FW_SpawnPos = getPos player;

        FW_FiredEh = player addEventHandler ["Fired", {
            params ["_unit", "_weapon", "_muzle", "_mode", "_ammo", "_magazine", "_projectile","_distance","_msg1","_msg2"];
            _distance = FW_SpawnPos distance2D player;

            if (_distance < ANTI_ND_DIST || {missionNamespace getVariable ["FW_ND_Active", false]}) then {
                deleteVehicle _projectile;

                _msg1 = "";
                _msg2 = "";

                if (missionNamespace getVariable ["FW_ND_Active", false]) then {
                    _msg1 = format ["\nFiring will be allowed after the timer expires.\nTime remaining: %1 seconds.\n", str round (ANTI_ND_TIME - CBA_missionTime)];
                };

                if (_distance <= ANTI_ND_DIST) then {
                    _msg2 = format ["\nFiring is not allowed at the start location, you must move away from the spawn.\nDistance from spawn: %1  out of %2 meters.\n", str (round _distance), str (round ANTI_ND_DIST)];
                };

                hintC format ["You are firing without approval. Cease your actions immediately!%1%2", _msg1, _msg2];

                if (_ammo call BIS_fnc_isThrowable) then {
                    player addMagazine _magazine;
                } else {
                    player setAmmo [currentWeapon player, (player ammo currentWeapon player) + 1];
                };
            };
        }];

        ["ace_throwableThrown", {
            params ["_unit", "_activeThrowable","_distance","_distance","_msg1","_msg2"];
            if !(_unit == player) exitWith {};

            _distance = FW_SpawnPos distance2D player;

            if (_distance < ANTI_ND_DIST || {missionNamespace getVariable ["FW_ND_Active", false]}) then {
                deleteVehicle _activeThrowable;

                _msg1 = "";
                _msg2 = "";

                if (missionNamespace getVariable ["FW_ND_Active", false]) then {
                    _msg1 = format ["\n\nFiring will be allowed after the timer expires.\nTime remaining: %1 seconds.\n\n", str round (ANTI_ND_TIME - CBA_missionTime)];
                };

                if (_distance <= ANTI_ND_DIST) then {
                    _msg2 = format ["\n\nFiring is not allowed at the start location, you must move away from the spawn.\nDistance from spawn: %1  out of %2 meters.\n\n", str (round _distance), str (round ANTI_ND_DIST)];
                };

                hintC format ["You are firing without approval. Cease your actions immediately!%1%2\n\nYour grenade has not been replaced.", _msg1, _msg2];
            };
        }] call CBA_fnc_addEventHandler;
    }, []] call CBA_fnc_waitUntilAndExecute;
};
