// Info: British Army 1942 Jun Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnRWR42Jun_Lt"] call FNC_GearScript;        Lieutenant
[this,"CdnRWR42Jun_Sgt"] call FNC_GearScript;       Sergeant
[this,"CdnRWR42Jun_Med"] call FNC_GearScript;       Medic
[this,"CdnRWR42Jun_Sig"] call FNC_GearScript;       Signaller
[this,"CdnRWR42Jun_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"CdnRWR42Jun_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"CdnRWR42Jun_Cpl"] call FNC_GearScript;       Corporal
[this,"CdnRWR42Jun_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"CdnRWR42Jun_AR"] call FNC_GearScript;        Bren Gunner
[this,"CdnRWR42Jun_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"CdnRWR42Jun_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"CdnRWR42Jun_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"CdnRWR42Jun_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"CdnRWR42Jun_MG"] call FNC_GearScript;        Machine Gunner
[this,"CdnRWR42Jun_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"CdnRWR42Jun_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"CdnRWR42Jun_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"CdnRWR42Jun_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"CdnRWR42Jun_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"CdnRWR42Jun_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"CdnRWR42Jun_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"CdnRWR42Jun_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"CdnRWR42Jun_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"CdnRWR42Jun_VCom"] call FNC_GearScript;      Tank Commander
[this,"CdnRWR42Jun_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "CdnRWR42Jun_Lt" : {
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
    case "CdnRWR42Jun_Sgt" : {
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
        [US_Mag_M1T_1,1,"vest"],
        [US_Mag_M1T_2,5,"vest"]
        ],[75],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[10],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,2,"vest"],
        [US_Mag_M1T_2,4,"vest"]
        ],[10],
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
    case "CdnRWR42Jun_Med" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        UK_medic_equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "CdnRWR42Jun_Sig" : {
        [CDN_UniRWR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "CdnRWR42Jun_LMortG" : {
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
    case "CdnRWR42Jun_LMortA" : {
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
    case "CdnRWR42Jun_Cpl" : {
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
        [US_Mag_M1T_1,1,"vest"],
        [US_Mag_M1T_2,5,"vest"]
        ],[75],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[10],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,2,"vest"],
        [US_Mag_M1T_2,4,"vest"]
        ],[10],
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
    case "CdnRWR42Jun_LCpl" : {
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
        [US_Mag_M1T_1,1,"vest"],
        [US_Mag_M1T_2,5,"vest"]
        ],[75],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[10],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,2,"vest"],
        [US_Mag_M1T_2,4,"vest"]
        ],[10],
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
    case "CdnRWR42Jun_AR" : {
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
    case "CdnRWR42Jun_AAR" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "CdnRWR42Jun_AAB" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "CdnRWR42Jun_Rif" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "CdnRWR42Jun_MGTL" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "CdnRWR42Jun_MG" : {
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
    case "CdnRWR42Jun_MGA" : {
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
    case "CdnRWR42Jun_MGAB" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "CdnRWR42Jun_MortTL" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "CdnRWR42Jun_MortG" : {
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
    case "CdnRWR42Jun_MortA" : {
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
    case "CdnRWR42Jun_MortAB" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "CdnRWR42Jun_ATRTL" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "CdnRWR42Jun_ATRG" : {
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
    case "CdnRWR42Jun_ATRAB" : {
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
        ],[80],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "CdnRWR42Jun_VCom" : {
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
        [US_Mag_M1T_1,1,"vest"],
        [US_Mag_M1T_2,5,"vest"]
        ],[75],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[10],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,2,"vest"],
        [US_Mag_M1T_2,4,"vest"]
        ],[10],
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
    case "CdnRWR42Jun_VCrew" : {
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
        [US_Mag_M1T_1,1,"vest"],
        [US_Mag_M1T_2,5,"vest"]
        ],[75],
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[10],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,2,"vest"],
        [US_Mag_M1T_2,4,"vest"]
        ],[10],
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