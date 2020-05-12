
//===== Create main Partisan self interaction node
_conditionPartisanMain = {true};
_statementPartisanMain = {
    [["Use the menu options to check if the enemy are hostile to you and your notoriety level."], true] call CBA_fnc_notify;
};
_actionPartisanMain = ["Partisan","Partisan","",_statementPartisanMain,_conditionPartisanMain] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _actionPartisanMain] call ace_interact_menu_fnc_addActionToObject;

//===== Add self interaction to check current Hostility level.
_statementPartisanHostility = {
    private _currentRating = player getVariable ["Partisan Safety Rating", 0];
    private _isHostile = !(captive player);

    if (_currentRating > -4) then {
        [["You think you should be fine."], true] call CBA_fnc_notify;
    } else {
        [["You think you should be careful."], true] call CBA_fnc_notify;
    };
};
_actionPartisanHostility = ["Check Hostility","Check Hostility","",_statementPartisanHostility,_conditionPartisanMain] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","Partisan"], _actionPartisanHostility] call ace_interact_menu_fnc_addActionToObject;


//===== Add self interaction to check current Notoriety level.
_statementPartisanNotoriety = {
    private _currentNotoriety = player getVariable ["Partisan Notoriety", 0];
    private _hintNororietyA = "";
    private _hintNororietyB = "";

    switch (true) do {
        case (_currentNotoriety < 5) : {
            _hintNororietyA = "00 - Unknown";
            _hintNororietyB = "You're a complete unknown.";
        };
        case (_currentNotoriety < 20) : {
            _hintNororietyA = "01 - Obscure";
            _hintNororietyB = "You've fought for the partisan movement, but few people know.";
        };
        case (_currentNotoriety < 40) : {
            _hintNororietyA = "02 - Acquaintance";
            _hintNororietyB = "You've started to get a small reputation among members of the partisan movement.";
        };
        case (_currentNotoriety < 60) : {
            _hintNororietyA = "03 - Member";
            _hintNororietyB = "You're a full member the partisan movement.";
        };
        case (_currentNotoriety < 80) : {
            _hintNororietyA = "04 - Respected";
            _hintNororietyB = "You're respected member of the partisan movement.";
        };
        case (_currentNotoriety < 100) : {
            _hintNororietyA = "05 - Recognized";
            _hintNororietyB = "Your involvement in the partisan movement is known to many, both friend and foe.";
        };
        case (_currentNotoriety < 200) : {
            _hintNororietyA = "06 - Well Known";
            _hintNororietyB = "You're well known to be a member of the partisan movement, even by the enemy.";
        };
        case (_currentNotoriety < 300) : {
            _hintNororietyA = "07 - Famous";
            _hintNororietyB = "You're a famous partisan, loved by many and hated by some.";
        };
        case (_currentNotoriety < 400) : {
            _hintNororietyA = "08 - Honoured";
            _hintNororietyB = "You're held in great esteem by those friendly to you and loathed by the enemy.";
        };
        case (_currentNotoriety < 600) : {
            _hintNororietyA = "09 - Celebrated";
            _hintNororietyB = "Your victories against the enemy are praised my everyone, except the enemy.";
        };
        case (_currentNotoriety < 800) : {
            _hintNororietyA = "10 - Revered";
            _hintNororietyB = "You are deeply loved.";
        };
        case (_currentNotoriety < 1000) : {
            _hintNororietyA = "11 - Beloved";
            _hintNororietyB = "Children are being named after you.";
        };
        case (_currentNotoriety >= 1000) : {
            _hintNororietyA = "12 - Exalted";
            _hintNororietyB = "Sabaton is going to write a song about you in 60 or 70 years.";
        };
    };

    [
        [format ["Notoriety - %1", _hintNororietyA]],
        [_hintNororietyB],
        true
    ] call CBA_fnc_notify;
};
_actionPartisanNotoriety = ["Check Notoriety","Check Notoriety","",_statementPartisanNotoriety,_conditionPartisanMain] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","Partisan"], _actionPartisanNotoriety] call ace_interact_menu_fnc_addActionToObject;
