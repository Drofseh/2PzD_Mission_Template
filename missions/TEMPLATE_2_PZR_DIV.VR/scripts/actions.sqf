// Add action to check remaining ammunition in vehicle
call {
    _conditionCheck = {True};

    _statementCheck = {
        _magList = magazinesAllTurrets this;
        
        if (_magList isEqualTo []) then {
            hint "This vehicle is unarmed";
        } else {
            _magAmmoList = "Vehicle Ammuntion Remaining:\n";
    
            {
                _magClass = _x select 0;
                _magName = getText (configFile >> "CfgMagazines" >> _magClass >> "DisplayName");
                _magRounds = str (_x select 2);
                _magAmmoList = _magAmmoList + "\n" + _magName + " (" + _magRounds + ")";
                
            } forEach (_magList);
    
            hint _magAmmoList;
        };
    };

    _actionCheck = ["Check Vehicle Ammunition","Check Vehicle Ammunition","",_statementCheck,_conditionCheck] call ace_interact_menu_fnc_createAction;

    ["LandVehicle", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Air", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
    ["Ship", 1, ["ACE_SelfActions"], _actionCheck,true] call ace_interact_menu_fnc_addActionToClass;
};
