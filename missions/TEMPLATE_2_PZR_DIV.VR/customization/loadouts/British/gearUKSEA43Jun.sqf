// Info: British Army 1943 Jun Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UKSEA43Jun_Lt"] call FNC_GearScript;        Lieutenant
[this,"UKSEA43Jun_Sgt"] call FNC_GearScript;       Sergeant
[this,"UKSEA43Jun_Med"] call FNC_GearScript;       Medic
[this,"UKSEA43Jun_Sig"] call FNC_GearScript;       Signaller
[this,"UKSEA43Jun_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"UKSEA43Jun_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"UKSEA43Jun_Cpl"] call FNC_GearScript;       Corporal
[this,"UKSEA43Jun_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"UKSEA43Jun_AR"] call FNC_GearScript;        Bren Gunner
[this,"UKSEA43Jun_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"UKSEA43Jun_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"UKSEA43Jun_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"UKSEA43Jun_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"UKSEA43Jun_MG"] call FNC_GearScript;        Machine Gunner
[this,"UKSEA43Jun_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"UKSEA43Jun_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"UKSEA43Jun_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"UKSEA43Jun_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"UKSEA43Jun_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"UKSEA43Jun_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"UKSEA43Jun_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"UKSEA43Jun_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"UKSEA43Jun_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

[this,"UKSEA43Jun_ATTL"] call FNC_GearScript;      PIAT Team Leader
[this,"UKSEA43Jun_ATG"] call FNC_GearScript;       PIAT Gunner
[this,"UKSEA43Jun_ATAB"] call FNC_GearScript;      PIAT Ammo Bearer

    Vehicle Crew
[this,"UKSEA43Jun_VCom"] call FNC_GearScript;      Tank Commander
[this,"UKSEA43Jun_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define UK43Jun_LeeEn \
        [ \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo1Mk3s], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[60], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_1], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[40] \
        ] call FNC_AddItemRandomPercent;

#define UK43Jun_SMG \
        [ \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_30,2,"vest"], \
                [US_Mag_M1T_20,4,"vest"] \
            ],[50], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkII], \
                [UK_Mag_Sten,6,"vest"] \
            ],[25], \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,3,"vest"], \
                [US_Mag_M1T_20,3,"vest"] \
            ],[20], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkI], \
                [UK_Mag_Sten,6,"vest"] \
            ],[5] \
        ] call FNC_AddItemRandomPercent;


#define UK43Jun_Webley \
        [UK_Mag_EnfieldNo2,1] call FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UK43Jun_Lt" : {
        [UK_UniSEA_Lt_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "UK43Jun_Sgt" : {
        [UK_UniSEA_Sgt_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK43Jun_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "UK43Jun_Med" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UK43Jun_Sig" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_Radio] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UK43Jun_LMortG" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "UK43Jun_LMortA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "UK43Jun_Cpl" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK43Jun_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "UK43Jun_LCpl" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jun_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "UK43Jun_AR" : {
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
        UK43Jun_Webley;
    };

    //Bren Gun Assistant
    case "UK43Jun_AAR" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UK43Jun_AAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UK43Jun_Rif" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UK43Jun_MGTL" : {
        [UK_UniSEA_LCpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UK43Jun_MG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UK43Jun_Webley;
    };

    //Machine Gun Assistant
    case "UK43Jun_MGA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "UK43Jun_MGAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UK43Jun_MortTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UK43Jun_MortG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "UK43Jun_MortA" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "UK43Jun_MortAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UK43Jun_ATRTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UK43Jun_ATRG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UK43Jun_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,5] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UK43Jun_ATRAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UK43Jun_ATTL" : {
        [UK_UniSEA_Cpl_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "UK43Jun_ATG" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_O] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UK43Jun_Webley;

        //Primary Weapon
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UK43Jun_ATAB" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_LeeEn] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UK43Jun_VCom" : {
        [UK_UniSEA_Sgt_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK43Jun_SMG;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
    };

    //Tank Crew
    case "UK43Jun_VCrew" : {
        [UK_UniSEA_Pte_r] call FNC_AddItemRandom;
        [UK_VestG_Sten] call FNC_AddItem;
        [UK_BPG] call FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK43Jun_SMG;

        //Secondary Weapon
        UK43Jun_Webley;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };
