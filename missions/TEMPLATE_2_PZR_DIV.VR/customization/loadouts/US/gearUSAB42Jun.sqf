// Info: US Army 1942 June Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USAB42Jun_CC"] call Olsen_FW_FNC_GearScript;          Company Commander
[this,"USAB42Jun_C2"] call Olsen_FW_FNC_GearScript;          Company Executive Officer
[this,"USAB42Jun_CSGT"] call Olsen_FW_FNC_GearScript;        Company First Sergeant
[this,"USAB42Jun_CRTO"] call Olsen_FW_FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this,"USAB42Jun_PC"] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this,"USAB42Jun_PSGT"] call Olsen_FW_FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this,"USAB42Jun_Mess"] call Olsen_FW_FNC_GearScript;        Messenger
[this,"USAB42Jun_Med"] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this,"USAB42Jun_SL"] call Olsen_FW_FNC_GearScript;          Squad Leader
[this,"USAB42Jun_S2"] call Olsen_FW_FNC_GearScript;          Assistant Squad Leader
[this,"USAB42Jun_Scout"] call Olsen_FW_FNC_GearScript;       Scout
[this,"USAB42Jun_MG"] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this,"USAB42Jun_MGA"] call Olsen_FW_FNC_GearScript;         Assistant Machine Gunner
[this,"USAB42Jun_MGAB"] call Olsen_FW_FNC_GearScript;        Machine Gun Ammo Bearer
[this,"USAB42Jun_AR"] call Olsen_FW_FNC_GearScript;          Automatic Rifleman
[this,"USAB42Jun_AAR"] call Olsen_FW_FNC_GearScript;         Assistant Automatic Rifleman
[this,"USAB42Jun_ARB"] call Olsen_FW_FNC_GearScript;         Ammo Bearer
[this,"USAB42Jun_Rif"] call Olsen_FW_FNC_GearScript;         Rifleman

    //Weapons Teams
[this,"USAB42Jun_MGTL"] call Olsen_FW_FNC_GearScript;        Machine Gun Team Leader

[this,"USAB42Jun_MortTL"] call Olsen_FW_FNC_GearScript;      Mortar Team Leader
[this,"USAB42Jun_MortG"] call Olsen_FW_FNC_GearScript;       Mortar Gunner
[this,"USAB42Jun_MortA"] call Olsen_FW_FNC_GearScript;       Mortar Assistant
[this,"USAB42Jun_MortAB"] call Olsen_FW_FNC_GearScript;      Mortar Ammo Bearer

[this,"USAB42Jun_BzkaTL"] call Olsen_FW_FNC_GearScript;      Bazooka Team Leader
[this,"USAB42Jun_BzkaG"] call Olsen_FW_FNC_GearScript;       Bazooka Gunner
[this,"USAB42Jun_BzkaAB"] call Olsen_FW_FNC_GearScript;      Bazooka Ammo Bearer
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader
#define USAB42Jun_Weapon_Leader \
        [ \
            [ \
                [USAB_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928A1], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[50], \
            [ \
                [USAB_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[30], \
            [ \
                [USAB_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,5,"vest"] \
            ],[10], \
            [ \
                [USAB_Vest_M1T], \
                [US_Mag_M1T_20,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_20,5,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For light riflemen
#define USAB42Jun_Weapon_Rifle_Light \
        [ \
            [ \
                [USAB_Vest_M1G], \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[48], \
            [ \
                [USAB_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[27], \
            [ \
                [USAB_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,4,"vest"] \
            ],[20], \
            [ \
                [USAB_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A3], \
                [US_Mag_M1903,20,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For medic
#define USAB42Jun_Weapon_Rifle_Medic \
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
#define USAB42Jun_Weapon_Rifle \
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

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USAB42Jun_CC" : {
        [USAB_UniK_CPT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_CPT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Executive Officer
    case "USAB42Jun_C2" : {
        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company First Sergeant
    case "USAB42Jun_CSGT" : {
        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Radio Operator
    case "USAB42Jun_CRTO" : {
        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "USAB42Jun_PC" : {
        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_2LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Leader;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Platoon Sergeant
    case "USAB42Jun_PSGT" : {
        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Messenger
    case "USAB42Jun_Mess" : {
        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "USAB42Jun_Med" : {
        [USAB_UniK_Med] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Medic;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        US_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "USAB42Jun_SL" : {
        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USAB42Jun_S2" : {
        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Scout
    case "USAB42Jun_Scout" : {
        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "USAB42Jun_MG" : {
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
    };

    //Assistant Machine Gunner
    case "USAB42Jun_MGA" : {
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
        USAB42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USAB42Jun_MGAB" : {
        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifleman
    case "USAB42Jun_AR" : {
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
    };

    //Automatic Rifle Assistant
    case "USAB42Jun_AAR" : {
        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USAB42Jun_ARB" : {
        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "USAB42Jun_Rif" : {
        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USAB42Jun_MGTL" : {
        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USAB42Jun_MortTL" : {
        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "USAB42Jun_MortG" : {
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
    };

    //Mortar Assistant
    case "USAB42Jun_MortA" : {
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
    };

    //Mortar Ammo Bearer
    case "USAB42Jun_MortAB" : {
        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call Olsen_FW_FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "USAB42Jun_BzkaTL" : {
        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_AT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Bazooka Gunner
    case "USAB42Jun_BzkaG" : {
        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_BP_AT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "USAB42Jun_BzkaAB" : {
        [
            [
                [USAB_UniK_PFC]
            ],[90],
            [
                [USAB_UniK_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USAB_BP_AT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        USAB42Jun_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    };
