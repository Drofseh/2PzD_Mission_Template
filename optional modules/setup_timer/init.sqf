["Setup Timer", "Allows the mission maker to restrict the AO of a side for a set amount of time.", "Olsen"] call Olsen_FW_FNC_RegisterModule;

#define ADDSETUPMARKER(SIDE, TIME, NAME) \
if !(markerType NAME isEqualTo "") then { \
    _markers set [count _markers, [SIDE, TIME, NAME]]; \
} else { \
    _temp = format ["Setup timer module:<br></br>Warning marker ""%1"", in file ""modules\setup timer\settings.sqf"" does not exist.", NAME]; \
    _temp call Olsen_FW_FNC_DebugMessage; \
};

private _aborted = false;
if (!isMultiplayer) then {
    _aborted = true;
    "Setup Timer: Singleplayer session detected, this module will function only in multiplayer." call Olsen_FW_FNC_DebugMessage;
};

if (hasInterface && !_aborted) then {

    private ["_markers", "_pos", "_timeLeft", "_string", "_displayed"];

    _markers = [];

    #include "settings.sqf"

    if ((count _markers) > 0) then {

        [_markers] spawn {

            _marker = [];
            _displayed = false;

            waitUntil {!isNil "CBA_missionTime"};
            _startTime = CBA_missionTime;

            {
                if (((_x select 0) == (playerSide)) && {(vehicle player) inArea (_x select 2)}) then {
                    _marker = [(_x select 1), (_x select 2)];
                } else {
                    (_x select 2) setMarkerAlphaLocal 0;
                };
            } forEach (_this select 0);

            _pos = getPosATL (vehicle player);

            while {(count _marker) > 0} do {

                _vehicle = (vehicle player);

                if (_vehicle inArea (_marker select 1)) then {
                    _pos = getPosATL _vehicle;
                } else {
                    _vehicle setPos _pos;
                };

                _timeLeft = round(_startTime + (_marker select 0) - CBA_missionTime);

                if (_timeLeft < 0) then {
                    _timeLeft = 0;
                };

                if (_timeLeft > 0 && !_displayed) then {
                    _displayed = true;
                    missionNamespace setVariable ["FW_ST_TimeLeft", _timeLeft];
                    cutRsc ["RscSetupTimer", "PLAIN", 0.5, false];
                };

                if (_timeLeft == 0) then {
                    (_marker select 1) setMarkerAlphaLocal 0;
                    _marker = [];
                };

                sleep(0.1);
            };
        };
    };
};