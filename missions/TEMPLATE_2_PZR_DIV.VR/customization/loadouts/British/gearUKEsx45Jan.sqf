// Info: British Army 1945 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UKEsx45_Lt"] call FNC_GearScript;         Lieutenant
[this,"UKEsx45_Sgt"] call FNC_GearScript;        Sergeant
[this,"UKEsx45_Med"] call FNC_GearScript;        Medic
[this,"UKEsx45_Sig"] call FNC_GearScript;        Signaller
[this,"UKEsx45_LMortG"] call FNC_GearScript;     Light Mortar Gunner
[this,"UKEsx45_LMortA"] call FNC_GearScript;     Light Mortar Assistant
[this,"UKEsx45_Cpl"] call FNC_GearScript;        Corporal
[this,"UKEsx45_LCpl"] call FNC_GearScript;       Lance Corporal
[this,"UKEsx45_AR"] call FNC_GearScript;         Bren Gunner
[this,"UKEsx45_AAR"] call FNC_GearScript;        Bren Gun Assistant
[this,"UKEsx45_AAB"] call FNC_GearScript;        Bren Gun Ammo Bearer
[this,"UKEsx45_Rif"] call FNC_GearScript;        Rifleman

    Weapons Teams
[this,"UKEsx45_MGTL"] call FNC_GearScript;       Machine Gun Team Leader
[this,"UKEsx45_MG"] call FNC_GearScript;         Machine Gunner
[this,"UKEsx45_MGA"] call FNC_GearScript;        Machine Gun Assistant
[this,"UKEsx45_MGAB"] call FNC_GearScript;       Machine Gun Ammo Bearer

[this,"UKEsx45_MortTL"] call FNC_GearScript;     Mortar Team Leader
[this,"UKEsx45_MortG"] call FNC_GearScript;      Mortar Gunner
[this,"UKEsx45_MortA"] call FNC_GearScript;      Mortar Assistant
[this,"UKEsx45_MortAB"] call FNC_GearScript;     Mortar Ammo Bearer

[this,"UK45Jan_ATRTL"] call FNC_GearScript;   Boys Rifle Team Leader
[this,"UK45Jan_ATRG"] call FNC_GearScript;    Boys Rifle Gunner
[this,"UK45Jan_ATRAB"] call FNC_GearScript;   Boys Rifle Ammo Bearer

[this,"UK45Jan_ATTL"] call FNC_GearScript;    PIAT Team Leader
[this,"UK45Jan_ATG"] call FNC_GearScript;     PIAT Gunner
[this,"UK45Jan_ATAB"] call FNC_GearScript;    PIAT Ammo Bearer

    Vehicle Crew
[this,"UKEsx45_VCom"] call FNC_GearScript;       Tank Commander
[this,"UKEsx45_VCrew"] call FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

#define UKEsx45_LeeEn                   \
        [                               \
            [                           \
                [UK_Mag_LeeEn,1],       \
                [UK_Weap_LeeEnNo4_1],   \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[38],                     \
            [                           \
                [UK_Mag_LeeEn,1],       \
                [UK_Weap_LeeEnNo4_2],   \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[37],                     \
            [                           \
                [UK_Mag_LeeEn,1],       \
                [UK_Weap_LeeEnNo1],     \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[25]                      \
        ] call FNC_AddItemRandomPercent;

#define UKEsx45_SMG                     \
        [                               \
            [                           \
                [UK_Mag_Sten,1],        \
                [UK_Weap_StenMkII],     \
                [UK_Mag_Sten,6,"vest"]  \
            ],[50],                     \
            [                           \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,6,"vest"] \
            ],[25],                     \
            [                           \
                [UK_Mag_Sten,1],        \
                [UK_Weap_StenMkV],      \
                [UK_Mag_Sten,6,"vest"]  \
            ],[15],                     \
            [                           \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_1,6,"vest"] \
            ],[5],                      \
            [                           \
                [UK_Mag_Sten,1],        \
                [UK_Weap_StenMkI],      \
                [UK_Mag_Sten,6,"vest"]  \
            ],[5]                       \
        ] call FNC_AddItemRandomPercent;

#define UKEsx45_Pistol                    \
        [                                 \
            [                             \
                [UK_Mag_Webley455,1],     \
                [UK_Weap_Webley455],      \
                [UK_Mag_Webley455,3]      \
            ],[85],                       \
            [                             \
                [UK_Mag_HiPower,1],       \
                [UK_Weap_HiPower],        \
                [UK_Mag_HiPower,2,"vest"] \
            ],[15]                        \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UKEsx45_Lt" : {
        [UK_UniEsx_Lt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "UKEsx45_Sgt" : {
        [UK_UniEsx_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKEsx45_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "UKEsx45_Med" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UKEsx45_Sig" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UKEsx45_LMortG" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "UKEsx45_LMortA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "UKEsx45_Cpl" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKEsx45_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "UKEsx45_LCpl" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "UKEsx45_AR" : {
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
        UKEsx45_Pistol;
    };

    //Bren Gun Assistant
    case "UKEsx45_AAR" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UKEsx45_AAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UKEsx45_Rif" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UKEsx45_MGTL" : {
        [UK_UniEsx_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UKEsx45_MG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKEsx45_Pistol;
    };

    //Machine Gun Assistant
    case "UKEsx45_MGA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "UKEsx45_MGAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UKEsx45_MortTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UKEsx45_MortG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "UKEsx45_MortA" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "UKEsx45_MortAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UK45Jan_ATRTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UK45Jan_ATRG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,20] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UK45Jan_ATRAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UK45Jan_ATTL" : {
        [UK_UniEsx_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "UK45Jan_ATG" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Primary Weapon
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UK45Jan_ATAB" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UKEsx45_VCom" : {
        [UK_UniEsx_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKEsx45_SMG;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
    };

    //Tank Crew
    case "UKEsx45_VCrew" : {
        [UK_UniEsx_Pte] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKEsx45_SMG;

        //Secondary Weapon
        UKEsx45_Pistol;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };