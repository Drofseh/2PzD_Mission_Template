// Info: German DAK 1943 March Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, DAK43Mar_CC] call Olsen_FW_FNC_GearScript;        Kompanieführer
[this, DAK43Mar_C2] call Olsen_FW_FNC_GearScript;        Kompanietruppführer

    //Zugtrupp
[this, DAK43Mar_PC] call Olsen_FW_FNC_GearScript;        Zugführer
[this, DAK43Mar_P2] call Olsen_FW_FNC_GearScript;        Zugtruppführer
[this, DAK43Mar_RTO] call Olsen_FW_FNC_GearScript;       Funker
[this, DAK43Mar_Mess] call Olsen_FW_FNC_GearScript;      Melder
[this, DAK43Mar_MedP] call Olsen_FW_FNC_GearScript;      Krankenträger

    //Gruppe
[this, DAK43Mar_SL] call Olsen_FW_FNC_GearScript;        Gruppenführer
[this, DAK43Mar_S2] call Olsen_FW_FNC_GearScript;        Stellvertretender Gruppenführer
[this, DAK43Mar_S3] call Olsen_FW_FNC_GearScript;        Gefreiter
[this, DAK43Mar_MG] call Olsen_FW_FNC_GearScript;        MG-Richtschütze
[this, DAK43Mar_MGA] call Olsen_FW_FNC_GearScript;       MG-Hilfsschütze
[this, DAK43Mar_MGAB] call Olsen_FW_FNC_GearScript;      MG-Munitionsträger
[this, DAK43Mar_Gren] call Olsen_FW_FNC_GearScript;      Grenadier
[this, DAK43Mar_MedS] call Olsen_FW_FNC_GearScript;      Hilfs-Krankenträger
[this, DAK43Mar_Rif] call Olsen_FW_FNC_GearScript;       Gewehrschütze

    //Weapon Truppen
[this, DAK43Mar_MortSL] call Olsen_FW_FNC_GearScript;    Mortar Truppführer
[this, DAK43Mar_MortG] call Olsen_FW_FNC_GearScript;     Mortar Granatwerferschützen
[this, DAK43Mar_MortA] call Olsen_FW_FNC_GearScript;     Mortar Munitionsträger

[this, DAK43Mar_HMGSL] call Olsen_FW_FNC_GearScript;     HMG Truppführer
[this, DAK43Mar_HMGG] call Olsen_FW_FNC_GearScript;      HMG Richtschütze
[this, DAK43Mar_HMGA] call Olsen_FW_FNC_GearScript;      HMG Munitionsträger

[this, DAK43Mar_ATRSL] call Olsen_FW_FNC_GearScript;     Panzerbüchse Truppführer
[this, DAK43Mar_ATRG] call Olsen_FW_FNC_GearScript;      Panzerbüchse Richtschütze
[this, DAK43Mar_ATRA] call Olsen_FW_FNC_GearScript;      Panzerbüchse Munitionsträger

    //Tank Crew
[this, DAK43Mar_VCom] call Olsen_FW_FNC_GearScript;      Besatzungsführer
[this, DAK43Mar_VCrew] call Olsen_FW_FNC_GearScript;     Besatzung
*/

//======================== Definitions ========================

#define DAK43Mar_Weapon_SMG_Off \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[95], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK43Mar_Weapon_SMG_Enl \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[95], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK43Mar_Weapon_Rifle \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[96], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[4] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK43Mar_Weapon_MG \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[85], \
            [ \
                [Ger_Weap_MG42] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK43Mar_Weapon_Pistol_Off \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[59], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[27], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Pol_Mag_Radom,1], \
                [Pol_Weap_Radom], \
                [Pol_Mag_Radom,2,"uniform"] \
            ],[2], \
            [ \
                [UK_Mag_HiPower,1], \
                [UK_Weap_HiPower], \
                [UK_Mag_HiPower,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK43Mar_Weapon_Pistol_Enl \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[61], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[35], \
            [ \
                [Pol_Mag_Radom,1], \
                [Pol_Weap_Radom], \
                [Pol_Mag_Radom,2,"uniform"] \
            ],[2], \
            [ \
                [UK_Mag_HiPower,1], \
                [UK_Weap_HiPower], \
                [UK_Mag_HiPower,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    DAK43Mar_CC = ["DAK43Mar_CC", {
        params ["_unit"];

        [DAK_Uni_CC] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_SMG_Off;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Off;
    }];

    //Kompanietruppführer
    DAK43Mar_C2 = ["DAK43Mar_C2", {
        params ["_unit"];

        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_SMG_Off;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;
    }];

//Platoon HQ

    //Zugführer
    DAK43Mar_PC = ["DAK43Mar_PC", {
        params ["_unit"];

        [DAK_Uni_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_SMG_Off;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Off;
    }];

    //Zugtruppführer
    DAK43Mar_P2 = ["DAK43Mar_P2", {
        params ["_unit"];

        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_SL] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_SMG_Off;

        //Extra
        [
            [
                [Ger_Gren_HE_SC,1]
            ],[66],
            [
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    DAK43Mar_RTO = ["DAK43Mar_RTO", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [DAK_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;
    }];

    //Melder
    DAK43Mar_Mess = ["DAK43Mar_Mess", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [
            [
                [Ger_Gren_HE_SC,1]
            ],[66],
            [
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    DAK43Mar_MedP = ["DAK43Mar_MedP", {
        params ["_unit"];

        [DAK_Uni_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    }];

//Squad

    //Gruppenführer
    DAK43Mar_SL = ["DAK43Mar_SL", {
        params ["_unit"];

        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_SL] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_SMG_Enl;

        //Extra
        [
            [
                [Ger_Gren_HE_SC,1]
            ],[66],
            [
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    DAK43Mar_S2 = ["DAK43Mar_S2", {
        params ["_unit"];

        [DAK_Uni_S2_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_addItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [
            [
                [Ger_Gren_HE_SC,1]
            ],[66],
            [
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gefreiter
    DAK43Mar_S3 = ["DAK43Mar_S3", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_SMG_Enl;

        //Extra
        [
            [
                [Ger_Gren_HE_SC,1]
            ],[66],
            [
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    DAK43Mar_MG = ["DAK43Mar_MG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        DAK43Mar_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,4,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    DAK43Mar_MGA = ["DAK43Mar_MGA", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Munitionsträger
    DAK43Mar_MGAB = ["DAK43Mar_MGAB", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    DAK43Mar_Gren = ["DAK43Mar_Gren", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATL,2] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    DAK43Mar_MedS = ["DAK43Mar_MedS", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [
            [
                [Ger_Gren_HE_SC,1]
            ],[66],
            [
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    DAK43Mar_Rif = ["DAK43Mar_Rif", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [
            [
                [Ger_Gren_HE_SC,1]
            ],[66],
            [
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    DAK43Mar_MortSL = ["DAK43Mar_MortSL", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Granatwerferschützen
    DAK43Mar_MortG = ["DAK43Mar_MortG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_addItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Munitionsträger
    DAK43Mar_MortA = ["DAK43Mar_MortA", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_addItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Team
    //HMG Truppführer
    DAK43Mar_HMGSL = ["DAK43Mar_HMGSL", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    DAK43Mar_HMGG = ["DAK43Mar_HMGG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        DAK43Mar_Weapon_MG;
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Munitionsträger
    DAK43Mar_HMGA = ["DAK43Mar_HMGA", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    DAK43Mar_ATRSL = ["DAK43Mar_ATRSL", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Richtschütze
    DAK43Mar_ATRG = ["DAK43Mar_ATRG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Munitionsträger
    DAK43Mar_ATRAB = ["DAK43Mar_ATRAB", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Besatzungsführer
    DAK43Mar_VCom = ["DAK43Mar_VCom", {
        params ["_unit"];

        [DAK_Uni_VCom_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK43Mar_Weapon_SMG_Off;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Off;
    }];

    //Besatzung
    DAK43Mar_VCrew = ["DAK43Mar_VCrew", {
        params ["_unit"];

        [DAK_Uni_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK43Mar_Weapon_Pistol_Enl;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
