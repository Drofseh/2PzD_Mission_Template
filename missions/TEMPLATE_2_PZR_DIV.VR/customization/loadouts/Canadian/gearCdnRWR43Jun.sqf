// Info: British Army 1943 Jun Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnRWR43Jun_Lt"] call FNC_GearScript;        Lieutenant
[this,"CdnRWR43Jun_Sgt"] call FNC_GearScript;       Sergeant
[this,"CdnRWR43Jun_Med"] call FNC_GearScript;       Medic
[this,"CdnRWR43Jun_Sig"] call FNC_GearScript;       Signaller
[this,"CdnRWR43Jun_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"CdnRWR43Jun_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"CdnRWR43Jun_Cpl"] call FNC_GearScript;       Corporal
[this,"CdnRWR43Jun_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"CdnRWR43Jun_AR"] call FNC_GearScript;        Bren Gunner
[this,"CdnRWR43Jun_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"CdnRWR43Jun_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"CdnRWR43Jun_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"CdnRWR43Jun_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"CdnRWR43Jun_MG"] call FNC_GearScript;        Machine Gunner
[this,"CdnRWR43Jun_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"CdnRWR43Jun_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"CdnRWR43Jun_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"CdnRWR43Jun_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"CdnRWR43Jun_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"CdnRWR43Jun_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"CdnRWR43Jun_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"CdnRWR43Jun_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"CdnRWR43Jun_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

[this,"CdnRWR43Jun_ATTL"] call FNC_GearScript;      PIAT Team Leader
[this,"CdnRWR43Jun_ATG"] call FNC_GearScript;       PIAT Gunner
[this,"CdnRWR43Jun_ATAB"] call FNC_GearScript;      PIAT Ammo Bearer

    Vehicle Crew
[this,"CdnRWR43Jun_VCom"] call FNC_GearScript;      Tank Commander
[this,"CdnRWR43Jun_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UK43Jun_Lt" : {
        [CDN_UniRWR_Lt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_Sgt" : {
        [CDN_UniRWR_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,3,"vest"],
        [US_Mag_M1T_2,3,"vest"]
        ],[50],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,4,"vest"],
        [US_Mag_M1T_2,2,"vest"]
        ],[20],
        [//Sten MkI
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkI],
        [UK_Mag_Sten,6,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "UK43Jun_Med" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        UK_medic_equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UK43Jun_Sig" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [UK_Radio] call FNC_AddItem;
        _unit assignItem UK_Radio;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UK43Jun_LMortG" : {
        [CDN_UniRWR_LCpl] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_LMortA" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_Cpl" : {
        [CDN_UniRWR_Cpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,3,"vest"],
        [US_Mag_M1T_2,3,"vest"]
        ],[50],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,4,"vest"],
        [US_Mag_M1T_2,2,"vest"]
        ],[20],
        [//Sten MkI
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkI],
        [UK_Mag_Sten,6,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "UK43Jun_LCpl" : {
        [CDN_UniRWR_LCpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,3,"vest"],
        [US_Mag_M1T_2,3,"vest"]
        ],[50],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,4,"vest"],
        [US_Mag_M1T_2,2,"vest"]
        ],[20],
        [//Sten MkI
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkI],
        [UK_Mag_Sten,6,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "UK43Jun_AR" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_AAR" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [GEN_BinoR] call FNC_AddItem;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UK43Jun_AAB" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UK43Jun_Rif" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UK43Jun_MGTL" : {
        [CDN_UniRWR_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UK43Jun_MG" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;
    };

    //Machine Gun Assistant
    case "UK43Jun_MGA" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_MGAB" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UK43Jun_MortTL" : {
        [CDN_UniRWR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UK43Jun_MortG" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_MortA" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_MortAB" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UK43Jun_ATRTL" : {
        [CDN_UniRWR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UK43Jun_ATRG" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
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
    case "UK43Jun_ATRAB" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UK43Jun_ATTL" : {
        [CDN_UniRWR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "UK43Jun_ATG" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Primary Weapon
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UK43Jun_ATAB" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[60],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[20]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UK43Jun_VCom" : {
        [CDN_UniRWR_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,3,"vest"],
        [US_Mag_M1T_2,3,"vest"]
        ],[50],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,4,"vest"],
        [US_Mag_M1T_2,2,"vest"]
        ],[20],
        [//Sten MkI
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkI],
        [UK_Mag_Sten,6,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
    };

    //Tank Crew
    case "UK43Jun_VCrew" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,3,"vest"],
        [US_Mag_M1T_2,3,"vest"]
        ],[50],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,4,"vest"],
        [US_Mag_M1T_2,2,"vest"]
        ],[20],
        [//Sten MkI
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkI],
        [UK_Mag_Sten,6,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [UK_Mag_Webley455,1] call FNC_AddItem;
        [UK_Weap_Webley455] call FNC_AddItem;
        [UK_Mag_Webley455,3] call FNC_AddItem;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };