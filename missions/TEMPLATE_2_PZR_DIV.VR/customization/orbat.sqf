// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http:// www.ferstaberinde.com/f3/en/)
// Modified by Jords and Drofseh/Haas

// DO NOT CHANGE ANYTHING HERE

// ====================================================================================

// Define needed variables
private ["_orbatText", "_groups", "_precompileGroups"];
_orbatText = "<br />    NOTE: This ORBAT is only accurate at mission start.<br />
    Leadership and roles may change based on casualties or other needs.<br />
    The group with the leaders name in colour is your group.<br />
    ";
_groups = [];
_hiddenGroups = [];

{
    // Add group to ORBAT if side matches, group isn't already listed, and group has players
    if ((side _x == side group player) && !(_x in _groups) && ({_x in playableUnits} count units _x) > 0) then {
    // if ((side _x == side group player) && !(_x in _groups)) then { // this line includes AI
        _groups = _groups + [_x];
    };
} forEach allGroups;

// Remove groups we don't want to show
_groups = _groups - _hiddenGroups;

    // Add spacing
    _orbatText = _orbatText + "<br /><font size='18'>== ORBAT ==</font><br />";

// Loop through the group, print out group ID, leader name and medics if present
{
    // Add spacing
    _orbatText = _orbatText + "<br />";

    // Highlight the player's group with a different color (based on the player's side)
    _color = "#FFFFFF";
    if (_x == group player) then {
        _color = switch (side player) do {
             case west: {"#0080FF"};
             case east: {"#B40404"};
             case independent: {"#298A08"};
             default {"#8904B1"};
        };
    };

    // Leader - This will take the leader's description and use it in the ORBAT.
    _groupleader = leader _x;
    _leaderPrep01 = roleDescription _groupleader;

    if (["@",_leaderPrep01] call BIS_fnc_inString) then {
            // If the description has an @ (presumably from the CBA Group Name setup)
            // then it will split the string at the @, swap each half, and
            // join them again with an | in the middle.
            // "Team Leader@Team 1" will become "Team 1 | Team Leader" in the ORBAT
            _leaderPrep02 = _leaderPrep01 splitString "@";
            _leaderPrep03 = _leaderPrep02 select 0;
            _leaderPrep04 = _leaderPrep02 select 1;
            _leaderRole = [_leaderPrep04,_leaderPrep03] joinString " | ";
            _orbatText = _orbatText + format ["<font color='%3' size='16'>%1 - %2</font>", _leaderRole, name leader _x,_color] + "<br />";
    } else {
        // If no @ is found, then it will just use the description string as written
        _leaderRole = roleDescription _groupleader;

        // If the any of the above variables are nil then things break (either because the leader is AI or because it wasn't slotted)
        // This will force _leaderRole to a value that can be output as part of _orbatText
        if (isNil _leaderRole) then {
            _leaderRole = "Leader";
        };
        if (_leaderRole == "") then {
            _roleRole = "Leader";
        };
        _orbatText = _orbatText + format ["<font color='%3' size='16'>%1 - %2</font>", _leaderRole, name leader _x,_color] + "<br />";
    }; // End Leader

    // Group members - This will take the name and description of each group member and place them under the leader.
    {
        if (_x != leader group _x) then {
            _rolePrep01 = roleDescription _x;

            if (["@",_rolePrep01] call BIS_fnc_inString) then {
                _rolePrep02 = _rolePrep01 splitString "@";
                _roleRole = _rolePrep02 select 0;
                _orbatText = _orbatText + format["<font size='14'>    |--- %1 | %2</font>", _roleRole, name _x] + "<br />";
            } else {
                _roleRole = roleDescription _x;
                if (isNil _roleRole) then {
                    _roleRole = "Group Member";
                };
                if (_roleRole == "") then {
                    _roleRole = "Group Member";
                };
                _orbatText = _orbatText + format ["<font size='14'>    |--- %1 | %2</font>", _roleRole, name _x] + "<br />";
            };
        };
    } forEach units _x;
} forEach _groups;
// End of groups

// Vehicle detection below here.
_veharray = [];
{
    // gets vehicles with units in them
    if ({vehicle _x != _x} count units _x > 0 ) then {
        {
            if (vehicle _x != _x && {!(vehicle _x in _veharray)}) then {
            _veharray set [count _veharray,vehicle _x];
            };
        } forEach units _x;
    };

} forEach _groups;

if (count _veharray > 0) then {

    _orbatText = _orbatText + "<br /><br /><font size='16'>== Vehicle Crews and Passengers ==</font><br />";

    {
         // Filter all characters which might break the diary entry (such as the & in Orca Black & White)
        _vehName = [getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "displayname"),"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_- "] call BIS_fnc_filterString;
        _orbatText = _orbatText + "<br />" + format["<font size='15'>%1 </font>",_vehName];

        // Get passenger seats, total and occupied - Workaround for http:// feedback.arma3.com/view.php?id=21602 (bad link, has to do with FFV turrets being counted as crew not passengers)
        _maxSlots = getNumber(configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier") + (count allTurrets [_x, true] - count allTurrets _x);
        _freeSlots = _x emptyPositions "cargo";
        if (_maxSlots > 0) then {
            _orbatText = _orbatText + format ["<font size='15'><br />  %1 / %2 passenger seats full</font>",(_maxSlots-_freeSlots),_maxSlots];
        };

        _orbatText = _orbatText  + "<br /><font size='15'>  |- Crew </font><br />";

        {
            // Get all crew members
            if ((assignedVehicleRole _x select 0) != "CARGO") then {
                _veh = vehicle _x;
                _crewrole = switch (true) do {
                    case (driver _veh == _x && !((vehicle _x isKindOf "helicopter") || (vehicle _x isKindOf "plane"))):{"<font size='14'> | Driver</font>"};
                    case (driver _veh == _x && ((vehicle _x isKindOf "helicopter") || (vehicle _x isKindOf "plane"))):{"<font size='14'> | Pilot</font>"};
                    case (commander _veh == _x):{"<font size='14'> | Commander</font>"};
                    case (gunner _veh == _x):{"<font size='14'> | Gunner</font>"};
                    case (assignedVehicleRole _x select 0 == "Turret" && commander _veh != _x && gunner _veh != _x && driver _veh != _x):{"<font size='14'> | Commander</font>"};
                    default {"<font size='14'> | Crewman</font>"};
                };
                _orbatText = _orbatText + format["<font size='14'>    |--- %1</font>",name _x] + _crewrole + "<br/>";
            };
        } forEach crew _x;

        _groupList = [];

        {
            if (!(group _x in _groupList) && {(assignedVehicleRole _x select 0) == "CARGO"} count (units group _x) > 0) then {
                _groupList set [count _groupList,group _x];
            };
        } forEach crew _x;

        // Get all passenger groups
        if (count _groupList > 0) then {
            _orbatText =_orbatText + "<font size='15'>  |- Passengers </font><br />";
            {
                _groupleader = leader _x;
                _leaderPrep01 = roleDescription _groupleader;

                if (["@",_leaderPrep01] call BIS_fnc_inString) then {
                    _leaderPrep02 = _leaderPrep01 splitString "@";
                    _leaderGroup = _leaderPrep02 select 1;
                    _orbatText =_orbatText + format["<font size='14'>    |--- %1</font>", _leaderGroup] + "<br />";
                } else {
                    _orbatText =_orbatText + format["<font size='14'>    |--- %1</font>", _x] + "<br />";
                };
            } forEach _groupList;
        };
    } forEach _veharray;
};

// Insert final result into subsection ORBAT of section Notes
player createDiaryRecord ["diary", ["-- ORBAT --", _orbatText]];