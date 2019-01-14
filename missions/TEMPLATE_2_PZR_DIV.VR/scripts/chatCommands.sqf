
["endMission", {
    private _msg = "Mission ended by admin";
    if (count (_this select 0) > 0) then {
        _msg = _msg + ": " + _this select 0;
    };
    _msg call FNC_EndMission;
}, "admin"] call CBA_fnc_registerChatCommand;

["respawnWave", {
    FW_RespawnTickets = 1;
    publicVariable "FW_RespawnTickets";
    {
        setPlayerRespawnTime random 10;
    } remoteExec ["call"];
    [
        {
            FW_RespawnTickets = 0;
            publicVariable "FW_RespawnTickets";
            10e10 remoteExec ["setPlayerRespawnTime"];
        },
        [],
        30
    ] call CBA_fnc_waitAndExecute;
}, "admin"] call CBA_fnc_registerChatCommand;
