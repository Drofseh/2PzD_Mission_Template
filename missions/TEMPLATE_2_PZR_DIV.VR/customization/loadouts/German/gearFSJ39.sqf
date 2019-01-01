// Info: German Fallschirmjäger 1939 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJ39_CC"] call FNC_GearScript;      Kompanieführer
[this,"FSJ39_C2"] call FNC_GearScript;      Kompanietruppführer

    //Zugtrupp
[this,"FSJ39_PC"] call FNC_GearScript;      Zugführer
[this,"FSJ39_P2"] call FNC_GearScript;      Zugtruppführer
[this,"FSJ39_RTO"] call FNC_GearScript;     Funker
[this,"FSJ39_Mess"] call FNC_GearScript;    Melder
[this,"FSJ39_Med"] call FNC_GearScript;     Krankenträger

    //Gruppe
[this,"FSJ39_SL"] call FNC_GearScript;      Gruppenführer
[this,"FSJ39_S2"] call FNC_GearScript;      Stellvertretender Gruppenführer
[this,"FSJ39_MG"] call FNC_GearScript;      MG-Richtschütze
[this,"FSJ39_MGA"] call FNC_GearScript;     MG-Hilfsschütze
[this,"FSJ39_Gren"] call FNC_GearScript;    Grenadier
[this,"FSJ39_Mark"] call FNC_GearScript;    Scharfschütze
[this,"FSJ39_Rif"] call FNC_GearScript;     Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer and Zugführer
#define FSJ39_Weapon_Officer_Primary    \
        [                               \
            [                           \
                [FSJ_Vest_CC]           \
            ],[80],                     \
            [                           \
                [FSJ_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20]                      \
        ] call FNC_AddItemRandomPercent;

// For Kompanietruppführer and Zugtruppführer
#define FSJ39_Weapon_TF_Primary         \
        [                               \
            [                           \
                [FSJ_Vest_Band],        \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,24,"vest"] \
            ],[80],                     \
            [                           \
                [FSJ_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20]                      \
        ] call FNC_AddItemRandomPercent;

// For Gruppenführer
#define FSJ39_Weapon_GF                 \
        [                               \
            [                           \
                [FSJ_Vest_Band],        \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,24,"vest"] \
            ],[80],                     \
            [                           \
                [FSJ_Vest_PC],          \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20]                      \
        ] call FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJ39_Weapon_SGf                \
        [                               \
            [                           \
                [FSJ_Vest_Band],        \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,24,"vest"] \
            ],[80],                     \
            [                           \
                [Ger_Vest_MP40],        \
                [Ger_Mag_MP40,1],       \
                [Ger_Weap_MP38],        \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20]                      \
        ] call FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ39_Weapon_Officer_Secondary \
        [                              \
            [                          \
                [Ger_Mag_P08,1],       \
                [Ger_Weap_P08],        \
                [Ger_Mag_P08,2]        \
            ],[53],                    \
            [                          \
                [Ger_Mag_P38,1],       \
                [Ger_Weap_P38],        \
                [Ger_Mag_P38,2]        \
            ],[37],                    \
            [                          \
                [Ger_Mag_PPK,1],       \
                [Ger_Weap_PPK],        \
                [Ger_Mag_PPK,2]        \
            ],[10],                    \
            [                          \
                [Ger_Mag_M172_10,1],   \
                [Ger_Weap_M172],       \
                [Ger_Mag_M172_20,2]    \
            ],[1]                      \
        ] call FNC_AddItemRandomPercent;

// For Kompanietruppführer, Zugtruppführer, MG-Richtschütze
#define FSJ39_Weapon_Enlisted_Secondary \
        [                               \
            [                           \
                [Ger_Mag_P08,1],        \
                [Ger_Weap_P08],         \
                [Ger_Mag_P08,2]         \
            ],[58],                     \
            [                           \
                [Ger_Mag_P38,1],        \
                [Ger_Weap_P38],         \
                [Ger_Mag_P38,2]         \
            ],[42],                     \
            [                           \
                [Ger_Mag_M172_10,1],    \
                [Ger_Weap_M172],        \
                [Ger_Mag_M172_20,2]     \
            ],[1]                       \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJ39_CC" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ39_Weapon_Officer_Primary;

        //Secondary Weapon
        FSJ39_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Kompanietruppführer
    case "FSJ39_C2" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ39_Weapon_TF_Primary;

        //Secondary Weapon
        FSJ39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJ39_PC" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ39_Weapon_Officer_Primary;

        //Secondary Weapon
        FSJ39_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Zugtruppführer
    case "FSJ39_P2" : {
        [FSJ_Uni_SL] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ39_Weapon_TF_Primary;

        //Secondary Weapon
        FSJ39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

    //Funker
    case "FSJ39_RTO" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_E] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

    //Melder
    case "FSJ39_Mess" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_E] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

    //Krankenträger
    case "FSJ39_Med" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_E] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJ39_SL" : {
        [FSJ_Uni_SL] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ39_Weapon_GF;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJ39_S2" : {
        [FSJ_Uni_S2] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ39_Weapon_SGf;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJ39_MG" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_r] call FNC_AddItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Secondary Weapon
        FSJ39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJ39_MGA" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_E] call FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Mag_MG_50,5] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJ39_Mark" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_Zf39] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJ39_Gren" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_E] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Weap_K98_RG] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJ39_Rif" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98_E] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1,"backpack"] call FNC_AddItem;
    };