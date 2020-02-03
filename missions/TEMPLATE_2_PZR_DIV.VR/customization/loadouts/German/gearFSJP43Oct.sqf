// Info: German Fallschirmjäger 1943 October Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJP43Oct_CC"] call Olsen_FW_FNC_GearScript;     Kompanieführer
[this,"FSJP43Oct_C2"] call Olsen_FW_FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"FSJP43Oct_PC"] call Olsen_FW_FNC_GearScript;     Zugführer
[this,"FSJP43Oct_P2"] call Olsen_FW_FNC_GearScript;     Zugtruppführer
[this,"FSJP43Oct_RTO"] call Olsen_FW_FNC_GearScript;    Funker
[this,"FSJP43Oct_Mess"] call Olsen_FW_FNC_GearScript;   Melder
[this,"FSJP43Oct_Med"] call Olsen_FW_FNC_GearScript;    Krankenträger

    //Gruppe
[this,"FSJP43Oct_SL"] call Olsen_FW_FNC_GearScript;     Gruppenführer
[this,"FSJP43Oct_S2"] call Olsen_FW_FNC_GearScript;     Stellvertretender Gruppenführer
[this,"FSJP43Oct_MG"] call Olsen_FW_FNC_GearScript;     MG-Richtschütze
[this,"FSJP43Oct_MGA"] call Olsen_FW_FNC_GearScript;    MG-Hilfsschütze
[this,"FSJP43Oct_Gren"] call Olsen_FW_FNC_GearScript;   Grenadier
[this,"FSJP43Oct_Mark"] call Olsen_FW_FNC_GearScript;   Scharfschütze
[this,"FSJP43Oct_Rif"] call Olsen_FW_FNC_GearScript;    Gewehrschütze
*/

//======================== Definitions ========================

// For Gruppenführer
#define FSJP43Oct_Weapon_GF \
        [ \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[90], \
            [ \
                [Ger_Vest_StG44], \
                [GEN_Face_Bino], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJP43Oct_Weapon_SGf \
        [ \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[90], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all men with rifles except the MG-Hilfsschütze & Grenadier
#define FSJP43Oct_Weapon_Rifle \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,24,"vest"] \
            ],[80], \
            [ \
                [Ger_Vest_G43], \
                [Ger_Mag_G43,6,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[5], \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_FG42,12,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For the MG-Hilfsschütze
#define FSJP43Oct_Weapon_MGA \
        [ \
            [ \
                [Ger_Mag_K98,24,"vest"] \
            ],[80], \
            [ \
                [Ger_Mag_G43,6,"vest"] \
            ],[10], \
            [ \
                [Ger_Mag_StG44,6,"vest"] \
            ],[5], \
            [ \
                [Ger_Mag_FG42,12,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Grenadier
#define FSJP43Oct_Weapon_Grenadier \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_K98,24,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[95], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_StG44,6,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,3], \
                [Ger_Mag_RGrn_ATS,1] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJP43Oct_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[65], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[21], \
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

// For all enlisted men
#define FSJP43Oct_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[67], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[29], \
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

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJP43Oct_CC" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call Olsen_FW_FNC_AddItem;;

        //Secondary Weapon
        FSJP43Oct_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "FSJP43Oct_C2" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call Olsen_FW_FNC_AddItem;;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJP43Oct_PC" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call Olsen_FW_FNC_AddItem;;

        //Secondary Weapon
        FSJP43Oct_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "FSJP43Oct_P2" : {
        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call Olsen_FW_FNC_AddItem;;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Funker
    case "FSJP43Oct_RTO" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP43Oct_Weapon_Rifle;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Melder
    case "FSJP43Oct_Mess" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP43Oct_Weapon_Rifle;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Krankenträger
    case "FSJP43Oct_Med" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP43Oct_Weapon_Rifle;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        FSJ_Medic_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJP43Oct_SL" : {
        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJP43Oct_Weapon_GF;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJP43Oct_S2" : {
        [FSJ_UniC_S2] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP43Oct_Weapon_SGf;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJP43Oct_MG" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJP43Oct_MGA" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        FSJP43Oct_Weapon_MGA;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Scharfschütze
    case "FSJP43Oct_Mark" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Grenadier
    case "FSJP43Oct_Gren" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP43Oct_Weapon_Grenadier;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJP43Oct_Rif" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJP43Oct_Weapon_Rifle;

        //Secondary Weapon
        FSJP43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };
