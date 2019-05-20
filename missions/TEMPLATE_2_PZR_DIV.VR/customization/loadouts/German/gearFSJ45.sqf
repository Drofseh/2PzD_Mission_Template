// Info: German Fallschirmjäger 1945 January Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJ45Jan_CC"] call FNC_GearScript;     Kompanieführer
[this,"FSJ45Jan_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"FSJ45Jan_PC"] call FNC_GearScript;     Zugführer
[this,"FSJ45Jan_P2"] call FNC_GearScript;     Zugtruppführer
[this,"FSJ45Jan_RTO"] call FNC_GearScript;    Funker
[this,"FSJ45Jan_Mess"] call FNC_GearScript;   Melder
[this,"FSJ45Jan_Med"] call FNC_GearScript;    Krankenträger

    //Gruppe
[this,"FSJ45Jan_SL"] call FNC_GearScript;     Gruppenführer
[this,"FSJ45Jan_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"FSJ45Jan_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"FSJ45Jan_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"FSJ45Jan_Gren"] call FNC_GearScript;   Grenadier
[this,"FSJ45Jan_Mark"] call FNC_GearScript;   Scharfschütze
[this,"FSJ45Jan_Rif"] call FNC_GearScript;    Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer, Zugführer, Kompanietruppführer, Zugtruppführer
#define FSJ45Jan_Weapon_Officer          \
        [                                \
            [                            \
                [Ger_Mag_MP40,1],        \
                [Ger_Weap_MP40],         \
                [Ger_Mag_MP40,3,"vest"]  \
            ],[99],                      \
            [                            \
                [Ger_Mag_MP40,1],        \
                [Ger_Weap_MP38],         \
                [Ger_Mag_MP40,3,"vest"]  \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For Gruppenführer
#define FSJ45Jan_Weapon_GF               \
        [                                \
            [                            \
                [FSJ_Vest_PC],           \
                [Ger_Mag_MP40,1],        \
                [Ger_Weap_MP40],         \
                [Ger_Mag_MP40,3,"vest"]  \
            ],[75],                      \
            [                            \
                [Ger_Vest_StG44],        \
                [GEN_Face_Bino],         \
                [Ger_Mag_StG44,1],       \
                [Ger_Weap_StG44],        \
                [Ger_Mag_StG44,6,"vest"] \
            ],[25]                       \
        ] call FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJ45Jan_Weapon_SGf              \
        [                                \
            [                            \
                [Ger_Vest_MP40],         \
                [Ger_Mag_MP40,1],        \
                [Ger_Weap_MP40],         \
                [Ger_Mag_MP40,6,"vest"]  \
            ],[75],                      \
            [                            \
                [Ger_Vest_StG44],        \
                [Ger_Mag_StG44,1],       \
                [Ger_Weap_StG44],        \
                [Ger_Mag_StG44,6,"vest"] \
            ],[25]                       \
        ] call FNC_AddItemRandomPercent;

// For all men with rifles except the MG-Hilfsschütze & Grenadier
#define FSJ45Jan_Weapon_Rifle            \
        [                                \
            [                            \
                [FSJ_Vest_Band],         \
                [Ger_Mag_K98,1],         \
                [Ger_Weap_K98],          \
                [Ger_Mag_K98,24,"vest"]  \
            ],[45],                      \
            [                            \
                [Ger_Vest_G43],          \
                [Ger_Mag_G43,1],         \
                [Ger_Weap_G43],          \
                [Ger_Mag_G43,6,"vest"]   \
            ],[25],                      \
            [                            \
                [Ger_Vest_StG44],        \
                [Ger_Mag_StG44,1],       \
                [Ger_Weap_StG44],        \
                [Ger_Mag_StG44,6,"vest"] \
            ],[20],                      \
            [                            \
                [FSJ_Vest_Band],         \
                [Ger_Mag_FG42,1],        \
                [Ger_Weap_FG42],         \
                [Ger_Mag_FG42,12,"vest"] \
            ],[10]                       \
        ] call FNC_AddItemRandomPercent;

// For MG-Richtschütze
#define FSJ45Jan_Weapon_MG      \
        [                       \
            [                   \
                [Ger_Weap_MG42] \
            ],[55],             \
            [                   \
                [Ger_Weap_MG34] \
            ],[45]              \
        ] call FNC_AddItemRandomPercent;

// For Grenadier
#define FSJ45_Weapon_Grenadier             \
        [                                  \
            [                              \
                [FSJ_Vest_Band],           \
                [Ger_Mag_K98,1],           \
                [Ger_Weap_K98],            \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_K98,24,"vest"],   \
                [Ger_Mag_RGrn_HE,4],       \
                [Ger_Mag_RGrn_ATL,4]       \
            ],[85],                        \
            [                              \
                [Ger_Vest_StG44],          \
                [Ger_Mag_StG44,1],         \
                [Ger_Weap_StG44],          \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_StG44,6,"vest"],  \
                [Ger_Mag_RGrn_HE,4],       \
                [Ger_Mag_RGrn_ATL,4]       \
            ],[20]                         \
        ] call FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ45Jan_Weapon_Officer_Secondary \
        [                                 \
            [                             \
                [Ger_Mag_P38,1],          \
                [Ger_Weap_P38],           \
                [Ger_Mag_P38,2]           \
            ],[74],                       \
            [                             \
                [Ger_Mag_P08,1],          \
                [Ger_Weap_P08],           \
                [Ger_Mag_P08,2]           \
            ],[12],                       \
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
            ],[2],                        \
            [                             \
                [Ger_Mag_M1916,1],        \
                [Ger_Weap_M1916],         \
                [Ger_Mag_M1916,2]         \
            ],[1],                        \
            [                             \
                [Ger_Mag_M172_20,1],      \
                [Ger_Weap_M172],          \
                [Ger_Mag_M172_20,2]       \
            ],[0.5]                       \
        ] call FNC_AddItemRandomPercent;

// For Kompanietruppführer, Zugtruppführer, MG-Richtschütze
#define FSJ45Jan_Weapon_Enlisted_Secondary \
        [                                  \
            [                              \
                [Ger_Mag_P38,1],           \
                [Ger_Weap_P38],            \
                [Ger_Mag_P38,2]            \
            ],[73],                        \
            [                              \
                [Ger_Mag_P08,1],           \
                [Ger_Weap_P08],            \
                [Ger_Mag_P08,2]            \
            ],[23],                        \
            [                              \
                [Pol_Mag_Radom,1],         \
                [Pol_Weap_Radom],          \
                [Pol_Mag_Radom,2]          \
            ],[2],                         \
            [                              \
                [UK_Mag_HiPower,1],        \
                [UK_Weap_HiPower],         \
                [UK_Mag_HiPower,2]         \
            ],[2],                         \
            [                              \
                [Ger_Mag_M1916,1],         \
                [Ger_Weap_M1916],          \
                [Ger_Mag_M1916,2]          \
            ],[1],                         \
            [                              \
                [Ger_Mag_M172_20,1],       \
                [Ger_Weap_M172],           \
                [Ger_Mag_M172_20,2]        \
            ],[0.5]                        \
        ] call FNC_AddItemRandomPercent;

// Panzerfaust
#define FSJ45Jan_Weapon_PzFaust        \
        [                              \
            [                          \
                [Ger_Weap_PzFaust_60]  \
            ],[50],                    \
            [                          \
                [Ger_Weap_PzFaust_30]  \
            ],[25],                    \
            [                          \
                [Ger_Weap_PzFaust_100] \
            ],[15],                    \
            [                          \
                [Ger_Weap_PzFaust_K]   \
            ],[10]                     \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJ45Jan_CC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Officer;

        //Secondary Weapon
        FSJ45Jan_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Kompanietruppführer
    case "FSJ45Jan_C2" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Officer;

        //Secondary Weapon
        FSJ45Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
    };

//Platoon HQ

    //Zugführer
    case "FSJ45Jan_PC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Officer;

        //Secondary Weapon
        FSJ45Jan_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Zugtruppführer
    case "FSJ45Jan_P2" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Officer;

        //Secondary Weapon
        FSJ45Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
    };

    //Funker
    case "FSJ45Jan_RTO" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
    };

    //Melder
    case "FSJ45Jan_Mess" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
    };

    //Krankenträger
    case "FSJ45Jan_Med" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJ45Jan_SL" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_GF;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJ45Jan_S2" : {
        [FSJ_UniC_S2] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_SGf;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJ45Jan_MG" : {
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
        FSJ45Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        FSJ45Jan_Weapon_MG;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJ45Jan_MGA" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        FSJ45Jan_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Mag_MG_50,5] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJ45Jan_Mark" : {
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
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJ45Jan_Gren" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ45_Weapon_Grenadier;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJ45Jan_Rif" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ45Jan_Weapon_Rifle;

        //Launcher
        FSJ45Jan_Weapon_PzFaust;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1,"backpack"] call FNC_AddItem;
    };