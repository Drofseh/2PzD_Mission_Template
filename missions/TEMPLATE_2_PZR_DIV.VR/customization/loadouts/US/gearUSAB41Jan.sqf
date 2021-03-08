// Info: US Army 1941 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this, USAB41Jan_CC] call Olsen_FW_FNC_GearScript;           Company Commander
[this, USAB41Jan_C2] call Olsen_FW_FNC_GearScript;           Company Executive Officer
[this, USAB41Jan_CSGT] call Olsen_FW_FNC_GearScript;         Company First Sergeant
[this, USAB41Jan_CRTO] call Olsen_FW_FNC_GearScript;         Company Radio Operator

    //Platoon HQ
[this, USAB41Jan_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, USAB41Jan_PSGT] call Olsen_FW_FNC_GearScript;         Platoon Sergeant/Platoon Guide
[this, USAB41Jan_Mess] call Olsen_FW_FNC_GearScript;         Messenger
[this, USAB41Jan_Med] call Olsen_FW_FNC_GearScript;          Medic

    //Squad
[this, USAB41Jan_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, USAB41Jan_S2] call Olsen_FW_FNC_GearScript;           Assistant Squad Leader
[this, USAB41Jan_Scout] call Olsen_FW_FNC_GearScript;        Scout
[this, USAB41Jan_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, USAB41Jan_MGA] call Olsen_FW_FNC_GearScript;          Assistant Machine Gunner
[this, USAB41Jan_MGAB] call Olsen_FW_FNC_GearScript;         Machine Gun Ammo Bearer
[this, USAB41Jan_AR] call Olsen_FW_FNC_GearScript;           Automatic Rifleman
[this, USAB41Jan_AAR] call Olsen_FW_FNC_GearScript;          Assistant Automatic Rifleman
[this, USAB41Jan_ARB] call Olsen_FW_FNC_GearScript;          Ammo Bearer
[this, USAB41Jan_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Weapons Teams
[this, USAB41Jan_MGTL] call Olsen_FW_FNC_GearScript;         Machine Gun Team Leader

[this, USAB41Jan_MortTL] call Olsen_FW_FNC_GearScript;       Mortar Team Leader
[this, USAB41Jan_MortG] call Olsen_FW_FNC_GearScript;        Mortar Gunner
[this, USAB41Jan_MortA] call Olsen_FW_FNC_GearScript;        Mortar Assistant
[this, USAB41Jan_MortAB] call Olsen_FW_FNC_GearScript;       Mortar Ammo Bearer
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader
#define USAB41Jan_Weapon_SMG \
        [ \
            [ \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[70], \
            [ \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For men with rifles
#define USAB41Jan_Weapon_Rifle \
        [ \
            [ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[80], \
            [ \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    USAB41Jan_CC = ["USAB41Jan_CC", {
        params ["_unit"];

        [USAB_UniK_CPT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_CPT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Executive Officer
    USAB41Jan_C2 = ["USAB41Jan_C2", {
        params ["_unit"];

        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company First Sergeant
    USAB41Jan_CSGT = ["USAB41Jan_CSGT", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Radio Operator
    USAB41Jan_CRTO = ["USAB41Jan_CRTO", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Platoon HQ

    //Platoon Commander
    USAB41Jan_PC = ["USAB41Jan_PC", {
        params ["_unit"];

        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_2LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USAB41Jan_PSGT = ["USAB41Jan_PSGT", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USAB41Jan_Mess = ["USAB41Jan_Mess", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USAB41Jan_Med = ["USAB41Jan_Med", {
        params ["_unit"];

        [USAB_UniK_Med] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        US_Medic_Equipment;
    }];

//Squad

    //Squad Leader
    USAB41Jan_SL = ["USAB41Jan_SL", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USAB41Jan_S2 = ["USAB41Jan_S2", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Scout
    USAB41Jan_Scout = ["USAB41Jan_Scout", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    USAB41Jan_MG = ["USAB41Jan_MG", {
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
    USAB41Jan_MGA = ["USAB41Jan_MGA", {
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
        USAB41Jan_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Ammo Bearer
    USAB41Jan_MGAB = ["USAB41Jan_MGAB", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[50],
            [
                [USAB_UniK_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USAB41Jan_AR = ["USAB41Jan_AR", {
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
    USAB41Jan_AAR = ["USAB41Jan_AAR", {
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
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Ammo Bearer
    USAB41Jan_ARB = ["USAB41Jan_ARB", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[50],
            [
                [USAB_UniK_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USAB41Jan_Rif = ["USAB41Jan_Rif", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[50],
            [
                [USAB_UniK_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    USAB41Jan_MGTL = ["USAB41Jan_MGTL", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Mortar Team

    //Mortar Team Leader
    USAB41Jan_MortTL = ["USAB41Jan_MortTL", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    USAB41Jan_MortG = ["USAB41Jan_MortG", {
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
    USAB41Jan_MortA = ["USAB41Jan_MortA", {
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
    USAB41Jan_MortAB = ["USAB41Jan_MortAB", {
        params ["_unit"];

        [
            [
                [USAB_UniK_PFC]
            ],[50],
            [
                [USAB_UniK_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB41Jan_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call Olsen_FW_FNC_AddItem;
    }];
