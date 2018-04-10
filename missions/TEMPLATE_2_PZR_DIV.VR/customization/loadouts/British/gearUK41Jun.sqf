// Info: British Army 1941 Jun Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UK41Jun_Lt"] call FNC_GearScript;        Lieutenant
[this,"UK41Jun_Sgt"] call FNC_GearScript;       Sergeant
[this,"UK41Jun_Med"] call FNC_GearScript;       Medic
[this,"UK41Jun_Sig"] call FNC_GearScript;       Signaller
[this,"UK41Jun_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"UK41Jun_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"UK41Jun_Cpl"] call FNC_GearScript;       Corporal
[this,"UK41Jun_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"UK41Jun_AR"] call FNC_GearScript;        Bren Gunner
[this,"UK41Jun_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"UK41Jun_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"UK41Jun_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"UK41Jun_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"UK41Jun_MG"] call FNC_GearScript;        Machine Gunner
[this,"UK41Jun_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"UK41Jun_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"UK41Jun_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"UK41Jun_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"UK41Jun_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"UK41Jun_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"UK41Jun_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"UK41Jun_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"UK41Jun_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

    Vehicle Crew
[this,"UK41Jun_VCom"] call FNC_GearScript;      Tank Commander
[this,"UK41Jun_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UK41Jun_Lt" : {
        [UK_Uni_Lt] call FNC_AddItem;
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
    case "UK41Jun_Sgt" : {
        [UK_Uni_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,6,"vest"]
        ],[95],
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
    case "UK41Jun_Med" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        UK_medic_equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UK41Jun_Sig" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [GEN_Radio_BP,"backpack"] call FNC_AddItem;

        [//Primary Weapon
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UK41Jun_LMortG" : {
        [UK_Uni_LCpl] call FNC_AddItem;
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
    case "UK41Jun_LMortA" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
    case "UK41Jun_Cpl" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,6,"vest"]
        ],[95],
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
    case "UK41Jun_LCpl" : {
        [UK_Uni_LCpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,6,"vest"]
        ],[95],
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
    case "UK41Jun_AR" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
    case "UK41Jun_AAR" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UK41Jun_AAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UK41Jun_Rif" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UK41Jun_MGTL" : {
        [UK_Uni_LCpl] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UK41Jun_MG" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
    case "UK41Jun_MGA" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
    case "UK41Jun_MGAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UK41Jun_MortTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UK41Jun_MortG" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
    case "UK41Jun_MortA" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
    case "UK41Jun_MortAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UK41Jun_ATRTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UK41Jun_ATRG" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
    case "UK41Jun_ATRAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
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
        ],[90],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UK41Jun_VCom" : {
        [UK_Uni_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,6,"vest"]
        ],[95],
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
    case "UK41Jun_VCrew" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//M1928 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,6,"vest"]
        ],[95],
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