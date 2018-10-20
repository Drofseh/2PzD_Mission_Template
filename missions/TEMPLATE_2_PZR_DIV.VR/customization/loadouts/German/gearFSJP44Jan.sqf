// Info: German Fallschirmjäger 1944 January Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJP44Jan_CC"] call FNC_GearScript;     Kompanieführer
[this,"FSJP44Jan_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"FSJP44Jan_PC"] call FNC_GearScript;     Zugführer
[this,"FSJP44Jan_P2"] call FNC_GearScript;     Zugtruppführer
[this,"FSJP44Jan_RTO"] call FNC_GearScript;    Funker
[this,"FSJP44Jan_Mess"] call FNC_GearScript;   Melder
[this,"FSJP44Jan_Med"] call FNC_GearScript;    Krankenträger

    //Gruppe
[this,"FSJP44Jan_SL"] call FNC_GearScript;     Gruppenführer
[this,"FSJP44Jan_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"FSJP44Jan_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"FSJP44Jan_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"FSJP44Jan_Gren"] call FNC_GearScript;   Grenadier
[this,"FSJP44Jan_Mark"] call FNC_GearScript;   Scharfschütze
[this,"FSJP44Jan_Rif"] call FNC_GearScript;    Gewehrschütze
*/

//======================== Definitions ========================

// For Gruppenführer
#define FSJP44Jan_Weapon_GF              \
        [                                \
            [                            \
                [FSJ_Vest_PC],           \
                [Ger_Mag_MP40,3,"vest"]  \
            ],[85],                      \
            [                            \
                [Ger_Vest_StG44],        \
                [GEN_Face_Bino],         \
                [Ger_Mag_StG44,6,"vest"] \
            ],[15]                       \
        ] call FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJP44Jan_Weapon_SGf             \
        [                                \
            [                            \
                [Ger_Vest_MP40],         \
                [Ger_Mag_MP40,6,"vest"]  \
            ],[85],                      \
            [                            \
                [Ger_Vest_StG44],        \
                [Ger_Mag_StG44,6,"vest"] \
            ],[15]                       \
        ] call FNC_AddItemRandomPercent;

// For all men with rifles
#define FSJP44Jan_Weapon_Rifle           \
        [                                \
            [                            \
                [FSJ_Vest_Band],         \
                [Ger_Mag_K98,24,"vest"]  \
            ],[65],                      \
            [                            \
                [Ger_Vest_G43],          \
                [Ger_Mag_G43,6,"vest"]   \
            ],[15],                      \
            [                            \
                [Ger_Vest_StG44],        \
                [Ger_Mag_StG44,8,"vest"] \
            ],[12],                      \
            [                            \
                [FSJ_Vest_Band],         \
                [Ger_Mag_FG42,24,"vest"] \
            ],[8]                        \
        ] call FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJP44Jan_Weapon_Officer_Secondary \
        [                                  \
            [                              \
                [Ger_Mag_P38,1],           \
                [Ger_Weap_P38],            \
                [Ger_Mag_P38,2]            \
            ],[68],                        \
            [                              \
                [Ger_Mag_P08,1],           \
                [Ger_Weap_P08],            \
                [Ger_Mag_P08,2]            \
            ],[18],                        \
            [                              \
                [Ger_Mag_PPK,1],           \
                [Ger_Weap_PPK],            \
                [Ger_Mag_PPK,2]            \
            ],[10],                        \
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

// For all enlisted men
#define FSJP44Jan_Weapon_Enlisted_Secondary \
        [                                   \
            [                               \
                [Ger_Mag_P38,1],            \
                [Ger_Weap_P38],             \
                [Ger_Mag_P38,2]             \
            ],[70],                         \
            [                               \
                [Ger_Mag_P08,1],            \
                [Ger_Weap_P08],             \
                [Ger_Mag_P08,2]             \
            ],[26],                         \
            [                               \
                [Pol_Mag_Radom,1],          \
                [Pol_Weap_Radom],           \
                [Pol_Mag_Radom,2]           \
            ],[2],                          \
            [                               \
                [UK_Mag_HiPower,1],         \
                [UK_Weap_HiPower],          \
                [UK_Mag_HiPower,2]          \
            ],[2]                           \
        ] call FNC_AddItemRandomPercent;

// Panzerfaust
#define FSJP44Jan_Weapon_PzFaust       \
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
    case "FSJP44Jan_CC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP44Jan_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "FSJP44Jan_C2" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJP44Jan_PC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP44Jan_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "FSJP44Jan_P2" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "FSJP44Jan_RTO" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP44Jan_Weapon_Rifle;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Melder
    case "FSJP44Jan_Mess" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP44Jan_Weapon_Rifle;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Krankenträger
    case "FSJP44Jan_Med" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP44Jan_Weapon_Rifle;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        FSJ_Medic_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJP44Jan_SL" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP44Jan_Weapon_GF;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJP44Jan_S2" : {
        [FSJ_UniC_S2] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP44Jan_Weapon_SGf;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJP44Jan_MG" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJP44Jan_MGA" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        FSJP44Jan_Weapon_Rifle;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJP44Jan_Mark" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJP44Jan_Gren" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATL,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJP44Jan_Rif" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP44Jan_Weapon_Rifle;

        //Secondary Weapon
        FSJP44Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };