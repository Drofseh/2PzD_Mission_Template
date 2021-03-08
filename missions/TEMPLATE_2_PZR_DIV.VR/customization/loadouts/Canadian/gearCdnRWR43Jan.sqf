// Info: British Army 1943 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this, CdnRWR43Jan_Lt] call Olsen_FW_FNC_GearScript;         Lieutenant
[this, CdnRWR43Jan_Sgt] call Olsen_FW_FNC_GearScript;        Sergeant
[this, CdnRWR43Jan_Med] call Olsen_FW_FNC_GearScript;        Medic
[this, CdnRWR43Jan_Sig] call Olsen_FW_FNC_GearScript;        Signaller
[this, CdnRWR43Jan_LMortG] call Olsen_FW_FNC_GearScript;     Light Mortar Gunner
[this, CdnRWR43Jan_LMortA] call Olsen_FW_FNC_GearScript;     Light Mortar Assistant
[this, CdnRWR43Jan_Cpl] call Olsen_FW_FNC_GearScript;        Corporal
[this, CdnRWR43Jan_LCpl] call Olsen_FW_FNC_GearScript;       Lance Corporal
[this, CdnRWR43Jan_AR] call Olsen_FW_FNC_GearScript;         Bren Gunner
[this, CdnRWR43Jan_AAR] call Olsen_FW_FNC_GearScript;        Bren Gun Assistant
[this, CdnRWR43Jan_AAB] call Olsen_FW_FNC_GearScript;        Bren Gun Ammo Bearer
[this, CdnRWR43Jan_Rif] call Olsen_FW_FNC_GearScript;        Rifleman

    Weapons Teams
[this, CdnRWR43Jan_MGTL] call Olsen_FW_FNC_GearScript;       Machine Gun Team Leader
[this, CdnRWR43Jan_MG] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this, CdnRWR43Jan_MGA] call Olsen_FW_FNC_GearScript;        Machine Gun Assistant
[this, CdnRWR43Jan_MGAB] call Olsen_FW_FNC_GearScript;       Machine Gun Ammo Bearer

[this, CdnRWR43Jan_MortTL] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this, CdnRWR43Jan_MortG] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this, CdnRWR43Jan_MortA] call Olsen_FW_FNC_GearScript;      Mortar Assistant
[this, CdnRWR43Jan_MortAB] call Olsen_FW_FNC_GearScript;     Mortar Ammo Bearer

[this, CdnRWR43Jan_ATRTL] call Olsen_FW_FNC_GearScript;      Boys Rifle Team Leader
[this, CdnRWR43Jan_ATRG] call Olsen_FW_FNC_GearScript;       Boys Rifle Gunner
[this, CdnRWR43Jan_ATRAB] call Olsen_FW_FNC_GearScript;      Boys Rifle Ammo Bearer

[this, CdnRWR43Jan_ATTL] call Olsen_FW_FNC_GearScript;       PIAT Team Leader
[this, CdnRWR43Jan_ATG] call Olsen_FW_FNC_GearScript;        PIAT Gunner
[this, CdnRWR43Jan_ATAB] call Olsen_FW_FNC_GearScript;       PIAT Ammo Bearer

    Vehicle Crew
[this, CdnRWR43Jan_VCom] call Olsen_FW_FNC_GearScript;       Tank Commander
[this, CdnRWR43Jan_VCrew] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

#define CdnRWR43Jan_LeeEn \
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

#define CdnRWR43Jan_SMG \
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

#define CdnRWR43Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    CdnRWR43Jan_Lt = ["CdnRWR43Jan_Lt", {
        params ["_unit"];

        [CDN_UniRWR_Lt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Sergeant
    CdnRWR43Jan_Sgt = ["CdnRWR43Jan_Sgt", {
        params ["_unit"];

        [CDN_UniRWR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    CdnRWR43Jan_Med = ["CdnRWR43Jan_Med", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Signaller
    CdnRWR43Jan_Sig = ["CdnRWR43Jan_Sig", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Light Mortar Gunner
    CdnRWR43Jan_LMortG = ["CdnRWR43Jan_LMortG", {
        params ["_unit"];

        [CDN_UniRWR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Light Mortar Assistant
    CdnRWR43Jan_LMortA = ["CdnRWR43Jan_LMortA", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Corporal
    CdnRWR43Jan_Cpl = ["CdnRWR43Jan_Cpl", {
        params ["_unit"];

        [CDN_UniRWR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Lance Corporal
    CdnRWR43Jan_LCpl = ["CdnRWR43Jan_LCpl", {
        params ["_unit"];

        [CDN_UniRWR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Bren Gunner
    CdnRWR43Jan_AR = ["CdnRWR43Jan_AR", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
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
        CdnRWR43Jan_Webley;
    }];

    //Bren Gun Assistant
    CdnRWR43Jan_AAR = ["CdnRWR43Jan_AAR", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Bren Gun Ammo Bearer
    CdnRWR43Jan_AAB = ["CdnRWR43Jan_AAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    CdnRWR43Jan_Rif = ["CdnRWR43Jan_Rif", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    CdnRWR43Jan_MGTL = ["CdnRWR43Jan_MGTL", {
        params ["_unit"];

        [CDN_UniRWR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    CdnRWR43Jan_MG = ["CdnRWR43Jan_MG", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR43Jan_Webley;
    }];

    //Machine Gun Assistant
    CdnRWR43Jan_MGA = ["CdnRWR43Jan_MGA", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
    }];

    //Machine Gun Ammo Bearer
    CdnRWR43Jan_MGAB = ["CdnRWR43Jan_MGAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
    }];

//Mortar Team

    //Mortar Team Leader
    CdnRWR43Jan_MortTL = ["CdnRWR43Jan_MortTL", {
        params ["_unit"];

        [CDN_UniRWR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    CdnRWR43Jan_MortG = ["CdnRWR43Jan_MortG", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    }];

    //Mortar Assistant
    CdnRWR43Jan_MortA = ["CdnRWR43Jan_MortA", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    }];

    //Mortar Ammo Bearer
    CdnRWR43Jan_MortAB = ["CdnRWR43Jan_MortAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Boys Rifle Team

    //Boys Rifle Team Leader
    CdnRWR43Jan_ATRTL = ["CdnRWR43Jan_ATRTL", {
        params ["_unit"];

        [CDN_UniRWR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Boys Rifle Gunner
    CdnRWR43Jan_ATRG = ["CdnRWR43Jan_ATRG", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    }];

    //Boys Rifle Ammo Bearer
    CdnRWR43Jan_ATRAB = ["CdnRWR43Jan_ATRAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

//PIAT Team

    //PIAT Team Leader
    CdnRWR43Jan_ATTL = ["CdnRWR43Jan_ATTL", {
        params ["_unit"];

        [CDN_UniRWR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BP_P] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //PIAT Gunner
    CdnRWR43Jan_ATG = ["CdnRWR43Jan_ATG", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Primary Weapon
        [UK_Weap_Piat] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call Olsen_FW_FNC_AddItem;
    }];

    //PIAT Ammo Bearer
    CdnRWR43Jan_ATAB = ["CdnRWR43Jan_ATAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

//Vehicle Crew

    //Tank Commander
    CdnRWR43Jan_VCom = ["CdnRWR43Jan_VCom", {
        params ["_unit"];

        [CDN_UniRWR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR43Jan_SMG;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    }];

    //Tank Crew
    CdnRWR43Jan_VCrew = ["CdnRWR43Jan_VCrew", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR43Jan_SMG;

        //Secondary Weapon
        CdnRWR43Jan_Webley;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
