// Info: British Army 1944 Jun Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnBC44Jun_Lt"] call FNC_GearScript;        Lieutenant
[this,"CdnBC44Jun_Sgt"] call FNC_GearScript;       Sergeant
[this,"CdnBC44Jun_Med"] call FNC_GearScript;       Medic
[this,"CdnBC44Jun_Sig"] call FNC_GearScript;       Signaller
[this,"CdnBC44Jun_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"CdnBC44Jun_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"CdnBC44Jun_Cpl"] call FNC_GearScript;       Corporal
[this,"CdnBC44Jun_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"CdnBC44Jun_AR"] call FNC_GearScript;        Bren Gunner
[this,"CdnBC44Jun_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"CdnBC44Jun_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"CdnBC44Jun_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"CdnBC44Jun_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"CdnBC44Jun_MG"] call FNC_GearScript;        Machine Gunner
[this,"CdnBC44Jun_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"CdnBC44Jun_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"CdnBC44Jun_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"CdnBC44Jun_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"CdnBC44Jun_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"CdnBC44Jun_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"CdnBC44Jun_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"CdnBC44Jun_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"CdnBC44Jun_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

[this,"CdnBC44Jun_ATTL"] call FNC_GearScript;      PIAT Team Leader
[this,"CdnBC44Jun_ATG"] call FNC_GearScript;       PIAT Gunner
[this,"CdnBC44Jun_ATAB"] call FNC_GearScript;      PIAT Ammo Bearer

    Vehicle Crew
[this,"CdnBC44Jun_VCom"] call FNC_GearScript;      Tank Commander
[this,"CdnBC44Jun_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define CdnBC44Jun_LeeEn                \
        [                               \
            [                           \
                [UK_Mag_LeeEn,1],       \
                [UK_Weap_LeeEnNo1],     \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[40],                     \
            [                           \
                [UK_Mag_LeeEn,1],       \
                [UK_Weap_LeeEnNo4_1],   \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[30],                     \
            [                           \
                [UK_Mag_LeeEn,1],       \
                [UK_Weap_LeeEnNo4_2],   \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[30]                      \
        ] call FNC_AddItemRandomPercent;

#define CdnBC44Jun_SMG                   \
        [                                \
            [                            \
                [UK_Mag_Sten,1],         \
                [UK_Weap_StenMkII],      \
                [UK_Mag_Sten,6,"vest"]   \
            ],[40],                      \
            [                            \
                [US_Mag_M1T_1,1],        \
                [US_Weap_M1T],           \
                [US_Mag_M1T_1,6,"vest"]  \
            ],[30],                      \
            [                            \
                [US_Mag_M1T_1,1],        \
                [US_Weap_M1928],         \
                [US_Mag_M1T_1,5,"vest"], \
                [US_Mag_M1T_2,1,"vest"]  \
            ],[20],                      \
            [                            \
                [UK_Mag_Sten,1],         \
                [UK_Weap_StenMkV],       \
                [UK_Mag_Sten,6,"vest"]   \
            ],[5],                       \
            [                            \
                [UK_Mag_Sten,1],         \
                [UK_Weap_StenMkI],       \
                [UK_Mag_Sten,6,"vest"]   \
            ],[5]                        \
        ] call FNC_AddItemRandomPercent;

#define CdnBC44Jun_Webley \
        [UK_Mag_Webley455,1] call FNC_AddItem; \
        [UK_Weap_Webley455] call FNC_AddItem; \
        [UK_Mag_Webley455,3] call FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "CdnBC44Jun_Lt" : {
        [UK_UniEsx_Lt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "CdnBC44Jun_Sgt" : {
        [UK_UniEsx_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC44Jun_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "CdnBC44Jun_Med" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "CdnBC44Jun_Sig" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "CdnBC44Jun_LMortG" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "CdnBC44Jun_LMortA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "CdnBC44Jun_Cpl" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC44Jun_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "CdnBC44Jun_LCpl" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "CdnBC44Jun_AR" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        [UK_Mag_Bren,1] call FNC_AddItem;
        [UK_Weap_Bren] call FNC_AddItem;
        [UK_Mag_Bren,10,"vest"] call FNC_AddItem;

        //Secondary Weapon
        CdnBC44Jun_Webley;
    };

    //Bren Gun Assistant
    case "CdnBC44Jun_AAR" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "CdnBC44Jun_AAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "CdnBC44Jun_Rif" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "CdnBC44Jun_MGTL" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "CdnBC44Jun_MG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC44Jun_Webley;
    };

    //Machine Gun Assistant
    case "CdnBC44Jun_MGA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "CdnBC44Jun_MGAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "CdnBC44Jun_MortTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "CdnBC44Jun_MortG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "CdnBC44Jun_MortA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "CdnBC44Jun_MortAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "CdnBC44Jun_ATRTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "CdnBC44Jun_ATRG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,20] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "CdnBC44Jun_ATRAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "CdnBC44Jun_ATTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "CdnBC44Jun_ATG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Primary Weapon
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "CdnBC44Jun_ATAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "CdnBC44Jun_VCom" : {
        [UK_UniEsx_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC44Jun_SMG;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,2] call FNC_AddItem;
    };

    //Tank Crew
    case "CdnBC44Jun_VCrew" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC44Jun_SMG;

        //Secondary Weapon
        CdnBC44Jun_Webley;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };