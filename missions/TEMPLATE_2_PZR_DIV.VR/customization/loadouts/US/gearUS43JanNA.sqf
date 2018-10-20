// Info: US Army 1943 North Africa Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"US43NA_CC"] call FNC_GearScript;         Company Commander
[this,"US43NA_C2"] call FNC_GearScript;         Company Executive Officer
[this,"US43NA_CSGT"] call FNC_GearScript;       Company First Sergeant
[this,"US43NA_CRTO"] call FNC_GearScript;       Company Radio Operator

    //Platoon HQ
[this,"US43NA_PC"] call FNC_GearScript;         Platoon Commander
[this,"US43NA_PSGT"] call FNC_GearScript;       Platoon Sergeant/Platoon Guide
[this,"US43NA_Mess"] call FNC_GearScript;       Messenger
[this,"US43NA_Med"] call FNC_GearScript;        Medic

    //Squad
[this,"US43NA_SL"] call FNC_GearScript;         Squad Leader
[this,"US43NA_S2"] call FNC_GearScript;         Assistant Squad Leader
[this,"US43NA_Scout"] call FNC_GearScript;      Scout
[this,"US43NA_AR"] call FNC_GearScript;         Automatic Rifleman
[this,"US43NA_AAR"] call FNC_GearScript;        Assistant Automatic Rifleman
[this,"US43NA_ARB"] call FNC_GearScript;        Ammo Bearer
[this,"US43NA_Rif"] call FNC_GearScript;        Rifleman

    //Weapons Teams
[this,"US43NA_MGTL"] call FNC_GearScript;       Machine Gun Team Leader
[this,"US43NA_MG"] call FNC_GearScript;         Machine Gunner
[this,"US43NA_MGA"] call FNC_GearScript;        Assistant Machine Gunner
[this,"US43NA_MGAB"] call FNC_GearScript;       Machine Gun Ammo Bearer

[this,"US43NA_MortTL"] call FNC_GearScript;     Mortar Team Leader
[this,"US43NA_MortG"] call FNC_GearScript;      Mortar Gunner
[this,"US43NA_MortA"] call FNC_GearScript;      Mortar Assistant
[this,"US43NA_MortAB"] call FNC_GearScript;     Mortar Ammo Bearer

[this,"US43NA_BzkaTL"] call FNC_GearScript;     Bazooka Team Leader
[this,"US43NA_BzkaG"] call FNC_GearScript;      Bazooka Gunner
[this,"US43NA_BzkaAB"] call FNC_GearScript;     Bazooka Ammo Bearer

    //Tank Crew
[this,"US43NA_VCom"] call FNC_GearScript;       Tank Commander
[this,"US43NA_VCrew"] call FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader
#define US43NA_Weapon_Leader            \
        [                               \
            [                           \
                [US_Vest_M1C],          \
                [US_Mag_M1C,1],         \
                [US_Weap_M1C],          \
                [US_Mag_M1C,5,"vest"]   \
            ],[50],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,5,"vest"] \
            ],[15],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M3GG,1],        \
                [US_Weap_M3GG],         \
                [US_Mag_M3GG,5,"vest"]  \
            ],[10],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1A1T],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[10],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1928A1],      \
                [US_Mag_M1T_1,5,"vest"] \
            ],[10],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[5]                       \
        ] call FNC_AddItemRandomPercent;

// For light riflemen
#define US43NA_Weapon_Rifle_Light        \
        [                                \
            [                            \
                [US_Vest_M1C],           \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[45],                      \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[18],                      \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1903,1],        \
                [US_Weap_M1G_2],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[18],                      \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1903,1],        \
                [US_Weap_M1G_3],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[18],                      \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For medic
#define US43NA_Weapon_Rifle_Medic        \
        [                                \
            [                            \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[45],                      \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[18],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1G_2],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[18],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1G_3],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[18],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For Assistant Squad Leader
#define US43NA_Weapon_ASL                \
        [                                \
            [                            \
                [US_Vest_M1C],           \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[35],                      \
            [                            \
                [US_Vest_M1G_Gren],      \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"],  \
                [US_Mag_RGrn_AT,10]      \
            ],[22],                      \
            [                            \
                [US_Vest_M1G_Gren],      \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_2],         \
                [US_Mag_M1G,10,"vest"],  \
                [US_Mag_RGrn_AT,10]      \
            ],[21],                      \
            [                            \
                [US_Vest_M1G_Gren],      \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_3],         \
                [US_Mag_M1G,10,"vest"],  \
                [US_Mag_RGrn_AT,10]      \
            ],[21],                      \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For riflemen
#define US43NA_Weapon_Rifle              \
        [                                \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[33],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1G_2],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[33],                      \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_3],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[33],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For Tank Commander
#define US43NA_Weapon_VCom              \
        [                               \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,5,"vest"] \
            ],[35],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928A1],      \
                [US_Mag_M1T_2,5,"vest"] \
            ],[20],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M3GG,1],        \
                [US_Weap_M3GG],         \
                [US_Mag_M3GG,5,"vest"]  \
            ],[20],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1A1T],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[10],                     \
            [                           \
                [US_Vest_M1C],          \
                [US_Mag_M1C,1],         \
                [US_Weap_M1C],          \
                [US_Mag_M1C,4,"vest"]   \
            ],[10],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_2,5,"vest"] \
            ],[5]                       \
        ] call FNC_AddItemRandomPercent;

// For Tank Crew
#define US43NA_Weapon_VCrew              \
        [                                \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_1,1],        \
                [US_Weap_M1T],           \
                [US_Mag_M1T_1,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[35],                      \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M3GG,1],         \
                [US_Weap_M3GG],          \
                [US_Mag_M3GG,5,"vest"],  \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[20],                      \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_2,1],        \
                [US_Weap_M1928A1],       \
                [US_Mag_M1T_2,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[20],                      \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_1,1],        \
                [US_Weap_M1A1T],         \
                [US_Mag_M1T_1,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[10],                      \
            [                            \
                [US_Vest_M1C],           \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"],   \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[10],                      \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_2,1],        \
                [US_Weap_M1928],         \
                [US_Mag_M1T_2,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[5]                        \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "US43NA_CC" : {
        [US_UniNA_CPT] call FNC_AddItem;
        [US_Helm_CPT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "US43NA_C2" : {
        [US_UniNA_LT] call FNC_AddItem;
        [US_Helm_LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "US43NA_CSGT" : {
        [US_UniNA_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Radio Operator
    case "US43NA_CRTO" : {
        [US_UniNA_CPL] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "US43NA_PC" : {
        [US_UniNA_LT] call FNC_AddItem;
        [US_Helm_2LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "US43NA_PSGT" : {
        [US_UniNA_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "US43NA_Mess" : {
        [US_UniNA_PFC] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "US43NA_Med" : {
        [US_UniNA_Med] call FNC_AddItem;
        [US_Vest_Med] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Medic;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        US_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "US43NA_SL" : {
        [US_UniNA_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "US43NA_S2" : {
        [US_UniNA_CPL] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_ASL;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "US43NA_Scout" : {
        [//Uni
        [
        [US_UniNA_PFC]
        ],[50],
        [
        [US_UniNA_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "US43NA_AR" : {
        [US_UniNA_CPL] call FNC_AddItem;
        [US_Vest_BAR] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR,1] call FNC_AddItem;
        [US_Weap_BAR] call FNC_AddItem;
        [US_Weap_BAR_Bipod] call FNC_AddItem;
        [US_Mag_BAR,6,"vest"] call FNC_AddItem;
        [US_Mag_BAR,9,"backpack"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifle Assistant
    case "US43NA_AAR" : {
        [US_UniNA_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "US43NA_ARB" : {
        [
            [
                [US_UniNA_PFC]
            ],[90],
            [
                [US_UniNA_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "US43NA_Rif" : {
        [
            [
                [US_UniNA_PFC]
            ],[90],
            [
                [US_UniNA_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "US43NA_MGTL" : {
        [US_UniNA_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gunner
    case "US43NA_MG" : {
        [US_UniNA_PFC] call FNC_AddItem;
        [US_Vest_MGA] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,2] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1919_250,1] call FNC_AddItem;
        [US_Weap_M1919A4] call FNC_AddItem;
        [US_Mag_M1919_250,3] call FNC_AddItem;
    };

    //Assistant Machine Gunner
    case "US43NA_MGA" : {
        [US_UniNA_PFC] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "US43NA_MGAB" : {
        [
            [
                [US_UniNA_PFC]
            ],[90],
            [
                [US_UniNA_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "US43NA_MortTL" : {
        [US_UniNA_CPL] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "US43NA_MortG" : {
        [US_UniNA_PFC] call FNC_AddItem;
        [US_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        [US_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Assistant
    case "US43NA_MortA" : {
        [US_UniNA_PFC] call FNC_AddItem;
        [US_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        [US_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "US43NA_MortAB" : {
        [
            [
                [US_UniNA_PFC]
            ],[90],
            [
                [US_UniNA_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "US43NA_BzkaTL" : {
        [US_UniNA_CPL] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Bazooka Gunner
    case "US43NA_BzkaG" : {
        [US_UniNA_PFC] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,1] call FNC_AddItem;
        [US_Weap_Bazoo] call FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "US43NA_BzkaAB" : {
        [
            [
                [US_UniNA_PFC]
            ],[90],
            [
                [US_UniNA_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US43NA_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

//Tank Crew

    //Tank Commander
    case "US43NA_VCom" : {
        [US_UniNA_SGT] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US43NA_Weapon_VCom;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Crew
    case "US43NA_VCrew" : {
        [
            [
                [US_UniNA_CPL]
            ],[40],
            [
                [US_UniNA_PFC]
            ],[50],
            [
                [US_UniNA_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Weapon
        US43NA_Weapon_VCrew;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };