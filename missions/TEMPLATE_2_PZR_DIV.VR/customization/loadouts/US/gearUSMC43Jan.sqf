// Info: United States Marine Corps 1943 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this, USMC43Jan_CC] call Olsen_FW_FNC_GearScript;           Company Commander
[this, USMC43Jan_C2] call Olsen_FW_FNC_GearScript;           Company Executive Officer
[this, USMC43Jan_CSGT] call Olsen_FW_FNC_GearScript;         Company First Sergeant
[this, USMC43Jan_CRTO] call Olsen_FW_FNC_GearScript;         Company Radio Operator

    //Platoon HQ
[this, USMC43Jan_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, USMC43Jan_PSGT] call Olsen_FW_FNC_GearScript;         Platoon Sergeant/Platoon Guide
[this, USMC43Jan_Mess] call Olsen_FW_FNC_GearScript;         Messenger
[this, USMC43Jan_Med] call Olsen_FW_FNC_GearScript;          Medic

    //Squad
[this, USMC43Jan_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, USMC43Jan_S2] call Olsen_FW_FNC_GearScript;           Assistant Squad Leader
[this, USMC43Jan_Scout] call Olsen_FW_FNC_GearScript;        Scout
[this, USMC43Jan_AR] call Olsen_FW_FNC_GearScript;           Automatic Rifleman
[this, USMC43Jan_AAR] call Olsen_FW_FNC_GearScript;          Assistant Automatic Rifleman
[this, USMC43Jan_ARB] call Olsen_FW_FNC_GearScript;          AR Ammo Bearer
[this, USMC43Jan_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Weapons Teams
[this, USMC43Jan_MGTL] call Olsen_FW_FNC_GearScript;         Machine Gun Team Leader
[this, USMC43Jan_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, USMC43Jan_MGA] call Olsen_FW_FNC_GearScript;          Assistant Machine Gunner
[this, USMC43Jan_MGAB] call Olsen_FW_FNC_GearScript;         Machine Gun Ammo Bearer

[this, USMC43Jan_MortTL] call Olsen_FW_FNC_GearScript;       Mortar Team Leader
[this, USMC43Jan_MortG] call Olsen_FW_FNC_GearScript;        Mortar Gunner
[this, USMC43Jan_MortA] call Olsen_FW_FNC_GearScript;        Mortar Assistant
[this, USMC43Jan_MortAB] call Olsen_FW_FNC_GearScript;       Mortar Ammo Bearer

[this, USMC43Jan_BzkaTL] call Olsen_FW_FNC_GearScript;       Bazooka Team Leader
[this, USMC43Jan_BzkaG] call Olsen_FW_FNC_GearScript;        Bazooka Gunner
[this, USMC43Jan_BzkaAB] call Olsen_FW_FNC_GearScript;       Bazooka Ammo Bearer

    //Tank Crew
[this, USMC43Jan_VOff] call Olsen_FW_FNC_GearScript;         Tank Officer
[this, USMC43Jan_VCom] call Olsen_FW_FNC_GearScript;         Tank Commander
[this, USMC43Jan_VCrew] call Olsen_FW_FNC_GearScript;        Tank Crew
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader
#define USMC43Jan_Weapon_Leader \
        [ \
            [/*M50 Reising */ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M50], \
                [US_Mag_M50_20,5,"vest"] \
            ],[32], \
            [/*M1 Carbine */ \
                [USMC_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[30], \
            [/*M3 Grease Gun */ \
                [USMC_Vest_M1T], \
                [US_Mag_M3GG,1], \
                [US_Weap_M3GG], \
                [US_Mag_M3GG,5,"vest"] \
            ],[10], \
            [/*M1A1 Thompson */ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1A1T], \
                [US_Mag_M1T_20,3,"vest"], \
                [US_Mag_M1T_30,2,"vest"] \
            ],[9], \
            [/*M1 Thompson */ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_20,3,"vest"], \
                [US_Mag_M1T_30,2,"vest"] \
            ],[9], \
            [/*M1928A1 Thompson */ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"] \
            ],[5], \
            [/*M55 Reising */ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M55], \
                [US_Mag_M50_20,5,"vest"] \
            ],[4], \
            [/*M1928 Thompson */ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define USMC43Jan_Weapon_Rifle_Light \
        [ \
            [/*M1903A1*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[33], \
            [/*M1903A3*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[27], \
            [/*M1 Garand*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[20], \
            [/*M1 Carbine*/ \
                [USMC_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10], \
            [/*M12 Shotgun*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M12_Buck00,1], \
                [US_Weap_M12], \
                [US_Mag_M12_Buck00,6,"vest"], \
                [US_Mag_M12_Slug,1,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define USMC43Jan_Weapon_Rifle_Light_No_Vest \
        [ \
            [/*M1903A1*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[33], \
            [/*M1903A3*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[27], \
            [/*M1 Carbine*/ \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10], \
            [/*M12 Shotgun*/ \
                [US_Mag_M12_Buck00,1], \
                [US_Weap_M12], \
                [US_Mag_M12_Buck00,6,"vest"], \
                [US_Mag_M12_Slug,1,"vest"] \
            ],[10], \
            [/*M1 Garand*/ \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define USMC43Jan_Weapon_AR \
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem; \
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

#define USMC43Jan_Weapon_Rifle_No_Vest \
        [ \
            [/*M1903A1*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[37], \
            [/*M1903A3*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[30], \
            [/*M1 Carbine*/ \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10], \
            [/*M1 Garand*/ \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[22], \
            [/*M12 Shotgun*/ \
                [US_Mag_M12_Buck00,1], \
                [US_Weap_M12], \
                [US_Mag_M12_Buck00,6,"vest"], \
                [US_Mag_M12_Slug,1,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define USMC43Jan_Weapon_Rifle \
        [ \
            [/*M1903A1*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[37], \
            [/*M1903A3*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[30], \
            [/*M1 Carbine*/ \
                [USMC_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10], \
            [/*M1 Garand*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[22], \
            [/*M12 Shotgun*/ \
                [USMC_Vest_M1G], \
                [US_Mag_M12_Buck00,1], \
                [US_Weap_M12], \
                [US_Mag_M12_Buck00,6,"vest"], \
                [US_Mag_M12_Slug,1,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;


#define USMC43Jan_Weapon_Secondary \
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

#define USMC43Jan_Weapon_VCom \
        [ \
            [/*M55 Reising*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M55], \
                [US_Mag_M50_20,5,"vest"] \
            ],[45], \
            [/*M1928A1 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"] \
            ],[10], \
            [/*M1 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_20,3,"vest"], \
                [US_Mag_M1T_30,2,"vest"] \
            ],[20], \
            [/*M50 Reising*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M50], \
                [US_Mag_M50_20,5,"vest"] \
            ],[9], \
            [/*M3 Grease Gun*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M3GG,1], \
                [US_Weap_M3GG], \
                [US_Mag_M3GG,5,"vest"] \
            ],[5], \
            [/*M1A1 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1A1T], \
                [US_Mag_M1T_20,3,"vest"], \
                [US_Mag_M1T_30,2,"vest"] \
            ],[5], \
            [/*M1 Carbine*/ \
                [USMC_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[5], \
            [/*M1928 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define USMC43Jan_Weapon_VCrew \
        [ \ \
            [/*M1911 Only*/ \
                [USMC_Vest_Pistol], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[90], \
            [/*M55 Reising & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M55], \
                [US_Mag_M50_20,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[3], \
            [/*M3 Grease Gun & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M3GG,1], \
                [US_Weap_M3GG], \
                [US_Mag_M3GG,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [/*M1A1 Thompson & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1A1T], \
                [US_Mag_M1T_20,3,"vest"], \
                [US_Mag_M1T_30,2,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [/*M1 Carbine & M1911*/ \
                [USMC_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [/*M1 Thompson & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_20,3,"vest"], \
                [US_Mag_M1T_30,2,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [/*M1928A1 Thompson & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [/*M1928 Thompson & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [/*M50 Reising & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M50], \
                [US_Mag_M50_20,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    USMC43Jan_CC = ["USMC43Jan_CC", {
        params ["_unit"];

        [USMC_Uni_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Leader;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Executive Officer
    USMC43Jan_C2 = ["USMC43Jan_C2", {
        params ["_unit"];

        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Leader;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company First Sergeant
    USMC43Jan_CSGT = ["USMC43Jan_CSGT", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_Light;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Radio Operator
    USMC43Jan_CRTO = ["USMC43Jan_CRTO", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Platoon HQ

    //Platoon Commander
    USMC43Jan_PC = ["USMC43Jan_PC", {
        params ["_unit"];

        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Leader;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USMC43Jan_PSGT = ["USMC43Jan_PSGT", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_Light;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USMC43Jan_Mess = ["USMC43Jan_Mess", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USMC43Jan_Med = ["USMC43Jan_Med", {
        params ["_unit"];

        [USMC_Uni_Med] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_Light_No_Vest;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        USMC_Medic_Equipment;
    }];

//Squad

    //Squad Leader
    USMC43Jan_SL = ["USMC43Jan_SL", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USMC43Jan_S2 = ["USMC43Jan_S2", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Scout
    USMC43Jan_Scout = ["USMC43Jan_Scout", {
        params ["_unit"];

        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USMC43Jan_AR = ["USMC43Jan_AR", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_AR;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Automatic Rifleman
    USMC43Jan_AAR = ["USMC43Jan_AAR", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Ammo Bearer
    USMC43Jan_ARB = ["USMC43Jan_ARB", {
        params ["_unit"];

        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USMC43Jan_Rif = ["USMC43Jan_Rif", {
        params ["_unit"];

        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    USMC43Jan_MGTL = ["USMC43Jan_MGTL", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    USMC43Jan_MG = ["USMC43Jan_MG", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Primary Weapon
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,3] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Machine Gunner
    USMC43Jan_MGA = ["USMC43Jan_MGA", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_M1919A4_T] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        //Primary Weapon
        USMC43Jan_Weapon_Rifle_Light;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Ammo Bearer
    USMC43Jan_MGAB = ["USMC43Jan_MGAB", {
        params ["_unit"];

        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_No_Vest;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    }];

//Mortar Team

    //Mortar Team Leader
    USMC43Jan_MortTL = ["USMC43Jan_MortTL", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    USMC43Jan_MortG = ["USMC43Jan_MortG", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Assistant
    USMC43Jan_MortA = ["USMC43Jan_MortA", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Ammo Bearer
    USMC43Jan_MortAB = ["USMC43Jan_MortAB", {
        params ["_unit"];

        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_No_Vest;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
    }];

//Bazooka Team

    //Bazooka Team Leader
    USMC43Jan_BzkaTL = ["USMC43Jan_BzkaTL", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Bazooka Gunner
    USMC43Jan_BzkaG = ["USMC43Jan_BzkaG", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Bazooka Ammo Bearer
    USMC43Jan_BzkaAB = ["USMC43Jan_BzkaAB", {
        params ["_unit"];

        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_Rifle_No_Vest;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Tank Officer
    USMC43Jan_VOff = ["USMC43Jan_VOff", {
        params ["_unit"];

        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_VCom;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;
    }];

    //Tank Commander
    USMC43Jan_VCom = ["USMC43Jan_VCom", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USMC43Jan_Weapon_VCom;

        //Secondary Weapon
        USMC43Jan_Weapon_Secondary;
    }];

    //Tank Crew
    USMC43Jan_VCrew = ["USMC43Jan_VCrew", {
        params ["_unit"];

        [
            [
                [USMC_Uni_CPL]
            ],[40],
            [
                [USMC_Uni_PFC]
            ],[55],
            [
                [USMC_Uni_PVT]
            ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Weapon
        USMC43Jan_Weapon_VCrew;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
