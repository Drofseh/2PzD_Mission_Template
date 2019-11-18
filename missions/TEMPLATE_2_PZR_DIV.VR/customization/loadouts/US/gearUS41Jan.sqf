// Info: US Army 1941 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"US41Jan_CC"] call FNC_GearScript;        Company Commander
[this,"US41Jan_C2"] call FNC_GearScript;        Company Executive Officer
[this,"US41Jan_CSGT"] call FNC_GearScript;      Company First Sergeant
[this,"US41Jan_CRTO"] call FNC_GearScript;      Company Radio Operator

    //Platoon HQ
[this,"US41Jan_PC"] call FNC_GearScript;        Platoon Commander
[this,"US41Jan_PSGT"] call FNC_GearScript;      Platoon Sergeant/Platoon Guide
[this,"US41Jan_Mess"] call FNC_GearScript;      Messenger
[this,"US41Jan_Med"] call FNC_GearScript;       Medic

    //Squad
[this,"US41Jan_SL"] call FNC_GearScript;        Squad Leader
[this,"US41Jan_S2"] call FNC_GearScript;        Assistant Squad Leader
[this,"US41Jan_Scout"] call FNC_GearScript;     Scout
[this,"US41Jan_AR"] call FNC_GearScript;        Automatic Rifleman
[this,"US41Jan_AAR"] call FNC_GearScript;       Assistant Automatic Rifleman
[this,"US41Jan_ARB"] call FNC_GearScript;       Ammo Bearer
[this,"US41Jan_Rif"] call FNC_GearScript;       Rifleman

    //Weapons Teams
[this,"US41Jan_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"US41Jan_MG"] call FNC_GearScript;        Machine Gunner
[this,"US41Jan_MGA"] call FNC_GearScript;       Assistant Machine Gunner
[this,"US41Jan_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"US41Jan_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"US41Jan_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"US41Jan_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"US41Jan_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

    //Tank Crew
[this,"US41Jan_VCom"] call FNC_GearScript;      Tank Commander
[this,"US41Jan_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

// For Company Commander, Company Executive Officer, Platoon Commander, Squad Leader, Tank Commander
#define US41Jan_Weapon_SMG \
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
        ] call FNC_AddItemRandomPercent;

// For men with rifles
#define US41Jan_Weapon_Rifle \
        [ \
            [ \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,20,"vest"] \
            ],[80], \
            [ \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[20] \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "US41Jan_CC" : {
        [US_Uni_CPT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_Helm_CPT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "US41Jan_C2" : {
        [US_Uni_LT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_Helm_LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "US41Jan_CSGT" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Radio Operator
    case "US41Jan_CRTO" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "US41Jan_PC" : {
        [US_Uni_LT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_Helm_2LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "US41Jan_PSGT" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "US41Jan_Mess" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "US41Jan_Med" : {
        [US_Uni_Med] call FNC_AddItem;
        [US_Vest_Med] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        US_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "US41Jan_SL" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_SMG;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "US41Jan_S2" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "US41Jan_Scout" : {
        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "US41Jan_AR" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_BAR] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR_Mixed_Ball,1] call FNC_AddItem;
        [US_Weap_BAR] call FNC_AddItem;
        [US_Acc_BAR_Bipod] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifle Assistant
    case "US41Jan_AAR" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "US41Jan_ARB" : {
        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "US41Jan_Rif" : {
        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "US41Jan_MGTL" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,2] call FNC_AddItem;
    };

    //Machine Gunner
    case "US41Jan_MG" : {
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
        [US_Mag_M1911,2,"uniform"] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1919_250_Mixed_Ball,1] call FNC_AddItem;
        [US_Weap_M1919A4] call FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,3] call FNC_AddItem;
    };

    //Assistant Machine Gunner
    case "US41Jan_MGA" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "US41Jan_MGAB" : {
        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "US41Jan_MortTL" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "US41Jan_MortG" : {
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
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Assistant
    case "US41Jan_MortA" : {
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
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "US41Jan_MortAB" : {
        [
            [
                [US_Uni_PFC]
            ],[50],
            [
                [US_Uni_PVT]
            ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        //Primary Weapon
        US41Jan_Weapon_Rifle;

        //Extra
        [US_Mag_Mort_HE,9] call FNC_AddItem;
    };

//Tank Crew

    //Tank Commander
    case "US41Jan_VCom" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Primary Weapon
        US41Jan_Weapon_SMG;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call FNC_AddItem;
    };

    //Tank Crew
    case "US41Jan_VCrew" : {
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
        ] call FNC_AddItemRandomPercent;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        [//Weapon
            [//M1911 Only
                [US_Vest_Pistol],
                [US_Mag_M1911,1],
                [US_Weap_M1911],
                [US_Mag_M1911,3,"uniform"]
            ],[90],
            [//M1928A1 & M1911
                [US_Vest_M1T],
                [US_Mag_M1T_20,1],
                [US_Weap_M1928A1],
                [US_Mag_M1T_20,5,"vest"],
                [US_Mag_M1911,1],
                [US_Weap_M1911],
                [US_Mag_M1911,3,"uniform"]
            ],[7],
            [//M1928 & M1911
                [US_Vest_M1T],
                [US_Mag_M1T_20,1],
                [US_Weap_M1928],
                [US_Mag_M1T_20,5,"vest"],
                [US_Mag_M1911,1],
                [US_Weap_M1911],
                [US_Mag_M1911,3,"uniform"]
            ],[3]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };
