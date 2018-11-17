// Info: US Army 1944 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"US44Jan_CC"] call FNC_GearScript;        Company Commander
[this,"US44Jan_C2"] call FNC_GearScript;        Company Executive Officer
[this,"US44Jan_CSGT"] call FNC_GearScript;      Company First Sergeant
[this,"US44Jan_CRTO"] call FNC_GearScript;      Company Radio Operator

    //Platoon HQ
[this,"US44Jan_PC"] call FNC_GearScript;        Platoon Commander
[this,"US44Jan_PSGT"] call FNC_GearScript;      Platoon Sergeant/Platoon Guide
[this,"US44Jan_Mess"] call FNC_GearScript;      Messenger
[this,"US44Jan_Med"] call FNC_GearScript;       Medic

    //Squad
[this,"US44Jan_SL"] call FNC_GearScript;        Squad Leader
[this,"US44Jan_S2"] call FNC_GearScript;        Assistant Squad Leader
[this,"US44Jan_Scout"] call FNC_GearScript;     Scout
[this,"US44Jan_AR"] call FNC_GearScript;        Automatic Rifleman
[this,"US44Jan_AAR"] call FNC_GearScript;       Assistant Automatic Rifleman
[this,"US44Jan_ARB"] call FNC_GearScript;       Ammo Bearer
[this,"US44Jan_Rif"] call FNC_GearScript;       Rifleman

    //Weapons Teams
[this,"US44Jan_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"US44Jan_MG"] call FNC_GearScript;        Machine Gunner
[this,"US44Jan_MGA"] call FNC_GearScript;       Assistant Machine Gunner
[this,"US44Jan_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"US44Jan_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"US44Jan_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"US44Jan_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"US44Jan_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"US44Jan_BzkaTL"] call FNC_GearScript;    Bazooka Team Leader
[this,"US44Jan_BzkaG"] call FNC_GearScript;     Bazooka Gunner
[this,"US44Jan_BzkaAB"] call FNC_GearScript;    Bazooka Ammo Bearer

    //Tank Crew
[this,"US44Jan_VCom"] call FNC_GearScript;      Tank Commander
[this,"US44Jan_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander
#define US44Jan_Weapon_Leader           \
        [                               \
            [                           \
                [US_Vest_M1C],          \
                [US_Mag_M1C,1],         \
                [US_Weap_M1C],          \
                [US_Mag_M1C,5,"vest"]   \
            ],[60],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M3GG,1],        \
                [US_Weap_M3GG],         \
                [US_Mag_M3GG,5,"vest"]  \
            ],[15],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1A1T],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[15],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,5,"vest"] \
            ],[7],                      \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1928A1],      \
                [US_Mag_M1T_1,5,"vest"] \
            ],[3],                      \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[2]                       \
        ] call FNC_AddItemRandomPercent;

// For light riflemen
#define US44Jan_Weapon_Rifle_Light       \
        [                                \
            [                            \
                [US_Vest_M1C],           \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[65],                      \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[11.33333333333333333333], \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_2],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[11.33333333333333333333], \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_3],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[11.33333333333333333333], \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For medic
#define US44Jan_Weapon_Rifle_Medic       \
        [                                \
            [                            \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[65],                      \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[12],                      \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_2],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[11],                      \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_3],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[11],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For Squad Leader
#define US44Jan_Weapon_SL               \
        [                               \
            [                           \
                [US_Vest_M1C],          \
                [US_Mag_M1C,1],         \
                [US_Weap_M1C],          \
                [US_Mag_M1C,5,"vest"]   \
            ],[50],                     \
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
            ],[20],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,5,"vest"] \
            ],[7],                      \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1928A1],      \
                [US_Mag_M1T_1,5,"vest"] \
            ],[2],                      \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[1]                       \
        ] call FNC_AddItemRandomPercent;

// For Assistant Squad Leader
#define US44Jan_Weapon_ASL               \
        [                                \
            [                            \
                [US_Vest_M1G_Gren],      \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"],  \
                [US_Mag_RGrn_AT,10]      \
            ],[28],                      \
            [                            \
                [US_Vest_M1G_Gren],      \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_2],         \
                [US_Mag_M1G,10,"vest"],  \
                [US_Mag_RGrn_AT,10]      \
            ],[28],                      \
            [                            \
                [US_Vest_M1G_Gren],      \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_3],         \
                [US_Mag_M1G,10,"vest"],  \
                [US_Mag_RGrn_AT,10]      \
            ],[28],                      \
            [                            \
                [US_Vest_M1C],           \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[15],                      \
            [                            \
                [US_Vest_M1G],           \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For riflemen
#define US44Jan_Weapon_Rifle             \
        [                                \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G_1],         \
                [US_Mag_M1G,10,"vest"]   \
            ],[33],                      \
            [                            \
                [US_Mag_M1G,1],          \
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
#define US44Jan_Weapon_VCom             \
        [                               \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M3GG,1],        \
                [US_Weap_M3GG],         \
                [US_Mag_M3GG,5,"vest"]  \
            ],[45],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,5,"vest"] \
            ],[20],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1A1T],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[15],                     \
            [                           \
                [US_Vest_M1C],          \
                [US_Mag_M1C,1],         \
                [US_Weap_M1C],          \
                [US_Mag_M1C,4,"vest"]   \
            ],[10],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928A1],      \
                [US_Mag_M1T_2,5,"vest"] \
            ],[9],                     \
            [                           \
                [US_Vest_M1T],          \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_2,5,"vest"] \
            ],[1]                       \
        ] call FNC_AddItemRandomPercent;

// For Tank Crew
#define US44Jan_Weapon_VCrew             \
        [                                \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M3GG,1],         \
                [US_Weap_M3GG],          \
                [US_Mag_M3GG,5,"vest"],  \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[60],                      \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_1,1],        \
                [US_Weap_M1T],           \
                [US_Mag_M1T_1,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[14.5454545454545],        \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_1,1],        \
                [US_Weap_M1A1T],         \
                [US_Mag_M1T_1,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[10.9090909090909],        \
            [                            \
                [US_Vest_M1C],           \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"],   \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[7.27272727272727],        \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_2,1],        \
                [US_Weap_M1928A1],       \
                [US_Mag_M1T_2,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[6.54545454545454],        \
            [                            \
                [US_Vest_M1T],           \
                [US_Mag_M1T_2,1],        \
                [US_Weap_M1928],         \
                [US_Mag_M1T_2,5,"vest"], \
                [US_Mag_M1911,1],        \
                [US_Weap_M1911],         \
                [US_Mag_M1911,3]         \
            ],[0.727272727272727]        \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "US44Jan_CC" : {
        [US_Uni_CPT] call FNC_AddItem;
        [US_Helm_CPT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "US44Jan_C2" : {
        [US_Uni_LT] call FNC_AddItem;
        [US_Helm_LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "US44Jan_CSGT" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Radio Operator
    case "US44Jan_CRTO" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "US44Jan_PC" : {
        [US_Uni_LT] call FNC_AddItem;
        [US_Helm_2LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "US44Jan_PSGT" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "US44Jan_Mess" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "US44Jan_Med" : {
        [US_Uni_Med] call FNC_AddItem;
        [US_Vest_Med] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Medic;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        US_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "US44Jan_SL" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_SL;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "US44Jan_S2" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_ASL;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "US44Jan_Scout" : {
        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "US44Jan_AR" : {
        [US_Uni_CPL] call FNC_AddItem;
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
    case "US44Jan_AAR" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "US44Jan_ARB" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "US44Jan_Rif" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "US44Jan_MGTL" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gunner
    case "US44Jan_MG" : {
        [US_Uni_PFC] call FNC_AddItem;
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
    case "US44Jan_MGA" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "US44Jan_MGAB" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "US44Jan_MortTL" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "US44Jan_MortG" : {
        [US_Uni_PFC] call FNC_AddItem;
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
    case "US44Jan_MortA" : {
        [US_Uni_PFC] call FNC_AddItem;
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
    case "US44Jan_MortAB" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "US44Jan_BzkaTL" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Bazooka Gunner
    case "US44Jan_BzkaG" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,1] call FNC_AddItem;
        [US_Weap_Bazoo] call FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "US44Jan_BzkaAB" : {
        [
            [
                [US_Uni_PFC]
            ],[90],
            [
                [US_Uni_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US44Jan_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

//Tank Crew

    //Tank Commander
    case "US44Jan_VCom" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US44Jan_Weapon_VCom;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Crew
    case "US44Jan_VCrew" : {
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
        ] call FNC_AddItemRandomPercent;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Weapon
        US44Jan_Weapon_VCrew;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };