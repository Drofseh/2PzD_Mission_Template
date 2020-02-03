// Info: German Fallschirmjäger 1942 October Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJ42Oct_CC"] call Olsen_FW_FNC_GearScript;     Kompanieführer
[this,"FSJ42Oct_C2"] call Olsen_FW_FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"FSJ42Oct_PC"] call Olsen_FW_FNC_GearScript;     Zugführer
[this,"FSJ42Oct_P2"] call Olsen_FW_FNC_GearScript;     Zugtruppführer
[this,"FSJ42Oct_RTO"] call Olsen_FW_FNC_GearScript;    Funker
[this,"FSJ42Oct_Mess"] call Olsen_FW_FNC_GearScript;   Melder
[this,"FSJ42Oct_Med"] call Olsen_FW_FNC_GearScript;    Krankenträger

    //Gruppe
[this,"FSJ42Oct_SL"] call Olsen_FW_FNC_GearScript;     Gruppenführer
[this,"FSJ42Oct_S2"] call Olsen_FW_FNC_GearScript;     Stellvertretender Gruppenführer
[this,"FSJ42Oct_MG"] call Olsen_FW_FNC_GearScript;     MG-Richtschütze
[this,"FSJ42Oct_MGA"] call Olsen_FW_FNC_GearScript;    MG-Hilfsschütze
[this,"FSJ42Oct_Gren"] call Olsen_FW_FNC_GearScript;   Grenadier
[this,"FSJ42Oct_Mark"] call Olsen_FW_FNC_GearScript;   Scharfschütze
[this,"FSJ42Oct_Rif"] call Olsen_FW_FNC_GearScript;    Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer, Zugführer, Kompanietruppführer, Zugtruppführer, Gruppenführer
#define FSJ42Oct_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[80], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJ42Oct_Weapon_SGf \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[80], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all men with rifles
#define FSJ42Oct_Weapon_Rifle \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,24,"vest"] \
            ],[95], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,24,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For MG-Richtschütze
#define FSJ42Oct_Weapon_MG \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[90], \
            [ \
                [Ger_Weap_MG42] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ42Oct_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[56], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[30], \
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

// For Kompanietruppführer, Zugtruppführer, MG-Richtschütze
#define FSJ42Oct_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[58], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[38], \
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
    case "FSJ42Oct_CC" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Officer;

        //Secondary Weapon
        FSJ42Oct_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Kompanietruppführer
    case "FSJ42Oct_C2" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Officer;

        //Secondary Weapon
        FSJ42Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJ42Oct_PC" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Officer;

        //Secondary Weapon
        FSJ42Oct_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Zugtruppführer
    case "FSJ42Oct_P2" : {
        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Officer;

        //Secondary Weapon
        FSJ42Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

    //Funker
    case "FSJ42Oct_RTO" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

    //Melder
    case "FSJ42Oct_Mess" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

    //Krankenträger
    case "FSJ42Oct_Med" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJ42Oct_SL" : {
        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Officer;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJ42Oct_S2" : {
        [FSJ_UniC_S2] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_SGf;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJ42Oct_MG" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_r] call Olsen_FW_FNC_AddItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJ42Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        FSJ42Oct_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJ42Oct_MGA" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        FSJ42Oct_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
    };

    //Scharfschütze
    case "FSJ42Oct_Mark" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_K98_Zf39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Grenadier
    case "FSJ42Oct_Gren" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,3] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATL,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJ42Oct_Rif" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1,"backpack"] call Olsen_FW_FNC_AddItem;
    };
