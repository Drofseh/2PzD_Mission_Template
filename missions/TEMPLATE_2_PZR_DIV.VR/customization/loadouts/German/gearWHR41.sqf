// Info: German Wehrmacht 1941 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHR41_CC"] call FNC_GearScript;          Kompanieführer
[this,"WHR41_C2"] call FNC_GearScript;          Kompanietruppführer

    //Zugtrupp
[this,"WHR41_PC"] call FNC_GearScript;          Zugführer
[this,"WHR41_P2"] call FNC_GearScript;          Zugtruppführer
[this,"WHR41_RTO"] call FNC_GearScript;         Funker
[this,"WHR41_Mess"] call FNC_GearScript;        Melder
[this,"WHR41_MedP"] call FNC_GearScript;        Krankenträger

    //Gruppe
[this,"WHR41_SL"] call FNC_GearScript;          Gruppenführer
[this,"WHR41_S2"] call FNC_GearScript;          Stellvertretender Gruppenführer
[this,"WHR41_S3"] call FNC_GearScript;          Gefreiter
[this,"WHR41_MG"] call FNC_GearScript;          MG-Richtschütze
[this,"WHR41_MGA"] call FNC_GearScript;         MG-Hilfsschütze
[this,"WHR41_MGAB"] call FNC_GearScript;        MG-Munitionsträger
[this,"WHR41_Gren"] call FNC_GearScript;        Grenadier
[this,"WHR41_MedS"] call FNC_GearScript;        Hilfs-Krankenträger
[this,"WHR41_Rif"] call FNC_GearScript;         Gewehrschütze

    //Weapon Truppen
[this,"WHR41_MortSL"] call FNC_GearScript;      Mortar Truppführer
[this,"WHR41_MortG"] call FNC_GearScript;       Mortar Granatwerferschützen
[this,"WHR41_MortA"] call FNC_GearScript;       Mortar Munitionsträger

[this,"WHR41_HMGSL"] call FNC_GearScript;       HMG Truppführer
[this,"WHR41_HMGG"] call FNC_GearScript;        HMG Richtschütze
[this,"WHR41_HMGA"] call FNC_GearScript;        HMG Munitionsträger

[this,"WHR41_ATRSL"] call FNC_GearScript;       Panzerbüchse Truppführer
[this,"WHR41_ATRG"] call FNC_GearScript;        Panzerbüchse Richtschütze
[this,"WHR41_ATRA"] call FNC_GearScript;        Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHR41_VCom"] call FNC_GearScript;        Besatzungsführer
[this,"WHR41_VCrew"] call FNC_GearScript;       Besatzung
*/

//======================== Definitions ========================

//For Kompanieführer, Kompanietruppführer, Zugführer, Zugtruppführer, and Besatzungsführer
#define WHR41_Weapon_Officer_Primary    \
        [                               \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60],                     \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP40],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[40]                      \
        ] call FNC_AddItemRandomPercent;

// For Gruppenführer and Gefreiter
#define WHR41_Weapon_Gruppe_Primary     \
        [                               \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60],                     \
            [                           \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP40],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[40]                      \
        ] call FNC_AddItemRandomPercent;

// For all men with rifles
#define WHR41_Weapon_Rifleman_Primary   \
        [                               \
            [                           \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98],         \
                [Ger_Mag_K98,12,"vest"] \
            ],[66],                     \
            [                           \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,12,"vest"] \
            ],[34]                      \
        ] call FNC_AddItemRandomPercent;

//For Kompanieführer, Zugführer and Besatzungsführer
#define WHR41_Weapon_Officer_Secondary \
        [                              \
            [                          \
                [Ger_Mag_P38,1],       \
                [Ger_Weap_P38],        \
                [Ger_Mag_P38,2]        \
            ],[50],                    \
            [                          \
                [Ger_Mag_P08,1],       \
                [Ger_Weap_P08],        \
                [Ger_Mag_P08,2]        \
            ],[36],                    \
            [                          \
                [Ger_Mag_PPK,1],       \
                [Ger_Weap_PPK],        \
                [Ger_Mag_PPK,2]        \
            ],[10],                    \
            [                          \
                [Pol_Mag_Radom,1],     \
                [Pol_Weap_Radom],      \
                [Pol_Mag_Radom,2]      \
            ],[2],                     \
            [                          \
                [UK_Mag_HiPower,1],    \
                [UK_Weap_HiPower],     \
                [UK_Mag_HiPower,2]     \
            ],[2],                     \
            [                          \
                [Ger_Mag_M1916,1],     \
                [Ger_Weap_M1916],      \
                [Ger_Mag_M1916,2]      \
            ],[],                      \
            [                          \
                [Ger_Mag_M172_10,1],   \
                [Ger_Weap_M172],       \
                [Ger_Mag_M172_20,2]    \
            ],[0.5]                    \
        ] call FNC_AddItemRandomPercent;

//For Kompanietruppführer, MG-Richtschütze, Mortar Truppführer, Mortar Granatwerferschützen,
//HMG Richtschütze, Panzerbüchse Richtschütze, Besatzung
#define WHR41_Weapon_Enlisted_Secondary \
        [                               \
            [                           \
                [Ger_Mag_P38,1],        \
                [Ger_Weap_P38],         \
                [Ger_Mag_P38,2]         \
            ],[52],                     \
            [                           \
                [Ger_Mag_P08,1],        \
                [Ger_Weap_P08],         \
                [Ger_Mag_P08,2]         \
            ],[44],                     \
            [                           \
                [Pol_Mag_Radom,1],      \
                [Pol_Weap_Radom],       \
                [Pol_Mag_Radom,2]       \
            ],[2],                      \
            [                           \
                [UK_Mag_HiPower,1],     \
                [UK_Weap_HiPower],      \
                [UK_Mag_HiPower,        \
            ],[2],                      \
            [                           \
                [Ger_Mag_M1916,1],      \
                [Ger_Weap_M1916],       \
                [Ger_Mag_M1916,2]       \
            ],[],                       \
            [                           \
                [Ger_Mag_M172_10,1],    \
                [Ger_Weap_M172],        \
                [Ger_Mag_M172_20,2]     \
            ],[0.5]                     \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHR41_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR41_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR41_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHR41_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR41_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHR41_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR41_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR41_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHR41_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR41_Weapon_Officer_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHR41_RTO" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call FNC_AddItem;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;
    };

    //Melder
    case "WHR41_Mess" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHR41_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHR41_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR41_Weapon_Gruppe_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "WHR41_S2" : {
        [Ger_Uni_S2_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Gefreiter
    case "WHR41_S3" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_MP40] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR41_Weapon_Gruppe_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "WHR41_MG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "WHR41_MGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Munitionsträger
    case "WHR41_MGAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_MG_50,5] call FNC_AddItem;
    };

    //Grenadier
    case "WHR41_Gren" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Weap_K98_RG] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHR41_MedS" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHR41_Rif" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,2,"backpack"] call FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHR41_MortSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHR41_MortG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHR41_MortA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHR41_HMGSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
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
        WHR41_Weapon_Rifleman_Primary;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHR41_HMGG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHR41_HMGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHR41_ATRSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHR41_ATRG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHR41_ATRAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR41_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHR41_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR41_Weapon_Officer_Primary;

        //Secondary Weapon
        WHR41_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHR41_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR41_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };