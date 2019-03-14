// Add action to check remaining ammunition in vehicle
call {
    private _conditionCheck = {True};

    private _statementCheck = {
        private _magList = magazinesAllTurrets this;

        if (_magList isEqualTo []) then {
            "This vehicle is unarmed" call CBA_fnc_notify;
        } else {
            _magAmmoList = "Vehicle Ammuntion Remaining:\n";

            {
                private _magClass = _x select 0;
                private _magName = getText (configFile >> "CfgMagazines" >> _magClass >> "DisplayName");
                private _magRounds = str (_x select 2);
                private _magAmmoList = _magAmmoList + "\n" + _magName + " (" + _magRounds + ")";
            } forEach (_magList);

            _magAmmoList call CBA_fnc_notify;
        };
    };

    private _actionCheck = ["Check Vehicle Ammunition","Check Vehicle Ammunition","",_statementCheck,_conditionCheck] call ace_interact_menu_fnc_createAction;

    ["LandVehicle", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Air", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
};
