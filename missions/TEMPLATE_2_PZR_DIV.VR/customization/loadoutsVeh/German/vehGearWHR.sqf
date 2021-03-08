// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearWHR.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

    //Loadout Calls
/*
1939

1940

1941

1942
    [this, Ger42_SdKfz] call Olsen_FW_FNC_VehicleGearScript;           1942 German Halftrack
    [this, Ger42_SdKfz_Zug] call Olsen_FW_FNC_VehicleGearScript;       1942 German Zug Halftrack
    [this, Ger42_SdKfz_SWT] call Olsen_FW_FNC_VehicleGearScript;       1942 German SWT Halftrack
    [this, Ger42_Pzr] call Olsen_FW_FNC_VehicleGearScript;             1942 German Tank

1943
    [this, Ger43_SdKfz] call Olsen_FW_FNC_VehicleGearScript;           1943 German Halftrack
    [this, Ger43_SdKfz_Zug] call Olsen_FW_FNC_VehicleGearScript;       1943 German Zug Halftrack
    [this, Ger43_SdKfz_SWT] call Olsen_FW_FNC_VehicleGearScript;       1943 German SWT Halftrack
    [this, Ger43_Pzr] call Olsen_FW_FNC_VehicleGearScript;             1943 German Tank

1943 Eastern Front
    [this, Ger43_EF_SdKfz] call Olsen_FW_FNC_VehicleGearScript;        1943 German Eastern Front Halftrack
    [this, Ger43_EF_SdKfz_Zug] call Olsen_FW_FNC_VehicleGearScript;    1943 German Eastern Front Zug Halftrack
    [this, Ger43_EF_SdKfz_SWT] call Olsen_FW_FNC_VehicleGearScript;    1943 German Eastern Front SWT Halftrack
    [this, Ger43_EF_Pzr] call Olsen_FW_FNC_VehicleGearScript;          1943 German Eastern Front Tank

1944
    [this, Ger44_SdKfz] call Olsen_FW_FNC_VehicleGearScript;           1944 German Halftrack
    [this, Ger44_SdKfz_Zug] call Olsen_FW_FNC_VehicleGearScript;       1944 German Zug Halftrack
    [this, Ger44_SdKfz_SWT] call Olsen_FW_FNC_VehicleGearScript;       1944 German SWT Halftrack
    [this, Ger44_Pzr] call Olsen_FW_FNC_VehicleGearScript;             1944 German Tank

1945

*/

//======================== Loadouts ========================

Ger42_SdKfz = ["Ger42_SdKfz", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 50] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATL, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger42_SdKfz_Zug = ["Ger42_SdKfz_Zug", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_SurgKit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageField, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandagePacking, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Morp, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline500, 15] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline1000, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger42_SdKfz_SWT = ["Ger42_SdKfz_SWT", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_HE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Smoke, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Illum, 10] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger42_Pzr = ["Ger42_Pzr", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 12] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 4] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 12] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_firing_device, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_DemoLarge, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_SdKfz = ["Ger43_SdKfz", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 50] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATL, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_SdKfz_Zug = ["Ger43_SdKfz_Zug", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_SurgKit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageField, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandagePacking, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Morp, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline500, 15] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline1000, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_SdKfz_SWT = ["Ger43_SdKfz_SWT", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_HE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Smoke, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Illum, 10] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_Pzr = ["Ger43_Pzr", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageField, 12] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 4] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 12] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_firing_device, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_DemoLarge, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_EF_SdKfz = ["Ger43_EF_SdKfz", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_G43, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 50] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SKF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SCK, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATL, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmK, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_Mosin, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_D, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_S, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_TT33, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_M1895, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_EF_SdKfz_Zug = ["Ger43_EF_SdKfz_Zug", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_SurgKit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageField, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandagePacking, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Morp, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline500, 15] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline1000, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_G43, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SKF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SCK, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATL, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmK, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_Mosin, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_D, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_S, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_TT33, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_M1895, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_EF_SdKfz_SWT = ["Ger43_EF_SdKfz_SWT", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_G43, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SKF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SCK, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmK, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_Mosin, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_D, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_S, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_TT33, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_M1895, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_HE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Smoke, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Illum, 10] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger43_EF_Pzr = ["Ger43_EF_Pzr", {
    params ["_vehicle"];

    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageField, 12] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 4] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SKF, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SCK, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 12] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_D, 1] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_PPSH_S, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_TT33, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Rus_Mag_M1895, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_firing_device, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_DemoLarge, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger44_SdKfz = ["Ger44_SdKfz", {
    params ["_vehicle"];

    [Ger_Weap_PzFaust_60, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_G43, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 40] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_StG44, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATL, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmK, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_sparebarrel, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger44_SdKfz_Zug = ["Ger44_SdKfz_Zug", {
    params ["_vehicle"];

    [Ger_Weap_PzFaust_60, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_SurgKit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageField, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandagePacking, 40] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Morp, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline500, 15] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Saline1000, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 20] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_G43, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 15] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_StG44, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATS, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_ATL, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_RGrn_HE, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmK, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger44_SdKfz_SWT = ["Ger44_SdKfz_SWT", {
    params ["_vehicle"];

    [Ger_Weap_PzFaust_60, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_G43, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_K98, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_StG44, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmK, 5] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_HE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Smoke, 10] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_Mort_Illum, 10] call Olsen_FW_FNC_AddItemVehicle;
}];

Ger44_Pzr = ["Ger44_Pzr", {
    params ["_vehicle"];

    [Ger_Weap_PzFaust_60, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageField, 12] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_BandageElastic, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Pain, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_TQ, 4] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Epi, 4] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MG_50_Mixed_SmE, 20] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_MP40, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_P, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_Frag_SF, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Gren_HE_SC, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P38, 12] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_P08, 5] call Olsen_FW_FNC_AddItemVehicle;
    [Ger_Mag_PPK, 2] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_ace_firing_device, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_DemoLarge, 1] call Olsen_FW_FNC_AddItemVehicle;
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
}];
