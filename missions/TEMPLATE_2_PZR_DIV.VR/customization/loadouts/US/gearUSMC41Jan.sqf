// Info: United States Marine Corps 1941 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USMC41Jan_CC"] call Olsen_FW_FNC_GearScript;          Company Commander
[this,"USMC41Jan_C2"] call Olsen_FW_FNC_GearScript;          Company Executive Officer
[this,"USMC41Jan_CSGT"] call Olsen_FW_FNC_GearScript;        Company First Sergeant
[this,"USMC41Jan_CRTO"] call Olsen_FW_FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this,"USMC41Jan_PC"] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this,"USMC41Jan_PSGT"] call Olsen_FW_FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this,"USMC41Jan_Mess"] call Olsen_FW_FNC_GearScript;        Messenger
[this,"USMC41Jan_Med"] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this,"USMC41Jan_SL"] call Olsen_FW_FNC_GearScript;          Squad Leader
[this,"USMC41Jan_S2"] call Olsen_FW_FNC_GearScript;          Assistant Squad Leader
[this,"USMC41Jan_Scout"] call Olsen_FW_FNC_GearScript;       Scout
[this,"USMC41Jan_AR"] call Olsen_FW_FNC_GearScript;          Automatic Rifleman
[this,"USMC41Jan_AAR"] call Olsen_FW_FNC_GearScript;         Assistant Automatic Rifleman
[this,"USMC41Jan_ARB"] call Olsen_FW_FNC_GearScript;         AR Ammo Bearer
[this,"USMC41Jan_Rif"] call Olsen_FW_FNC_GearScript;         Rifleman

    //Weapons Teams
[this,"USMC41Jan_MGTL"] call Olsen_FW_FNC_GearScript;        Machine Gun Team Leader
[this,"USMC41Jan_MG"] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this,"USMC41Jan_MGA"] call Olsen_FW_FNC_GearScript;         Assistant Machine Gunner
[this,"USMC41Jan_MGAB"] call Olsen_FW_FNC_GearScript;        Machine Gun Ammo Bearer

[this,"USMC41Jan_MortTL"] call Olsen_FW_FNC_GearScript;      Mortar Team Leader
[this,"USMC41Jan_MortG"] call Olsen_FW_FNC_GearScript;       Mortar Gunner
[this,"USMC41Jan_MortA"] call Olsen_FW_FNC_GearScript;       Mortar Assistant
[this,"USMC41Jan_MortAB"] call Olsen_FW_FNC_GearScript;      Mortar Ammo Bearer

    //Tank Crew
[this,"USMC41Jan_VOff"] call Olsen_FW_FNC_GearScript;        Tank Officer
[this,"USMC41Jan_VCom"] call Olsen_FW_FNC_GearScript;        Tank Commander
[this,"USMC41Jan_VCrew"] call Olsen_FW_FNC_GearScript;       Tank Crew
*/

//======================== Definitions ========================

// For Platoon Commander, Squad Leader, Tank Commander
#define USMC41Jan_Weapon_SMG \
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

// For Tank Crew
#define USMC41Jan_Weapon_Crew \
        [ \
            [/*M1911 Only*/ \
                [USMC_Vest_Pistol], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[90], \
            [/*M1928A1 Thompson & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[7], \
            [/*M1928 Thompson & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[3] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USMC41Jan_CC" : {
        [USMC_Uni_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Executive Officer
    case "USMC41Jan_C2" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company First Sergeant
    case "USMC41Jan_CSGT" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
    };

    //Company Radio Operator
    case "USMC41Jan_CRTO" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "USMC41Jan_PC" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Platoon Sergeant
    case "USMC41Jan_PSGT" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
    };

    //Messenger
    case "USMC41Jan_Mess" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "USMC41Jan_Med" : {
        [USMC_Uni_Med] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        USMC_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "USMC41Jan_SL" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC41Jan_Weapon_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USMC41Jan_S2" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Scout
    case "USMC41Jan_Scout" : {
        [
            [
                [USMC_Uni_PFC]
            ],[50],
            [
                [USMC_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifleman
    case "USMC41Jan_AR" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem;
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Automatic Rifleman
    case "USMC41Jan_AAR" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USMC41Jan_ARB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[50],
            [
                [USMC_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "USMC41Jan_Rif" : {
        [
            [
                [USMC_Uni_PFC]
            ],[50],
            [
                [USMC_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USMC41Jan_MGTL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "USMC41Jan_MG" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,2,"uniform"] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,3] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Machine Gunner
    case "USMC41Jan_MGA" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_M1919A4_T] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USMC41Jan_MGAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[50],
            [
                [USMC_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USMC41Jan_MortTL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "USMC41Jan_MortG" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Assistant
    case "USMC41Jan_MortA" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "USMC41Jan_MortAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[50],
            [
                [USMC_Uni_PVT]
            ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Tank Officer
    case "USMC41Jan_VOff" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    };

    //Tank Commander
    case "USMC41Jan_VCom" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USMC41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "USMC41Jan_VCrew" : {
        [
            [
                [USMC_Uni_CPL]
            ],[30],
            [
                [USMC_Uni_PFC]
            ],[40],
            [
                [USMC_Uni_PVT]
            ],[30]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Weapon
        USMC41Jan_Weapon_Crew;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
