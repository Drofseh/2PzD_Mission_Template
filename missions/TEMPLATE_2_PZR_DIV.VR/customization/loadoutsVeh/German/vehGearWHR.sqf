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
    [this, "1942_G_SdKfz"] call FNC_VehicleGearScript;           1942 German Halftrack
    [this, "1942_G_SdKfz_Zug"] call FNC_VehicleGearScript;       1942 German Zug Halftrack
    [this, "1942_G_SdKfz_SWT"] call FNC_VehicleGearScript;       1942 German SWT Halftrack
    [this, "1942_G_Pzr"] call FNC_VehicleGearScript;             1942 German Tank

1943
    [this, "1943_G_SdKfz"] call FNC_VehicleGearScript;           1943 German Halftrack
    [this, "1943_G_SdKfz_Zug"] call FNC_VehicleGearScript;       1943 German Zug Halftrack
    [this, "1943_G_SdKfz_SWT"] call FNC_VehicleGearScript;       1943 German SWT Halftrack
    [this, "1943_G_Pzr"] call FNC_VehicleGearScript;             1943 German Tank

1943 Eastern Front
    [this, "1943_G_EF_SdKfz"] call FNC_VehicleGearScript;        1943 German Eastern Front Halftrack
    [this, "1943_G_EF_SdKfz_Zug"] call FNC_VehicleGearScript;    1943 German Eastern Front Zug Halftrack
    [this, "1943_G_EF_SdKfz_SWT"] call FNC_VehicleGearScript;    1943 German Eastern Front SWT Halftrack
    [this, "1943_G_EF_Pzr"] call FNC_VehicleGearScript;          1943 German Eastern Front Tank

1944
    [this, "1944_G_SdKfz"] call FNC_VehicleGearScript;           1944 German Halftrack
    [this, "1944_G_SdKfz_Zug"] call FNC_VehicleGearScript;       1944 German Zug Halftrack
    [this, "1944_G_SdKfz_SWT"] call FNC_VehicleGearScript;       1944 German SWT Halftrack
    [this, "1944_G_Pzr"] call FNC_VehicleGearScript;             1944 German Tank

1945

*/

//======================== Loadouts ========================

    case "1942_G_SdKfz": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 50] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 20] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 20] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATS, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATL, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_HE, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 2] call FNC_AddItemVehicle;
        [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1942_G_SdKfz_Zug": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_SurgKit, 1] call FNC_AddItemVehicle;
        [GEN_Bandage, 40] call FNC_AddItemVehicle;
        [GEN_BandageE, 20] call FNC_AddItemVehicle;
        [GEN_BandageP, 40] call FNC_AddItemVehicle;
        [GEN_Pain, 20] call FNC_AddItemVehicle;
        [GEN_Morp, 10] call FNC_AddItemVehicle;
        [GEN_Saline500, 15] call FNC_AddItemVehicle;
        [GEN_TQ, 20] call FNC_AddItemVehicle;
        [GEN_Epi, 20] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 15] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 10] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 20] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1942_G_SdKfz_SWT": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 20] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 15] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_HE, 20] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Smoke, 10] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Illum, 10] call FNC_AddItemVehicle;
    };

    case "1942_G_Pzr": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_BandageE, 12] call FNC_AddItemVehicle;
        [GEN_BandageE, 4] call FNC_AddItemVehicle;
        [GEN_Pain, 4] call FNC_AddItemVehicle;
        [GEN_TQ, 4] call FNC_AddItemVehicle;
        [GEN_Epi, 4] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 5] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 12] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [GEN_ace_firing_device, 1] call FNC_AddItemVehicle;
        [GEN_DemoLarge, 1] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1943_G_SdKfz": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 50] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 20] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATS, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATL, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_HE, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1943_G_SdKfz_Zug": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_SurgKit, 1] call FNC_AddItemVehicle;
        [GEN_Bandage, 40] call FNC_AddItemVehicle;
        [GEN_BandageE, 20] call FNC_AddItemVehicle;
        [GEN_BandageP, 40] call FNC_AddItemVehicle;
        [GEN_Pain, 20] call FNC_AddItemVehicle;
        [GEN_Morp, 10] call FNC_AddItemVehicle;
        [GEN_Saline500, 15] call FNC_AddItemVehicle;
        [GEN_TQ, 20] call FNC_AddItemVehicle;
        [GEN_Epi, 20] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 15] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 10] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1943_G_SdKfz_SWT": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_HE, 20] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Smoke, 10] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Illum, 10] call FNC_AddItemVehicle;
    };

    case "1943_G_Pzr": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_Bandage, 12] call FNC_AddItemVehicle;
        [GEN_BandageE, 4] call FNC_AddItemVehicle;
        [GEN_Pain, 4] call FNC_AddItemVehicle;
        [GEN_TQ, 4] call FNC_AddItemVehicle;
        [GEN_Epi, 4] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 5] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 5] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 12] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [GEN_ace_firing_device, 1] call FNC_AddItemVehicle;
        [GEN_DemoLarge, 1] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1943_G_EF_SdKfz": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_G43, 10] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 50] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 20] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATS, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATL, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_HE, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SmE50, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SMK50, 5] call FNC_AddItemVehicle;
        [Rus_Mag_Mosin, 15] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_D, 5] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_S, 10] call FNC_AddItemVehicle;
        [Rus_Mag_SVT40, 10] call FNC_AddItemVehicle;
        [Rus_Mag_TT33, 5] call FNC_AddItemVehicle;
        [Rus_Mag_M1895, 5] call FNC_AddItemVehicle;
        [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1943_G_EF_SdKfz_Zug": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_SurgKit, 1] call FNC_AddItemVehicle;
        [GEN_Bandage, 40] call FNC_AddItemVehicle;
        [GEN_BandageE, 20] call FNC_AddItemVehicle;
        [GEN_BandageP, 40] call FNC_AddItemVehicle;
        [GEN_Pain, 20] call FNC_AddItemVehicle;
        [GEN_Morp, 10] call FNC_AddItemVehicle;
        [GEN_Saline500, 15] call FNC_AddItemVehicle;
        [GEN_TQ, 20] call FNC_AddItemVehicle;
        [GEN_Epi, 20] call FNC_AddItemVehicle;
        [Ger_Mag_G43, 5] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 15] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 10] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATS, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATL, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_HE, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SmE50, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SMK50, 5] call FNC_AddItemVehicle;
        [Rus_Mag_Mosin, 15] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_D, 5] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_S, 10] call FNC_AddItemVehicle;
        [Rus_Mag_SVT40, 10] call FNC_AddItemVehicle;
        [Rus_Mag_TT33, 5] call FNC_AddItemVehicle;
        [Rus_Mag_M1895, 5] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1943_G_EF_SdKfz_SWT": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_G43, 5] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SmE50, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SMK50, 5] call FNC_AddItemVehicle;
        [Rus_Mag_Mosin, 15] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_D, 5] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_S, 10] call FNC_AddItemVehicle;
        [Rus_Mag_SVT40, 10] call FNC_AddItemVehicle;
        [Rus_Mag_TT33, 5] call FNC_AddItemVehicle;
        [Rus_Mag_M1895, 5] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_HE, 20] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Smoke, 10] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Illum, 10] call FNC_AddItemVehicle;
    };

    case "1943_G_EF_Pzr": {
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_Bandage, 12] call FNC_AddItemVehicle;
        [GEN_BandageE, 4] call FNC_AddItemVehicle;
        [GEN_Pain, 4] call FNC_AddItemVehicle;
        [GEN_TQ, 4] call FNC_AddItemVehicle;
        [GEN_Epi, 4] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 5] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKF, 5] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SKC, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 12] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_D, 1] call FNC_AddItemVehicle;
        [Rus_Mag_PPSH_S, 2] call FNC_AddItemVehicle;
        [Rus_Mag_TT33, 5] call FNC_AddItemVehicle;
        [Rus_Mag_M1895, 5] call FNC_AddItemVehicle;
        [GEN_ace_firing_device, 1] call FNC_AddItemVehicle;
        [GEN_DemoLarge, 1] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1944_G_SdKfz": {
        [Ger_Weap_PzFaust_30, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_G43, 10] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 40] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 20] call FNC_AddItemVehicle;
        [Ger_Mag_StG44, 10] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATS, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATL, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_HE, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SmE50, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SMK50, 5] call FNC_AddItemVehicle;
        [GEN_ace_sparebarrel, 2] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1944_G_SdKfz_Zug": {
        [Ger_Weap_PzFaust_30, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_SurgKit, 1] call FNC_AddItemVehicle;
        [GEN_Bandage, 40] call FNC_AddItemVehicle;
        [GEN_BandageE, 20] call FNC_AddItemVehicle;
        [GEN_BandageP, 40] call FNC_AddItemVehicle;
        [GEN_Pain, 20] call FNC_AddItemVehicle;
        [GEN_Morp, 10] call FNC_AddItemVehicle;
        [GEN_Saline500, 15] call FNC_AddItemVehicle;
        [GEN_TQ, 20] call FNC_AddItemVehicle;
        [GEN_Epi, 20] call FNC_AddItemVehicle;
        [Ger_Mag_G43, 5] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 15] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 10] call FNC_AddItemVehicle;
        [Ger_Mag_StG44, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATS, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_ATL, 5] call FNC_AddItemVehicle;
        [Ger_Mag_RGrn_HE, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SmE50, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SMK50, 5] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };

    case "1944_G_SdKfz_SWT": {
        [Ger_Weap_PzFaust_30, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [Ger_Mag_G43, 5] call FNC_AddItemVehicle;
        [Ger_Mag_K98, 10] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [Ger_Mag_StG44, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 10] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 10] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SmE50, 5] call FNC_AddItemVehicle;
        [Ger_Mag_MG_SMK50, 5] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_HE, 20] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Smoke, 10] call FNC_AddItemVehicle;
        [Ger_Mag_Mort_Illum, 10] call FNC_AddItemVehicle;
    };

    case "1944_G_Pzr": {
        [Ger_Weap_PzFaust_30, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Pistol, 1] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_W, 10] call FNC_AddItemVehicle;
        [GEN_Flare_G, 2] call FNC_AddItemVehicle;
        [GEN_Flare_R, 2] call FNC_AddItemVehicle;
        [GEN_Flare_W, 2] call FNC_AddItemVehicle;
        [GEN_Flare_Y, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_B, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_G, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_O, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_P, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_R, 2] call FNC_AddItemVehicle;
        [GEN_Gren_Smoke_Y, 2] call FNC_AddItemVehicle;
        [GEN_Bandage, 12] call FNC_AddItemVehicle;
        [GEN_BandageE, 4] call FNC_AddItemVehicle;
        [GEN_Pain, 4] call FNC_AddItemVehicle;
        [GEN_TQ, 4] call FNC_AddItemVehicle;
        [GEN_Epi, 4] call FNC_AddItemVehicle;
        [Ger_Mag_MG_50, 20] call FNC_AddItemVehicle;
        [Ger_Mag_MP40, 5] call FNC_AddItemVehicle;
        [GEN_Gren_Frag_P, 5] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SF, 5] call FNC_AddItemVehicle;
        [Ger_Gren_Frag_SC, 5] call FNC_AddItemVehicle;
        [Ger_Mag_P38, 12] call FNC_AddItemVehicle;
        [Ger_Mag_P08, 5] call FNC_AddItemVehicle;
        [Ger_Mag_PPK, 2] call FNC_AddItemVehicle;
        [GEN_ace_firing_device, 1] call FNC_AddItemVehicle;
        [GEN_DemoLarge, 1] call FNC_AddItemVehicle;
        [GEN_Toolkit, 1] call FNC_AddItemVehicle;
    };