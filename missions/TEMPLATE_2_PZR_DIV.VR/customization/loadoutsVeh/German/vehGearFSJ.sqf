// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearFSJ.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

    //Loadout Calls
    //These are special and the won't work properly if you just put them in the init of the container.
    //If you're going to make an FSJ mission where the FSJ paradrop let Haas know and he will advise you.
    /*
    call compile preprocessFileLineNumbers "scripts\DropCan.sqf";

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

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;

    [Ger_BP_T34, 5] call FNC_AddItemVehicle;
    [Ger_BP_Radio, 1] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 15] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 5] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_TQ, 5] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_CHQ

case "FSJ_DC_Z1HQ": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1HQ;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;

    [Ger_BP_T34, 5] call FNC_AddItemVehicle;
    [Ger_BP_Radio, 1] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 15] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 5] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_Morp, 5] call FNC_AddItemVehicle;
    [GEN_TQ, 5] call FNC_AddItemVehicle;
    [GEN_Epi, 5] call FNC_AddItemVehicle;
    [GEN_BandageP,32] call FNC_AddItemVehicle;
    [GEN_Morp,10] call FNC_AddItemVehicle;
    [GEN_Epi,8] call FNC_AddItemVehicle;
    [GEN_Saline500,15] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1HQ

case "FSJ_DC_Z2HQ": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z2HQ;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;

    [Ger_BP_T34, 5] call FNC_AddItemVehicle;
    [Ger_BP_Radio, 1] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 15] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 5] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_Morp, 5] call FNC_AddItemVehicle;
    [GEN_TQ, 5] call FNC_AddItemVehicle;
    [GEN_Epi, 5] call FNC_AddItemVehicle;
    [GEN_BandageP,32] call FNC_AddItemVehicle;
    [GEN_Morp,10] call FNC_AddItemVehicle;
    [GEN_Epi,8] call FNC_AddItemVehicle;
    [GEN_Saline500,15] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2HQ
//End HQs

//Start 1 Zug Gruppen
case "FSJ_DC_Z1G1W": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G1;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Acc_K98_GL, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98_Zf39, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 8] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 8] call FNC_AddItemVehicle;
    [Ger_Weap_MG34, 2] call FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call FNC_AddItemVehicle;

    [Ger_BP_T34, 10] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 30] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_BandageP, 10] call FNC_AddItemVehicle;
    [GEN_TQ, 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1G1W

case "FSJ_DC_Z1G2W": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G2;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Acc_K98_GL, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98_Zf39, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 8] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 8] call FNC_AddItemVehicle;
    [Ger_Weap_MG34, 2] call FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call FNC_AddItemVehicle;

    [Ger_BP_T34, 10] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 30] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_BandageP, 10] call FNC_AddItemVehicle;
    [GEN_TQ, 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1G2W

case "FSJ_DC_Z1G3W": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G3;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Acc_K98_GL, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98_Zf39, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 8] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 8] call FNC_AddItemVehicle;
    [Ger_Weap_MG34, 2] call FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call FNC_AddItemVehicle;

    [Ger_BP_T34, 10] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 30] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_BandageP, 10] call FNC_AddItemVehicle;
    [GEN_TQ, 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z1G3W
//End 1 Zug Gruppen

//Start 2 Zug Gruppen
case "FSJ_DC_Z2G1W": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G1;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Acc_K98_GL, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98_Zf39, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 8] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 8] call FNC_AddItemVehicle;
    [Ger_Weap_MG34, 2] call FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call FNC_AddItemVehicle;

    [Ger_BP_T34, 10] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 30] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_BandageP, 10] call FNC_AddItemVehicle;
    [GEN_TQ, 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2G1W

case "FSJ_DC_Z2G2W": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G2;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Acc_K98_GL, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98_Zf39, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 8] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 8] call FNC_AddItemVehicle;
    [Ger_Weap_MG34, 2] call FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call FNC_AddItemVehicle;

    [Ger_BP_T34, 10] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 30] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_BandageP, 10] call FNC_AddItemVehicle;
    [GEN_TQ, 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2G2W

case "FSJ_DC_Z2G3W": {
    //add weapons and/or ammo to vehicle based on ammo of units in group
    _squad = units Z1G3;

    { //start of forEach _squad

        _inventory = toUpper (str (magazines _x));

        if (_inventory find toUpper Ger_Mag_K98 >= 1) then {
            [Ger_Weap_K98] call FNC_AddItemVehicle;
            [Ger_Mag_K98,13] call FNC_AddItemVehicle;
        } else {
            if (_inventory find toUpper Ger_Mag_G43 >= 1) then {
                [Ger_Weap_G43] call FNC_AddItemVehicle;
                [Ger_Mag_G43,7] call FNC_AddItemVehicle;
            } else {
                if (_inventory find toUpper Ger_Mag_StG44 >= 1) then {
                    [Ger_Weap_StG44] call FNC_AddItemVehicle;
                    [Ger_Mag_StG44,7] call FNC_AddItemVehicle;
                } else {
                    if (_inventory find toUpper Ger_Mag_FG42 >= 1) then {
                        [Ger_Weap_FG42] call FNC_AddItemVehicle;
                        [Ger_Mag_FG42,7] call FNC_AddItemVehicle;
                    };
                };
            };
        };
        if (_inventory find toUpper Ger_Mag_MP40 >= 1) then {
            [Ger_Weap_MP40] call FNC_AddItemVehicle;
            [Ger_Mag_MP40,6] call FNC_AddItemVehicle;
        };

    } forEach _squad; //end of weapon matching

    //extra items
    [Ger_Acc_K98_GL, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98_Zf39, 1] call FNC_AddItemVehicle;
    [Ger_Weap_K98, 5] call FNC_AddItemVehicle;
    [Ger_Mag_K98, 60] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 8] call FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 8] call FNC_AddItemVehicle;
    [Ger_Weap_MG34, 2] call FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call FNC_AddItemVehicle;

    [Ger_BP_T34, 10] call FNC_AddItemVehicle;

    [GEN_Flare_Pistol, 2] call FNC_AddItemVehicle;
    [GEN_Flare_W, 6] call FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call FNC_AddItemVehicle;

    [Ger_Gren_HE_SC, 30] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
    [GEN_Bandage, 10] call FNC_AddItemVehicle;
    [GEN_BandageP, 10] call FNC_AddItemVehicle;
    [GEN_TQ, 10] call FNC_AddItemVehicle;
}; //end of case FSJ_DC_Z2G3W
//End 2 Zug
