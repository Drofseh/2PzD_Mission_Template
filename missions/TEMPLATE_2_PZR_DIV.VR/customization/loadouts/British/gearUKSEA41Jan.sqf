// Info: British Army 1941 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this, UKSEA41Jan_Lt] call Olsen_FW_FNC_GearScript;         Lieutenant
[this, UKSEA41Jan_Sgt] call Olsen_FW_FNC_GearScript;        Sergeant
[this, UKSEA41Jan_Med] call Olsen_FW_FNC_GearScript;        Medic
[this, UKSEA41Jan_Sig] call Olsen_FW_FNC_GearScript;        Signaller
[this, UKSEA41Jan_LMortG] call Olsen_FW_FNC_GearScript;     Light Mortar Gunner
[this, UKSEA41Jan_LMortA] call Olsen_FW_FNC_GearScript;     Light Mortar Assistant
[this, UKSEA41Jan_Cpl] call Olsen_FW_FNC_GearScript;        Corporal
[this, UKSEA41Jan_LCpl] call Olsen_FW_FNC_GearScript;       Lance Corporal
[this, UKSEA41Jan_AR] call Olsen_FW_FNC_GearScript;         Bren Gunner
[this, UKSEA41Jan_AAR] call Olsen_FW_FNC_GearScript;        Bren Gun Assistant
[this, UKSEA41Jan_AAB] call Olsen_FW_FNC_GearScript;        Bren Gun Ammo Bearer
[this, UKSEA41Jan_Rif] call Olsen_FW_FNC_GearScript;        Rifleman

    Weapons Teams
[this, UKSEA41Jan_MGTL] call Olsen_FW_FNC_GearScript;       Machine Gun Team Leader
[this, UKSEA41Jan_MG] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this, UKSEA41Jan_MGA] call Olsen_FW_FNC_GearScript;        Machine Gun Assistant
[this, UKSEA41Jan_MGAB] call Olsen_FW_FNC_GearScript;       Machine Gun Ammo Bearer

[this, UKSEA41Jan_MortTL] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this, UKSEA41Jan_MortG] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this, UKSEA41Jan_MortA] call Olsen_FW_FNC_GearScript;      Mortar Assistant
[this, UKSEA41Jan_MortAB] call Olsen_FW_FNC_GearScript;     Mortar Ammo Bearer

[this, UKSEA41Jan_ATRTL] call Olsen_FW_FNC_GearScript;      Boys Rifle Team Leader
[this, UKSEA41Jan_ATRG] call Olsen_FW_FNC_GearScript;       Boys Rifle Gunner
[this, UKSEA41Jan_ATRAB] call Olsen_FW_FNC_GearScript;      Boys Rifle Ammo Bearer

    Vehicle Crew
[this, UKSEA41Jan_VCom] call Olsen_FW_FNC_GearScript;       Tank Commander
[this, UKSEA41Jan_VCrew] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

#define UKSEA41Jan_LeeEn \
        [UK_Mag_LeeEn,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_LeeEnNo1Mk3s] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_LeeEn,5,"vest"] call Olsen_FW_FNC_AddItem;

#define UKSEA41Jan_M1928 \
        [US_Mag_M1T_20,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1928] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1T_20,6,"vest"] call Olsen_FW_FNC_AddItem;

#define UKSEA41Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    UKSEA41Jan_Lt = ["UKSEA41Jan_Lt", {
        params ["_unit"];

        [UK_UniSEA_Lt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Sergeant
    UKSEA41Jan_Sgt = ["UKSEA41Jan_Sgt", {
        params ["_unit"];

        [UK_UniSEA_Sgt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    UKSEA41Jan_Med = ["UKSEA41Jan_Med", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Signaller
    UKSEA41Jan_Sig = ["UKSEA41Jan_Sig", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Light Mortar Gunner
    UKSEA41Jan_LMortG = ["UKSEA41Jan_LMortG", {
        params ["_unit"];

        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Light Mortar Assistant
    UKSEA41Jan_LMortA = ["UKSEA41Jan_LMortA", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Corporal
    UKSEA41Jan_Cpl = ["UKSEA41Jan_Cpl", {
        params ["_unit"];

        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Lance Corporal
    UKSEA41Jan_LCpl = ["UKSEA41Jan_LCpl", {
        params ["_unit"];

        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Bren Gunner
    UKSEA41Jan_AR = ["UKSEA41Jan_AR", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        [UK_Mag_Bren_30_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_BrenMkII] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA41Jan_Webley;
    }];

    //Bren Gun Assistant
    UKSEA41Jan_AAR = ["UKSEA41Jan_AAR", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Bren Gun Ammo Bearer
    UKSEA41Jan_AAB = ["UKSEA41Jan_AAB", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    UKSEA41Jan_Rif = ["UKSEA41Jan_Rif", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    UKSEA41Jan_MGTL = ["UKSEA41Jan_MGTL", {
        params ["_unit"];

        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    UKSEA41Jan_MG = ["UKSEA41Jan_MG", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;
    }];

    //Machine Gun Assistant
    UKSEA41Jan_MGA = ["UKSEA41Jan_MGA", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
    }];

    //Machine Gun Ammo Bearer
    UKSEA41Jan_MGAB = ["UKSEA41Jan_MGAB", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
    }];

//Mortar Team

    //Mortar Team Leader
    UKSEA41Jan_MortTL = ["UKSEA41Jan_MortTL", {
        params ["_unit"];

        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    UKSEA41Jan_MortG = ["UKSEA41Jan_MortG", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    }];

    //Mortar Assistant
    UKSEA41Jan_MortA = ["UKSEA41Jan_MortA", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    }];

    //Mortar Ammo Bearer
    UKSEA41Jan_MortAB = ["UKSEA41Jan_MortAB", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Boys Rifle Team

    //Boys Rifle Team Leader
    UKSEA41Jan_ATRTL = ["UKSEA41Jan_ATRTL", {
        params ["_unit"];

        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Boys Rifle Gunner
    UKSEA41Jan_ATRG = ["UKSEA41Jan_ATRG", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    }];

    //Boys Rifle Ammo Bearer
    UKSEA41Jan_ATRAB = ["UKSEA41Jan_ATRAB", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

//Vehicle Crew

    //Tank Commander
    UKSEA41Jan_VCom = ["UKSEA41Jan_VCom", {
        params ["_unit"];

        [UK_UniSEA_Sgt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    }];

    //Tank Crew
    UKSEA41Jan_VCrew = ["UKSEA41Jan_VCrew", {
        params ["_unit"];

        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
