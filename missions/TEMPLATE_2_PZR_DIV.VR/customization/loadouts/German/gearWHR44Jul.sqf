// Info: German Wehrmacht 1944 July Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHR44Jul_CC"] call Olsen_FW_FNC_GearScript;       Kompanieführer
[this,"WHR44Jul_C2"] call Olsen_FW_FNC_GearScript;       Kompanietruppführer

    //Zugtrupp
[this,"WHR44Jul_PC"] call Olsen_FW_FNC_GearScript;       Zugführer
[this,"WHR44Jul_P2"] call Olsen_FW_FNC_GearScript;       Zugtruppführer
[this,"WHR44Jul_RTO"] call Olsen_FW_FNC_GearScript;      Funker
[this,"WHR44Jul_Mess"] call Olsen_FW_FNC_GearScript;     Melder
[this,"WHR44Jul_MedP"] call Olsen_FW_FNC_GearScript;     Krankenträger

    //Gruppe
[this,"WHR44Jul_SL"] call Olsen_FW_FNC_GearScript;       Gruppenführer
[this,"WHR44Jul_S2"] call Olsen_FW_FNC_GearScript;       Stellvertretender Gruppenführer
[this,"WHR44Jul_S3"] call Olsen_FW_FNC_GearScript;       Gefreiter
[this,"WHR44Jul_MG"] call Olsen_FW_FNC_GearScript;       MG-Richtschütze
[this,"WHR44Jul_MGA"] call Olsen_FW_FNC_GearScript;      MG-Hilfsschütze
[this,"WHR44Jul_MGAB"] call Olsen_FW_FNC_GearScript;     MG-Munitionsträger
[this,"WHR44Jul_Gren"] call Olsen_FW_FNC_GearScript;     Grenadier
[this,"WHR44Jul_MedS"] call Olsen_FW_FNC_GearScript;     Hilfs-Krankenträger
[this,"WHR44Jul_Rif"] call Olsen_FW_FNC_GearScript;      Gewehrschütze

    //Weapon Truppen
[this,"WHR44Jul_MortSL"] call Olsen_FW_FNC_GearScript;   Mortar Truppführer
[this,"WHR44Jul_MortG"] call Olsen_FW_FNC_GearScript;    Mortar Granatwerferschützen
[this,"WHR44Jul_MortA"] call Olsen_FW_FNC_GearScript;    Mortar Munitionsträger

[this,"WHR44Jul_HMGSL"] call Olsen_FW_FNC_GearScript;    HMG Truppführer
[this,"WHR44Jul_HMGG"] call Olsen_FW_FNC_GearScript;     HMG Richtschütze
[this,"WHR44Jul_HMGA"] call Olsen_FW_FNC_GearScript;     HMG Munitionsträger

[this,"WHR44Jul_ATRSL"] call Olsen_FW_FNC_GearScript;    Panzerbüchse Truppführer
[this,"WHR44Jul_ATRG"] call Olsen_FW_FNC_GearScript;     Panzerbüchse Richtschütze
[this,"WHR44Jul_ATRA"] call Olsen_FW_FNC_GearScript;     Panzerbüchse Munitionsträger

[this,"WHR44Jul_ATSL"] call Olsen_FW_FNC_GearScript;     Panzerschreck Truppführer
[this,"WHR44Jul_ATG"] call Olsen_FW_FNC_GearScript;      Panzerschreck Richtschütze
[this,"WHR44Jul_ATA"] call Olsen_FW_FNC_GearScript;      Panzerschreck Munitionsträger

    //Tank Crew
[this,"WHR44Jul_VCom"] call Olsen_FW_FNC_GearScript;     Besatzungsführer
[this,"WHR44Jul_VCrew"] call Olsen_FW_FNC_GearScript;    Besatzung
*/

//======================== Definitions ========================

//For Kompanieführer, Kompanietruppführer, Zugführer, Zugtruppführer, and Besatzungsführer
#define WHR44Jul_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[99], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gruppenführer
#define WHR44Jul_Weapon_GF \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[99], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gefreiter
#define WHR44Jul_Weapon_Gef \
        [ \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[79], \
            [ \
                [Ger_Vest_StG44,1], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all men with rifles except the MG-Hilfsschütze & Grenadier
#define WHR44Jul_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[65], \
            [ \
                [Ger_Vest_G43], \
                [Ger_Mag_G43,1], \
                [Ger_Weap_G43], \
                [Ger_Mag_G43,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For MG-Richtschütze
#define WHR44Jul_Weapon_MG \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[55], \
            [ \
                [Ger_Weap_MG42] \
            ],[45] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For MG-Hilfsschütze
#define WHR44Jul_Weapon_MGA \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[65], \
            [ \
                [Ger_Mag_G43,1], \
                [Ger_Weap_G43], \
                [Ger_Mag_G43,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Grenadier
#define WHR44Jul_Weapon_Grenadier \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_K98,12,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[85], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_StG44,6,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Kompanieführer, Zugführer and Besatzungsführer
#define WHR44Jul_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[71], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[15], \
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

//For Kompanietruppführer, MG-Richtschütze, Mortar Truppführer, Mortar Granatwerferschützen,
//HMG Richtschütze, Panzerbüchse Richtschütze, Besatzung
#define WHR44Jul_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[73], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[23], \
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

// Panzerfaust
#define WHR44Jul_Weapon_PzFaust \
        [ \
            [ \
                [Ger_Weap_PzFaust_30] \
            ],[50], \
            [ \
                [Ger_Weap_PzFaust_60] \
            ],[25], \
            [ \
                [Ger_Weap_PzFaust_K] \
            ],[25] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHR44Jul_CC" : {
        [Ger_Uni_CC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Officer;

        //Secondary Weapon
        WHR44Jul_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHR44Jul_C2" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Officer;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHR44Jul_PC" : {
        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Officer;

        //Secondary Weapon
        WHR44Jul_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHR44Jul_P2" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Officer;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Funker
    case "WHR44Jul_RTO" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;
    };

    //Melder
    case "WHR44Jul_Mess" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Krankenträger
    case "WHR44Jul_MedP" : {
        [Ger_Uni_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHR44Jul_SL" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_GF;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "WHR44Jul_S2" : {
        [Ger_Uni_S2_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Gefreiter
    case "WHR44Jul_S3" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Gef;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Richtschütze
    case "WHR44Jul_MG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        WHR44Jul_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "WHR44Jul_MGA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44Jul_Weapon_MGA;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    };

    //MG-Munitionsträger
    case "WHR44Jul_MGAB" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
    };

    //Grenadier
    case "WHR44Jul_Gren" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Grenadier;
    };

    //Hilfs-Krankenträger
    case "WHR44Jul_MedS" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Gewehrschütze
    case "WHR44Jul_Rif" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Launcher
        WHR44Jul_Weapon_PzFaust;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,3,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHR44Jul_MortSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHR44Jul_MortG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHR44Jul_MortA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHR44Jul_HMGSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHR44Jul_HMGG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        WHR44Jul_Weapon_MG;
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHR44Jul_HMGA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHR44Jul_ATRSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHR44Jul_ATRG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHR44Jul_ATRAB" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerschreck Team
    //Panzerschreck Truppführer
    case "WHR44Jul_ATSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Gef;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerschreck Richtschütze
    case "WHR44Jul_ATG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_Pzschrck] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
    };

    //Panzerschreck Munitionsträger
    case "WHR44Jul_ATA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHR44Jul_VCom" : {
        [Ger_Uni_VCom] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCom] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jul_Weapon_Officer;

        //Secondary Weapon
        WHR44Jul_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHR44Jul_VCrew" : {
        [Ger_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCrew] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jul_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
