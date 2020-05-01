_conditionJIP_Transport = {
    (player distance FW_JIP_spawnPos) < FW_SPAWNDISTANCE;
};

_statementJIP_Transport = {
    private _targets = [];

    {
        if ((leader _x) call Olsen_FW_FNC_getOriginalSide == playerSide) then {
            _targets pushBack _x;
        };
    } forEach allGroups;

    {(format ["%1 joined the mission and is requesting transport.", name player]) call CBA_fnc_notify;} remoteExec ["call", _targets];
    [player, 1, ["ACE_SelfActions","JIP_Transport"]] call ace_interact_menu_fnc_removeActionFromObject;
};

_actionJIP_Transport = [
    "JIP_Transport",
    "Request Transportation",
    "",
    _statementJIP_Transport,
    _conditionJIP_Transport
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _actionJIP_Transport] call ace_interact_menu_fnc_addActionToObject;
