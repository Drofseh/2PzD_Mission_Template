// Info: British Army 1942 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnBC42Jan_Lt"] call Olsen_FW_FNC_GearScript;        Lieutenant
[this,"CdnBC42Jan_Sgt"] call Olsen_FW_FNC_GearScript;       Sergeant
[this,"CdnBC42Jan_Med"] call Olsen_FW_FNC_GearScript;       Medic
[this,"CdnBC42Jan_Sig"] call Olsen_FW_FNC_GearScript;       Signaller
[this,"CdnBC42Jan_LMortG"] call Olsen_FW_FNC_GearScript;    Light Mortar Gunner
[this,"CdnBC42Jan_LMortA"] call Olsen_FW_FNC_GearScript;    Light Mortar Assistant
[this,"CdnBC42Jan_Cpl"] call Olsen_FW_FNC_GearScript;       Corporal
[this,"CdnBC42Jan_LCpl"] call Olsen_FW_FNC_GearScript;      Lance Corporal
[this,"CdnBC42Jan_AR"] call Olsen_FW_FNC_GearScript;        Bren Gunner
[this,"CdnBC42Jan_AAR"] call Olsen_FW_FNC_GearScript;       Bren Gun Assistant
[this,"CdnBC42Jan_AAB"] call Olsen_FW_FNC_GearScript;       Bren Gun Ammo Bearer
[this,"CdnBC42Jan_Rif"] call Olsen_FW_FNC_GearScript;       Rifleman

    Weapons Teams
[this,"CdnBC42Jan_MGTL"] call Olsen_FW_FNC_GearScript;      Machine Gun Team Leader
[this,"CdnBC42Jan_MG"] call Olsen_FW_FNC_GearScript;        Machine Gunner
[this,"CdnBC42Jan_MGA"] call Olsen_FW_FNC_GearScript;       Machine Gun Assistant
[this,"CdnBC42Jan_MGAB"] call Olsen_FW_FNC_GearScript;      Machine Gun Ammo Bearer

[this,"CdnBC42Jan_MortTL"] call Olsen_FW_FNC_GearScript;    Mortar Team Leader
[this,"CdnBC42Jan_MortG"] call Olsen_FW_FNC_GearScript;     Mortar Gunner
[this,"CdnBC42Jan_MortA"] call Olsen_FW_FNC_GearScript;     Mortar Assistant
[this,"CdnBC42Jan_MortAB"] call Olsen_FW_FNC_GearScript;    Mortar Ammo Bearer

[this,"CdnBC42Jan_ATRTL"] call Olsen_FW_FNC_GearScript;     Boys Rifle Team Leader
[this,"CdnBC42Jan_ATRG"] call Olsen_FW_FNC_GearScript;      Boys Rifle Gunner
[this,"CdnBC42Jan_ATRAB"] call Olsen_FW_FNC_GearScript;     Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"CdnBC42Jan_VCom"] call Olsen_FW_FNC_GearScript;      Tank Commander
[this,"CdnBC42Jan_VCrew"] call Olsen_FW_FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define CdnBC42Jan_LeeEn \
        [ \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo1Mk3s], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[85], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_1], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[8], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_2], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[7] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define CdnBC42Jan_SMG \
        [ \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_30,1,"vest"], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[90], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkI], \
                [UK_Mag_Sten,6,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define CdnBC42Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "CdnBC42Jan_Lt" : {
        [CDN_UniBCR_Lt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Sergeant
    case "CdnBC42Jan_Sgt" : {
        [CDN_UniBCR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC42Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "CdnBC42Jan_Med" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Signaller
    case "CdnBC42Jan_Sig" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Gunner
    case "CdnBC42Jan_LMortG" : {
        [CDN_UniBCR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Assistant
    case "CdnBC42Jan_LMortA" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Squad

    //Corporal
    case "CdnBC42Jan_Cpl" : {
        [CDN_UniBCR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC42Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Lance Corporal
    case "CdnBC42Jan_LCpl" : {
        [CDN_UniBCR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gunner
    case "CdnBC42Jan_AR" : {
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
        CdnBC42Jan_Webley;
    };

    //Bren Gun Assistant
    case "CdnBC42Jan_AAR" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "CdnBC42Jan_AAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "CdnBC42Jan_Rif" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "CdnBC42Jan_MGTL" : {
        [CDN_UniBCR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "CdnBC42Jan_MG" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC42Jan_Webley;
    };

    //Machine Gun Assistant
    case "CdnBC42Jan_MGA" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "CdnBC42Jan_MGAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "CdnBC42Jan_MortTL" : {
        [CDN_UniBCR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "CdnBC42Jan_MortG" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "CdnBC42Jan_MortA" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "CdnBC42Jan_MortAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "CdnBC42Jan_ATRTL" : {
        [CDN_UniBCR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "CdnBC42Jan_ATRG" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "CdnBC42Jan_ATRAB" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "CdnBC42Jan_VCom" : {
        [CDN_UniBCR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC42Jan_SMG;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "CdnBC42Jan_VCrew" : {
        [CDN_UniBCR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC42Jan_SMG;

        //Secondary Weapon
        CdnBC42Jan_Webley;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
