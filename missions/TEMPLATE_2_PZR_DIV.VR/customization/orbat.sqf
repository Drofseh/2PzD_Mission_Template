// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http:// www.ferstaberinde.com/f3/en/)
// Modified by Jords and Drofseh/Haas

// DO NOT CHANGE ANYTHING HERE

// ====================================================================================

// Define needed variables
private ["_orbatText", "_groups", "_hiddenGroups"];
_orbatText = "<br/>    NOTE: This ORBAT is only accurate at mission start.<br/>
    Leadership and roles may change based on casualties or other needs.<br/>
    The group with the leaders name in colour is your group.<br/>
";
_groups = [];
_hiddenGroups = [];

{
    // Add group to ORBAT if side matches, group isn't already listed, and group has players
    if (
        ((_x call Olsen_FW_FNC_getOriginalSide) == ((group player) call Olsen_FW_FNC_getOriginalSide))
        && {!(_x in _groups)}
        && {({_x in playableUnits} count units _x) > 0}
    ) then {
    // if ((_x call Olsen_FW_FNC_getOriginalSide) == ((group player) call Olsen_FW_FNC_getOriginalSide) && !(_x in _groups)) then { // this line includes AI
        _groups = _groups + [_x];
    };
} forEach allGroups;

// Remove groups we don't want to show
_groups = _groups - _hiddenGroups;

// Add spacing
_orbatText = format ["%1<br/><font size='18'>== ORBAT ==</font><br/>",_orbatText];

// Loop through the group, print out group ID, leader name and medics if present
{
    // Add spacing
    _orbatText = format ["%1<br/><br/>",_orbatText];

    // Highlight the player's group with a different color (based on the player's side)
    private _color = "#FFFFFF";
    if (_x == group player) then {
        _color = switch (playerSide) do {
             case west : {"#0080FF"};
             case east : {"#B40404"};
             case independent : {"#298A08"};
             default {"#8904B1"};
        };
    };

    // Leader - This will take the leader's description and use it in the ORBAT.
    private _groupleader = leader _x;
    private _leaderRole = roleDescription _groupleader;

    if (["@",_leaderRole] call BIS_fnc_inString) then {
        // If the description has an @ (presumably from the CBA Group Name setup)
        // then it will split the string at the @, swap each half, and
        // join them again with an | in the middle.
        // "Team Leader@Team 1" will become "Team 1 | Team Leader" in the ORBAT
        private _leaderPrep01 = _leaderRole splitString "@";
        private _leaderPrep02 = _leaderPrep01 select 0;
        private _leaderPrep03 = _leaderPrep01 select 1;
        private _leaderRole = [_leaderPrep03,_leaderPrep02] joinString " | ";
        _orbatText = format ["%4<font color='%3' size='16'>%1 - %2</font><br/>", _leaderRole, name leader _x,_color,_orbatText];
    } else {
        // If no @ is found, then it will just use the description string as written
        // If _leaderRole is nil then things break (either because the leader is AI or because it wasn't slotted)
        // This will force _leaderRole to a value that can be output as part of _orbatText
        if (isNil _leaderRole) then {_leaderRole = "Leader";};
        if (_leaderRole isEqualTo "") then {_leaderRole = "Leader";};
        _orbatText = format ["%4<font color='%3' size='16'>%1 - %2</font><br/>", _leaderRole, name leader _x,_color,_orbatText];
    }; // End Leader

    // Group members - This will take the name and description of each group member and place them under the leader.
    {
        if (_x != _groupleader) then {
            private _memberPrep01 = roleDescription _x;

            if (["@",_memberPrep01] call BIS_fnc_inString) then {
                private _memberPrep02 = _memberPrep01 splitString "@";
                private _memberRole = _memberPrep02 select 0;
                _orbatText = format ["%3<font size='14'>    |--- %1 | %2</font><br/>", _memberRole, name _x,_orbatText];
            } else {
                private _memberRole = roleDescription _x;
                if (isNil _memberRole) then {_memberRole = "Group Member";};
                if (_memberRole isEqualTo "") then {_memberRole = "Group Member";};
                _orbatText = format ["%3<font size='14'>    |--- %1 | %2</font><br/>", _memberRole, name _x,_orbatText];
            };
        };
    } forEach units _x;
} forEach _groups;
// End of groups

// Vehicle detection below here.
private _vehicleArray = [];
{
    // gets vehicles with units in them
    if ({vehicle _x != _x} count units _x > 0 ) then {
        {
            if (vehicle _x != _x && {!(vehicle _x in _vehicleArray)}) then {
            _vehicleArray set [count _vehicleArray,vehicle _x];
            };
        } forEach units _x;
    };
} forEach _groups;

if (count _vehicleArray > 0) then {

    _orbatText = format ["%1<br/><br/><font size='16'>== Vehicle Crews and Passengers ==</font><br/>", _orbatText];

    {
        private _vehicleConfig = configOf _x;
         // Filter all characters which might break the diary entry (such as the & in Orca Black & White)
        private _vehName = [getText (_vehicleConfig >> "displayname"),"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_- "] call BIS_fnc_filterString;
        _orbatText = format ["%1<br/><font size='15'>%2 </font>",_orbatText,_vehName];

        // Get passenger seats, total and occupied - Workaround for http:// feedback.arma3.com/view.php?id=21602 (bad link, has to do with FFV turrets being counted as crew not passengers)
        private _maxSlots = getNumber(_vehicleConfig >> "transportSoldier") + (count allTurrets [_x, true] - count allTurrets _x);
        private _freeSlots = _x emptyPositions "cargo";
        if (_maxSlots > 0) then {
            _orbatText = format ["%1<font size='15'><br/>  %2 / %3 passenger seats full</font>",_orbatText,(_maxSlots-_freeSlots),_maxSlots];
        };

        _orbatText = format ["%1<br/><font size='15'>  |- Crew </font><br/>", _orbatText];

        {
            // Get all crew members
            if ((assignedVehicleRole _x select 0) != "CARGO") then {
                private _veh = vehicle _x;
                private _crewrole = switch (true) do {
                    case (driver _veh == _x && {!(vehicle _x isKindOf "helicopter" || {vehicle _x isKindOf "plane"})}) : {"<font size='14'> | Driver</font>"};
                    case (driver _veh == _x && {vehicle _x isKindOf "helicopter" || {vehicle _x isKindOf "plane"}}) : {"<font size='14'> | Pilot</font>"};
                    case (commander _veh == _x) : {"<font size='14'> | Commander</font>"};
                    case (gunner _veh == _x) : {"<font size='14'> | Gunner</font>"};
                    case (toUpper (assignedVehicleRole _x select 0) isEqualTo "TURRET" && {commander _veh != _x} && {gunner _veh != _x} && {driver _veh != _x}) : {"<font size='14'> | Commander</font>"};
                    default {"<font size='14'> | Crewman</font>"};
                };
                _orbatText = format ["%1<font size='14'>    |--- %2</font>%3<br/>",_orbatText,name _x,_crewrole];
            };
        } forEach crew _x;

        private _groupList = [];

        {
            if (!(group _x in _groupList) && {toUpper (assignedVehicleRole _x select 0) isEqualTo "CARGO"} count (units group _x) > 0) then {
                _groupList set [count _groupList,group _x];
            };
        } forEach crew _x;

        // Get all passenger groups
        if (count _groupList > 0) then {
            _orbatText = format ["%1<font size='15'>  |- Passengers </font><br/>", _orbatText];
            {
                private _leaderPrep01 = roleDescription (leader _x);

                if (["@",_leaderPrep01] call BIS_fnc_inString) then {
                    _leaderPrep02 = _leaderPrep01 splitString "@";
                    _leaderGroup = _leaderPrep02 select 1;
                    _orbatText = format ["%1<font size='14'>    |--- %2</font><br/>",_orbatText, _leaderGroup];
                } else {
                    _orbatText = format ["%1<font size='14'>    |--- %2</font><br/>",_orbatText, _x];
                };
            } forEach _groupList;
        };
    } forEach _vehicleArray;
};

// Insert final result into subsection ORBAT of section Notes
player createDiaryRecord ["diary", ["-- ORBAT --", _orbatText]];