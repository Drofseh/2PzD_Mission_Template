// Info: United States Marine Corps 1940 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USMC40_CC"] call Olsen_FW_FNC_GearScript;         Company Commander
[this,"USMC40_C2"] call Olsen_FW_FNC_GearScript;         Company Executive Officer
[this,"USMC40_CSGT"] call Olsen_FW_FNC_GearScript;       Company First Sergeant
[this,"USMC40_CRTO"] call Olsen_FW_FNC_GearScript;       Company Radio Operator

    //Platoon HQ
[this,"USMC40_PC"] call Olsen_FW_FNC_GearScript;         Platoon Commander
[this,"USMC40_PSGT"] call Olsen_FW_FNC_GearScript;       Platoon Sergeant/Platoon Guide
[this,"USMC40_Mess"] call Olsen_FW_FNC_GearScript;       Messenger
[this,"USMC40_Med"] call Olsen_FW_FNC_GearScript;        Medic

    //Squad
[this,"USMC40_SL"] call Olsen_FW_FNC_GearScript;         Squad Leader
[this,"USMC40_S2"] call Olsen_FW_FNC_GearScript;         Assistant Squad Leader
[this,"USMC40_Scout"] call Olsen_FW_FNC_GearScript;      Scout
[this,"USMC40_AR"] call Olsen_FW_FNC_GearScript;         Automatic Rifleman
[this,"USMC40_AAR"] call Olsen_FW_FNC_GearScript;        Assistant Automatic Rifleman
[this,"USMC40_ARB"] call Olsen_FW_FNC_GearScript;        Ammo Bearer
[this,"USMC40_Rif"] call Olsen_FW_FNC_GearScript;        Rifleman

    //Weapons Teams
[this,"USMC40_MGTL"] call Olsen_FW_FNC_GearScript;       Machine Gun Team Leader
[this,"USMC40_MG"] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this,"USMC40_MGA"] call Olsen_FW_FNC_GearScript;        Assistant Machine Gunner
[this,"USMC40_MGAB"] call Olsen_FW_FNC_GearScript;       Machine Gun Ammo Bearer

[this,"USMC40_MortTL"] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this,"USMC40_MortG"] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this,"USMC40_MortA"] call Olsen_FW_FNC_GearScript;      Mortar Assistant
[this,"USMC40_MortAB"] call Olsen_FW_FNC_GearScript;     Mortar Ammo Bearer

    //Tank Crew
[this,"USMC40_VOff"] call Olsen_FW_FNC_GearScript;       Tank Officer
[this,"USMC40_VCom"] call Olsen_FW_FNC_GearScript;       Tank Commander
[this,"USMC40_VCrew"] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

// For Platoon Commander, Squad Leader, Tank Commander
#define USMC40_Weapon_SMG \
        [ \
            [ \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[40], \
            [ \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[60] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define USMC40_Weapon_AR \
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem; \
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

#define USMC40_Weapon_Rifle \
        [US_Mag_M1903,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1903A1] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1903,20,"vest"] call Olsen_FW_FNC_AddItem; \

#define USMC40_Weapon_Secondary \
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USMC40_CC" : {
        [USMC_Uni_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Secondary Weapon
        USMC40_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Executive Officer
    case "USMC40_C2" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Secondary Weapon
        USMC40_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company First Sergeant
    case "USMC40_CSGT" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Secondary Weapon
        USMC40_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Radio Operator
    case "USMC40_CRTO" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "USMC40_PC" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_SMG;

        //Secondary Weapon
        USMC40_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Platoon Sergeant
    case "USMC40_PSGT" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Secondary Weapon
        USMC40_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Messenger
    case "USMC40_Mess" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "USMC40_Med" : {
        [USMC_Uni_Med] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        USMC_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "USMC40_SL" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USMC40_S2" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Scout
    case "USMC40_Scout" : {
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
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifleman
    case "USMC40_AR" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        USMC40_Weapon_AR;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Automatic Rifleman
    case "USMC40_AAR" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USMC40_ARB" : {
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
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "USMC40_Rif" : {
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
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USMC40_MGTL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "USMC40_MG" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Secondary Weapon
        USMC40_Weapon_Secondary;

        //Primary Weapon
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,3] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Machine Gunner
    case "USMC40_MGA" : {
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
        USMC40_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USMC40_MGAB" : {
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
        USMC40_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USMC40_MortTL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "USMC40_MortG" : {
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
        USMC40_Weapon_Secondary;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Assistant
    case "USMC40_MortA" : {
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
        USMC40_Weapon_Secondary;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
        [GEN_ace_maptools,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "USMC40_MortAB" : {
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
        USMC40_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Tank Officer
    case "USMC40_VOff" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Secondary Weapon
        USMC40_Weapon_Secondary;
    };

    //Tank Commander
    case "USMC40_VCom" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USMC40_Weapon_SMG;

        //Secondary Weapon
        USMC40_Weapon_Secondary;
    };

    //Tank Crew
    case "USMC40_VCrew" : {
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
        [USMC_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USMC40_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
