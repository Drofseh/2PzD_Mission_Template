// Info: British Army 1943 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UKSEA43Jan_Lt"] call FNC_GearScript;        Lieutenant
[this,"UKSEA43Jan_Sgt"] call FNC_GearScript;       Sergeant
[this,"UKSEA43Jan_Med"] call FNC_GearScript;       Medic
[this,"UKSEA43Jan_Sig"] call FNC_GearScript;       Signaller
[this,"UKSEA43Jan_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"UKSEA43Jan_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"UKSEA43Jan_Cpl"] call FNC_GearScript;       Corporal
[this,"UKSEA43Jan_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"UKSEA43Jan_AR"] call FNC_GearScript;        Bren Gunner
[this,"UKSEA43Jan_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"UKSEA43Jan_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"UKSEA43Jan_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"UKSEA43Jan_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"UKSEA43Jan_MG"] call FNC_GearScript;        Machine Gunner
[this,"UKSEA43Jan_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"UKSEA43Jan_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"UKSEA43Jan_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"UKSEA43Jan_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"UKSEA43Jan_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"UKSEA43Jan_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"UKSEA43Jan_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"UKSEA43Jan_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"UKSEA43Jan_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

[this,"UKSEA43Jan_ATTL"] call FNC_GearScript;      PIAT Team Leader
[this,"UKSEA43Jan_ATG"] call FNC_GearScript;       PIAT Gunner
[this,"UKSEA43Jan_ATAB"] call FNC_GearScript;      PIAT Ammo Bearer

    Vehicle Crew
[this,"UKSEA43Jan_VCom"] call FNC_GearScript;      Tank Commander
[this,"UKSEA43Jan_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define UKSEA43Jan_LeeEn \
        [ \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo1Mk3s], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[70], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_1], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[30] \
        ] call FNC_AddItemRandomPercent;

#define UKSEA43Jan_SMG \
        [ \
            [ \
                [US_Mag_M1T_1,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_1,2,"vest"], \
                [US_Mag_M1T_2,4,"vest"] \
            ],[65], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkII], \
                [UK_Mag_Sten,6,"vest"] \
            ],[15], \
            [ \
                [US_Mag_M1T_1,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_1,3,"vest"], \
                [US_Mag_M1T_2,3,"vest"] \
            ],[15], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkI], \
                [UK_Mag_Sten,6,"vest"] \
            ],[5] \
        ] call FNC_AddItemRandomPercent;

#define UKSEA43Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UKSEA43Jan_Lt" : {
        [UK_UniSEA_Lt_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "UKSEA43Jan_Sgt" : {
        [UK_UniSEA_Sgt_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "UKSEA43Jan_Med" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UKSEA43Jan_Sig" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_Radio] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UKSEA43Jan_LMortG" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "UKSEA43Jan_LMortA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "UKSEA43Jan_Cpl" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "UKSEA43Jan_LCpl" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "UKSEA43Jan_AR" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        [UK_Mag_Bren_30,1] call FNC_AddItem;
        [UK_Weap_BrenMkII] call FNC_AddItem;
        [UK_Mag_Bren_30,10,"vest"] call FNC_AddItem;

        //Secondary Weapon
        UKSEA43Jan_Webley;
    };

    //Bren Gun Assistant
    case "UKSEA43Jan_AAR" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren_30,4,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UKSEA43Jan_AAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UKSEA43Jan_Rif" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UKSEA43Jan_MGTL" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UKSEA43Jan_MG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA43Jan_Webley;
    };

    //Machine Gun Assistant
    case "UKSEA43Jan_MGA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "UKSEA43Jan_MGAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UKSEA43Jan_MortTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UKSEA43Jan_MortG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "UKSEA43Jan_MortA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "UKSEA43Jan_MortAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UKSEA43Jan_ATRTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UKSEA43Jan_ATRG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,5] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UKSEA43Jan_ATRAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UKSEA43Jan_ATTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "UKSEA43Jan_ATG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Primary Weapon
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UKSEA43Jan_ATAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UKSEA43Jan_VCom" : {
        [UK_UniSEA_Sgt_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA43Jan_SMG;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
    };

    //Tank Crew
    case "UKSEA43Jan_VCrew" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA43Jan_SMG;

        //Secondary Weapon
        UKSEA43Jan_Webley;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };