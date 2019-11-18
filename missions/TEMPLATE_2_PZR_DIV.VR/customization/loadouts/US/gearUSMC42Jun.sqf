// Info: United States Marine Corps 1942 June Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USMC42Jun_CC"] call FNC_GearScript;          Company Commander
[this,"USMC42Jun_C2"] call FNC_GearScript;          Company Executive Officer
[this,"USMC42Jun_CSGT"] call FNC_GearScript;        Company First Sergeant
[this,"USMC42Jun_CRTO"] call FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this,"USMC42Jun_PC"] call FNC_GearScript;          Platoon Commander
[this,"USMC42Jun_PSGT"] call FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this,"USMC42Jun_Mess"] call FNC_GearScript;        Messenger
[this,"USMC42Jun_Med"] call FNC_GearScript;         Medic

    //Squad
[this,"USMC42Jun_SL"] call FNC_GearScript;          Squad Leader
[this,"USMC42Jun_S2"] call FNC_GearScript;          Assistant Squad Leader
[this,"USMC42Jun_Scout"] call FNC_GearScript;       Scout
[this,"USMC42Jun_AR"] call FNC_GearScript;          Automatic Rifleman
[this,"USMC42Jun_AAR"] call FNC_GearScript;         Assistant Automatic Rifleman
[this,"USMC42Jun_ARB"] call FNC_GearScript;         AR Ammo Bearer
[this,"USMC42Jun_Rif"] call FNC_GearScript;         Rifleman

    //Weapons Teams
[this,"USMC42Jun_MGTL"] call FNC_GearScript;        Machine Gun Team Leader
[this,"USMC42Jun_MG"] call FNC_GearScript;          Machine Gunner
[this,"USMC42Jun_MGA"] call FNC_GearScript;         Assistant Machine Gunner
[this,"USMC42Jun_MGAB"] call FNC_GearScript;        Machine Gun Ammo Bearer

[this,"USMC42Jun_MortTL"] call FNC_GearScript;      Mortar Team Leader
[this,"USMC42Jun_MortG"] call FNC_GearScript;       Mortar Gunner
[this,"USMC42Jun_MortA"] call FNC_GearScript;       Mortar Assistant
[this,"USMC42Jun_MortAB"] call FNC_GearScript;      Mortar Ammo Bearer

[this,"USMC42Jun_BzkaTL"] call FNC_GearScript;      Bazooka Team Leader
[this,"USMC42Jun_BzkaG"] call FNC_GearScript;       Bazooka Gunner
[this,"USMC42Jun_BzkaAB"] call FNC_GearScript;      Bazooka Ammo Bearer

    //Tank Crew
[this,"USMC42Jun_VOff"] call FNC_GearScript;        Tank Officer
[this,"USMC42Jun_VCom"] call FNC_GearScript;        Tank Commander
[this,"USMC42Jun_VCrew"] call FNC_GearScript;       Tank Crew
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader
#define USMC42Jun_Weapon_Leader \
        [ \
            [/*M1928A1 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[46], \
            [/*M1 Carbine*/ \
                [USMC_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[20], \
            [/*M50 Reising*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M50], \
                [US_Mag_M50_20,5,"vest"] \
            ],[15], \
            [/*M1 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"] \
            ],[9], \
            [/*M1928 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[9], \
            [/*M55 Reising*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M55], \
                [US_Mag_M50_20,5,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

// For medic
#define USMC42Jun_Weapon_Rifle_Medic \
        [ \
            [/*M1903A1*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[76], \
            [/*M1903A3*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[14], \
            [/*M1 Carbine*/ \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10] \
        ] call FNC_AddItemRandomPercent;

// For riflemen
#define USMC42Jun_Weapon_Rifle \
        [ \
            [/*M1903A1*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[76], \
            [/*M1903A3*/ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[14], \
            [/*M1 Carbine*/ \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10] \
        ] call FNC_AddItemRandomPercent;

// For Tank Commander
#define USMC42Jun_Weapon_VCom \
        [ \
            [/*M1928A1 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[49], \
            [/*M55 Reising*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M55], \
                [US_Mag_M50_20,5,"vest"] \
            ],[16], \
            [/*M1 Carbine*/ \
                [USMC_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[10], \
            [/*M1 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_20,4,"vest"], \
                [US_Mag_M1T_30,1,"vest"] \
            ],[10], \
            [/*M1928 Thompson*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[10], \
            [/*M50 Reising*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M50], \
                [US_Mag_M50_20,5,"vest"] \
            ],[5] \
        ] call FNC_AddItemRandomPercent;

// For Tank Crew
#define USMC42Jun_Weapon_VCrew \
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
            ],[4], \
            [/*M55 Reising & M1911*/ \
                [USMC_Vest_M1T], \
                [US_Mag_M50_20,1], \
                [US_Weap_M55], \
                [US_Mag_M50_20,5,"vest"], \
                [US_Mag_M1911,1], \
                [US_Weap_M1911], \
                [US_Mag_M1911,3,"uniform"] \
            ],[2], \
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
                [US_Mag_M1T_20,5,"vest"], \
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
        ] call FNC_AddItemRandomPercent;


//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USMC42Jun_CC" : {
        [USMC_Uni_CPT] call FNC_AddItem;
        [USMC_Helm_CPT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "USMC42Jun_C2" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Helm_LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "USMC42Jun_CSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Radio Operator
    case "USMC42Jun_CRTO" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "USMC42Jun_PC" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Helm_2LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "USMC42Jun_PSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "USMC42Jun_Mess" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "USMC42Jun_Med" : {
        [USMC_Uni_Med] call FNC_AddItem;
        [USMC_Vest_Med] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle_Medic;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        USMC_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "USMC42Jun_SL" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USMC42Jun_S2" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "USMC42Jun_Scout" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "USMC42Jun_AR" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_BAR] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR_Mixed_Ball,1] call FNC_AddItem;
        [US_Weap_BAR] call FNC_AddItem;
        [US_Acc_BAR_Bipod] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Automatic Rifleman
    case "USMC42Jun_AAR" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USMC42Jun_ARB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "USMC42Jun_Rif" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USMC42Jun_MGTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "USMC42Jun_MG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_MGA] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,2,"uniform"] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1919_250_Mixed_Ball,1] call FNC_AddItem;
        [US_Weap_M1919A4] call FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,3] call FNC_AddItem;
    };

    //Assistant Machine Gunner
    case "USMC42Jun_MGA" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USMC42Jun_MGAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USMC42Jun_MortTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,4] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "USMC42Jun_MortG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Assistant
    case "USMC42Jun_MortA" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "USMC42Jun_MortAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "USMC42Jun_BzkaTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Bazooka Gunner
    case "USMC42Jun_BzkaG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,1] call FNC_AddItem;
        [US_Weap_Bazoo] call FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "USMC42Jun_BzkaAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_BP_AT] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

//Tank Crew

    //Tank Officer
    case "USMC42Jun_VOff" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        [//Primary Weapon
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,5,"vest"]
        ],[49],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[16],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,4,"vest"],
        [US_Mag_M1T_30,1,"vest"]
        ],[10],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,5,"vest"]
        ],[10],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;
    };

    //Tank Commander
    case "USMC42Jun_VCom" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USMC42Jun_Weapon_VCom;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;
    };

    //Tank Crew
    case "USMC42Jun_VCrew" : {
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
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Weapon
        USMC42Jun_Weapon_VCrew;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };
