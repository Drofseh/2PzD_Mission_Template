// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearFSJ.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

    //Loadout Calls
    //These are special and the won't work properly if you just put them in the init of the container.
    //If you're going to make an FSJ mission where the FSJ paradrop let Haas know and he will advise you.
    /*
    null = [this] execVM "DropCan.sqf";

[DC_CHQ, "FSJ_DC_CHQ"] call FNC_VehicleGearScript;          Cannister for Kompanietrupp
[DC_Z1HQ, "FSJ_DC_Z1HQ"] call FNC_VehicleGearScript;            Cannister for 1 Zugtruppen
[DC_Z2HQ, "FSJ_DC_Z2HQ"] call FNC_VehicleGearScript;            Cannister for 2 Zugtruppen
[DC_Z1G1W, "FSJ_DC_Z1G1W"] call FNC_VehicleGearScript;          Cannister for 1 Zug 1 Gruppen Weapons
[DC_Z1G2W, "FSJ_DC_Z1G2W"] call FNC_VehicleGearScript;          Cannister for 1 Zug 2 Gruppen Weapons
[DC_Z1G3W, "FSJ_DC_Z1G3W"] call FNC_VehicleGearScript;          Cannister for 1 Zug 3 Gruppen Weapons
[DC_Z2G1W, "FSJ_DC_Z2G1W"] call FNC_VehicleGearScript;          Cannister for 2 Zug 1 Gruppen Weapons
[DC_Z2G2W, "FSJ_DC_Z2G2W"] call FNC_VehicleGearScript;          Cannister for 2 Zug 2 Gruppen Weapons
[DC_Z2G3W, "FSJ_DC_Z2G3W"] call FNC_VehicleGearScript;          Cannister for 2 Zug 3 Gruppen Weapons
    */

//======================== Loadouts ========================

//Start HQs

case "FSJ_DC_CHQ": {
    _vehicle call FNC_RemoveAllVehicleGear;

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units CHQ;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_K98", 1] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 5] call FNC_AddItemVehicle;
    ["B_LIB_GER_Radio", 1] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 15] call FNC_AddItemVehicle;
    ["SmokeShell", 5] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 5] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_CHQ

case "FSJ_DC_Z1HQ": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1HQ;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_K98", 1] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 5] call FNC_AddItemVehicle;
    ["B_LIB_GER_Radio", 1] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 15] call FNC_AddItemVehicle;
    ["SmokeShell", 5] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
    ["ACE_morphine", 5] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 5] call FNC_AddItemVehicle;
    ["ACE_epinephrine", 5] call FNC_AddItemVehicle;
    ["ACE_fieldDressing",32] call FNC_AddItemVehicle;
    ["ACE_morphine",10] call FNC_AddItemVehicle;
    ["ACE_epinephrine",8] call FNC_AddItemVehicle;
    ["ACE_atropine",4] call FNC_AddItemVehicle;
    ["ACE_salineIV_500",5] call FNC_AddItemVehicle;
    ["ACE_personalAidKit", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1HQ

case "FSJ_DC_Z2HQ": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z2HQ;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_K98", 1] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 5] call FNC_AddItemVehicle;
    ["B_LIB_GER_Radio", 1] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 15] call FNC_AddItemVehicle;
    ["SmokeShell", 5] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 10] call FNC_AddItemVehicle;
    ["ACE_morphine", 5] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 5] call FNC_AddItemVehicle;
    ["ACE_epinephrine", 5] call FNC_AddItemVehicle;
    ["ACE_fieldDressing",32] call FNC_AddItemVehicle;
    ["ACE_morphine",10] call FNC_AddItemVehicle;
    ["ACE_epinephrine",8] call FNC_AddItemVehicle;
    ["ACE_atropine",4] call FNC_AddItemVehicle;
    ["ACE_salineIV_500",5] call FNC_AddItemVehicle;
    ["ACE_personalAidKit", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2HQ

//End HQs

//Start 1 Zug

case "FSJ_DC_Z1G1W": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G1;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_ACC_GW_SB_Empty", 1] call FNC_AddItemVehicle;
    ["LIB_K98ZF39", 1] call FNC_AddItemVehicle;
    ["LIB_K98", 1] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_PZGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_SPRGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_MG42", 2] call FNC_AddItemVehicle;
    ["ACE_SpareBarrel", 2] call FNC_AddItemVehicle;
    ["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 10] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 30] call FNC_AddItemVehicle;
    ["SmokeShell", 10] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1G1W

case "FSJ_DC_Z1G2W": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G2;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_ACC_GW_SB_Empty", 1] call FNC_AddItemVehicle;
    ["LIB_K98ZF39", 1] call FNC_AddItemVehicle;
    ["LIB_K98", 1] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_PZGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_SPRGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_MG42", 2] call FNC_AddItemVehicle;
    ["ACE_SpareBarrel", 2] call FNC_AddItemVehicle;
    ["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 10] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 30] call FNC_AddItemVehicle;
    ["SmokeShell", 10] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1G2W

case "FSJ_DC_Z1G3W": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G3;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_ACC_GW_SB_Empty", 1] call FNC_AddItemVehicle;
    ["LIB_K98ZF39", 1] call FNC_AddItemVehicle;
    ["LIB_K98", 1] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_PZGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_SPRGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_MG42", 2] call FNC_AddItemVehicle;
    ["ACE_SpareBarrel", 2] call FNC_AddItemVehicle;
    ["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 10] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 30] call FNC_AddItemVehicle;
    ["SmokeShell", 10] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1G3W

//End 1 Zug

//Start 2 Zug

case "FSJ_DC_Z2G1W": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G1;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_ACC_GW_SB_Empty", 1] call FNC_AddItemVehicle;
    ["LIB_K98ZF39", 1] call FNC_AddItemVehicle;
    ["LIB_K98", 1] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_PZGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_SPRGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_MG42", 2] call FNC_AddItemVehicle;
    ["ACE_SpareBarrel", 2] call FNC_AddItemVehicle;
    ["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 10] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 30] call FNC_AddItemVehicle;
    ["SmokeShell", 10] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2G1W

case "FSJ_DC_Z2G2W": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G2;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_ACC_GW_SB_Empty", 1] call FNC_AddItemVehicle;
    ["LIB_K98ZF39", 1] call FNC_AddItemVehicle;
    ["LIB_K98", 1] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_PZGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_SPRGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_MG42", 2] call FNC_AddItemVehicle;
    ["ACE_SpareBarrel", 2] call FNC_AddItemVehicle;
    ["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 10] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 30] call FNC_AddItemVehicle;
    ["SmokeShell", 10] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2G2W

case "FSJ_DC_Z2G3W": {

    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G3;

    { //start of forEach _squad

    _inventory = magazines _x;

        if (_inventory select 1 == "LIB_5Rnd_792x57") then {
        ["LIB_K98"] call FNC_AddItemVehicle;
        ["LIB_5Rnd_792x57",12] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "len_20Rnd_792x57") then {
        ["LEN_FG42"] call FNC_AddItemVehicle;
        ["len_20Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_10Rnd_792x57") then {
        ["LIB_G43"] call FNC_AddItemVehicle;
        ["LIB_10Rnd_792x57",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_30Rnd_792x33") then {
        ["LIB_MP44"] call FNC_AddItemVehicle;
        ["LIB_30Rnd_792x33",6] call FNC_AddItemVehicle;
         } else {};
        if (_inventory select 1 == "LIB_32Rnd_9x19") then {
        ["LIB_MP40"] call FNC_AddItemVehicle;
        ["LIB_32Rnd_9x19",6] call FNC_AddItemVehicle;
         } else {};

    } forEach _squad; //end of weapon matching

    //extra items
    ["LIB_ACC_GW_SB_Empty", 1] call FNC_AddItemVehicle;
    ["LIB_K98ZF39", 1] call FNC_AddItemVehicle;
    ["LIB_K98", 1] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_PZGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_1Rnd_G_SPRGR_30", 8] call FNC_AddItemVehicle;
    ["LIB_MG42", 2] call FNC_AddItemVehicle;
    ["ACE_SpareBarrel", 2] call FNC_AddItemVehicle;
    ["LIB_50Rnd_792x57", 20] call FNC_AddItemVehicle;

    ["B_LIB_GER_Tonister34_cowhide", 10] call FNC_AddItemVehicle;

    ["LIB_FLARE_PISTOL", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_white", 6] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_green", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_red", 2] call FNC_AddItemVehicle;
    ["LIB_1Rnd_flare_yellow", 2] call FNC_AddItemVehicle;

    ["fow_e_m24", 30] call FNC_AddItemVehicle;
    ["SmokeShell", 10] call FNC_AddItemVehicle;
    ["SmokeShellBlue", 2] call FNC_AddItemVehicle;
    ["SmokeShellGreen", 2] call FNC_AddItemVehicle;
    ["SmokeShellOrange", 2] call FNC_AddItemVehicle;
    ["SmokeShellPurple", 2] call FNC_AddItemVehicle;
    ["SmokeShellRed", 2] call FNC_AddItemVehicle;
    ["SmokeShellYellow", 2] call FNC_AddItemVehicle;
    ["ACE_fieldDressing", 20] call FNC_AddItemVehicle;
    ["ACE_tourniquet", 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2G3W
//End 2 Zug