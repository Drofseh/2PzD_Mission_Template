
// Add actions to lock and unlock the players own backpack
call {
    // lock
    private _conditionBackpackLock = {backpack player != "" && {!(lockedInventory backpackContainer player)}};

    private _statementBackpackLock = {
        backpackContainer player lockInventory true;
        [["Backpack locked for other players."],true] call CBA_fnc_notify;
    };

    private _actionBackpackLock = ["Lock Your Backpack","Lock Your Backpack","",_statementBackpackLock,_conditionBackpackLock] call ace_interact_menu_fnc_createAction;

    ["Man", 1, ["ACE_SelfActions","ACE_Equipment"], _actionBackpackLock,true] call ace_interact_menu_fnc_addActionToClass;

    // unlock
    private _conditionBackpackUnlock = {lockedInventory backpackContainer player};

    private _statementBackpackUnlock = {
        backpackContainer player lockInventory false;
        [["Backpack unlocked for other players."],true] call CBA_fnc_notify;
    };

    private _actionBackpackUnlock = ["Unlock Your Backpack","Unlock Your Backpack","",_statementBackpackUnlock,_conditionBackpackUnlock] call ace_interact_menu_fnc_createAction;

    ["Man", 1, ["ACE_SelfActions","ACE_Equipment"], _actionBackpackUnlock,true] call ace_interact_menu_fnc_addActionToClass;
};
