["Squad Vics", "Adds an icon for the assigned vehicle of a squad to the D-UI HUD compass of each member of the squad.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

if (hasInterface) then {
    for "_i" from 0 to ((count squadVic_List) - 1) do {

        private _squad = squadVic_List select _i select 0;

        if (group player == _squad) then {
            squadVic_currentVic = squadVic_List select _i select 1;

            if (isNil "diwako_dui_special_track") then {
                diwako_dui_special_track = [];
            };
            if (typeName diwako_dui_special_track != "ARRAY") then {
                diwako_dui_special_track = [];
            };

            diwako_dui_special_track pushBackUnique squadVic_currentVic;
        };
    };
};
/*
//To be readded in the remove action can be made to work
//====== Add main interaction point.
_conditionSquadVicMain = {True};

_statementSquadVicMain = {
    [["Add or remove the vehicle from your squad compass."], true] call CBA_fnc_notify;
};
_actionSquadVicMain = ["Squad Vehicle","Squad Vehicle","",_statementSquadVicMain,_conditionSquadVicMain] call ace_interact_menu_fnc_createAction;

//add main action to vehicle menu when player outside of vic
["LandVehicle", 0, ["ACE_MainActions"], _actionSquadVicMain,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 0, ["ACE_MainActions"], _actionSquadVicMain,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 0, ["ACE_MainActions"], _actionSquadVicMain,true] call ace_interact_menu_fnc_addActionToClass;

//add mainaction to vehicle menu when player inside of vic
["LandVehicle", 1, ["ACE_SelfActions"], _actionSquadVicMain,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 1, ["ACE_SelfActions"], _actionSquadVicMain,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 1, ["ACE_SelfActions"], _actionSquadVicMain,true] call ace_interact_menu_fnc_addActionToClass;
*/

//====== Add action to self-set vehicle as squad vic
_conditionSquadVicAdd = {True};

_statementSquadVicAdd = {
    if (isNil "diwako_dui_special_track") then {
        diwako_dui_special_track = [];
    };

    if (typeName diwako_dui_special_track != "ARRAY") then {
        diwako_dui_special_track = [];
    };

    if !(isNil "squadVic_currentVic") then {
        private _currentVicIndex = diwako_dui_special_track find squadVic_currentVic;
        if (_currentVicIndex >= 0) then {
            diwako_dui_special_track deleteAt _currentVicIndex;
        };
    };

    squadVic_currentVic = this;
    diwako_dui_special_track pushBackUnique this;
};

_actionSquadVicAdd = ["Set as Squad Vehicle","Set as Squad Vehicle","",_statementSquadVicAdd,_conditionSquadVicAdd] call ace_interact_menu_fnc_createAction;

//add set action to vehicle menu when player outside of vic
["LandVehicle", 0, ["ACE_MainActions"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 0, ["ACE_MainActions"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 0, ["ACE_MainActions"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;

//add set action to vehicle menu when player inside of vic
["LandVehicle", 1, ["ACE_SelfActions"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 1, ["ACE_SelfActions"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 1, ["ACE_SelfActions"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;

/*
//To be readded if the main action is readded
["LandVehicle", 0, ["ACE_MainActions","Squad Vehicle"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 0, ["ACE_MainActions","Squad Vehicle"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 0, ["ACE_MainActions","Squad Vehicle"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;

//add set action to vehicle menu when player inside of vic
["LandVehicle", 1, ["ACE_SelfActions","Squad Vehicle"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 1, ["ACE_SelfActions","Squad Vehicle"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 1, ["ACE_SelfActions","Squad Vehicle"], _actionSquadVicAdd,true] call ace_interact_menu_fnc_addActionToClass;
*/

/*
//This is borked for now, the condition check doesn't work.
//It's not really needed anyways though imo.

//===== Add action to remove vehicle as squad vic
_conditionSquadVicRemove = {
    _return = false;
    if (this == squadVic_currentVic) then {
        _return = true;
    } else {
        _return = false;
    };
    systemChat str this;
    systemChat str squadVic_currentVic;
    systemChat str _return;
    _return
};

_statementSquadVicRemove = {
    if (isNil "diwako_dui_special_track") then {
        diwako_dui_special_track = [];
    };

    if (typeName diwako_dui_special_track != "ARRAY") then {
        diwako_dui_special_track = [];
    };

    private _currentVicIndex = diwako_dui_special_track find squadVic_currentVic;
    if (_currentVicIndex >= 0) then {
        diwako_dui_special_track deleteAt _currentVicIndex;
    };
};

_actionSquadVicRemove = ["Remove as Squad Vehicle","Remove as Squad Vehicle","",_statementSquadVicRemove,_conditionSquadVicRemove] call ace_interact_menu_fnc_createAction;

//add remove action to vehicle menu when player outside of vic
["LandVehicle", 0, ["ACE_MainActions","Squad Vehicle"], _actionSquadVicRemove,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 0, ["ACE_MainActions","Squad Vehicle"], _actionSquadVicRemove,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 0, ["ACE_MainActions","Squad Vehicle"], _actionSquadVicRemove,true] call ace_interact_menu_fnc_addActionToClass;

//add remove action to vehicle menu when player inside of vic
["LandVehicle", 1, ["ACE_SelfActions","Squad Vehicle"], _actionSquadVicRemove,true] call ace_interact_menu_fnc_addActionToClass;
["Air", 1, ["ACE_SelfActions","Squad Vehicle"], _actionSquadVicRemove,true] call ace_interact_menu_fnc_addActionToClass;
["Ship", 1, ["ACE_SelfActions","Squad Vehicle"], _actionSquadVicRemove,true] call ace_interact_menu_fnc_addActionToClass;
*/
