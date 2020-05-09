// This automatically switches the map from the ground texture layer to the map texture layer for the briefing phase of a mission.

{
    [_x] spawn {
        params ["_display"];

        waitUntil {!isNull (findDisplay _display)};

        ctrlActivate ((findDisplay _display) displayCtrl 1201);
        ctrlActivate ((findDisplay _display) displayCtrl 107);
    };
} forEach [12,37,52,53,129];
