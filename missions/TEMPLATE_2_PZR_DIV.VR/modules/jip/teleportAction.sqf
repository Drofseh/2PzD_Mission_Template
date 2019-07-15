_conditionJIP_Teleport = {
    (player distance FW_JIP_spawnPos) < FW_SPAWNDISTANCE
};

_statementJIP_Teleport = {
    private _target = leader player;
    private _alive = _target call FNC_Alive;
    private _inVehicle = _target call FNC_InVehicle;
    private _freeSpace = (vehicle _target) call FNC_HasEmptyPositions;

    if (!(_alive) || {_inVehicle && {!(_freeSpace)}}) then {
        private _rank = -1;
        private _newRank = -1;
        private _count = 0;

        {
            if (_x call FNC_Alive) then {
                private _inVehicle = _x call FNC_InVehicle;
                private _freeSpace = (vehicle _x) call FNC_HasEmptyPositions;
                _count = _count + 1;
                _newRank = rankId _x;

                if ((_newRank > _rank) && (_inVehicle || _freeSpace)) then {
                    _rank = _newRank;
                    _target = _x;
                };
            };
        } forEach ((units group player) - [player]);

        if (_rank == -1) then {
            _target = objNull;

            if (_count == 0) then {
                [player, 1, ["ACE_SelfActions","JIP_Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
                "No one left in your squad" call CBA_fnc_notify;
            } else {
                "Not possible to JIP teleport to anyone, please try again later" call CBA_fnc_notify;
            };
        };
    };

    if (!isNull(_target)) then {

        if (_inVehicle) then {
            player moveInAny (vehicle _target);
        } else {
            player setPos (getPos _target);
        };

        [player, 1, ["ACE_SelfActions","JIP_Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
    } else {
        "Something went wrong, target doesn't exist." call CBA_fnc_notify;
    };
};

_actionJIP_Teleport = [
    "JIP_Teleport",
    "Teleport to Squad",
    "",
    _statementJIP_Teleport,
    _conditionJIP_Teleport
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _actionJIP_Teleport] call ace_interact_menu_fnc_addActionToObject;
