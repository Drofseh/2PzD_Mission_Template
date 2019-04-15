// Info: German Wehrmacht 1940 March Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHR40Mar_CC"] call FNC_GearScript;       Kompanieführer
[this,"WHR40Mar_C2"] call FNC_GearScript;       Kompanietruppführer

    //Zugtrupp
[this,"WHR40Mar_PC"] call FNC_GearScript;       Zugführer
[this,"WHR40Mar_P2"] call FNC_GearScript;       Zugtruppführer
[this,"WHR40Mar_RTO"] call FNC_GearScript;      Funker
[this,"WHR40Mar_Mess"] call FNC_GearScript;     Melder
[this,"WHR40Mar_MedP"] call FNC_GearScript;     Krankenträger

    //Gruppe
[this,"WHR40Mar_SL"] call FNC_GearScript;       Gruppenführer
[this,"WHR40Mar_S2"] call FNC_GearScript;       Stellvertretender Gruppenführer
[this,"WHR40Mar_S3"] call FNC_GearScript;       Gefreiter
[this,"WHR40Mar_MG"] call FNC_GearScript;       MG-Richtschütze
[this,"WHR40Mar_MGA"] call FNC_GearScript;      MG-Hilfsschütze
[this,"WHR40Mar_MGAB"] call FNC_GearScript;     MG-Munitionsträger
[this,"WHR40Mar_Gren"] call FNC_GearScript;     Grenadier
[this,"WHR40Mar_MedS"] call FNC_GearScript;     Hilfs-Krankenträger
[this,"WHR40Mar_Rif"] call FNC_GearScript;      Gewehrschütze

    //Weapon Truppen
[this,"WHR40Mar_MortSL"] call FNC_GearScript;   Mortar Truppführer
[this,"WHR40Mar_MortG"] call FNC_GearScript;    Mortar Granatwerferschützen
[this,"WHR40Mar_MortA"] call FNC_GearScript;    Mortar Munitionsträger

[this,"WHR40Mar_HMGSL"] call FNC_GearScript;    HMG Truppführer
[this,"WHR40Mar_HMGG"] call FNC_GearScript;     HMG Richtschütze
[this,"WHR40Mar_HMGA"] call FNC_GearScript;     HMG Munitionsträger

[this,"WHR40Mar_ATRSL"] call FNC_GearScript;    Panzerbüchse Truppführer
[this,"WHR40Mar_ATRG"] call FNC_GearScript;     Panzerbüchse Richtschütze
[this,"WHR40Mar_ATRA"] call FNC_GearScript;     Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHR40Mar_VCom"] call FNC_GearScript;     Besatzungsführer
[this,"WHR40Mar_VCrew"] call FNC_GearScript;    Besatzung
*/

//======================== Definitions ========================

//For Kompanieführer and Zugführer
#define WHR40Mar_Weapon_Officer         \
        [                               \
            [                           \
                [Ger_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[50],                     \
            [                           \
                [Ger_Vest_C2]           \
            ],[40],                     \
            [                           \
                [Ger_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP40],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[10]                      \
        ] call FNC_AddItemRandomPercent;

//For Besatzungsführer
#define WHR40Mar_Weapon_BF              \
        [                               \
            [                           \
                [Ger_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[50],                     \
            [                           \
                [Ger_Vest_VCrew]        \
            ],[40],                     \
            [                           \
                [Ger_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[10]                      \
        ] call FNC_AddItemRandomPercent;

//For Kompanietruppführer and Zugtruppführer
#define WHR40Mar_Weapon_TF              \
        [                               \
            [                           \
                [Ger_Vest_SL],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[50],                     \
            [                           \
                [Ger_Vest_K98IFA],      \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,12,"vest"] \
            ],[40],                     \
            [                           \
                [Ger_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[10]                      \
        ] call FNC_AddItemRandomPercent;

// For Gruppenführer
#define WHR40Mar_Weapon_GF              \
        [                               \
            [                           \
                [Ger_Vest_SL],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[50],                     \
            [                           \
                [Ger_Vest_K98IFA],      \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,12,"vest"] \
            ],[40],                     \
            [                           \
                [Ger_Vest_SL],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[10]                      \
        ] call FNC_AddItemRandomPercent;

// For Gefreiter
#define WHR40Mar_Weapon_Gef             \
        [                               \
            [                           \
                [Ger_Vest_MP40],        \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[50],                     \
            [                           \
                [Ger_Vest_K98],         \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,12,"vest"] \
            ],[40],                     \
            [                           \
                [Ger_Vest_MP40],        \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[10]                      \
        ] call FNC_AddItemRandomPercent;

// For all men with rifles
#define WHR40Mar_Weapon_Rifleman         \
        [                                \
            [                            \
                [Ger_Mag_K98,1],         \
                [Ger_Weap_K98_E],        \
                [Ger_Mag_K98,12,"vest"]  \
            ],[66],                      \
            [                            \
                [Ger_Mag_K98,1],         \
                [Ger_Weap_K98],          \
                [Ger_Mag_K98,12,"vest"]  \
            ],[34]                       \
        ] call FNC_AddItemRandomPercent;

//For Kompanieführer, Zugführer and Besatzungsführer
#define WHR40Mar_Weapon_Officer_Secondary \
        [                                 \
            [                             \
                [Ger_Mag_P08,1],          \
                [Ger_Weap_P08],           \
                [Ger_Mag_P08,2]           \
            ],[47],                       \
            [                             \
                [Ger_Mag_P38,1],          \
                [Ger_Weap_P38],           \
                [Ger_Mag_P38,2]           \
            ],[41],                       \
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
                [Ger_Mag_M1916,1],        \
                [Ger_Weap_M1916],         \
                [Ger_Mag_M1916,2]         \
            ],[2],                        \
            [                             \
                [Ger_Mag_M172_20,1],      \
                [Ger_Weap_M172],          \
                [Ger_Mag_M172_20,2]       \
            ],[0.5]                       \
        ] call FNC_AddItemRandomPercent;

//For Kompanietruppführer, MG-Richtschütze, Mortar Truppführer, Mortar Granatwerferschützen,
//HMG Richtschütze, Panzerbüchse Richtschütze, Besatzung
#define WHR40Mar_Weapon_Enlisted_Secondary \
        [                                  \
            [                              \
                [Ger_Mag_P08,1],           \
                [Ger_Weap_P08],            \
                [Ger_Mag_P08,2]            \
            ],[52],                        \
            [                              \
                [Ger_Mag_P38,1],           \
                [Ger_Weap_P38],            \
                [Ger_Mag_P38,2]            \
            ],[46],                        \
            [                              \
                [Pol_Mag_Radom,1],         \
                [Pol_Weap_Radom],          \
                [Pol_Mag_Radom,2]          \
            ],[2],                         \
            [                              \
                [Ger_Mag_M1916,1],         \
                [Ger_Weap_M1916],          \
                [Ger_Mag_M1916,2]          \
            ],[2],                         \
            [                              \
                [Ger_Mag_M172_20,1],       \
                [Ger_Weap_M172],           \
                [Ger_Mag_M172_20,2]        \
            ],[0.5]                        \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHR40Mar_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Officer;

        //Secondary Weapon
        WHR40Mar_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHR40Mar_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_TF;

        //Secondary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHR40Mar_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Officer;

        //Secondary Weapon
        WHR40Mar_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHR40Mar_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_TF;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHR40Mar_RTO" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call FNC_AddItem;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;
    };

    //Melder
    case "WHR40Mar_Mess" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHR40Mar_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHR40Mar_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_GF;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "WHR40Mar_S2" : {
        [Ger_Uni_S2_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Gefreiter
    case "WHR40Mar_S3" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Gef;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "WHR40Mar_MG" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "WHR40Mar_MGA" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Munitionsträger
    case "WHR40Mar_MGAB" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50,5] call FNC_AddItem;
    };

    //Grenadier
    case "WHR40Mar_Gren" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHR40Mar_MedS" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHR40Mar_Rif" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1,"backpack"] call FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHR40Mar_MortSL" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHR40Mar_MortG" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHR40Mar_MortA" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHR40Mar_HMGSL" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHR40Mar_HMGG" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHR40Mar_HMGA" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHR40Mar_ATRSL" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHR40Mar_ATRG" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHR40Mar_ATRAB" : {
        [Ger_Uni_Rif_E_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHR40Mar_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR40Mar_Weapon_BF;

        //Secondary Weapon
        WHR40Mar_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHR40Mar_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR40Mar_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };