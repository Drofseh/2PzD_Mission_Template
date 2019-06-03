// Info: German Wehrmacht 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHR39_CC"] call FNC_GearScript;          Kompanieführer
[this,"WHR39_C2"] call FNC_GearScript;          Kompanietruppführer

    //Zugtrupp
[this,"WHR39_PC"] call FNC_GearScript;          Zugführer
[this,"WHR39_P2"] call FNC_GearScript;          Zugtruppführer
[this,"WHR39_RTO"] call FNC_GearScript;         Funker
[this,"WHR39_Mess"] call FNC_GearScript;        Melder
[this,"WHR39_MedP"] call FNC_GearScript;        Krankenträger

    //Gruppe
[this,"WHR39_SL"] call FNC_GearScript;          Gruppenführer
[this,"WHR39_S2"] call FNC_GearScript;          Stellvertretender Gruppenführer
[this,"WHR39_S3"] call FNC_GearScript;          Gefreiter
[this,"WHR39_MG"] call FNC_GearScript;          MG-Richtschütze
[this,"WHR39_MGA"] call FNC_GearScript;         MG-Hilfsschütze
[this,"WHR39_MGAB"] call FNC_GearScript;        MG-Munitionsträger
[this,"WHR39_Gren"] call FNC_GearScript;        Grenadier
[this,"WHR39_MedS"] call FNC_GearScript;        Hilfs-Krankenträger
[this,"WHR39_Rif"] call FNC_GearScript;         Gewehrschütze

    //Weapon Truppen
[this,"WHR39_MortSL"] call FNC_GearScript;      Mortar Truppführer
[this,"WHR39_MortG"] call FNC_GearScript;       Mortar Granatwerferschützen
[this,"WHR39_MortA"] call FNC_GearScript;       Mortar Munitionsträger

[this,"WHR39_HMGSL"] call FNC_GearScript;       HMG Truppführer
[this,"WHR39_HMGG"] call FNC_GearScript;        HMG Richtschütze
[this,"WHR39_HMGA"] call FNC_GearScript;        HMG Munitionsträger

[this,"WHR39_ATRSL"] call FNC_GearScript;       Panzerbüchse Truppführer
[this,"WHR39_ATRG"] call FNC_GearScript;        Panzerbüchse Richtschütze
[this,"WHR39_ATRA"] call FNC_GearScript;        Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHR39_VCom"] call FNC_GearScript;        Besatzungsführer
[this,"WHR39_VCrew"] call FNC_GearScript;       Besatzung
*/

//======================== Definitions ========================

//For Kompanieführer and Zugführer
#define WHR39_Weapon_Officer \
        [ \
            [ \
                [Ger_Vest_C2] \
            ],[80], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,3,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,3,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,3,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

//Besatzungsführer
#define WHR39_Weapon_BF \
        [ \
            [ \
                [Ger_Vest_VCrew] \
            ],[80], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call FNC_AddItemRandomPercent;

//For Kompanietruppführer and Zugtruppführer
#define WHR39_Weapon_TF \
        [ \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,3,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,3,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,3,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For Gruppenführer
#define WHR39_Weapon_GF \
        [ \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,3,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,3,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,3,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For Gefreiter
#define WHR39_Weapon_Gef \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,6,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,6,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,6,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For all men with rifles
#define WHR39_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10] \
        ] call FNC_AddItemRandomPercent;

#define WHR39_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50,5,"vest"], \
                [Ger_Mag_MG_50,3] \
            ],[90], \
            [ \
                [Ger_Mag_MG30,1], \
                [Ger_Weap_MG30], \
                [Ger_Mag_MG30,5,"vest"], \
                [Ger_Mag_MG30,3] \
            ],[10] \
        ] call FNC_AddItemRandomPercent;

//1 for Gruppe leaders, 2 for Gewehrschütze, 3 for MG-Hilfsschütze, 5 for MG-Munitionsträger
#define WHR39_Weapon_MG_Ammo(COUNT) \
        _weaponsArray = []; \
        { \
            _weapon = primaryWeapon _x; \
            if ( \
                _weapon == Ger_Weap_MG34 || \
                _weapon == Ger_Weap_MG30 \
            ) then { \
                _weaponsArray pushBack _weapon; \
            }; \
        } forEach units group _unit; \
        if (count _weaponsArray != 0) then { \
            _ammobearer = selectRandom _weaponsArray; \
            switch (_ammobearer) do { \
                case Ger_Weap_MG34: { \
                    [Ger_Mag_MG_50,COUNT,"backpack"] call FNC_AddItem; \
                }; \
                case Ger_Weap_MG30: { \
                    [Ger_Mag_MG30,COUNT,"backpack"] call FNC_AddItem; \
                }; \
            }; \
        };

//For Kompanieführer, Zugführer and Besatzungsführer
#define WHR39_Weapon_Officer_Secondary \
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
                [Ger_Mag_PP,1], \
                [Ger_Weap_PP], \
                [Ger_Mag_PP,2,"uniform"] \
            ],[10], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_M1930,1], \
                [Ger_Weap_M1930], \
                [Ger_Mag_M1930,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_LP08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

//For Kompanietruppführer, MG-Richtschütze, Mortar Truppführer, Mortar Granatwerferschützen,
//HMG Richtschütze, Panzerbüchse Richtschütze, Besatzung
#define WHR39_Weapon_Enlisted_Secondary \
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
                [Ger_Mag_P08,1], \
                [Ger_Weap_LP08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHR39_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR39_Weapon_Officer;

        //Secondary Weapon
        WHR39_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHR39_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR39_Weapon_TF;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHR39_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR39_Weapon_Officer;

        //Secondary Weapon
        WHR39_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHR39_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;

        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR39_Weapon_TF;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Funker
    case "WHR39_RTO" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call FNC_AddItem;

        //Primary Weapon
        WHR39_Weapon_Rifleman;
    };

    //Melder
    case "WHR39_Mess" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHR39_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHR39_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR39_Weapon_GF;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    };

    //Stellvertretender Gruppenführer
    case "WHR39_S2" : {
        [Ger_Uni_S2_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    };

    //Gefreiter
    case "WHR39_S3" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR39_Weapon_Gef;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    };

    //MG-Richtschütze
    case "WHR39_MG" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        WHR39_Weapon_MG;

        //Extra
    };

    //MG-Hilfsschütze
    case "WHR39_MGA" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        WHR39_Weapon_MG_Ammo(3);
    };

    //MG-Munitionsträger
    case "WHR39_MGAB" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        WHR39_Weapon_MG_Ammo(5);
    };

    //Grenadier
    case "WHR39_Gren" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Gren] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,8,"backpack"] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHR39_MedS" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHR39_Rif" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHR39_MortSL" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        WHR39_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Mag_Mort_HE,4,"backpack"] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHR39_MortG" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        WHR39_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4,"backpack"] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHR39_MortA" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItemRandom;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4,"backpack"] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHR39_HMGSL" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2,"backpack"] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHR39_HMGG" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_250,4,"backpack"] call FNC_AddItem;

        //Extra
    };

    //HMG Munitionsträger
    case "WHR39_HMGA" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250,3,"backpack"] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHR39_ATRSL" : {
        [Ger_Uni_S3_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHR39_ATRG" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20,"vest"] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHR39_ATRAB" : {
        [Ger_Uni_Rif_E] call FNC_AddItem;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHR39_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHR39_Weapon_BF;

        //Secondary Weapon
        WHR39_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHR39_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };