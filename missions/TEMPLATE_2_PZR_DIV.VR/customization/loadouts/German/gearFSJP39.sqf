// Info: German Fallschirmjäger 1939 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJP39_CC"] call FNC_GearScript;      Kompanieführer
[this,"FSJP39_C2"] call FNC_GearScript;      Kompanietruppführer

    //Zugtrupp
[this,"FSJP39_PC"] call FNC_GearScript;      Zugführer
[this,"FSJP39_P2"] call FNC_GearScript;      Zugtruppführer
[this,"FSJP39_RTO"] call FNC_GearScript;     Funker
[this,"FSJP39_Mess"] call FNC_GearScript;    Melder
[this,"FSJP39_Med"] call FNC_GearScript;     Krankenträger

    //Gruppe
[this,"FSJP39_SL"] call FNC_GearScript;      Gruppenführer
[this,"FSJP39_S2"] call FNC_GearScript;      Stellvertretender Gruppenführer
[this,"FSJP39_MG"] call FNC_GearScript;      MG-Richtschütze
[this,"FSJP39_MGA"] call FNC_GearScript;     MG-Hilfsschütze
[this,"FSJP39_Gren"] call FNC_GearScript;    Grenadier
[this,"FSJP39_Mark"] call FNC_GearScript;    Scharfschütze
[this,"FSJP39_Rif"] call FNC_GearScript;     Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer and Zugführer
#define FSJP39_Weapon_Officer \
        [ \
            [ \
                [FSJ_Vest_CC] \
            ],[80], \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call FNC_AddItemRandomPercent;

// For Kompanietruppführer and Zugtruppführer
#define FSJP39_Weapon_TF \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,24,"vest"] \
            ],[80], \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call FNC_AddItemRandomPercent;

// For Gruppenführer
#define FSJP39_Weapon_GF \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,24,"vest"] \
            ],[80], \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJP39_Weapon_SGf \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,24,"vest"] \
            ],[80], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20] \
        ] call FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJP39_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[53], \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[37], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For all enlisted men
#define FSJP39_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[58], \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[42], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJP39_CC" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP39_Weapon_Officer;

        //Secondary Weapon
        FSJP39_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "FSJP39_C2" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP39_Weapon_TF;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJP39_PC" : {
        [FSJ_Uni_NI] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP39_Weapon_Officer;

        //Secondary Weapon
        FSJP39_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "FSJP39_P2" : {
        [FSJ_Uni_SL] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP39_Weapon_TF;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "FSJP39_RTO" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Melder
    case "FSJP39_Mess" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Krankenträger
    case "FSJP39_Med" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        FSJ_Medic_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJP39_SL" : {
        [FSJ_Uni_SL] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP39_Weapon_GF;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJP39_S2" : {
        [FSJ_Uni_S2] call FNC_AddItem;
        [Ger_Vest_MP40] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP39_Weapon_SGf;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJP39_MG" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_sS50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJP39_MGA" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJP39_Mark" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJP39_Gren" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJP39_Rif" : {
        [FSJ_Uni_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };