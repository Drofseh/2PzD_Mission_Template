// Info: British Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UKEsx39_Lt"] call FNC_GearScript;       Lieutenant
[this,"UKEsx39_Sgt"] call FNC_GearScript;      Sergeant
[this,"UKEsx39_Med"] call FNC_GearScript;      Medic
[this,"UKEsx39_Sig"] call FNC_GearScript;      Signaller
[this,"UKEsx39_LMortG"] call FNC_GearScript;   Light Mortar Gunner
[this,"UKEsx39_LMortA"] call FNC_GearScript;   Light Mortar Assistant
[this,"UKEsx39_Cpl"] call FNC_GearScript;      Corporal
[this,"UKEsx39_LCpl"] call FNC_GearScript;     Lance Corporal
[this,"UKEsx39_AR"] call FNC_GearScript;       Bren Gunner
[this,"UKEsx39_AAR"] call FNC_GearScript;      Bren Gun Assistant
[this,"UKEsx39_AAB"] call FNC_GearScript;      Bren Gun Ammo Bearer
[this,"UKEsx39_Rif"] call FNC_GearScript;      Rifleman

    Weapons Teams
[this,"UKEsx39_MGTL"] call FNC_GearScript;     Machine Gun Team Leader
[this,"UKEsx39_MG"] call FNC_GearScript;       Machine Gunner
[this,"UKEsx39_MGA"] call FNC_GearScript;      Machine Gun Assistant
[this,"UKEsx39_MGAB"] call FNC_GearScript;     Machine Gun Ammo Bearer

[this,"UKEsx39_MortTL"] call FNC_GearScript;   Mortar Team Leader
[this,"UKEsx39_MortG"] call FNC_GearScript;    Mortar Gunner
[this,"UKEsx39_MortA"] call FNC_GearScript;    Mortar Assistant
[this,"UKEsx39_MortAB"] call FNC_GearScript;   Mortar Ammo Bearer

[this,"UKEsx39_ATRTL"] call FNC_GearScript;    Boys Rifle Team Leader
[this,"UKEsx39_ATRG"] call FNC_GearScript;     Boys Rifle Gunner
[this,"UKEsx39_ATRAB"] call FNC_GearScript;    Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"UKEsx39_VCom"] call FNC_GearScript;     Tank Commander
[this,"UKEsx39_VCrew"] call FNC_GearScript;    Tank Crew
*/

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UKEsx39_Lt" : {
        [UK_UniEsx_Lt] call FNC_AddItem;
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
    case "UKEsx39_Sgt" : {
        [UK_UniEsx_Sgt] call FNC_AddItem;
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
    case "UKEsx39_Med" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_Sig" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_LMortG" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
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
    case "UKEsx39_LMortA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_Cpl" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
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
    case "UKEsx39_LCpl" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
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
    case "UKEsx39_AR" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_AAR" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_AAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_Rif" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_MGTL" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
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
    case "UKEsx39_MG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_MGA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_MGAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_MortTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
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
    case "UKEsx39_MortG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
        [GEN_ace_rangetable] call FNC_AddItem;
        [GEN_ace_maptools] call FNC_AddItem;
    };

    //Mortar Assistant
    case "UKEsx39_MortA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
        [GEN_ace_rangetable] call FNC_AddItem;
        [GEN_ace_maptools] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "UKEsx39_MortAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_ATRTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
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
    case "UKEsx39_ATRG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_ATRAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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
    case "UKEsx39_VCom" : {
        [UK_UniEsx_Sgt] call FNC_AddItem;
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
    case "UKEsx39_VCrew" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
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