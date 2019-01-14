// Info: British Army 1945 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"CdnBC45_Lt"] call FNC_GearScript;         Lieutenant
[this,"CdnBC45_Sgt"] call FNC_GearScript;        Sergeant
[this,"CdnBC45_Med"] call FNC_GearScript;        Medic
[this,"CdnBC45_Sig"] call FNC_GearScript;        Signaller
[this,"CdnBC45_LMortG"] call FNC_GearScript;     Light Mortar Gunner
[this,"CdnBC45_LMortA"] call FNC_GearScript;     Light Mortar Assistant
[this,"CdnBC45_Cpl"] call FNC_GearScript;        Corporal
[this,"CdnBC45_LCpl"] call FNC_GearScript;       Lance Corporal
[this,"CdnBC45_AR"] call FNC_GearScript;         Bren Gunner
[this,"CdnBC45_AAR"] call FNC_GearScript;        Bren Gun Assistant
[this,"CdnBC45_AAB"] call FNC_GearScript;        Bren Gun Ammo Bearer
[this,"CdnBC45_Rif"] call FNC_GearScript;        Rifleman

    Weapons Teams
[this,"CdnBC45_MGTL"] call FNC_GearScript;       Machine Gun Team Leader
[this,"CdnBC45_MG"] call FNC_GearScript;         Machine Gunner
[this,"CdnBC45_MGA"] call FNC_GearScript;        Machine Gun Assistant
[this,"CdnBC45_MGAB"] call FNC_GearScript;       Machine Gun Ammo Bearer

[this,"CdnBC45_MortTL"] call FNC_GearScript;     Mortar Team Leader
[this,"CdnBC45_MortG"] call FNC_GearScript;      Mortar Gunner
[this,"CdnBC45_MortA"] call FNC_GearScript;      Mortar Assistant
[this,"CdnBC45_MortAB"] call FNC_GearScript;     Mortar Ammo Bearer

[this,"UK45Jan_ATRTL"] call FNC_GearScript;   Boys Rifle Team Leader
[this,"UK45Jan_ATRG"] call FNC_GearScript;    Boys Rifle Gunner
[this,"UK45Jan_ATRAB"] call FNC_GearScript;   Boys Rifle Ammo Bearer

[this,"UK45Jan_ATTL"] call FNC_GearScript;    PIAT Team Leader
[this,"UK45Jan_ATG"] call FNC_GearScript;     PIAT Gunner
[this,"UK45Jan_ATAB"] call FNC_GearScript;    PIAT Ammo Bearer

    Vehicle Crew
[this,"CdnBC45_VCom"] call FNC_GearScript;       Tank Commander
[this,"CdnBC45_VCrew"] call FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

#define CdnBC45_LeeEn                   \
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

#define CdnBC45_SMG                     \
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

#define CdnBC45_Pistol                    \
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
    case "CdnBC45_Lt" : {
        [CDN_UniBCR_Lt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "CdnBC45_Sgt" : {
        [CDN_UniBCR_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC45_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "CdnBC45_Med" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "CdnBC45_Sig" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "CdnBC45_LMortG" : {
        [CDN_UniBCR_LCpl] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "CdnBC45_LMortA" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "CdnBC45_Cpl" : {
        [CDN_UniBCR_Cpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC45_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "CdnBC45_LCpl" : {
        [CDN_UniBCR_LCpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "CdnBC45_AR" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
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
        CdnBC45_Pistol;
    };

    //Bren Gun Assistant
    case "CdnBC45_AAR" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "CdnBC45_AAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "CdnBC45_Rif" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "CdnBC45_MGTL" : {
        [CDN_UniBCR_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "CdnBC45_MG" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC45_Pistol;
    };

    //Machine Gun Assistant
    case "CdnBC45_MGA" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "CdnBC45_MGAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "CdnBC45_MortTL" : {
        [CDN_UniBCR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "CdnBC45_MortG" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "CdnBC45_MortA" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "CdnBC45_MortAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UK45Jan_ATRTL" : {
        [CDN_UniBCR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UK45Jan_ATRG" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,20] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UK45Jan_ATRAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UK45Jan_ATTL" : {
        [CDN_UniBCR_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "UK45Jan_ATG" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Primary Weapon
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UK45Jan_ATAB" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "CdnBC45_VCom" : {
        [CDN_UniBCR_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        CdnBC45_SMG;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
    };

    //Tank Crew
    case "CdnBC45_VCrew" : {
        [CDN_UniBCR_Pte] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        CdnBC45_SMG;

        //Secondary Weapon
        CdnBC45_Pistol;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };