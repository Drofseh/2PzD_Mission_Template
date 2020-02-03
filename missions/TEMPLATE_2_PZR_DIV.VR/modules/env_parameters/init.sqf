["Environment / Mission Parameters", "Allows the admin to choose between different weather parameters.", "Starfox64, Olsen"] call Olsen_FW_FNC_RegisterModule;

if ((isServer) and (isMultiplayer)) then {

    private ["_TimeLimitParam"];

    _TimeLimitParam = "TimeLimit" call BIS_fnc_getParamValue;

    if (_TimeLimitParam == -1) then {

        FW_TimeLimit = 0;

    } else {

        if ((FW_TimeLimit + _TimeLimitParam) > 0) then {

            FW_TimeLimit = FW_TimeLimit + _TimeLimitParam;

        } else {

            "Time limit was negative and therefore not changed." call Olsen_FW_FNC_DebugMessage;

        }
    };
};
