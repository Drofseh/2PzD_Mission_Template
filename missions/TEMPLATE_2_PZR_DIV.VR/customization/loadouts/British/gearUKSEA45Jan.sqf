// Info: British Army 1945 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UKSEA45_Lt"] call Olsen_FW_FNC_GearScript;         Lieutenant
[this,"UKSEA45_Sgt"] call Olsen_FW_FNC_GearScript;        Sergeant
[this,"UKSEA45_Med"] call Olsen_FW_FNC_GearScript;        Medic
[this,"UKSEA45_Sig"] call Olsen_FW_FNC_GearScript;        Signaller
[this,"UKSEA45_LMortG"] call Olsen_FW_FNC_GearScript;     Light Mortar Gunner
[this,"UKSEA45_LMortA"] call Olsen_FW_FNC_GearScript;     Light Mortar Assistant
[this,"UKSEA45_Cpl"] call Olsen_FW_FNC_GearScript;        Corporal
[this,"UKSEA45_LCpl"] call Olsen_FW_FNC_GearScript;       Lance Corporal
[this,"UKSEA45_AR"] call Olsen_FW_FNC_GearScript;         Bren Gunner
[this,"UKSEA45_AAR"] call Olsen_FW_FNC_GearScript;        Bren Gun Assistant
[this,"UKSEA45_AAB"] call Olsen_FW_FNC_GearScript;        Bren Gun Ammo Bearer
[this,"UKSEA45_Rif"] call Olsen_FW_FNC_GearScript;        Rifleman

    Weapons Teams
[this,"UKSEA45_MGTL"] call Olsen_FW_FNC_GearScript;       Machine Gun Team Leader
[this,"UKSEA45_MG"] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this,"UKSEA45_MGA"] call Olsen_FW_FNC_GearScript;        Machine Gun Assistant
[this,"UKSEA45_MGAB"] call Olsen_FW_FNC_GearScript;       Machine Gun Ammo Bearer

[this,"UKSEA45_MortTL"] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this,"UKSEA45_MortG"] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this,"UKSEA45_MortA"] call Olsen_FW_FNC_GearScript;      Mortar Assistant
[this,"UKSEA45_MortAB"] call Olsen_FW_FNC_GearScript;     Mortar Ammo Bearer

[this,"UKSEA45_ATRTL"] call Olsen_FW_FNC_GearScript;      Boys Rifle Team Leader
[this,"UKSEA45_ATRG"] call Olsen_FW_FNC_GearScript;       Boys Rifle Gunner
[this,"UKSEA45_ATRAB"] call Olsen_FW_FNC_GearScript;      Boys Rifle Ammo Bearer

[this,"UKSEA45_ATTL"] call Olsen_FW_FNC_GearScript;       PIAT Team Leader
[this,"UKSEA45_ATG"] call Olsen_FW_FNC_GearScript;        PIAT Gunner
[this,"UKSEA45_ATAB"] call Olsen_FW_FNC_GearScript;       PIAT Ammo Bearer

    Vehicle Crew
[this,"UKSEA45_VCom"] call Olsen_FW_FNC_GearScript;       Tank Commander
[this,"UKSEA45_VCrew"] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

#define UKSEA45_LeeEn \
        [ \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_1], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[75], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo1Mk3s], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[25], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo5], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define UKSEA45_SMG \
        [ \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkII], \
                [UK_Mag_Sten,6,"vest"] \
            ],[50], \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,6,"vest"] \
            ],[25], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkV], \
                [UK_Mag_Sten,6,"vest"] \
            ],[15], \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_30,6,"vest"] \
            ],[5], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkI], \
                [UK_Mag_Sten,6,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define UKSEA45_Pistol \
        [ \
            [ \
                [UK_Mag_EnfieldNo2,1], \
                [UK_Weap_EnfieldNo2], \
                [UK_Mag_EnfieldNo2,3,"uniform"] \
            ],[85], \
            [ \
                [UK_Mag_HiPower,1], \
                [UK_Weap_HiPower], \
                [UK_Mag_HiPower,2,"uniform"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UKSEA45_Lt" : {
        [UK_UniSEA_Lt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Sergeant
    case "UKSEA45_Sgt" : {
        [UK_UniSEA_Sgt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA45_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "UKSEA45_Med" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Signaller
    case "UKSEA45_Sig" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_Radio] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UKSEA45_LMortG" : {
        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Light Mortar Assistant
    case "UKSEA45_LMortA" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Squad

    //Corporal
    case "UKSEA45_Cpl" : {
        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA45_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Lance Corporal
    case "UKSEA45_LCpl" : {
        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_SMG;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gunner
    case "UKSEA45_AR" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        [UK_Mag_Bren_30_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_BrenMkII] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA45_Pistol;
    };

    //Bren Gun Assistant
    case "UKSEA45_AAR" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UKSEA45_AAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "UKSEA45_Rif" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UKSEA45_MGTL" : {
        [UK_UniSEA_LCpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "UKSEA45_MG" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA45_Pistol;
    };

    //Machine Gun Assistant
    case "UKSEA45_MGA" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "UKSEA45_MGAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UKSEA45_MortTL" : {
        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "UKSEA45_MortG" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "UKSEA45_MortA" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call Olsen_FW_FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "UKSEA45_MortAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG_L] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UKSEA45_ATRTL" : {
        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UKSEA45_ATRG" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Primary Weapon
        [UK_Mag_Boys,1] call Olsen_FW_FNC_AddItem;
        [UK_Weap_Boys] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Boys,5] call Olsen_FW_FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UKSEA45_ATRAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Bren] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UKSEA45_ATTL" : {
        [UK_UniSEA_Cpl_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BP_P] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //PIAT Gunner
    case "UKSEA45_ATG" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_O] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Primary Weapon
        [UK_Weap_Piat] call Olsen_FW_FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call Olsen_FW_FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UKSEA45_ATAB" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_LeeEn] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UKSEA45_VCom" : {
        [UK_UniSEA_Sgt_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UKSEA45_SMG;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
        [UK_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [UK_Gren_WP,1] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "UKSEA45_VCrew" : {
        [UK_UniSEA_Pte_r] call Olsen_FW_FNC_AddItemRandom;
        [UK_VestG_Sten] call Olsen_FW_FNC_AddItem;
        [UK_BPG] call Olsen_FW_FNC_AddItem;
        [UK_Headgear_SEA_Mk2_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UKSEA45_SMG;

        //Secondary Weapon
        UKSEA45_Pistol;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
