// Info: British Army 1941 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnRWR41Jan_Lt"] call Olsen_FW_FNC_GearScript;        Lieutenant
[this,"CdnRWR41Jan_Sgt"] call Olsen_FW_FNC_GearScript;       Sergeant
[this,"CdnRWR41Jan_Med"] call Olsen_FW_FNC_GearScript;       Medic
[this,"CdnRWR41Jan_Sig"] call Olsen_FW_FNC_GearScript;       Signaller
[this,"CdnRWR41Jan_LMortG"] call Olsen_FW_FNC_GearScript;    Light Mortar Gunner
[this,"CdnRWR41Jan_LMortA"] call Olsen_FW_FNC_GearScript;    Light Mortar Assistant
[this,"CdnRWR41Jan_Cpl"] call Olsen_FW_FNC_GearScript;       Corporal
[this,"CdnRWR41Jan_LCpl"] call Olsen_FW_FNC_GearScript;      Lance Corporal
[this,"CdnRWR41Jan_AR"] call Olsen_FW_FNC_GearScript;        Bren Gunner
[this,"CdnRWR41Jan_AAR"] call Olsen_FW_FNC_GearScript;       Bren Gun Assistant
[this,"CdnRWR41Jan_AAB"] call Olsen_FW_FNC_GearScript;       Bren Gun Ammo Bearer
[this,"CdnRWR41Jan_Rif"] call Olsen_FW_FNC_GearScript;       Rifleman

    Weapons Teams
[this,"CdnRWR41Jan_MGTL"] call Olsen_FW_FNC_GearScript;      Machine Gun Team Leader
[this,"CdnRWR41Jan_MG"] call Olsen_FW_FNC_GearScript;        Machine Gunner
[this,"CdnRWR41Jan_MGA"] call Olsen_FW_FNC_GearScript;       Machine Gun Assistant
[this,"CdnRWR41Jan_MGAB"] call Olsen_FW_FNC_GearScript;      Machine Gun Ammo Bearer

[this,"CdnRWR41Jan_MortTL"] call Olsen_FW_FNC_GearScript;    Mortar Team Leader
[this,"CdnRWR41Jan_MortG"] call Olsen_FW_FNC_GearScript;     Mortar Gunner
[this,"CdnRWR41Jan_MortA"] call Olsen_FW_FNC_GearScript;     Mortar Assistant
[this,"CdnRWR41Jan_MortAB"] call Olsen_FW_FNC_GearScript;    Mortar Ammo Bearer

[this,"CdnRWR41Jan_ATRTL"] call Olsen_FW_FNC_GearScript;     Boys Rifle Team Leader
[this,"CdnRWR41Jan_ATRG"] call Olsen_FW_FNC_GearScript;      Boys Rifle Gunner
[this,"CdnRWR41Jan_ATRAB"] call Olsen_FW_FNC_GearScript;     Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"CdnRWR41Jan_VCom"] call Olsen_FW_FNC_GearScript;      Tank Commander
[this,"CdnRWR41Jan_VCrew"] call Olsen_FW_FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define CdnRWR41Jan_LeeEn \
        [UK_Mag_LeeEn,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_LeeEnNo1Mk3s] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_LeeEn,5,"vest"] call Olsen_FW_FNC_AddItem;

#define CdnRWR41Jan_M1928 \
        [US_Mag_M1T_20,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1928] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1T_20,6,"vest"] call Olsen_FW_FNC_AddItem;

#define CdnRWR41Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call Olsen_FW_FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call Olsen_FW_FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "CdnRWR41Jan_Lt" : {
        [CDN_UniRWR_Lt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Sergeant
    case "CdnRWR41Jan_Sgt" : {
        [CDN_UniRWR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "CdnRWR41Jan_Med" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Signaller
    case "CdnRWR41Jan_Sig" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Gunner
    case "CdnRWR41Jan_LMortG" : {
        [CDN_UniRWR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Assistant
    case "CdnRWR41Jan_LMortA" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Squad

    //Corporal
    case "CdnRWR41Jan_Cpl" : {
        [CDN_UniRWR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Lance Corporal
    case "CdnRWR41Jan_LCpl" : {
        [CDN_UniRWR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_M1928;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gunner
    case "CdnRWR41Jan_AR" : {
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
        CdnRWR41Jan_Webley;
    };

    //Bren Gun Assistant
    case "CdnRWR41Jan_AAR" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "CdnRWR41Jan_AAB" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "CdnRWR41Jan_Rif" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "CdnRWR41Jan_MGTL" : {
        [CDN_UniRWR_LCpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "CdnRWR41Jan_MG" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR41Jan_Webley;
    };

    //Machine Gun Assistant
    case "CdnRWR41Jan_MGA" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "CdnRWR41Jan_MGAB" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "CdnRWR41Jan_MortTL" : {
        [CDN_UniRWR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "CdnRWR41Jan_MortG" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "CdnRWR41Jan_MortA" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "CdnRWR41Jan_MortAB" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "CdnRWR41Jan_ATRTL" : {
        [CDN_UniRWR_Cpl] call Olsen_FW_FNC_AddItem;
        [UK_VestK_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "CdnRWR41Jan_ATRG" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_O] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "CdnRWR41Jan_ATRAB" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "CdnRWR41Jan_VCom" : {
        [CDN_UniRWR_Sgt] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnRWR41Jan_M1928;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "CdnRWR41Jan_VCrew" : {
        [CDN_UniRWR_Pte] call Olsen_FW_FNC_AddItem;
        [UK_VestK_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPK] call Olsen_FW_FNC_AddItem;
        [UK_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnRWR41Jan_M1928;

        //Secondary Weapon
        CdnRWR41Jan_Webley;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
