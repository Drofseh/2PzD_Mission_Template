// Info: US Army 1940 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this, USAB40_CC] call Olsen_FW_FNC_GearScript;          Company Commander
[this, USAB40_C2] call Olsen_FW_FNC_GearScript;          Company Executive Officer
[this, USAB40_CSGT] call Olsen_FW_FNC_GearScript;        Company First Sergeant
[this, USAB40_CRTO] call Olsen_FW_FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this, USAB40_PC] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this, USAB40_PSGT] call Olsen_FW_FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this, USAB40_Mess] call Olsen_FW_FNC_GearScript;        Messenger
[this, USAB40_Med] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this, USAB40_SL] call Olsen_FW_FNC_GearScript;          Squad Leader
[this, USAB40_S2] call Olsen_FW_FNC_GearScript;          Assistant Squad Leader
[this, USAB40_Scout] call Olsen_FW_FNC_GearScript;       Scout
[this, USAB40_MG] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this, USAB40_MGA] call Olsen_FW_FNC_GearScript;         Assistant Machine Gunner
[this, USAB40_MGAB] call Olsen_FW_FNC_GearScript;        Machine Gun Ammo Bearer
[this, USAB40_AR] call Olsen_FW_FNC_GearScript;          Automatic Rifleman
[this, USAB40_AAR] call Olsen_FW_FNC_GearScript;         Assistant Automatic Rifleman
[this, USAB40_ARB] call Olsen_FW_FNC_GearScript;         Ammo Bearer
[this, USAB40_Rif] call Olsen_FW_FNC_GearScript;         Rifleman

    //Weapons Teams
[this, USAB40_MGTL] call Olsen_FW_FNC_GearScript;        Machine Gun Team Leader

[this, USAB40_MortTL] call Olsen_FW_FNC_GearScript;      Mortar Team Leader
[this, USAB40_MortG] call Olsen_FW_FNC_GearScript;       Mortar Gunner
[this, USAB40_MortA] call Olsen_FW_FNC_GearScript;       Mortar Assistant
[this, USAB40_MortAB] call Olsen_FW_FNC_GearScript;      Mortar Ammo Bearer
*/

//======================== Definitions ========================

// For Platoon Commander, Squad Leader
#define USAB40_Weapon_SMG \
        [ \
            [ \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[60], \
            [ \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    USAB40_CC = ["USAB40_CC", {
        params ["_unit"];

        [USAB_UniK_CPT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_CPT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Executive Officer
    USAB40_C2 = ["USAB40_C2", {
        params ["_unit"];

        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company First Sergeant
    USAB40_CSGT = ["USAB40_CSGT", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Company Radio Operator
    USAB40_CRTO = ["USAB40_CRTO", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Platoon HQ

    //Platoon Commander
    USAB40_PC = ["USAB40_PC", {
        params ["_unit"];

        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_2LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB40_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USAB40_PSGT = ["USAB40_PSGT", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USAB40_Mess = ["USAB40_Mess", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USAB40_Med = ["USAB40_Med", {
        params ["_unit"];

        [USAB_UniK_Med] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        US_Medic_Equipment;
    }];

//Squad

    //Squad Leader
    USAB40_SL = ["USAB40_SL", {
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
        USAB40_Weapon_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USAB40_S2 = ["USAB40_S2", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Scout
    USAB40_Scout = ["USAB40_Scout", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    USAB40_MG = ["USAB40_MG", {
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
    USAB40_MGA = ["USAB40_MGA", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Ammo Bearer
    USAB40_MGAB = ["USAB40_MGAB", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USAB40_AR = ["USAB40_AR", {
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
    USAB40_AAR = ["USAB40_AAR", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Ammo Bearer
    USAB40_ARB = ["USAB40_ARB", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USAB40_Rif = ["USAB40_Rif", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    USAB40_MGTL = ["USAB40_MGTL", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Mortar Team

    //Mortar Team Leader
    USAB40_MortTL = ["USAB40_MortTL", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    USAB40_MortG = ["USAB40_MortG", {
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
    USAB40_MortA = ["USAB40_MortA", {
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
    USAB40_MortAB = ["USAB40_MortAB", {
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
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,9] call Olsen_FW_FNC_AddItem;
    }];
