// Info: US Army 1944 June Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USAB44Jun_CC"] call FNC_GearScript;          Company Commander
[this,"USAB44Jun_C2"] call FNC_GearScript;          Company Executive Officer
[this,"USAB44Jun_CSGT"] call FNC_GearScript;        Company First Sergeant
[this,"USAB44Jun_CRTO"] call FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this,"USAB44Jun_PC"] call FNC_GearScript;          Platoon Commander
[this,"USAB44Jun_PSGT"] call FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this,"USAB44Jun_PRTO"] call FNC_GearScript;        Radio Operator
[this,"USAB44Jun_Mess"] call FNC_GearScript;        Messenger
[this,"USAB44Jun_Med"] call FNC_GearScript;         Medic

    //Squad
[this,"USAB44Jun_SL"] call FNC_GearScript;          Squad Leader
[this,"USAB44Jun_S2"] call FNC_GearScript;          Assistant Squad Leader
[this,"USAB44Jun_Scout"] call FNC_GearScript;       Scout
[this,"USAB44Jun_MG"] call FNC_GearScript;          Machine Gunner
[this,"USAB44Jun_MGA"] call FNC_GearScript;         Assistant Machine Gunner
[this,"USAB44Jun_MGAB"] call FNC_GearScript;        Machine Gun Ammo Bearer
[this,"USAB44Jun_AR"] call FNC_GearScript;          Automatic Rifleman
[this,"USAB44Jun_AAR"] call FNC_GearScript;         Assistant Automatic Rifleman
[this,"USAB44Jun_ARB"] call FNC_GearScript;         Ammo Bearer
[this,"USAB44Jun_Rif"] call FNC_GearScript;         Rifleman

    //Weapons Teams
[this,"USAB44Jun_MGTL"] call FNC_GearScript;        Machine Gun Team Leader

[this,"USAB44Jun_MortTL"] call FNC_GearScript;      Mortar Team Leader
[this,"USAB44Jun_MortG"] call FNC_GearScript;       Mortar Gunner
[this,"USAB44Jun_MortA"] call FNC_GearScript;       Mortar Assistant
[this,"USAB44Jun_MortAB"] call FNC_GearScript;      Mortar Ammo Bearer

[this,"USAB44Jun_BzkaTL"] call FNC_GearScript;      Bazooka Team Leader
[this,"USAB44Jun_BzkaG"] call FNC_GearScript;       Bazooka Gunner
[this,"USAB44Jun_BzkaAB"] call FNC_GearScript;      Bazooka Ammo Bearer
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander
#define USAB44Jun_Weapon_Leader         \
        [                               \
            [/*M1A1 Carbine*/           \
                [USAB_Vest_M1C],        \
                [US_Mag_M1C,1],         \
                [US_Weap_M1A1C],        \
                [US_Mag_M1C,4,"vest"]   \
            ],[43],                     \
            [/*M1 Carbine*/             \
                [USAB_Vest_M1C],        \
                [US_Mag_M1C,1],         \
                [US_Weap_M1C],          \
                [US_Mag_M1C,4,"vest"]   \
            ],[20],                     \
            [/*M3 Grease Gun*/          \
                [USAB_Vest_M1T],        \
                [US_Mag_M3GG,1],        \
                [US_Weap_M3GG],         \
                [US_Mag_M3GG,5,"vest"]  \
            ],[15],                     \
            [/*M1A1 Thompson*/          \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1A1T],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[15],                     \
            [/*M1 Thompson*/            \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,5,"vest"] \
            ],[5],                      \
            [/*M1928A1*/                \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928A1],      \
                [US_Mag_M1T_2,5,"vest"] \
            ],[1],                      \
            [/*M1928*/                  \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_2,5,"vest"] \
            ],[1]                       \
        ] call FNC_AddItemRandomPercent;

// Squad Leader
#define USAB44Jun_Weapon_SL             \
        [                               \
            [/*M3 Grease Gun*/          \
                [USAB_Vest_M1T],        \
                [US_Mag_M3GG,1],        \
                [US_Weap_M3GG],         \
                [US_Mag_M3GG,5,"vest"]  \
            ],[26.5],                   \
            [/*M1A1 Thompson*/          \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1A1T],        \
                [US_Mag_M1T_1,5,"vest"] \
            ],[26.5],                   \
            [/*M1A1 Carbine*/           \
                [USAB_Vest_M1C],        \
                [US_Mag_M1C,1],         \
                [US_Weap_M1A1C],        \
                [US_Mag_M1C,4,"vest"]   \
            ],[25],                     \
            [/*M1 Carbine*/             \
                [USAB_Vest_M1C],        \
                [US_Mag_M1C,1],         \
                [US_Weap_M1C],          \
                [US_Mag_M1C,4,"vest"]   \
            ],[15],                     \
            [/*M1 Thompson*/            \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_1,1],       \
                [US_Weap_M1T],          \
                [US_Mag_M1T_1,5,"vest"] \
            ],[5],                      \
            [/*M1928A1*/                \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928A1],      \
                [US_Mag_M1T_2,5,"vest"] \
            ],[1],                      \
            [/*M1928*/                  \
                [USAB_Vest_M1T],        \
                [US_Mag_M1T_2,1],       \
                [US_Weap_M1928],        \
                [US_Mag_M1T_2,5,"vest"] \
            ],[1]                       \
        ] call FNC_AddItemRandomPercent;

// For Assistant Squad Leader
#define USAB44Jun_Weapon_ASL              \
        [                                 \
            [                             \
                [USAB_Vest_M1G],          \
                [US_Mag_M1G,1],           \
                [US_Weap_M1G],            \
                [US_Acc_M1G_GL,1,"vest"], \
                [US_Mag_M1G,10,"vest"],   \
                [US_Mag_RGrn_AT,10]       \
            ],[73],                       \
            [                             \
                [USAB_Vest_M1C],          \
                [US_Mag_M1C,1],           \
                [US_Weap_M1A1C],          \
                [US_Mag_M1C,4,"vest"]     \
            ],[25],                       \
            [                             \
                [USAB_Vest_M1C],          \
                [US_Mag_M1C,1],           \
                [US_Weap_M1C],            \
                [US_Mag_M1C,4,"vest"]     \
            ],[1],                        \
            [                             \
                [USAB_Vest_M1G],          \
                [US_Mag_M1903,1],         \
                [US_Weap_M1903A3],        \
                [US_Mag_M1903,20,"vest"]  \
            ],[1]                         \
        ] call FNC_AddItemRandomPercent;

// For light riflemen
#define USAB44Jun_Weapon_Rifle_Light     \
        [                                \
            [                            \
                [USAB_Vest_M1C],         \
                [US_Mag_M1C,1],          \
                [US_Weap_M1A1C],         \
                [US_Mag_M1C,4,"vest"]    \
            ],[40],                      \
            [                            \
                [USAB_Vest_M1C],         \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[35],                      \
            [                            \
                [USAB_Vest_M1G],         \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G],           \
                [US_Mag_M1G,10,"vest"]   \
            ],[24],                      \
            [                            \
                [USAB_Vest_M1G],         \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For medic
#define USAB44Jun_Weapon_Rifle_Medic     \
        [                                \
            [                            \
                [US_Mag_M1C,1],          \
                [US_Weap_M1A1C],         \
                [US_Mag_M1C,4,"vest"]    \
            ],[40],                      \
            [                            \
                [US_Mag_M1C,1],          \
                [US_Weap_M1C],           \
                [US_Mag_M1C,4,"vest"]    \
            ],[35],                      \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G],           \
                [US_Mag_M1G,10,"vest"]   \
            ],[24],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A3],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

// For riflemen
#define USAB44Jun_Weapon_Rifle           \
        [                                \
            [                            \
                [US_Mag_M1G,1],          \
                [US_Weap_M1G],           \
                [US_Mag_M1G,10,"vest"]   \
            ],[99],                      \
            [                            \
                [US_Mag_M1903,1],        \
                [US_Weap_M1903A1],       \
                [US_Mag_M1903,20,"vest"] \
            ],[1]                        \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USAB44Jun_CC" : {
        [USAB_UniG_CPT] call FNC_AddItem;
        [USAB_Helm_CPT_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "USAB44Jun_C2" : {
        [USAB_UniG_LT] call FNC_AddItem;
        [USAB_Helm_LT_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "USAB44Jun_CSGT" : {
        [USAB_UniG_SGT] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Radio Operator
    case "USAB44Jun_CRTO" : {
        [USAB_UniG_CPL] call FNC_AddItem;
        [USAB_BP_Radio] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Radio_HH] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "USAB44Jun_PC" : {
        [USAB_UniG_LT] call FNC_AddItem;
        [USAB_Helm_2LT_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "USAB44Jun_PSGT" : {
        [USAB_UniG_SGT] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Radio Operator
    case "USAB44Jun_PRTO" : {
        [USAB_UniG_CPL] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Radio_HH] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "USAB44Jun_Mess" : {
        [USAB_UniG_PFC] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "USAB44Jun_Med" : {
        [USAB_UniG_Med] call FNC_AddItem;
        [USAB_Vest_Med] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Medic;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        US_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "USAB44Jun_SL" : {
        [USAB_UniG_SGT] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_SL;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USAB44Jun_S2" : {
        [USAB_UniG_CPL] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_ASL;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "USAB44Jun_Scout" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "USAB44Jun_MG" : {
        [USAB_UniG_PFC] call FNC_AddItem;
        [USAB_Vest_MGA] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    case "USAB44Jun_MGA" : {
        [USAB_UniG_PFC] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USAB44Jun_MGAB" : {
        [
            [
                [USAB_UniG_PFC]
            ],[90],
            [
                [USAB_UniG_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "USAB44Jun_AR" : {
        [USAB_UniG_CPL] call FNC_AddItem;
        [USAB_Vest_BAR] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR,1] call FNC_AddItem;
        [US_Weap_BAR] call FNC_AddItem;
        [US_Weap_BAR_Bipod] call FNC_AddItem;
        [US_Mag_BAR,6,"vest"] call FNC_AddItem;
        [US_Mag_BAR,9] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifle Assistant
    case "USAB44Jun_AAR" : {
        [USAB_UniG_PFC] call FNC_AddItem;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USAB44Jun_ARB" : {
        [
            [
                [USAB_UniG_PFC]
            ],[90],
            [
                [USAB_UniG_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15] call FNC_AddItem;
    };

    //Rifleman
    case "USAB44Jun_Rif" : {
        [
            [
                [USAB_UniG_PFC]
            ],[90],
            [
                [USAB_UniG_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USAB44Jun_MGTL" : {
        [USAB_UniG_CPL] call FNC_AddItem;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USAB44Jun_MortTL" : {
        [USAB_UniG_CPL] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,4] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "USAB44Jun_MortG" : {
        [USAB_UniG_PFC] call FNC_AddItem;
        [USAB_Vest_Mort] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    case "USAB44Jun_MortA" : {
        [USAB_UniG_PFC] call FNC_AddItem;
        [USAB_Vest_Mort] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    case "USAB44Jun_MortAB" : {
        [
            [
                [USAB_UniG_PFC]
            ],[90],
            [
                [USAB_UniG_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "USAB44Jun_BzkaTL" : {
        [USAB_UniG_CPL] call FNC_AddItem;
        [USAB_BP_AT] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Bazooka Gunner
    case "USAB44Jun_BzkaG" : {
        [USAB_UniG_PFC] call FNC_AddItem;
        [USAB_BP_AT] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,1] call FNC_AddItem;
        [US_Weap_Bazoo] call FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "USAB44Jun_BzkaAB" : {
        [
            [
                [USAB_UniG_PFC]
            ],[90],
            [
                [USAB_UniG_PVT]
            ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_BP_AT] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB44Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };