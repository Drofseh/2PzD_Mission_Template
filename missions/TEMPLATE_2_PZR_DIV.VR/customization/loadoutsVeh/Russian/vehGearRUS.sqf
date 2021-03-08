// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearRUS.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

//Loadout Calls

//1944
// [this, Rus44_Truck] call Olsen_FW_FNC_VehicleGearScript;       1944 Russian Truck
// [this, Rus44_M3] call Olsen_FW_FNC_VehicleGearScript;          1944 Russian M3 Scout Car

//======================== Loadouts ========================

Rus44_Truck = ["Rus44_Truck", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_Mosin, 50] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_DP_Mixed_Ball_Red, 30] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_S, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Frag_P, 30] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Gren_Frag_S, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Gren_AT, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_TT33, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_M1895, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Rus44_M3 = ["Rus44_M3", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_Mosin, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_DP_Mixed_Ball_Red, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_S, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Gren_Frag_S, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Gren_AT, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_TT33, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_M1895, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];
