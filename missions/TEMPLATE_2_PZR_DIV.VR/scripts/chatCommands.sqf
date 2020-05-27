//Chat commands to allow the admin to manipulate the mission even when dead/spectating.

["endMission", {
    params [["_message", "Mission ended by admin."]];
    _message call Olsen_FW_FNC_EndMission;
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
