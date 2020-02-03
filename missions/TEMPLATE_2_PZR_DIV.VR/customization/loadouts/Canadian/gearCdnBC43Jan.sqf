// Info: British Army 1943 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnBC43Jan_Lt"] call Olsen_FW_FNC_GearScript;        Lieutenant
[this,"CdnBC43Jan_Sgt"] call Olsen_FW_FNC_GearScript;       Sergeant
[this,"CdnBC43Jan_Med"] call Olsen_FW_FNC_GearScript;       Medic
[this,"CdnBC43Jan_Sig"] call Olsen_FW_FNC_GearScript;       Signaller
[this,"CdnBC43Jan_LMortG"] call Olsen_FW_FNC_GearScript;    Light Mortar Gunner
[this,"CdnBC43Jan_LMortA"] call Olsen_FW_FNC_GearScript;    Light Mortar Assistant
[this,"CdnBC43Jan_Cpl"] call Olsen_FW_FNC_GearScript;       Corporal
[this,"CdnBC43Jan_LCpl"] call Olsen_FW_FNC_GearScript;      Lance Corporal
[this,"CdnBC43Jan_AR"] call Olsen_FW_FNC_GearScript;        Bren Gunner
[this,"CdnBC43Jan_AAR"] call Olsen_FW_FNC_GearScript;       Bren Gun Assistant
[this,"CdnBC43Jan_AAB"] call Olsen_FW_FNC_GearScript;       Bren Gun Ammo Bearer
[this,"CdnBC43Jan_Rif"] call Olsen_FW_FNC_GearScript;       Rifleman

    Weapons Teams
[this,"CdnBC43Jan_MGTL"] call Olsen_FW_FNC_GearScript;      Machine Gun Team Leader
[this,"CdnBC43Jan_MG"] call Olsen_FW_FNC_GearScript;        Machine Gunner
[this,"CdnBC43Jan_MGA"] call Olsen_FW_FNC_GearScript;       Machine Gun Assistant
[this,"CdnBC43Jan_MGAB"] call Olsen_FW_FNC_GearScript;      Machine Gun Ammo Bearer

[this,"CdnBC43Jan_MortTL"] call Olsen_FW_FNC_GearScript;    Mortar Team Leader
[this,"CdnBC43Jan_MortG"] call Olsen_FW_FNC_GearScript;     Mortar Gunner
[this,"CdnBC43Jan_MortA"] call Olsen_FW_FNC_GearScript;     Mortar Assistant
[this,"CdnBC43Jan_MortAB"] call Olsen_FW_FNC_GearScript;    Mortar Ammo Bearer

[this,"CdnBC43Jan_ATRTL"] call Olsen_FW_FNC_GearScript;     Boys Rifle Team Leader
[this,"CdnBC43Jan_ATRG"] call Olsen_FW_FNC_GearScript;      Boys Rifle Gunner
[this,"CdnBC43Jan_ATRAB"] call Olsen_FW_FNC_GearScript;     Boys Rifle Ammo Bearer

[this,"CdnBC43Jan_ATTL"] call Olsen_FW_FNC_GearScript;      PIAT Team Leader
[this,"CdnBC43Jan_ATG"] call Olsen_FW_FNC_GearScript;       PIAT Gunner
[this,"CdnBC43Jan_ATAB"] call Olsen_FW_FNC_GearScript;      PIAT Ammo Bearer

    Vehicle Crew
[this,"CdnBC43Jan_VCom"] call Olsen_FW_FNC_GearScript;      Tank Commander
[this,"CdnBC43Jan_VCrew"] call Olsen_FW_FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define CdnBC43Jan_LeeEn \
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
            ],[15], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_2], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define CdnBC43Jan_SMG \
        [ \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_30,2,"vest"], \
                [US_Mag_M1T_20,4,"vest"] \
            ],[65], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkII], \
                [UK_Mag_Sten,6,"vest"] \
            ],[15], \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,3,"vest"], \
                [US_Mag_M1T_20,3,"vest"] \
            ],[15], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkI], \
                [UK_Mag_Sten,6,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define CdnBC43Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "CdnBC43Jan_Lt" : {
        [CDN_UniBCR_Lt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Sergeant
    case "CdnBC43Jan_Sgt" : {
        [CDN_UniBCR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "CdnBC43Jan_Med" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Signaller
    case "CdnBC43Jan_Sig" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Gunner
    case "CdnBC43Jan_LMortG" : {
        [CDN_UniBCR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Assistant
    case "CdnBC43Jan_LMortA" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Squad

    //Corporal
    case "CdnBC43Jan_Cpl" : {
        [CDN_UniBCR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Lance Corporal
    case "CdnBC43Jan_LCpl" : {
        [CDN_UniBCR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gunner
    case "CdnBC43Jan_AR" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        [UK_Mag_Bren_30_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_BrenMkII] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnBC43Jan_Webley;
    };

    //Bren Gun Assistant
    case "CdnBC43Jan_AAR" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "CdnBC43Jan_AAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "CdnBC43Jan_Rif" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "CdnBC43Jan_MGTL" : {
        [CDN_UniBCR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "CdnBC43Jan_MG" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC43Jan_Webley;
    };

    //Machine Gun Assistant
    case "CdnBC43Jan_MGA" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "CdnBC43Jan_MGAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "CdnBC43Jan_MortTL" : {
        [CDN_UniBCR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "CdnBC43Jan_MortG" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "CdnBC43Jan_MortA" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "CdnBC43Jan_MortAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "CdnBC43Jan_ATRTL" : {
        [CDN_UniBCR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "CdnBC43Jan_ATRG" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "CdnBC43Jan_ATRAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "CdnBC43Jan_ATTL" : {
        [CDN_UniBCR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BP_P] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //PIAT Gunner
    case "CdnBC43Jan_ATG" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Primary Weapon
        [UK_Weap_Piat] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call Olsen_FW_FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "CdnBC43Jan_ATAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "CdnBC43Jan_VCom" : {
        [CDN_UniBCR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC43Jan_SMG;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "CdnBC43Jan_VCrew" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC43Jan_SMG;

        //Secondary Weapon
        CdnBC43Jan_Webley;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
