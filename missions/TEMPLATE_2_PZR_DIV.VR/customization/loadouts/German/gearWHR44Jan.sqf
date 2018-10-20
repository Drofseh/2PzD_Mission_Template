// Info: German Wehrmacht 1944 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHR44Jan_CC"] call FNC_GearScript;       Kompanieführer
[this,"WHR44Jan_C2"] call FNC_GearScript;       Kompanietruppführer

    //Zugtrupp
[this,"WHR44Jan_PC"] call FNC_GearScript;       Zugführer
[this,"WHR44Jan_P2"] call FNC_GearScript;       Zugtruppführer
[this,"WHR44Jan_RTO"] call FNC_GearScript;      Funker
[this,"WHR44Jan_Mess"] call FNC_GearScript;     Melder
[this,"WHR44Jan_MedP"] call FNC_GearScript;     Krankenträger

    //Gruppe
[this,"WHR44Jan_SL"] call FNC_GearScript;       Gruppenführer
[this,"WHR44Jan_S2"] call FNC_GearScript;       Stellvertretender Gruppenführer
[this,"WHR44Jan_S3"] call FNC_GearScript;       Gefreiter
[this,"WHR44Jan_MG"] call FNC_GearScript;       MG-Richtschütze
[this,"WHR44Jan_MGA"] call FNC_GearScript;      MG-Hilfsschütze
[this,"WHR44Jan_MGAB"] call FNC_GearScript;     MG-Munitionsträger
[this,"WHR44Jan_Gren"] call FNC_GearScript;     Grenadier
[this,"WHR44Jan_MedS"] call FNC_GearScript;     Hilfs-Krankenträger
[this,"WHR44Jan_Rif"] call FNC_GearScript;      Gewehrschütze

    //Weapon Truppen
[this,"WHR44Jan_MortSL"] call FNC_GearScript;   Mortar Truppführer
[this,"WHR44Jan_MortG"] call FNC_GearScript;    Mortar Granatwerferschützen
[this,"WHR44Jan_MortA"] call FNC_GearScript;    Mortar Munitionsträger

[this,"WHR44Jan_HMGSL"] call FNC_GearScript;    HMG Truppführer
[this,"WHR44Jan_HMGG"] call FNC_GearScript;     HMG Richtschütze
[this,"WHR44Jan_HMGA"] call FNC_GearScript;     HMG Munitionsträger

[this,"WHR44Jan_ATRSL"] call FNC_GearScript;    Panzerbüchse Truppführer
[this,"WHR44Jan_ATRG"] call FNC_GearScript;     Panzerbüchse Richtschütze
[this,"WHR44Jan_ATRA"] call FNC_GearScript;     Panzerbüchse Munitionsträger

[this,"WHR44Jan_ATSL"] call FNC_GearScript;     Panzerschreck Truppführer
[this,"WHR44Jan_ATG"] call FNC_GearScript;      Panzerschreck Richtschütze
[this,"WHR44Jan_ATA"] call FNC_GearScript;      Panzerschreck Munitionsträger

    //Tank Crew
[this,"WHR44Jan_VOff"] call FNC_GearScript;     Panzer Zugführer
[this,"WHR44Jan_VCom"] call FNC_GearScript;     Panzerbesatzungsführer
[this,"WHR44Jan_VOGef"] call FNC_GearScript;    Panzer Funker
[this,"WHR44Jan_VGef"] call FNC_GearScript;     Panzerschütze
[this,"WHR44Jan_VCrew"] call FNC_GearScript;    Panzerbesatzung
*/

//======================== Definitions ========================

//For Kompanieführer, Kompanietruppführer, Zugführer, Zugtruppführer, and Besatzungsführer
#define WHR44Jan_Weapon_Officer_Primary \
        [                               \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP40],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[99],                     \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[1]                       \
        ] call FNC_AddItemRandomPercent;

// For Gruppenführer
#define WHR44Jan_Weapon_GF_Primary      \
        [                               \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP40],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[99],                     \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[1]                       \
        ] call FNC_AddItemRandomPercent;

// For Gefreiter
#define WHR44Jan_Weapon_Gef_Primary      \
        [                                \
            [                            \
                [Ger_Vest_MP40],         \
                [Ger_Mag_MP40,1],        \
                [Ger_Weap_MP40],         \
                [Ger_Mag_MP40,6,"vest"]  \
            ],[84],                      \
            [                            \
                [Ger_Vest_StG44,1],      \
                [Ger_Mag_StG44,1],       \
                [Ger_Weap_StG44],        \
                [Ger_Mag_StG44,6,"vest"] \
            ],[15],                       \
            [                            \
                [Ger_Vest_MP40],         \
                [Ger_Mag_MP40,1],        \
                [Ger_Weap_MP38],         \
                [Ger_Mag_MP40,6,"vest"]  \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For all men with rifles, except Grenadier
#define WHR44Jan_Weapon_Rifleman_Primary \
        [                                \
            [                            \
                [Ger_Vest_K98],          \
                [Ger_Mag_K98,1],         \
                [Ger_Weap_K98],          \
                [Ger_Mag_K98,12,"vest"]  \
            ],[75],                      \
            [                            \
                [Ger_Vest_G43],          \
                [Ger_Mag_G43,1],         \
                [Ger_Weap_G43],          \
                [Ger_Mag_G43,6,"vest"]   \
            ],[15],                      \
            [                            \
                [Ger_Vest_StG44],        \
                [Ger_Mag_StG44,1],       \
                [Ger_Weap_StG44],        \
                [Ger_Mag_StG44,6,"vest"] \
            ],[10]                       \
        ] call FNC_AddItemRandomPercent;

// For MG-Richtschütze
#define WHR44Jan_Weapon_MG_Primary \
        [                          \
            [                      \
                [Ger_Weap_MG34]    \
            ],[65],                \
            [                      \
                [Ger_Weap_MG42]    \
            ],[35]                 \
        ] call FNC_AddItemRandomPercent;

//For Kompanieführer, Zugführer and Besatzungsführer
#define WHR44Jan_Weapon_Officer_Secondary \
        [                                 \
            [                             \
                [Ger_Mag_P38,1],          \
                [Ger_Weap_P38],           \
                [Ger_Mag_P38,2]           \
            ],[68],                       \
            [                             \
                [Ger_Mag_P08,1],          \
                [Ger_Weap_P08],           \
                [Ger_Mag_P08,2]           \
            ],[18],                       \
            [                             \
                [Ger_Mag_PPK,1],          \
                [Ger_Weap_PPK],           \
                [Ger_Mag_PPK,2]           \
            ],[10],                       \
            [                             \
                [Pol_Mag_Radom,1],        \
                [Pol_Weap_Radom],         \
                [Pol_Mag_Radom,2]         \
            ],[2],                        \
            [                             \
                [UK_Mag_HiPower,1],       \
                [UK_Weap_HiPower],        \
                [UK_Mag_HiPower,2]        \
            ],[2]                         \
        ] call FNC_AddItemRandomPercent;

//For Kompanietruppführer, MG-Richtschütze, Mortar Truppführer, Mortar Granatwerferschützen,
//HMG Richtschütze, Panzerbüchse Richtschütze, Besatzung
#define WHR44Jan_Weapon_Enlisted_Secondary \
        [                                  \
            [                              \
                [Ger_Mag_P38,1],           \
                [Ger_Weap_P38],            \
                [Ger_Mag_P38,2]            \
            ],[70],                        \
            [                              \
                [Ger_Mag_P08,1],           \
                [Ger_Weap_P08],            \
                [Ger_Mag_P08,2]            \
            ],[26],                        \
            [                              \
                [Pol_Mag_Radom,1],         \
                [Pol_Weap_Radom],          \
                [Pol_Mag_Radom,2]          \
            ],[2],                         \
            [                              \
                [UK_Mag_HiPower,1],        \
                [UK_Weap_HiPower],         \
                [UK_Mag_HiPower,2]         \
            ],[2]                          \
        ] call FNC_AddItemRandomPercent;

// Panzerfaust
#define WHR44Jan_Weapon_PzFaust        \
        [                              \
            [                          \
                [Ger_Weap_PzFaust_30] \
            ],[50],                    \
            [                          \
                [Ger_Weap_PzFaust_60]  \
            ],[25],                    \
            [                          \
                [Ger_Weap_PzFaust_K]   \
            ],[25]                     \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHR44Jan_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR44Jan_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHR44Jan_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHR44Jan_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR44Jan_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHR44Jan_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Officer_Primary;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHR44Jan_RTO" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call FNC_AddItem;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;
    };

    //Melder
    case "WHR44Jan_Mess" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHR44Jan_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHR44Jan_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_GF_Primary;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "WHR44Jan_S2" : {
        [Ger_Uni_S2_L] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Gefreiter
    case "WHR44Jan_S3" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Gef_Primary;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "WHR44Jan_MG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        WHR44Jan_Weapon_MG_Primary;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "WHR44Jan_MGA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Munitionsträger
    case "WHR44Jan_MGAB" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_MG_50,5] call FNC_AddItem;
    };

    //Grenadier
    case "WHR44Jan_Gren" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Weap_K98_RG] call FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,1] call FNC_AddItem;
        [Ger_Mag_RGrn_ATL,3] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHR44Jan_MedS" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHR44Jan_Rif" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Launcher
        WHR44Jan_Weapon_PzFaust;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,3,"backpack"] call FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHR44Jan_MortSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHR44Jan_MortG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItemRandom;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHR44Jan_MortA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHR44Jan_HMGSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHR44Jan_HMGG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        WHR44Jan_Weapon_MG_Primary;
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHR44Jan_HMGA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHR44Jan_ATRSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHR44Jan_ATRG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHR44Jan_ATRAB" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Panzerschreck Team
    //Panzerschreck Truppführer
    case "WHR44Jan_ATSL" : {
        [Ger_Uni_S3_L] call FNC_AddItem;
        [Ger_BP_Pzr] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Gef_Primary;

        //Extra
        [Ger_Mag_Pzschrck,5] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerschreck Richtschütze
    case "WHR44Jan_ATG" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItemRandom;
        [Ger_BP_Pzr] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_Pzschrck] call FNC_AddItem;

        //Extra
        [Ger_Mag_Pzschrck,5] call FNC_AddItem;
    };

    //Panzerschreck Munitionsträger
    case "WHR44Jan_ATA" : {
        [Ger_Uni_Rif_L] call FNC_AddItem;
        [Ger_BP_Pzr] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_Pzschrck,5] call FNC_AddItem;
    };

//Tank Crew

    //Panzer Zugführer
    case "WHR44Jan_VOff" : {
        [Ger_Uni_VOff] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR44Jan_Weapon_Officer_Secondary;
    };

    //Panzerbesatzungsführer
    case "WHR44Jan_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR44Jan_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR44Jan_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHR44Jan_VOGef" : {
        [Ger_Uni_VOGef] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };

    //Besatzung
    case "WHR44Jan_VGef" : {
        [Ger_Uni_VGef] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };

    //Besatzung
    case "WHR44Jan_VCrew" : {
        [Ger_Uni_VSch] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };