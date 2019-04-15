// Info: German Fallschirmjäger 1941 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJ41_CC"] call FNC_GearScript;      Kompanieführer
[this,"FSJ41_C2"] call FNC_GearScript;      Kompanietruppführer

    //Zugtrupp
[this,"FSJ41_PC"] call FNC_GearScript;      Zugführer
[this,"FSJ41_P2"] call FNC_GearScript;      Zugtruppführer
[this,"FSJ41_RTO"] call FNC_GearScript;     Funker
[this,"FSJ41_Mess"] call FNC_GearScript;    Melder
[this,"FSJ41_Med"] call FNC_GearScript;     Krankenträger

    //Gruppe
[this,"FSJ41_SL"] call FNC_GearScript;      Gruppenführer
[this,"FSJ41_S2"] call FNC_GearScript;      Stellvertretender Gruppenführer
[this,"FSJ41_MG"] call FNC_GearScript;      MG-Richtschütze
[this,"FSJ41_MGA"] call FNC_GearScript;     MG-Hilfsschütze
[this,"FSJ41_Gren"] call FNC_GearScript;    Grenadier
[this,"FSJ41_Mark"] call FNC_GearScript;    Scharfschütze
[this,"FSJ41_Rif"] call FNC_GearScript;     Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer, Zugführer, Kompanietruppführer, Zugtruppführer, Gruppenführer
#define FSJ41_Weapon_Officer            \
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

// For Stellvertretender Gruppenführer
#define FSJ41_Weapon_SGf                \
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
#define FSJ41_Weapon_Rifle              \
        [                               \
            [                           \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98],         \
                [Ger_Mag_K98,24,"vest"] \
            ],[66],                     \
            [                           \
                [Ger_Mag_K98,1],        \
                [Ger_Weap_K98_E],       \
                [Ger_Mag_K98,24,"vest"] \
            ],[34]                      \
        ] call FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ41_Weapon_Officer_Secondary \
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
            ],[1],                     \
            [                          \
                [Ger_Mag_M172_20,1],   \
                [Ger_Weap_M172],       \
                [Ger_Mag_M172_20,2]    \
            ],[0.5]                    \
        ] call FNC_AddItemRandomPercent;

// For Kompanietruppführer, Zugtruppführer, MG-Richtschütze
#define FSJ41_Weapon_Enlisted_Secondary \
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
                [UK_Mag_HiPower,2]      \
            ],[2],                      \
            [                           \
                [Ger_Mag_M1916,1],      \
                [Ger_Weap_M1916],       \
                [Ger_Mag_M1916,2]       \
            ],[1],                      \
            [                           \
                [Ger_Mag_M172_20,1],    \
                [Ger_Weap_M172],        \
                [Ger_Mag_M172_20,2]     \
            ],[0.5]                     \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJ41_CC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Kompanietruppführer
    case "FSJ41_C2" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJ41_PC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Zugtruppführer
    case "FSJ41_P2" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

    //Funker
    case "FSJ41_RTO" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

    //Melder
    case "FSJ41_Mess" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

    //Krankenträger
    case "FSJ41_Med" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJ41_SL" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJ41_S2" : {
        [FSJ_UniC_S2] call FNC_AddItem;
        [Ger_Vest_MP40] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_SGf;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJ41_MG" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_r] call FNC_AddItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Secondary Weapon
        FSJ41_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJ41_MGA" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Mag_MG_50,5] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJ41_Mark" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
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
    case "FSJ41_Gren" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJ41_Rif" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50,1,"backpack"] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };