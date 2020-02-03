["Rank Icons", "Gives custom DUI HUD icons based on players rank or slot.", "Wilhelm Haas (Drofseh)"] call Olsen_FW_FNC_RegisterModule;

#include "settings.sqf"

if (hasInterface) then {

    private _customIcon = player getVariable ["diwako_dui_radar_customIcon", ""];

    if (_customIcon == "") then {

        params ["_rolePrep01","_rolePrep02","_rolePrep03","_role","_rank"];

        switch (side player) do {
            case east : {
                _rolePrep01 = roleDescription player;

                if (["@",_rolePrep01] call BIS_fnc_inString) then {
                    _rolePrep02 = (_rolePrep01 splitString "@") select 0;

                    if (["|",_rolePrep02] call BIS_fnc_inString) then {
                        _rolePrep03 = ((_rolePrep02 splitString "|") select 1) splitString " ";
                    } else {
                        _rolePrep03 = _rolePrep02 splitString " ";
                    };

                    _role = _rolePrep03 joinString " ";

                    switch (_role) do {
                        default                       {_rank = "01 - Private.paa";};
                        case "Machine Gunner"       : {_rank = "02 - Corporal.paa";};
                        case "Team Leader"          : {_rank = "03 - Junior sergeant.paa";};
                        case "Squad Leader"         : {_rank = "04 - Sergeant.paa";};
                        case "Platoon Sergeant"     : {_rank = "05 - Senior sergeant.paa";};
                        case "Company Sergeant"     : {_rank = "06 - Warrant officer.paa";};
                        case "Platoon Commander"    : {_rank = "07 - Junior lieutenant.paa";};
                        case "Company Commander"    : {_rank = "08 - Senior lieutenant.paa";};
                        case "Radio Operator"       : {_rank = "02 - Corporal.paa";};
                        case "Medic"                : {_rank = "02 - Corporal.paa";};
                        case "Messenger"            : {_rank = "02 - Corporal.paa";};
                    };
                };
            };
        };

        player setVariable ["diwako_dui_radar_customIcon", _rank, true];
    };
};
