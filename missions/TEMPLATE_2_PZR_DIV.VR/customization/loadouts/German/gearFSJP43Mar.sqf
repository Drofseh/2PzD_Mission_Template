// Info: German Fallschirmjäger 1943 March Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJP43Mar_CC"] call FNC_GearScript;     Kompanieführer
[this,"FSJP43Mar_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"FSJP43Mar_PC"] call FNC_GearScript;     Zugführer
[this,"FSJP43Mar_P2"] call FNC_GearScript;     Zugtruppführer
[this,"FSJP43Mar_RTO"] call FNC_GearScript;    Funker
[this,"FSJP43Mar_Mess"] call FNC_GearScript;   Melder
[this,"FSJP43Mar_Med"] call FNC_GearScript;    Krankenträger

    //Gruppe
[this,"FSJP43Mar_SL"] call FNC_GearScript;     Gruppenführer
[this,"FSJP43Mar_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"FSJP43Mar_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"FSJP43Mar_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"FSJP43Mar_Gren"] call FNC_GearScript;   Grenadier
[this,"FSJP43Mar_Mark"] call FNC_GearScript;   Scharfschütze
[this,"FSJP43Mar_Rif"] call FNC_GearScript;    Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer, Zugführer
#define FSJP43Mar_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[59], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[27], \
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
        ] call FNC_AddItemRandomPercent;

// For all enlisted men
#define FSJP43Mar_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[61], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[35], \
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
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJP43Mar_CC" : {
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
        FSJP43Mar_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "FSJP43Mar_C2" : {
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
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJP43Mar_PC" : {
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
        FSJP43Mar_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "FSJP43Mar_P2" : {
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
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "FSJP43Mar_RTO" : {
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
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Melder
    case "FSJP43Mar_Mess" : {
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
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Krankenträger
    case "FSJP43Mar_Med" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        FSJ_Medic_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJP43Mar_SL" : {
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
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJP43Mar_S2" : {
        [FSJ_UniC_S2] call FNC_AddItem;
        [Ger_Vest_MP40] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_MP40,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJP43Mar_MG" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Secondary Weapon
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJP43Mar_MGA" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJP43Mar_Mark" : {
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
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJP43Mar_Gren" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;

        //Secondary Weapon
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,2] call FNC_AddItem;
        [Ger_Mag_RGrn_ATL,2] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJP43Mar_Rif" : {
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
        FSJP43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };
