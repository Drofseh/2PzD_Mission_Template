//Ammo Counter Initilization
//Much script by beta, some script by TinfoilHate
//Sets up ammo counting
/*  It's dangerous to go alone, take this:
    _ammoArray = [];
    {
        {
            _ammoClass = getText (configFile >> "CfgMagazines" >> _x >> "ammo");
            if !(_ammoClass in _ammoArray) then {
                _ammoArray set [count _ammoArray,_ammoClass];
            };
        } forEach magazines _x;
    } forEach allMissionObjects "ALL";
    diag_log _ammoArray;
*/

if (isServer) then {
    aCount_west_ExpendedAmmunition = ["Total",0];
    aCount_resistance_ExpendedAmmunition = ["Total",0];
    aCount_east_ExpendedAmmunition = ["Total",0];

    aCount_classNames = [];

    aCount_getDisplayName = {

        private["_className","_displayName","_foundClass","_ret"];
        _className = _this;
        _ret = "Error";
        _foundClass = aCount_classNames find _className;

        if (_foundClass < 0) then {
            _cfgMag = (configFile >> "CfgMagazines" >> _className);
            _ret =  getText(_cfgMag >> "displayName");

            if (_ret isEqualTo "") then {
                _ret = (str _className);
                diag_log text (format ["displayName entry is blank for %1",_ret]);
            };

            aCount_classNames pushBack _className;
            aCount_classNames pushBack _ret;

        } else {
            _ret = aCount_classNames select( _foundClass + 1);
        };

        _ret
    };

    aCount_addEH = { //If units are spawned, this should be run on them: ["aCount_event_addEH", UNIT] call CBA_fnc_serverEvent;

        _obj = param [0];
        _obj setVariable ["aCount_originalSide",(_obj call Olsen_FW_FNC_getOriginalSide),false];

        if (_obj isKindOf "Man") then {
            _obj addEventHandler ["fired", {
                params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
                [(_unit call Olsen_FW_FNC_getOriginalSide),_magazine call aCount_getDisplayName] call aCount_shotCount;
            }];

            _obj setVariable ["aCount_firedEh", true, false];
        };

        if (
            (_obj isKindOf "Land" && {!(_obj isKindOf "Man")})
            || {_obj isKindOf "Air" || {_obj isKindOf "Ship"}}
        ) then {
            if (count crew _obj > 0) then { {
                    _x setVariable ["aCount_firedEh", true, false];
                    _x setVariable ["aCount_originalSide",(_obj call Olsen_FW_FNC_getOriginalSide),false];
                } forEach crew _obj;
            };

            _obj addEventHandler ["fired", {
                params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
                [(_unit call Olsen_FW_FNC_getOriginalSide),_magazine call aCount_getDisplayName] call aCount_shotCount;
            }];
            _obj setVariable ["aCount_firedEh", true, false];
        };
    };
    ["aCount_event_addEH",aCount_addEH] call CBA_fnc_addEventHandler;

    aCount_shotCount = {
        params ["_side", "_magazineName"];

        switch (_side) do {
            case west: {
                aCount_west_ExpendedAmmunition set [1,(aCount_west_ExpendedAmmunition select 1) + 1 ];
                _found = aCount_west_ExpendedAmmunition find _magazineName;

                if (_found < 0) then {
                    aCount_west_ExpendedAmmunition pushBack _magazineName ;
                    aCount_west_ExpendedAmmunition pushBack 1;
                } else {
                    aCount_west_ExpendedAmmunition set [_found + 1,(aCount_west_ExpendedAmmunition select _found + 1) + 1 ];
                };
            };

            case east: {
                aCount_east_ExpendedAmmunition set [1,(aCount_east_ExpendedAmmunition select 1) + 1 ];
                _found = aCount_east_ExpendedAmmunition find _magazineName;

                if (_found < 0) then {
                    aCount_east_ExpendedAmmunition pushBack  _magazineName;
                    aCount_east_ExpendedAmmunition pushBack 1;
                } else {
                    aCount_east_ExpendedAmmunition set [_found + 1,(aCount_east_ExpendedAmmunition select _found + 1) + 1 ];
                };
            };

            case resistance: {
                aCount_resistance_ExpendedAmmunition set [1,(aCount_resistance_ExpendedAmmunition select 1) + 1 ];
                _found = aCount_resistance_ExpendedAmmunition find _magazineName;

                if (_found < 0) then {
                    aCount_resistance_ExpendedAmmunition pushBack  _magazineName;
                    aCount_resistance_ExpendedAmmunition pushBack 1;
                } else {
                    aCount_resistance_ExpendedAmmunition set [_found + 1,(aCount_resistance_ExpendedAmmunition select _found + 1) + 1 ];
                };
            };
        };
    };

    aCount_endCount = {
        _munitionsBLU = aCount_west_ExpendedAmmunition;
        _munitionsRED = aCount_east_ExpendedAmmunition;
        _munitionsRES = aCount_resistance_ExpendedAmmunition;

        ["aCount_event_scoreScreen", [_munitionsBLU,_munitionsRED,_munitionsRES]] call CBA_fnc_globalEvent;
    };
};

if (hasInterface) then {

    aCount_shotDisplay = {

        _this spawn {

            _arrayBLU = param [0];
            _arrayRED = param [1];
            _arrayRES = param [2];
            aCount_textBLU = "BLUFOR Munitions Expended:<br/>";
            aCount_textRED = "OPFOR Munitions Expended:<br/>";
            aCount_textRES = "INDEPENDENT Munitions Expended:<br/>";

            //Get the custom names of each side's team and use them instead of generic names above ^
            _numberOfTeams = count FW_Teams;
            if (_numberOfTeams > 0) then {

                aCount_Side0 = FW_Teams select 0;
                aCount_Side0_Side = aCount_Side0 select 1;
                aCount_Side0_Name = aCount_Side0 select 0;

                if (aCount_Side0_Side == west) then {
                    aCount_textBLU = format ["%1 - Munitions Expended:<br/>", aCount_Side0_Name];
                } else {
                    if (aCount_Side0_Side == east) then {
                        aCount_textRED = format ["%1 - Munitions Expended:<br/>", aCount_Side0_Name];
                    } else {
                        if (aCount_Side0_Side == resistance) then {
                            aCount_textRES = format ["%1 - Munitions Expended:<br/>", aCount_Side0_Name];
                        };
                    };
                };
            };

            if (_numberOfTeams > 1) then {

                aCount_Side1 = FW_Teams select 1;
                aCount_Side1_Side = aCount_Side1 select 1;
                aCount_Side1_Name = aCount_Side1 select 0;

                if (aCount_Side1_Side == west) then {
                    aCount_textBLU = format ["%1 - Munitions Expended:<br/>", aCount_Side1_Name];
                } else {
                    if (aCount_Side1_Side == east) then {
                        aCount_textRED = format ["%1 - Munitions Expended:<br/>", aCount_Side1_Name];
                    } else {
                        if (aCount_Side1_Side == resistance) then {
                            aCount_textRES = format ["%1 - Munitions Expended:<br/>", aCount_Side1_Name];
                        };
                    };
                };
            };

            if (_numberOfTeams > 2) then {

                aCount_Side2 = FW_Teams select 2;
                aCount_Side2_Side = aCount_Side2 select 1;
                aCount_Side2_Name = aCount_Side2 select 0;

                if (aCount_Side2_Side == west) then {
                    aCount_textBLU = format ["%1 - Munitions Expended:<br/>", aCount_Side2_Name];
                } else {
                    if (aCount_Side2_Side == east) then {
                        aCount_textRED = format ["%1 - Munitions Expended:<br/>", aCount_Side2_Name];
                    } else {
                        if (aCount_Side2_Side == resistance) then {
                            aCount_textRES = format ["%1 - Munitions Expended:<br/>", aCount_Side2_Name];
                        };
                    };
                };
            };
/*
            aCount_textBLU_EndScreen = (aCount_textBLU splitString ":") select 0;
            aCount_textRED_EndScreen = (aCount_textRED splitString ":") select 0;
            aCount_textRES_EndScreen = (aCount_textRES splitString ":") select 0;
*/
            // Build each side's total ammunition count.
            if (count _arrayBLU > 0) then {
                for [{ _i = 0}, {_i < count _arrayBLU}, {_i = _i + 2}] do {
                    _label = _arrayBLU select (_i);
                    _count = _arrayBLU select (_i + 1);
                    aCount_textBLU = format ["%1%2: %3 Rounds<br/>",aCount_textBLU,_label,str _count];
                };
            } else {
                aCount_textBLU = "";
            };

            if (count _arrayRED > 0) then {
                for [{ _i = 0}, {_i < count _arrayRED}, {_i = _i + 2}] do {
                    _label = _arrayRED select (_i);
                    _count = _arrayRED select (_i + 1);
                    aCount_textRED = format ["%1%2: %3 Rounds<br/>",aCount_textRED,_label,str _count];
                };
            } else {
                aCount_textRED = "";
            };

            if (count _arrayRES > 0) then {
                for [{ _i = 0}, {_i < count _arrayRES}, {_i = _i + 2}] do {
                    _label = _arrayRES select (_i);
                    _count = _arrayRES select (_i + 1);
                    aCount_textRES = format ["%1%2: %3 Rounds<br/>",aCount_textRES,_label,str _count];
                };
            } else {
                aCount_textRES = "";
            };

            aCount_textFinal = format ["%1<br/><br/>%2<br/><br/>%3",aCount_textBLU,aCount_textRED,aCount_textRES];
        };
    };

    ["aCount_event_scoreScreen",aCount_shotDisplay] call CBA_fnc_addEventHandler;
};
