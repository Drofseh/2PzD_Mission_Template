// Info: US Army 1942 April Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"US42Apr_CC"] call Olsen_FW_FNC_GearScript;        Company Commander
[this,"US42Apr_C2"] call Olsen_FW_FNC_GearScript;        Company Executive Officer
[this,"US42Apr_CSGT"] call Olsen_FW_FNC_GearScript;      Company First Sergeant
[this,"US42Apr_CRTO"] call Olsen_FW_FNC_GearScript;      Company Radio Operator

    //Platoon HQ
[this,"US42Apr_PC"] call Olsen_FW_FNC_GearScript;        Platoon Commander
[this,"US42Apr_PSGT"] call Olsen_FW_FNC_GearScript;      Platoon Sergeant/Platoon Guide
[this,"US42Apr_Mess"] call Olsen_FW_FNC_GearScript;      Messenger
[this,"US42Apr_Med"] call Olsen_FW_FNC_GearScript;       Medic

    //Squad
[this,"US42Apr_SL"] call Olsen_FW_FNC_GearScript;        Squad Leader
[this,"US42Apr_S2"] call Olsen_FW_FNC_GearScript;        Assistant Squad Leader
[this,"US42Apr_Scout"] call Olsen_FW_FNC_GearScript;     Scout
[this,"US42Apr_AR"] call Olsen_FW_FNC_GearScript;        Automatic Rifleman
[this,"US42Apr_AAR"] call Olsen_FW_FNC_GearScript;       Assistant Automatic Rifleman
[this,"US42Apr_ARB"] call Olsen_FW_FNC_GearScript;       Ammo Bearer
[this,"US42Apr_Rif"] call Olsen_FW_FNC_GearScript;       Rifleman

    //Weapons Teams
[this,"US42Apr_MGTL"] call Olsen_FW_FNC_GearScript;      Machine Gun Team Leader
[this,"US42Apr_MG"] call Olsen_FW_FNC_GearScript;        Machine Gunner
[this,"US42Apr_MGA"] call Olsen_FW_FNC_GearScript;       Assistant Machine Gunner
[this,"US42Apr_MGAB"] call Olsen_FW_FNC_GearScript;      Machine Gun Ammo Bearer

[this,"US42Apr_MortTL"] call Olsen_FW_FNC_GearScript;    Mortar Team Leader
[this,"US42Apr_MortG"] call Olsen_FW_FNC_GearScript;     Mortar Gunner
[this,"US42Apr_MortA"] call Olsen_FW_FNC_GearScript;     Mortar Assistant
[this,"US42Apr_MortAB"] call Olsen_FW_FNC_GearScript;    Mortar Ammo Bearer

    //Tank Crew
[this,"US42Apr_VCom"] call Olsen_FW_FNC_GearScript;      Tank Commander
[this,"US42Apr_VCrew"] call Olsen_FW_FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader
#define US42Apr_Weapon_Leader \
        [ \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[50], \
            [ \
                [US_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,5,"vest"] \
            ],[30], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,5,"vest"] \
            ],[10], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For light riflemen
#define US42Apr_Weapon_Rifle_Light \
        [ \
            [ \
                [US_Vest_M1G], \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[48], \
            [ \
                [US_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[27], \
            [ \
                [US_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[20], \
            [ \
                [US_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For medic
#define US42Apr_Weapon_Rifle_Medic \
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
#define US42Apr_Weapon_Rifle \
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

// For Tank Commander
#define US42Apr_Weapon_VCom \
        [ \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[70], \
            [ \
                [US_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,5,"vest"] \
            ],[10], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Tank Crew
#define US42Apr_Weapon_VCrew \
        [ \
            [ \
                [US_Vest_Pistol], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[90], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[7], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1], \
            [ \
                [US_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "US42Apr_CC" : {
        [US_Uni_CPT] call Olsen_FW_FNC_AddItem;
        [US_Helm_CPT] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Executive Officer
    case "US42Apr_C2" : {
        [US_Uni_LT] call Olsen_FW_FNC_AddItem;
        [US_Helm_LT] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company First Sergeant
    case "US42Apr_CSGT" : {
        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Radio Operator
    case "US42Apr_CRTO" : {
        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_Radio] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "US42Apr_PC" : {
        [US_Uni_LT] call Olsen_FW_FNC_AddItem;
        [US_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Platoon Sergeant
    case "US42Apr_PSGT" : {
        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Messenger
    case "US42Apr_Mess" : {
        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "US42Apr_Med" : {
        [US_Uni_Med] call Olsen_FW_FNC_AddItem;
        [US_Vest_Med] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Medic;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        US_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "US42Apr_SL" : {
        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Squad Leader
    case "US42Apr_S2" : {
        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Scout
    case "US42Apr_Scout" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifleman
    case "US42Apr_AR" : {
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
    };

    //Automatic Rifle Assistant
    case "US42Apr_AAR" : {
        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "US42Apr_ARB" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "US42Apr_Rif" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "US42Apr_MGTL" : {
        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "US42Apr_MG" : {
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
    };

    //Assistant Machine Gunner
    case "US42Apr_MGA" : {
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
        US42Apr_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "US42Apr_MGAB" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "US42Apr_MortTL" : {
        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,5] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "US42Apr_MortG" : {
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
    };

    //Mortar Assistant
    case "US42Apr_MortA" : {
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
    };

    //Mortar Ammo Bearer
    case "US42Apr_MortAB" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US42Apr_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Tank Commander
    case "US42Apr_VCom" : {
        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US42Apr_Weapon_VCom;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "US42Apr_VCrew" : {
        [
            [
                [US_Uni_CPL]
            ],[40],
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Weapon
        US42Apr_Weapon_VCrew;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
