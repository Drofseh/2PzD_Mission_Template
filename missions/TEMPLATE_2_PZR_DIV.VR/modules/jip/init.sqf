["JIP Manager", "Handles JIPs in different ways depending on the module's settings.", "Olsen, Starfox64, and Wilhelm Haas (Drofseh)"] call FNC_RegisterModule;

#include "settings.sqf"

if (isServer) then {
    [] spawn {

        waitUntil {time > FW_JIPDENYTIME};

        missionNamespace setVariable ["FW_JIPDenied", true];
        publicVariable "FW_JIPDenied";

    };
};

if (hasInterface && str side player != "LOGIC") then {

    if (FW_JIPTYPE == "DENY" && missionNamespace getVariable ["FW_JIPDenied", false]) exitWith {

        [{
            player call FNC_UntrackUnit;
            player setPlayerRespawnTime 10e10;
            player setDamage 1;

            [{
                cutText ["This mission does not support JIP.", "PLAIN DOWN"];
            }, [], 8] call CBA_fnc_waitAndExecute;

        }, [], 5] call CBA_fnc_waitAndExecute;

    };

    private _target = leader player;

    if (player == _target || !(_target call FNC_Alive)) then {

        private _rank = -1;

        {

            if (rankId _x > _rank && (_target call FNC_Alive)) then {
                _rank = rankId _x;
                _target = _x;
            };

        } forEach ((units group player) - [player]);
    };

    if ((_target distance player) >  FW_JIPDISTANCE) then {

        private _spawnPos = getPosATL player;

        switch (FW_JIPTYPE) do {

            case "TELEPORT": {

                #include "teleportAction.sqf"

                [{
                    player distance _this > FW_SPAWNDISTANCE;
                },{
                    [player, 1, ["ACE_SelfActions","JIP_Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
                    (format ["JIP teleport option lost, you went beyond %1 meters from your spawn location", FW_SPAWNDISTANCE]) call CBA_fnc_notify;
                }, _spawnPos] call CBA_fnc_waitUntilAndExecute;
            };

            case "TRANSPORT": {

                #include "transportAction.sqf"

                [{
                    player distance _this > FW_SPAWNDISTANCE;
                },{
                    [player, 1, ["ACE_SelfActions","JIP_Transport"]] call ace_interact_menu_fnc_removeActionFromObject;
                    (format ["JIP teleport option lost, you went beyond %1 meters from your spawn location", FW_SPAWNDISTANCE]) call CBA_fnc_notify;
                }, _spawnPos] call CBA_fnc_waitUntilAndExecute;
            };
        };
    };
};
