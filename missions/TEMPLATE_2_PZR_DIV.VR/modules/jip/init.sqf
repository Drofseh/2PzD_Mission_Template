["JIP Manager", "Handles JIPs in different ways depending on the module's settings.", "Olsen, Starfox64, and Wilhelm Haas (Drofseh)"] call FNC_RegisterModule;

#include "settings.sqf"

if (isServer && {FW_JIPDENYTIME > -1}) then {
    [
        {CBA_missionTime > FW_JIPDENYTIME},
        {
            missionNamespace setVariable ["FW_JIPDenied", true];
            publicVariable "FW_JIPDenied";
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
};

if (hasInterface && {str side player != "LOGIC"}) then {

    if (FW_JIPTYPE == "DENY" && {missionNamespace getVariable ["FW_JIPDenied", false]}) exitWith {
        [{
            player call FNC_UntrackUnit;
            setPlayerRespawnTime 10e10;
            FW_RespawnTickets = 0;
            player setDamage 1;

            [{
                cutText ["This mission does not support JIP.", "PLAIN DOWN"];
            }, [], 8] call CBA_fnc_waitAndExecute;
        }, [], 5] call CBA_fnc_waitAndExecute;
    };

    private _target = leader player;

    if (player == _target || {!(_target call FNC_Alive)}) then {

        {
            if (_target call FNC_Alive) then {
                if ((_target distance2D player) > FW_JIPDISTANCE);
                _target = _x;
            };
        } forEach ((units group player) - [player]);
    };

    if ((_target distance2D player) > FW_JIPDISTANCE) then {

        FW_JIP_spawnPos = getPosATL player;

        switch (FW_JIPTYPE) do {

            case "TELEPORT": {

                #include "teleportAction.sqf"

                [{
                    [
                        ["You've joined a mission that is already in progress."],
                        ["Use Ace Self Interation to teleport to your squad."]
                    ] call CBA_fnc_notify;
                }, [], 1] call CBA_fnc_waitAndExecute;

                [{
                    player distance2D FW_JIP_spawnPos > FW_SPAWNDISTANCE;
                },{
                    (format ["JIP teleport option lost, you went beyond %1 meters from your spawn location", FW_SPAWNDISTANCE]) call CBA_fnc_notify;
                }, FW_JIP_spawnPos] call CBA_fnc_waitUntilAndExecute;
            };

            case "TRANSPORT": {

                #include "transportAction.sqf"

                [{
                    [
                        ["You've joined a mission that is already in progress."],
                        ["Use Ace Self Interation to request transportation."]
                    ] call CBA_fnc_notify;
                }, [], 1] call CBA_fnc_waitAndExecute;

                [{
                    player distance FW_JIP_spawnPos > FW_SPAWNDISTANCE;
                },{
                    (format ["JIP teleport option lost, you went beyond %1 meters from your spawn location", FW_SPAWNDISTANCE]) call CBA_fnc_notify;
                }, FW_JIP_spawnPos] call CBA_fnc_waitUntilAndExecute;
            };
        };
    };
};
