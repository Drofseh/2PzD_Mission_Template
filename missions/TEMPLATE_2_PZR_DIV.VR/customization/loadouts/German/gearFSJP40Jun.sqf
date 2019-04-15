// Info: German Fallschirmjäger 1940 June Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJP40Jun_CC"] call FNC_GearScript;     Kompanieführer
[this,"FSJP40Jun_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"FSJP40Jun_PC"] call FNC_GearScript;     Zugführer
[this,"FSJP40Jun_P2"] call FNC_GearScript;     Zugtruppführer
[this,"FSJP40Jun_RTO"] call FNC_GearScript;    Funker
[this,"FSJP40Jun_Mess"] call FNC_GearScript;   Melder
[this,"FSJP40Jun_Med"] call FNC_GearScript;    Krankenträger

    //Gruppe
[this,"FSJP40Jun_SL"] call FNC_GearScript;     Gruppenführer
[this,"FSJP40Jun_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"FSJP40Jun_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"FSJP40Jun_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"FSJP40Jun_Gren"] call FNC_GearScript;   Grenadier
[this,"FSJP40Jun_Mark"] call FNC_GearScript;   Scharfschütze
[this,"FSJP40Jun_Rif"] call FNC_GearScript;    Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer and Zugführer
#define FSJP40Jun_Weapon_Officer         \
        [                                \
            [                            \
                [FSJ_Vest_PC],           \
                [Ger_Mag_MP40,3,"vest"]  \
            ],[60],                      \
            [                            \
                [FSJ_Vest_CC]            \
            ],[20],                      \
            [                            \
                [FSJ_Vest_PC],           \
                [Ger_Mag_MP40,3,"vest"]  \
            ],[20]                       \
        ] call FNC_AddItemRandomPercent;

// For Kompanietruppführer and Zugtruppführer
#define FSJP40Jun_Weapon_TF             \
        [                               \
            [                           \
                [FSJ_Vest_PC],          \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60],                     \
            [                           \
                [FSJ_Vest_Band],        \
                [Ger_Mag_K98,24,"vest"] \
            ],[20],                     \
            [                           \
                [FSJ_Vest_PC],          \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20]                      \
        ] call FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJP40Jun_Weapon_Officer_Secondary \
        [                                  \
            [                              \
                [Ger_Mag_P38,1],           \
                [Ger_Weap_P38],            \
                [Ger_Mag_P38,2]            \
            ],[45],                        \
            [                              \
                [Ger_Mag_P08,1],           \
                [Ger_Weap_P08],            \
                [Ger_Mag_P08,2]            \
            ],[41],                        \
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
            ],[1]                          \
        ] call FNC_AddItemRandomPercent;

// For all enlisted men
#define FSJP40Jun_Weapon_Enlisted_Secondary \
        [                                   \
            [                               \
                [Ger_Mag_P38,1],            \
                [Ger_Weap_P38],             \
                [Ger_Mag_P38,2]             \
            ],[50],                         \
            [                               \
                [Ger_Mag_P08,1],            \
                [Ger_Weap_P08],             \
                [Ger_Mag_P08,2]             \
            ],[46],                         \
            [                               \
                [Pol_Mag_Radom,1],          \
                [Pol_Weap_Radom],           \
                [Pol_Mag_Radom,2]           \
            ],[2],                          \
            [                               \
                [UK_Mag_HiPower,1],         \
                [UK_Weap_HiPower],          \
                [UK_Mag_HiPower,2]          \
            ],[2],                          \
            [                               \
                [Ger_Mag_M1916,1],          \
                [Ger_Weap_M1916],           \
                [Ger_Mag_M1916,2]           \
            ],[1],                          \
            [                               \
                [Ger_Mag_M172_20,1],        \
                [Ger_Weap_M172],            \
                [Ger_Mag_M172_20,2]         \
            ],[1]                           \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJP40Jun_CC" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP40Jun_Weapon_Officer;

        //Secondary Weapon
        FSJP40Jun_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "FSJP40Jun_C2" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP40Jun_Weapon_TF;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJP40Jun_PC" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP40Jun_Weapon_Officer;

        //Secondary Weapon
        FSJP40Jun_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "FSJP40Jun_P2" : {
        [FSJ_Uni_SL] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP40Jun_Weapon_TF;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "FSJP40Jun_RTO" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Melder
    case "FSJP40Jun_Mess" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Krankenträger
    case "FSJP40Jun_Med" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        FSJ_Medic_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJP40Jun_SL" : {
        [FSJ_Uni_SL] call FNC_AddItem;
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
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJP40Jun_S2" : {
        [FSJ_Uni_S2] call FNC_AddItem;
        [Ger_Vest_MP40] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJP40Jun_MG" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJP40Jun_MGA" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJP40Jun_Mark" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJP40Jun_Gren" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJP40Jun_Rif" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };