// Info: British Army 1941 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UKSEA41Jan_Lt"] call FNC_GearScript;        Lieutenant
[this,"UKSEA41Jan_Sgt"] call FNC_GearScript;       Sergeant
[this,"UKSEA41Jan_Med"] call FNC_GearScript;       Medic
[this,"UKSEA41Jan_Sig"] call FNC_GearScript;       Signaller
[this,"UKSEA41Jan_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"UKSEA41Jan_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"UKSEA41Jan_Cpl"] call FNC_GearScript;       Corporal
[this,"UKSEA41Jan_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"UKSEA41Jan_AR"] call FNC_GearScript;        Bren Gunner
[this,"UKSEA41Jan_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"UKSEA41Jan_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"UKSEA41Jan_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"UKSEA41Jan_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"UKSEA41Jan_MG"] call FNC_GearScript;        Machine Gunner
[this,"UKSEA41Jan_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"UKSEA41Jan_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"UKSEA41Jan_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"UKSEA41Jan_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"UKSEA41Jan_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"UKSEA41Jan_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"UKSEA41Jan_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"UKSEA41Jan_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"UKSEA41Jan_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"UKSEA41Jan_VCom"] call FNC_GearScript;      Tank Commander
[this,"UKSEA41Jan_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define UKSEA41Jan_LeeEn \
        [UK_Mag_LeeEn,1] call FNC_AddItem; \
        [UK_Weap_LeeEnNo1Mk3s] call FNC_AddItem; \
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

#define UKSEA41Jan_M1928 \
        [US_Mag_M1T_20,1] call FNC_AddItem; \
        [US_Weap_M1928] call FNC_AddItem; \
        [US_Mag_M1T_20,6,"vest"] call FNC_AddItem;

#define UKSEA41Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UKSEA41Jan_Lt" : {
        [UK_UniSEA_Lt_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "UKSEA41Jan_Sgt" : {
        [UK_UniSEA_Sgt_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "UKSEA41Jan_Med" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UKSEA41Jan_Sig" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_Radio] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UKSEA41Jan_LMortG" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "UKSEA41Jan_LMortA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "UKSEA41Jan_Cpl" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "UKSEA41Jan_LCpl" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "UKSEA41Jan_AR" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        [UK_Mag_Bren_30_Mixed_Ball,1] call FNC_AddItem;
        [UK_Weap_BrenMkII] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"vest"] call FNC_AddItem;

        //Secondary Weapon
        UKSEA41Jan_Webley;
    };

    //Bren Gun Assistant
    case "UKSEA41Jan_AAR" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UKSEA41Jan_AAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UKSEA41Jan_Rif" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UKSEA41Jan_MGTL" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UKSEA41Jan_MG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;
    };

    //Machine Gun Assistant
    case "UKSEA41Jan_MGA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "UKSEA41Jan_MGAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UKSEA41Jan_MortTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UKSEA41Jan_MortG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "UKSEA41Jan_MortA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "UKSEA41Jan_MortAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UKSEA41Jan_ATRTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UKSEA41Jan_ATRG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,5] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UKSEA41Jan_ATRAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UKSEA41Jan_VCom" : {
        [UK_UniSEA_Sgt_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
    };

    //Tank Crew
    case "UKSEA41Jan_VCrew" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA41Jan_M1928;

        //Secondary Weapon
        UKSEA41Jan_Webley;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };
