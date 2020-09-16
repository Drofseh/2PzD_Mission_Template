["JIP Manager", "Handles JIPs in different ways depending on the module's settings.", "Olsen, Starfox64, and Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

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

if (hasInterface && {str playerSide != "LOGIC"}) then {

    if (FW_JIPTYPE == "DENY" && {missionNamespace getVariable ["FW_JIPDenied", false]}) exitWith {
        [{
            player call Olsen_FW_FNC_UntrackUnit;
            setPlayerRespawnTime 10e10;
            FW_RespawnTickets = 0;
            player setDamage 1;

            [{
                cutText ["This mission does not support JIP.", "PLAIN DOWN"];
            }, [], 8] call CBA_fnc_waitAndExecute;
        }, [], 5] call CBA_fnc_waitAndExecute;
    };

    private _target = leader player;

    if (player == _target || {objNull == _target} || {!(_target call Olsen_FW_FNC_Alive)}) then {

        {
            if (_target call Olsen_FW_FNC_Alive && {(_target distance2D player) > FW_JIPDISTANCE}) exitWith {
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
                    "JIP Teleport" hintC [
                        (format ["Hello %1", name player]),
                        "You've joined a mission that is already in progress.",
                        (parseText "Use <t color='#dd0000'>ACE Self Interation -> Teleport to Squad</t> to teleport to your squad.")
                    ];
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
                    "JIP Transportation" hintC [
                        (format ["Hello %1", name player]),
                        "You've joined a mission that is already in progress.",
                        (parseText "Use <t color='#dd0000'>ACE Self Interation -> Request Transportation</t> to request transportation.")
                    ];
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
