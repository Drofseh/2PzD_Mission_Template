_conditionJIP_Teleport = {
    player distance _spawnPos < FW_SPAWNDISTANCE;
};
_statementJIP_Teleport = {
    params ["_target"];
    if (!((_target call FNC_Alive) && (!(_target call FNC_InVehicle) || ((vehicle _target) call FNC_HasEmptyPositions)))) then {
        private _rank = -1;
        private _count = 0;

        {
            if (_x call FNC_Alive) then {
                _count = _count + 1;

                if ((rankId _x > _rank) && (!(_x call FNC_InVehicle) || ((vehicle _x) call FNC_HasEmptyPositions))) then {
                    _rank = rankId _x;
                    _target = _x;
                };
            };
        } forEach ((units group player) - [player]);

        if (_rank == -1) then {
            _target = objNull;

            if (_count == 0) then {
                [player, 1, ["ACE_SelfActions","JIP_Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
                "No one left in the squad" call CBA_fnc_notify;
            } else {
                "Not possible to JIP teleport to anyone, please try again later" call CBA_fnc_notify;
            };
        };
    };

    if (!isNull(_target)) then {

        if (_target call FNC_InVehicle) then {
            player moveInAny (vehicle _target);
        } else {
            player setPos (getPos _target);
        };

        [player, 1, ["ACE_SelfActions","JIP_Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
    } else {
        "Something went wrong, target doesn't exist." call CBA_fnc_notify;
    };
};
_actionJIP_Teleport = ["JIP_Teleport","Teleport to Squad","",_statementJIP_Teleport,_conditionJIP_Teleport,{},_target] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _actionJIP_Teleport] call ace_interact_menu_fnc_addActionToObject;