// Info: US Army 1942 April Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this, USAB42Apr_CC] call Olsen_FW_FNC_GearScript;           Company Commander
[this, USAB42Apr_C2] call Olsen_FW_FNC_GearScript;           Company Executive Officer
[this, USAB42Apr_CSGT] call Olsen_FW_FNC_GearScript;         Company First Sergeant
[this, USAB42Apr_CRTO] call Olsen_FW_FNC_GearScript;         Company Radio Operator

    //Platoon HQ
[this, USAB42Apr_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, USAB42Apr_PSGT] call Olsen_FW_FNC_GearScript;         Platoon Sergeant/Platoon Guide
[this, USAB42Apr_Mess] call Olsen_FW_FNC_GearScript;         Messenger
[this, USAB42Apr_Med] call Olsen_FW_FNC_GearScript;          Medic

    //Squad
[this, USAB42Apr_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, USAB42Apr_S2] call Olsen_FW_FNC_GearScript;           Assistant Squad Leader
[this, USAB42Apr_Scout] call Olsen_FW_FNC_GearScript;        Scout
[this, USAB42Apr_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, USAB42Apr_MGA] call Olsen_FW_FNC_GearScript;          Assistant Machine Gunner
[this, USAB42Apr_MGAB] call Olsen_FW_FNC_GearScript;         Machine Gun Ammo Bearer
[this, USAB42Apr_AR] call Olsen_FW_FNC_GearScript;           Automatic Rifleman
[this, USAB42Apr_AAR] call Olsen_FW_FNC_GearScript;          Assistant Automatic Rifleman
[this, USAB42Apr_ARB] call Olsen_FW_FNC_GearScript;          Ammo Bearer
[this, USAB42Apr_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Weapons Teams
[this, USAB42Apr_MGTL] call Olsen_FW_FNC_GearScript;         Machine Gun Team Leader

[this, USAB42Apr_MortTL] call Olsen_FW_FNC_GearScript;       Mortar Team Leader
[this, USAB42Apr_MortG] call Olsen_FW_FNC_GearScript;        Mortar Gunner
[this, USAB42Apr_MortA] call Olsen_FW_FNC_GearScript;        Mortar Assistant
[this, USAB42Apr_MortAB] call Olsen_FW_FNC_GearScript;       Mortar Ammo Bearer
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader
#define USAB42Apr_Weapon_Leader \
        [ \
            [ \
                [USAB_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[50], \
            [ \
                [USAB_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[30], \
            [ \
                [USAB_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,5,"vest"] \
            ],[10], \
            [ \
                [USAB_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For light riflemen
#define USAB42Apr_Weapon_Rifle_Light \
        [ \
            [ \
                [USAB_Vest_M1G], \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[48], \
            [ \
                [USAB_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[27], \
            [ \
                [USAB_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[20], \
            [ \
                [USAB_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For medic
#define USAB42Apr_Weapon_Rifle_Medic \
        [ \
            [ \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[48], \
            [ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[27], \
            [ \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[20], \
            [ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For riflemen
#define USAB42Apr_Weapon_Rifle \
        [ \
            [ \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[60], \
            [ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[34], \
            [ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[6] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    USAB42Apr_CC = ["USAB42Apr_CC", {
        params ["_unit"];

        [USAB_UniK_CPT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_CPT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Executive Officer
    USAB42Apr_C2 = ["USAB42Apr_C2", {
        params ["_unit"];

        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company First Sergeant
    USAB42Apr_CSGT = ["USAB42Apr_CSGT", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Radio Operator
    USAB42Apr_CRTO = ["USAB42Apr_CRTO", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Platoon HQ

    //Platoon Commander
    USAB42Apr_PC = ["USAB42Apr_PC", {
        params ["_unit"];

        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_2LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USAB42Apr_PSGT = ["USAB42Apr_PSGT", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USAB42Apr_Mess = ["USAB42Apr_Mess", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USAB42Apr_Med = ["USAB42Apr_Med", {
        params ["_unit"];

        [USAB_UniK_Med] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Medic;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        US_Medic_Equipment;
    }];

//Squad

    //Squad Leader
    USAB42Apr_SL = ["USAB42Apr_SL", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USAB42Apr_S2 = ["USAB42Apr_S2", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Scout
    USAB42Apr_Scout = ["USAB42Apr_Scout", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    USAB42Apr_MG = ["USAB42Apr_MG", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,2,"uniform"] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,3] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Machine Gunner
    USAB42Apr_MGA = ["USAB42Apr_MGA", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;
        [US_Weap_M1919A4_T] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Ammo Bearer
    USAB42Apr_MGAB = ["USAB42Apr_MGAB", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USAB42Apr_AR = ["USAB42Apr_AR", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem;
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,9] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Assistant
    USAB42Apr_AAR = ["USAB42Apr_AAR", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Ammo Bearer
    USAB42Apr_ARB = ["USAB42Apr_ARB", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USAB42Apr_Rif = ["USAB42Apr_Rif", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    USAB42Apr_MGTL = ["USAB42Apr_MGTL", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Mortar Team

    //Mortar Team Leader
    USAB42Apr_MortTL = ["USAB42Apr_MortTL", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    USAB42Apr_MortG = ["USAB42Apr_MortG", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Assistant
    USAB42Apr_MortA = ["USAB42Apr_MortA", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Ammo Bearer
    USAB42Apr_MortAB = ["USAB42Apr_MortAB", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Apr_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call Olsen_FW_FNC_AddItem;
    }];
