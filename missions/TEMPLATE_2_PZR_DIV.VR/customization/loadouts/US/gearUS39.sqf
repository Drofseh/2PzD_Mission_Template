// Info: US Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this, US39_CC] call Olsen_FW_FNC_GearScript;        Company Commander
[this, US39_C2] call Olsen_FW_FNC_GearScript;        Company Executive Officer
[this, US39_CSGT] call Olsen_FW_FNC_GearScript;      Company First Sergeant
[this, US39_CRTO] call Olsen_FW_FNC_GearScript;      Company Radio Operator

    //Platoon HQ
[this, US39_PC] call Olsen_FW_FNC_GearScript;        Platoon Commander
[this, US39_PSGT] call Olsen_FW_FNC_GearScript;      Platoon Sergeant/Platoon Guide
[this, US39_Mess] call Olsen_FW_FNC_GearScript;      Messenger
[this, US39_Med] call Olsen_FW_FNC_GearScript;       Medic

    //Squad
[this, US39_SL] call Olsen_FW_FNC_GearScript;        Squad Leader
[this, US39_S2] call Olsen_FW_FNC_GearScript;        Assistant Squad Leader
[this, US39_Scout] call Olsen_FW_FNC_GearScript;     Scout
[this, US39_AR] call Olsen_FW_FNC_GearScript;        Automatic Rifleman
[this, US39_AAR] call Olsen_FW_FNC_GearScript;       Assistant Automatic Rifleman
[this, US39_ARB] call Olsen_FW_FNC_GearScript;       Ammo Bearer
[this, US39_Rif] call Olsen_FW_FNC_GearScript;       Rifleman

    //Weapons Teams
[this, US39_MGTL] call Olsen_FW_FNC_GearScript;      Machine Gun Team Leader
[this, US39_MG] call Olsen_FW_FNC_GearScript;        Machine Gunner
[this, US39_MGA] call Olsen_FW_FNC_GearScript;       Assistant Machine Gunner
[this, US39_MGAB] call Olsen_FW_FNC_GearScript;      Machine Gun Ammo Bearer

[this, US39_MortTL] call Olsen_FW_FNC_GearScript;    Mortar Team Leader
[this, US39_MortG] call Olsen_FW_FNC_GearScript;     Mortar Gunner
[this, US39_MortA] call Olsen_FW_FNC_GearScript;     Mortar Assistant
[this, US39_MortAB] call Olsen_FW_FNC_GearScript;    Mortar Ammo Bearer

    //Tank Crew
[this, US39_VCom] call Olsen_FW_FNC_GearScript;      Tank Commander
[this, US39_VCrew] call Olsen_FW_FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================



//======================== Loadouts ========================

//Company HQ

    //Company Commander
    US39_CC = ["US39_CC", {
        params ["_unit"];

        [US_Uni_CPT] call Olsen_FW_FNC_AddItem;
        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [US_Helm_CPT] call Olsen_FW_FNC_AddItem;
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
    US39_C2 = ["US39_C2", {
        params ["_unit"];

        [US_Uni_LT] call Olsen_FW_FNC_AddItem;
        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [US_Helm_LT] call Olsen_FW_FNC_AddItem;
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
    US39_CSGT = ["US39_CSGT", {
        params ["_unit"];

        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_CRTO = ["US39_CRTO", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_Radio] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_PC = ["US39_PC", {
        params ["_unit"];

        [US_Uni_LT] call Olsen_FW_FNC_AddItem;
        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [US_Helm_2LT] call Olsen_FW_FNC_AddItem;
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

    //Platoon Sergeant
    US39_PSGT = ["US39_PSGT", {
        params ["_unit"];

        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_Mess = ["US39_Mess", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_Med = ["US39_Med", {
        params ["_unit"];

        [US_Uni_Med] call Olsen_FW_FNC_AddItem;
        [US_Vest_Med] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_SL = ["US39_SL", {
        params ["_unit"];

        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        [
            [//M1928A1 Thompson
                [US_Mag_M1T_20,1],
                [US_Weap_M1928A1],
                [US_Mag_M1T_20,5,"vest"]
            ],[50],
            [//M1928 Thompson
                [US_Mag_M1T_20,1],
                [US_Weap_M1928],
                [US_Mag_M1T_20,5,"vest"]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    US39_S2 = ["US39_S2", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_Scout = ["US39_Scout", {
        params ["_unit"];

        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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

    //Automatic Rifleman
    US39_AR = ["US39_AR", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem;
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Assistant
    US39_AAR = ["US39_AAR", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Ammo Bearer
    US39_ARB = ["US39_ARB", {
        params ["_unit"];

        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    US39_Rif = ["US39_Rif", {
        params ["_unit"];

        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    US39_MGTL = ["US39_MGTL", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    US39_MG = ["US39_MG", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_MGA = ["US39_MGA", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_MGAB = ["US39_MGAB", {
        params ["_unit"];

        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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

//Mortar Team

    //Mortar Team Leader
    US39_MortTL = ["US39_MortTL", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
        [US_Mag_Mort_HE,5] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    US39_MortG = ["US39_MortG", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_MortA = ["US39_MortA", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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
    US39_MortAB = ["US39_MortAB", {
        params ["_unit"];

        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
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

//Tank Crew

    //Tank Commander
    US39_VCom = ["US39_VCom", {
        params ["_unit"];

        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [US_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    }];

    //Tank Crew
    US39_VCrew = ["US39_VCrew", {
        params ["_unit"];

        [
            [
                [US_Uni_CPL]
            ],[30],
            [
                [US_Uni_PFC]
            ],[40],
            [
                [US_Uni_PVT]
            ],[30]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
