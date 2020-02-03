// Info: German Fallschirmjäger 1941 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"FSJ41_CC"] call Olsen_FW_FNC_GearScript;      Kompanieführer
[this,"FSJ41_C2"] call Olsen_FW_FNC_GearScript;      Kompanietruppführer

    //Zugtrupp
[this,"FSJ41_PC"] call Olsen_FW_FNC_GearScript;      Zugführer
[this,"FSJ41_P2"] call Olsen_FW_FNC_GearScript;      Zugtruppführer
[this,"FSJ41_RTO"] call Olsen_FW_FNC_GearScript;     Funker
[this,"FSJ41_Mess"] call Olsen_FW_FNC_GearScript;    Melder
[this,"FSJ41_Med"] call Olsen_FW_FNC_GearScript;     Krankenträger

    //Gruppe
[this,"FSJ41_SL"] call Olsen_FW_FNC_GearScript;      Gruppenführer
[this,"FSJ41_S2"] call Olsen_FW_FNC_GearScript;      Stellvertretender Gruppenführer
[this,"FSJ41_MG"] call Olsen_FW_FNC_GearScript;      MG-Richtschütze
[this,"FSJ41_MGA"] call Olsen_FW_FNC_GearScript;     MG-Hilfsschütze
[this,"FSJ41_Gren"] call Olsen_FW_FNC_GearScript;    Grenadier
[this,"FSJ41_Mark"] call Olsen_FW_FNC_GearScript;    Scharfschütze
[this,"FSJ41_Rif"] call Olsen_FW_FNC_GearScript;     Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer, Zugführer, Kompanietruppführer, Zugtruppführer, Gruppenführer
#define FSJ41_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJ41_Weapon_SGf \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all men with rifles
#define FSJ41_Weapon_Rifle \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,24,"vest"] \
            ],[66], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,24,"vest"] \
            ],[34] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ41_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[50], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[36], \
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
#define FSJ41_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[52], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[44], \
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
    case "FSJ41_CC" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Kompanietruppführer
    case "FSJ41_C2" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Zugführer
    case "FSJ41_PC" : {
        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Zugtruppführer
    case "FSJ41_P2" : {
        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Secondary Weapon
        FSJ41_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

    //Funker
    case "FSJ41_RTO" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

    //Melder
    case "FSJ41_Mess" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    };

    //Krankenträger
    case "FSJ41_Med" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "FSJ41_SL" : {
        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Officer;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "FSJ41_S2" : {
        [FSJ_UniC_S2] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_SGf;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Richtschütze
    case "FSJ41_MG" : {
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
        FSJ41_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "FSJ41_MGA" : {
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
        FSJ41_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
    };

    //Scharfschütze
    case "FSJ41_Mark" : {
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
    case "FSJ41_Gren" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Gewehrschütze
    case "FSJ41_Rif" : {
        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        FSJ41_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };
