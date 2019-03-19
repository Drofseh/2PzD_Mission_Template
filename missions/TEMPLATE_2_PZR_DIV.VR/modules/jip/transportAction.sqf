_conditionJIP_Teleport = {
    player distance _spawnPos < FW_SPAWNDISTANCE;
};
_statementJIP_Teleport = {
    private _targets = [];

    {
        if ((side player) == (side _x) && (leader _x == _x)) then {
            _targets set [count _targets, _x];
        };
    } forEach playableUnits;

    {(format ["%1 joined the mission and is requesting transport.", name player]) call CBA_fnc_notify;} remoteExec ["call", _targets];
    [player, 1, ["ACE_SelfActions","JIP_Transport"]] call ace_interact_menu_fnc_removeActionFromObject;
};
_actionJIP_Teleport = ["JIP_Transport","Request Transportation","",_statementJIP_Teleport,_conditionJIP_Teleport] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _actionJIP_Teleport] call ace_interact_menu_fnc_addActionToObject;