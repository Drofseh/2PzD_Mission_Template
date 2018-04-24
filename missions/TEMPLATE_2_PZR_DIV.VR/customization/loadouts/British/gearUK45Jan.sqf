// Info: British Army 1945 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UK45_Lt"] call FNC_GearScript;         Lieutenant
[this,"UK45_Sgt"] call FNC_GearScript;        Sergeant
[this,"UK45_Med"] call FNC_GearScript;        Medic
[this,"UK45_Sig"] call FNC_GearScript;        Signaller
[this,"UK45_LMortG"] call FNC_GearScript;     Light Mortar Gunner
[this,"UK45_LMortA"] call FNC_GearScript;     Light Mortar Assistant
[this,"UK45_Cpl"] call FNC_GearScript;        Corporal
[this,"UK45_LCpl"] call FNC_GearScript;       Lance Corporal
[this,"UK45_AR"] call FNC_GearScript;         Bren Gunner
[this,"UK45_AAR"] call FNC_GearScript;        Bren Gun Assistant
[this,"UK45_AAB"] call FNC_GearScript;        Bren Gun Ammo Bearer
[this,"UK45_Rif"] call FNC_GearScript;        Rifleman

    Weapons Teams
[this,"UK45_MGTL"] call FNC_GearScript;       Machine Gun Team Leader
[this,"UK45_MG"] call FNC_GearScript;         Machine Gunner
[this,"UK45_MGA"] call FNC_GearScript;        Machine Gun Assistant
[this,"UK45_MGAB"] call FNC_GearScript;       Machine Gun Ammo Bearer

[this,"UK45_MortTL"] call FNC_GearScript;     Mortar Team Leader
[this,"UK45_MortG"] call FNC_GearScript;      Mortar Gunner
[this,"UK45_MortA"] call FNC_GearScript;      Mortar Assistant
[this,"UK45_MortAB"] call FNC_GearScript;     Mortar Ammo Bearer

[this,"UK45Jan_ATRTL"] call FNC_GearScript;   Boys Rifle Team Leader
[this,"UK45Jan_ATRG"] call FNC_GearScript;    Boys Rifle Gunner
[this,"UK45Jan_ATRAB"] call FNC_GearScript;   Boys Rifle Ammo Bearer

[this,"UK45Jan_ATTL"] call FNC_GearScript;    PIAT Team Leader
[this,"UK45Jan_ATG"] call FNC_GearScript;     PIAT Gunner
[this,"UK45Jan_ATAB"] call FNC_GearScript;    PIAT Ammo Bearer

    Vehicle Crew
[this,"UK45_VCom"] call FNC_GearScript;       Tank Commander
[this,"UK45_VCrew"] call FNC_GearScript;      Tank Crew
*/

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UK45_Lt" : {
        [UK_Uni_Lt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        //Secondary Weapon
        [
        [//Webley
        [UK_Mag_Webley455,1],
        [UK_Weap_Webley455],
        [UK_Mag_Webley455,3]
        ],[85],
        [//Browning Hi-Power
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2,"vest"]
        ],[15]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "UK45_Sgt" : {
        [UK_Uni_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[50],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,6,"vest"]
        ],[25],
        [//Sten MkV
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkV],
        [UK_Mag_Sten,6,"vest"]
        ],[15],
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,6,"vest"]
        ],[5],
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
    case "UK45_Med" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        UK_medic_equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UK45_Sig" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UK45_LMortG" : {
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
    case "UK45_LMortA" : {
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
    case "UK45_Cpl" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[50],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,6,"vest"]
        ],[25],
        [//Sten MkV
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkV],
        [UK_Mag_Sten,6,"vest"]
        ],[15],
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,6,"vest"]
        ],[5],
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
    case "UK45_LCpl" : {
        [UK_Uni_LCpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[50],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,6,"vest"]
        ],[25],
        [//Sten MkV
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkV],
        [UK_Mag_Sten,6,"vest"]
        ],[15],
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,6,"vest"]
        ],[5],
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
    case "UK45_AR" : {
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
    case "UK45_AAR" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        [GEN_BinoR] call FNC_AddItem;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UK45_AAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UK45_Rif" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UK45_MGTL" : {
        [UK_Uni_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UK45_MG" : {
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
    case "UK45_MGA" : {
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
    case "UK45_MGAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UK45_MortTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UK45_MortG" : {
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
    case "UK45_MortA" : {
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
    case "UK45_MortAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UK45Jan_ATRTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UK45Jan_ATRG" : {
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
    case "UK45Jan_ATRAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UK45Jan_ATTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "UK45Jan_ATG" : {
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
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UK45Jan_ATAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[38],
        [//Lee Enfield No4
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo4_2],
        [UK_Mag_LeeEn,5,"vest"]
        ],[37],
        [//Lee Enfield No1
        [UK_Mag_LeeEn,1],
        [UK_Weap_LeeEnNo1],
        [UK_Mag_LeeEn,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UK45_VCom" : {
        [UK_Uni_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;
        UK_leader_equipment;

        [//Primary Weapon
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[50],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,6,"vest"]
        ],[25],
        [//Sten MkV
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkV],
        [UK_Mag_Sten,6,"vest"]
        ],[15],
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,6,"vest"]
        ],[5],
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
    case "UK45_VCrew" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_default_equipment;

        [//Primary Weapon
        [//Sten MkII
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkII],
        [UK_Mag_Sten,6,"vest"]
        ],[50],
        [//M1 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,6,"vest"]
        ],[25],
        [//Sten MkV
        [UK_Mag_Sten,1],
        [UK_Weap_StenMkV],
        [UK_Mag_Sten,6,"vest"]
        ],[15],
        [//M1928 Thompson
        [US_Mag_M1T_1,1],
        [US_Weap_M1928],
        [US_Mag_M1T_1,6,"vest"]
        ],[5],
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