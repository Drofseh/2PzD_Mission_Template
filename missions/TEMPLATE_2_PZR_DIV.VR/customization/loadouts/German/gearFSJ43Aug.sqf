// Info: German Fallschirmjäger 1943 August Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJ43Aug_CC"] call FNC_GearScript;     Kompanieführer
[this,"FSJ43Aug_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"FSJ43Aug_PC"] call FNC_GearScript;     Zugführer
[this,"FSJ43Aug_P2"] call FNC_GearScript;     Zugtruppführer
[this,"FSJ43Aug_RTO"] call FNC_GearScript;    Funker
[this,"FSJ43Aug_Mess"] call FNC_GearScript;   Melder
[this,"FSJ43Aug_Med"] call FNC_GearScript;    Krankenträger

    //Gruppe
[this,"FSJ43Aug_SL"] call FNC_GearScript;     Gruppenführer
[this,"FSJ43Aug_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"FSJ43Aug_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"FSJ43Aug_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"FSJ43Aug_Gren"] call FNC_GearScript;   Grenadier
[this,"FSJ43Aug_Mark"] call FNC_GearScript;   Scharfschütze
[this,"FSJ43Aug_Rif"] call FNC_GearScript;    Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer, Zugführer, Kompanietruppführer, Zugtruppführer, Gruppenführer
#define FSJ43Aug_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[99], \
            [ \
                [Ger_Mag_MP40], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJ43Aug_Weapon_SGf \
        [ \
            [ \
                [Ger_Mag_MP40], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[99], \
            [ \
                [Ger_Mag_MP40], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For all men with rifles
#define FSJ43Aug_Weapon_Rifle \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,24,"vest"] \
            ],[94], \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_FG42,1], \
                [Ger_Weap_FG42], \
                [Ger_Mag_FG42,12,"vest"] \
            ],[5], \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,24,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For MG-Richtschütze
#define FSJ43Aug_Weapon_MG \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[80], \
            [ \
                [Ger_Weap_MG42] \
            ],[20] \
        ] call FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ43Aug_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[62], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[24], \
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

// For Kompanietruppführer, Zugtruppführer, MG-Richtschütze
#define FSJ43Aug_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[64], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[32], \
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

// Panzerfaust
#define FSJ43Aug_Weapon_PzFaust \
        [ \
            [ \
                [Ger_Weap_PzFaust_30] \
            ],[50], \
            [ \
                [Ger_Weap_PzFaust_K] \
            ],[50] \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "FSJ43Aug_CC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Officer;

        //Secondary Weapon
        FSJ43Aug_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Kompanietruppführer
    case "FSJ43Aug_C2" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Officer;

        //Secondary Weapon
        FSJ43Aug_Weapon_Enlisted_Secondary;

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
    case "FSJ43Aug_PC" : {
        [FSJ_UniC_NI] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Officer;

        //Secondary Weapon
        FSJ43Aug_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Zugtruppführer
    case "FSJ43Aug_P2" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Officer;

        //Secondary Weapon
        FSJ43Aug_Weapon_Enlisted_Secondary;

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
    case "FSJ43Aug_RTO" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Rifle;

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
    case "FSJ43Aug_Mess" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Rifle;

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
    case "FSJ43Aug_Med" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJ43Aug_SL" : {
        [FSJ_UniC_SL] call FNC_AddItem;
        [FSJ_Vest_PC] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Officer;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJ43Aug_S2" : {
        [FSJ_UniC_S2] call FNC_AddItem;
        [Ger_Vest_MP40] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_SGf;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJ43Aug_MG" : {
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
        FSJ43Aug_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,1] call FNC_AddItem;
        FSJ43Aug_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJ43Aug_MGA" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        FSJ43Aug_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,5] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
    };

    //Scharfschütze
    case "FSJ43Aug_Mark" : {
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
        [Ger_Mag_MG_50_Mixed_SmE,1] call FNC_AddItem;
    };

    //Grenadier
    case "FSJ43Aug_Gren" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [FSJ_Vest_Band] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Acc_K98_Bayo,1,"uniform"] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,1] call FNC_AddItem;
        [Ger_Mag_RGrn_ATL,3] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJ43Aug_Rif" : {
        [FSJ_UniC_Rif] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [FSJ_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ43Aug_Weapon_Rifle;

        //Launcher
        FSJ43Aug_Weapon_PzFaust;

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
        [Ger_Mag_MG_50_Mixed_SmE,1,"backpack"] call FNC_AddItem;
    };
