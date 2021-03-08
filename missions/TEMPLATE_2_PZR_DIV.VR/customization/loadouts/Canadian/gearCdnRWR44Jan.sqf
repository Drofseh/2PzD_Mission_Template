// Info: British Army 1944 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this, CdnRWR44Jan_Lt] call Olsen_FW_FNC_GearScript;         Lieutenant
[this, CdnRWR44Jan_Sgt] call Olsen_FW_FNC_GearScript;        Sergeant
[this, CdnRWR44Jan_Med] call Olsen_FW_FNC_GearScript;        Medic
[this, CdnRWR44Jan_Sig] call Olsen_FW_FNC_GearScript;        Signaller
[this, CdnRWR44Jan_LMortG] call Olsen_FW_FNC_GearScript;     Light Mortar Gunner
[this, CdnRWR44Jan_LMortA] call Olsen_FW_FNC_GearScript;     Light Mortar Assistant
[this, CdnRWR44Jan_Cpl] call Olsen_FW_FNC_GearScript;        Corporal
[this, CdnRWR44Jan_LCpl] call Olsen_FW_FNC_GearScript;       Lance Corporal
[this, CdnRWR44Jan_AR] call Olsen_FW_FNC_GearScript;         Bren Gunner
[this, CdnRWR44Jan_AAR] call Olsen_FW_FNC_GearScript;        Bren Gun Assistant
[this, CdnRWR44Jan_AAB] call Olsen_FW_FNC_GearScript;        Bren Gun Ammo Bearer
[this, CdnRWR44Jan_Rif] call Olsen_FW_FNC_GearScript;        Rifleman

    Weapons Teams
[this, CdnRWR44Jan_MGTL] call Olsen_FW_FNC_GearScript;       Machine Gun Team Leader
[this, CdnRWR44Jan_MG] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this, CdnRWR44Jan_MGA] call Olsen_FW_FNC_GearScript;        Machine Gun Assistant
[this, CdnRWR44Jan_MGAB] call Olsen_FW_FNC_GearScript;       Machine Gun Ammo Bearer

[this, CdnRWR44Jan_MortTL] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this, CdnRWR44Jan_MortG] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this, CdnRWR44Jan_MortA] call Olsen_FW_FNC_GearScript;      Mortar Assistant
[this, CdnRWR44Jan_MortAB] call Olsen_FW_FNC_GearScript;     Mortar Ammo Bearer

[this, CdnRWR44Jan_ATRTL] call Olsen_FW_FNC_GearScript;      Boys Rifle Team Leader
[this, CdnRWR44Jan_ATRG] call Olsen_FW_FNC_GearScript;       Boys Rifle Gunner
[this, CdnRWR44Jan_ATRAB] call Olsen_FW_FNC_GearScript;      Boys Rifle Ammo Bearer

[this, CdnRWR44Jan_ATTL] call Olsen_FW_FNC_GearScript;       PIAT Team Leader
[this, CdnRWR44Jan_ATG] call Olsen_FW_FNC_GearScript;        PIAT Gunner
[this, CdnRWR44Jan_ATAB] call Olsen_FW_FNC_GearScript;       PIAT Ammo Bearer

    Vehicle Crew
[this, CdnRWR44Jan_VCom] call Olsen_FW_FNC_GearScript;       Tank Commander
[this, CdnRWR44Jan_VCrew] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

#define CdnRWR44Jan_LeeEn \
        [ \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo1Mk3s], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[50], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_1], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[25], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_2], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[25] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define CdnRWR44Jan_SMG \
        [ \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_30,2,"vest"], \
                [US_Mag_M1T_20,4,"vest"] \
            ],[35], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkII], \
                [UK_Mag_Sten,6,"vest"] \
            ],[35], \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,3,"vest"], \
                [US_Mag_M1T_20,3,"vest"] \
            ],[25], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkI], \
                [UK_Mag_Sten,6,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define CdnRWR44Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    CdnRWR44Jan_Lt = ["CdnRWR44Jan_Lt", {
        params ["_unit"];

        [CDN_UniRWR_Lt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnRWR44Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Sergeant
    CdnRWR44Jan_Sgt = ["CdnRWR44Jan_Sgt", {
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
        CdnRWR44Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    CdnRWR44Jan_Med = ["CdnRWR44Jan_Med", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Signaller
    CdnRWR44Jan_Sig = ["CdnRWR44Jan_Sig", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Light Mortar Gunner
    CdnRWR44Jan_LMortG = ["CdnRWR44Jan_LMortG", {
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
        CdnRWR44Jan_Webley;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Light Mortar Assistant
    CdnRWR44Jan_LMortA = ["CdnRWR44Jan_LMortA", {
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
        CdnRWR44Jan_Webley;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Corporal
    CdnRWR44Jan_Cpl = ["CdnRWR44Jan_Cpl", {
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
        CdnRWR44Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Lance Corporal
    CdnRWR44Jan_LCpl = ["CdnRWR44Jan_LCpl", {
        params ["_unit"];

        [CDN_UniRWR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Bren Gunner
    CdnRWR44Jan_AR = ["CdnRWR44Jan_AR", {
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
        CdnRWR44Jan_Webley;
    }];

    //Bren Gun Assistant
    CdnRWR44Jan_AAR = ["CdnRWR44Jan_AAR", {
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
        CdnRWR44Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Bren Gun Ammo Bearer
    CdnRWR44Jan_AAB = ["CdnRWR44Jan_AAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    CdnRWR44Jan_Rif = ["CdnRWR44Jan_Rif", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    CdnRWR44Jan_MGTL = ["CdnRWR44Jan_MGTL", {
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
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    CdnRWR44Jan_MG = ["CdnRWR44Jan_MG", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR44Jan_Webley;
    }];

    //Machine Gun Assistant
    CdnRWR44Jan_MGA = ["CdnRWR44Jan_MGA", {
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
        CdnRWR44Jan_Webley;

        //Extra
    }];

    //Machine Gun Ammo Bearer
    CdnRWR44Jan_MGAB = ["CdnRWR44Jan_MGAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
    }];

//Mortar Team

    //Mortar Team Leader
    CdnRWR44Jan_MortTL = ["CdnRWR44Jan_MortTL", {
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
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    CdnRWR44Jan_MortG = ["CdnRWR44Jan_MortG", {
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
        CdnRWR44Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    }];

    //Mortar Assistant
    CdnRWR44Jan_MortA = ["CdnRWR44Jan_MortA", {
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
        CdnRWR44Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    }];

    //Mortar Ammo Bearer
    CdnRWR44Jan_MortAB = ["CdnRWR44Jan_MortAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Boys Rifle Team

    //Boys Rifle Team Leader
    CdnRWR44Jan_ATRTL = ["CdnRWR44Jan_ATRTL", {
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
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Boys Rifle Gunner
    CdnRWR44Jan_ATRG = ["CdnRWR44Jan_ATRG", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR44Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    }];

    //Boys Rifle Ammo Bearer
    CdnRWR44Jan_ATRAB = ["CdnRWR44Jan_ATRAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

//PIAT Team

    //PIAT Team Leader
    CdnRWR44Jan_ATTL = ["CdnRWR44Jan_ATTL", {
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
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //PIAT Gunner
    CdnRWR44Jan_ATG = ["CdnRWR44Jan_ATG", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR44Jan_Webley;

        //Primary Weapon
        [UK_Weap_Piat] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call Olsen_FW_FNC_AddItem;
    }];

    //PIAT Ammo Bearer
    CdnRWR44Jan_ATAB = ["CdnRWR44Jan_ATAB", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

//Vehicle Crew

    //Tank Commander
    CdnRWR44Jan_VCom = ["CdnRWR44Jan_VCom", {
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
        CdnRWR44Jan_SMG;

        //Secondary Weapon
        CdnRWR44Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    }];

    //Tank Crew
    CdnRWR44Jan_VCrew = ["CdnRWR44Jan_VCrew", {
        params ["_unit"];

        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR44Jan_SMG;

        //Secondary Weapon
        CdnRWR44Jan_Webley;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
