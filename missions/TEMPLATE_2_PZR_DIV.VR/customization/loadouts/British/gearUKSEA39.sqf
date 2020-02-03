// Info: British Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UKSEA39_Lt"] call Olsen_FW_FNC_GearScript;       Lieutenant
[this,"UKSEA39_Sgt"] call Olsen_FW_FNC_GearScript;      Sergeant
[this,"UKSEA39_Med"] call Olsen_FW_FNC_GearScript;      Medic
[this,"UKSEA39_Sig"] call Olsen_FW_FNC_GearScript;      Signaller
[this,"UKSEA39_LMortG"] call Olsen_FW_FNC_GearScript;   Light Mortar Gunner
[this,"UKSEA39_LMortA"] call Olsen_FW_FNC_GearScript;   Light Mortar Assistant
[this,"UKSEA39_Cpl"] call Olsen_FW_FNC_GearScript;      Corporal
[this,"UKSEA39_LCpl"] call Olsen_FW_FNC_GearScript;     Lance Corporal
[this,"UKSEA39_AR"] call Olsen_FW_FNC_GearScript;       Bren Gunner
[this,"UKSEA39_AAR"] call Olsen_FW_FNC_GearScript;      Bren Gun Assistant
[this,"UKSEA39_AAB"] call Olsen_FW_FNC_GearScript;      Bren Gun Ammo Bearer
[this,"UKSEA39_Rif"] call Olsen_FW_FNC_GearScript;      Rifleman

    Weapons Teams
[this,"UKSEA39_MGTL"] call Olsen_FW_FNC_GearScript;     Machine Gun Team Leader
[this,"UKSEA39_MG"] call Olsen_FW_FNC_GearScript;       Machine Gunner
[this,"UKSEA39_MGA"] call Olsen_FW_FNC_GearScript;      Machine Gun Assistant
[this,"UKSEA39_MGAB"] call Olsen_FW_FNC_GearScript;     Machine Gun Ammo Bearer

[this,"UKSEA39_MortTL"] call Olsen_FW_FNC_GearScript;   Mortar Team Leader
[this,"UKSEA39_MortG"] call Olsen_FW_FNC_GearScript;    Mortar Gunner
[this,"UKSEA39_MortA"] call Olsen_FW_FNC_GearScript;    Mortar Assistant
[this,"UKSEA39_MortAB"] call Olsen_FW_FNC_GearScript;   Mortar Ammo Bearer

[this,"UKSEA39_ATRTL"] call Olsen_FW_FNC_GearScript;    Boys Rifle Team Leader
[this,"UKSEA39_ATRG"] call Olsen_FW_FNC_GearScript;     Boys Rifle Gunner
[this,"UKSEA39_ATRAB"] call Olsen_FW_FNC_GearScript;    Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"UKSEA39_VCom"] call Olsen_FW_FNC_GearScript;     Tank Commander
[this,"UKSEA39_VCrew"] call Olsen_FW_FNC_GearScript;    Tank Crew
*/

//======================== Definitions ========================

#define UKSEA39_LeeEn \
        [UK_Mag_LeeEn,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_LeeEnNo1Mk3s] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_LeeEn,5,"vest"] call Olsen_FW_FNC_AddItem;

#define UKSEA39_Webley \
        [UK_Mag_EnfieldNo2,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UKSEA39_Lt" : {
        [UK_UniSEA_Lt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Sergeant
    case "UKSEA39_Sgt" : {
        [UK_UniSEA_Sgt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "UKSEA39_Med" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Signaller
    case "UKSEA39_Sig" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UKSEA39_LMortG" : {
        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Assistant
    case "UKSEA39_LMortA" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Squad

    //Corporal
    case "UKSEA39_Cpl" : {
        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Lance Corporal
    case "UKSEA39_LCpl" : {
        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gunner
    case "UKSEA39_AR" : {
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
        UKSEA39_Webley;
    };

    //Bren Gun Assistant
    case "UKSEA39_AAR" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UKSEA39_AAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "UKSEA39_Rif" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UKSEA39_MGTL" : {
        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "UKSEA39_MG" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;
    };

    //Machine Gun Assistant
    case "UKSEA39_MGA" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "UKSEA39_MGAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UKSEA39_MortTL" : {
        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "UKSEA39_MortG" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "UKSEA39_MortA" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "UKSEA39_MortAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UKSEA39_ATRTL" : {
        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UKSEA39_ATRG" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UKSEA39_ATRAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA39_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UKSEA39_VCom" : {
        [UK_UniSEA_Sgt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "UKSEA39_VCrew" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA39_Webley;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
