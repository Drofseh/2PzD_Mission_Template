// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

//DO NOT CHANGE ANYTHING HERE

// ====================================================================================
 
// Define needed variables
private ["_orbatText", "_groups", "_precompileGroups"];
_orbatText = "<br />NOTE: This ORBAT is only accurate at mission start.<br />
	Leadership elements may change based on casualties or other needs.<br />
<br />";
_groups = [];
_hiddenGroups = [];
 
{	
    // Add to ORBAT if side matches, group isn'span class="re5"> t already listed, and group has players
    if ((side _x == side group player) && !(_x in _groups) && ({_x in playableUnits} count units _x) > 0) then {
    //if ((side _x == side group player) && !(_x in _groups)) then {
        _groups = _groups + [_x];
    };
} forEach allGroups;
 
// Remove groups we don't want to show
_groups = _groups - _hiddenGroups;
 
// Loop through the group, print out group ID, leader name and medics if present
{
    //Add spacing
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

	//Leader
    _groupleader = leader _x;

    _leaderRole = roleDescription _groupleader;
 
    _orbatText = _orbatText + format ["<font color='%3'>%1 - %2</font>", _leaderRole, name leader _x,_color] + "<br />";
 
   
    //Detection of other special roles by class name.

	//German Wehrmacht/DAK
    {
        if (typeOf _x == "LIB_GER_ober_lieutenant" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Kompanietruppführer]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_GER_scout_unterofficer" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Stellver. Zugführer]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "LIB_GER_scout_smgunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Stellver. Gruppenführer]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "LIB_GER_smgunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Gefreiter]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "LIB_GER_radioman" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Funker]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "LIB_GER_medic" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Medic]",name _x] + "<br />";
        };
    } forEach units _x;

	//German Fallschirmjäger
    {
        if (typeOf _x == "LNRD_Luftwaffe_flaksoldat" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Kompanietruppführer]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LNRD_Luftwaffe_stggunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Stellver. Zugführer]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LNRD_Luftwaffe_smgunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Stellver. Gruppenführer]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LNRD_Luftwaffe_radioman" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Funker]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "LNRD_Luftwaffe_medic" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Medic]",name _x] + "<br />";
        };
    } forEach units _x;

	//Imperial Japanese Army
    {
        if (typeOf _x == "fow_s_ija_officer" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Company Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_ija_type99_asst" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Platoon Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_ija_nco" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Team Leader]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_ija_medic" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Medic]",name _x] + "<br />";
        };
    } forEach units _x;

	//Russian Red Army & NKVD
    {
        if (typeOf _x == "LNRD_Luftwaffe_smgunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Company Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_SOV_staff_sergeant" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Platoon Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "LIB_SOV_operator" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Radio Operator]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "LIB_SOV_LC_rifleman" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Team Leader]",name _x] + "<br />";
        };
    } forEach units _x;

	//US Army & Marine Corps
    {
        if (typeOf _x == "LIB_US_first_lieutenant" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Company Executive Officer]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_US_second_lieutenant" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Company First Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_US_smgunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Platoon Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_US_mgunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Automatic Rifleman]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_US_corporal" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Assistant Squad Leader]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_US_radioman" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Radio Operator]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_US_medic" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Medic]",name _x] + "<br />";
        };
    } forEach units _x;

	//British Army
    {
        if (typeOf _x == "fow_s_uk_officer" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Company Sergeant Major]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_uk_section_commander" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Platoon Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_uk_bren_gunner" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Section Leader]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_uk_teamleader" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Gun Team Leader]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_uk_bren_asst" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Signaller]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "fow_s_uk_medic" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Medic]",name _x] + "<br />";
        };
    } forEach units _x;

	//Polish Home Army
    {
        if (typeOf _x == "LIB_WP_Porucznic" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Company Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_WP_Sierzant" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Platoon Sergeant]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_WP_Starszy_saper" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Team Leader]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_WP_Radioman" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Radio Operator]",name _x] + "<br />";
        };
    } forEach units _x;

    {
        if (typeOf _x == "LIB_WP_Medic" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|	--> %1 [Medic]",name _x] + "<br />";
        };
    } forEach units _x;

} forEach _groups;
 
 
//Vehicle detection below here. Unsure if working.
_veharray = [];
{
 
    if ({vehicle _x != _x} count units _x > 0 ) then {
        {
            if (vehicle _x != _x && {!(vehicle _x in _veharray)}) then {
            _veharray set [count _veharray,vehicle _x];
            };
        } forEach units _x;
    };
 
} forEach _groups;
 
if (count _veharray > 0) then {
 
_orbatText = _orbatText + "<br />VEHICLE CREWS + PASSENGERS<br />";
 
    {
        _orbatText = _orbatText + "<br />" + format["%1 ",getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "displayname")];
 
        if (getNumber(configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier") > 0) then {
            _orbatText = _orbatText + format ["[%1/%2]",getNumber(configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier") - (_x emptyPositions "CARGO"),getNumber(configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier")];
        };
 
        _orbatText =_orbatText + "<br />";
        {
            if ((assignedVehicleRole _x select 0) != "CARGO") then {
                _orbatText = _orbatText + format["|- %1",name _x];
                if (driver vehicle _x == _x) exitWith {_orbatText =_orbatText +" [D] <br />"};
                if (gunner vehicle _x == _x) exitWith {_orbatText =_orbatText +" [G] <br />"};
                if (commander vehicle _x == _x) exitWith {_orbatText =_orbatText +" [C] <br />"};
                _orbatText =_orbatText +" [G] <br />"
            };
        } forEach crew _x;
 
        _groupList = [];
 
 
        {
            if (!(group _x in _groupList) && {(assignedVehicleRole _x select 0) == "CARGO"} count (units group _x) > 0) then {
                _groupList set [count _groupList,group _x];
            };
        } forEach crew _x;
 
        if (count _groupList > 0) then {
            {
                _orbatText =_orbatText + format["|- %1", _x] + " Passengers <br />";
            } forEach _groupList;
        };
 
    } forEach _veharray;
 
};
 
// Insert final result into subsection ORBAT of section Notes
player createDiaryRecord ["diary", ["--ORBAT--", _orbatText]];