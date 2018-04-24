// Info: British Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnBC39_Lt"] call FNC_GearScript;       Lieutenant
[this,"CdnBC39_Sgt"] call FNC_GearScript;      Sergeant
[this,"CdnBC39_Med"] call FNC_GearScript;      Medic
[this,"CdnBC39_Sig"] call FNC_GearScript;      Signaller
[this,"CdnBC39_LMortG"] call FNC_GearScript;   Light Mortar Gunner
[this,"CdnBC39_LMortA"] call FNC_GearScript;   Light Mortar Assistant
[this,"CdnBC39_Cpl"] call FNC_GearScript;      Corporal
[this,"CdnBC39_LCpl"] call FNC_GearScript;     Lance Corporal
[this,"CdnBC39_AR"] call FNC_GearScript;       Bren Gunner
[this,"CdnBC39_AAR"] call FNC_GearScript;      Bren Gun Assistant
[this,"CdnBC39_AAB"] call FNC_GearScript;      Bren Gun Ammo Bearer
[this,"CdnBC39_Rif"] call FNC_GearScript;      Rifleman

    Weapons Teams
[this,"CdnBC39_MGTL"] call FNC_GearScript;     Machine Gun Team Leader
[this,"CdnBC39_MG"] call FNC_GearScript;       Machine Gunner
[this,"CdnBC39_MGA"] call FNC_GearScript;      Machine Gun Assistant
[this,"CdnBC39_MGAB"] call FNC_GearScript;     Machine Gun Ammo Bearer

[this,"CdnBC39_MortTL"] call FNC_GearScript;   Mortar Team Leader
[this,"CdnBC39_MortG"] call FNC_GearScript;    Mortar Gunner
[this,"CdnBC39_MortA"] call FNC_GearScript;    Mortar Assistant
[this,"CdnBC39_MortAB"] call FNC_GearScript;   Mortar Ammo Bearer

[this,"CdnBC39_ATRTL"] call FNC_GearScript;    Boys Rifle Team Leader
[this,"CdnBC39_ATRG"] call FNC_GearScript;     Boys Rifle Gunner
[this,"CdnBC39_ATRAB"] call FNC_GearScript;    Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"CdnBC39_VCom"] call FNC_GearScript;     Tank Commander
[this,"CdnBC39_VCrew"] call FNC_GearScript;    Tank Crew
*/

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "CdnBC39_Lt" : {
        [CDN_UniBCR_Lt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "CdnBC39_Sgt" : {
        [CDN_UniBCR_Sgt] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "CdnBC39_Med" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        UK_medic_equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "CdnBC39_Sig" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "CdnBC39_LMortG" : {
        [CDN_UniBCR_LCpl] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [GEN_ace_maptools] call FNC_AddItem;
        [GEN_ace_rangetable] call FNC_AddItem;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "CdnBC39_LMortA" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [GEN_ace_maptools] call FNC_AddItem;
        [GEN_ace_rangetable] call FNC_AddItem;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "CdnBC39_Cpl" : {
        [CDN_UniBCR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "CdnBC39_LCpl" : {
        [CDN_UniBCR_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "CdnBC39_AR" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_Bren,1] call FNC_AddItem;
        [UK_Weap_Bren] call FNC_AddItem;
        [UK_Mag_Bren,10,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;
    };

    //Bren Gun Assistant
    case "CdnBC39_AAR" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "CdnBC39_AAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "CdnBC39_Rif" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "CdnBC39_MGTL" : {
        [CDN_UniBCR_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "CdnBC39_MG" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;
    };

    //Machine Gun Assistant
    case "CdnBC39_MGA" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "CdnBC39_MGAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "CdnBC39_MortTL" : {
        [CDN_UniBCR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "CdnBC39_MortG" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Assistant
    case "CdnBC39_MortA" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "CdnBC39_MortAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "CdnBC39_ATRTL" : {
        [CDN_UniBCR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "CdnBC39_ATRG" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,20] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "CdnBC39_ATRAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Primary Weapon
        [UK_Mag_LeeEn,1] call FNC_AddItem;
        [UK_Weap_LeeEnNo1] call FNC_AddItem;
        [UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "CdnBC39_VCom" : {
        [CDN_UniBCR_Sgt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
    };

    //Tank Crew
    case "CdnBC39_VCrew" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_Mk2] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };