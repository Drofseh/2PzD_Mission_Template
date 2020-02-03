// Info: US Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"US39_CC"] call Olsen_FW_FNC_GearScript;       Company Commander
[this,"US39_C2"] call Olsen_FW_FNC_GearScript;       Company Executive Officer
[this,"US39_CSGT"] call Olsen_FW_FNC_GearScript;     Company First Sergeant
[this,"US39_CRTO"] call Olsen_FW_FNC_GearScript;     Company Radio Operator

    //Platoon HQ
[this,"US39_PC"] call Olsen_FW_FNC_GearScript;       Platoon Commander
[this,"US39_PSGT"] call Olsen_FW_FNC_GearScript;     Platoon Sergeant/Platoon Guide
[this,"US39_Mess"] call Olsen_FW_FNC_GearScript;     Messenger
[this,"US39_Med"] call Olsen_FW_FNC_GearScript;      Medic

    //Squad
[this,"US39_SL"] call Olsen_FW_FNC_GearScript;       Squad Leader
[this,"US39_S2"] call Olsen_FW_FNC_GearScript;       Assistant Squad Leader
[this,"US39_Scout"] call Olsen_FW_FNC_GearScript;    Scout
[this,"US39_AR"] call Olsen_FW_FNC_GearScript;       Automatic Rifleman
[this,"US39_AAR"] call Olsen_FW_FNC_GearScript;      Assistant Automatic Rifleman
[this,"US39_ARB"] call Olsen_FW_FNC_GearScript;      Ammo Bearer
[this,"US39_Rif"] call Olsen_FW_FNC_GearScript;      Rifleman

    //Weapons Teams
[this,"US39_MGTL"] call Olsen_FW_FNC_GearScript;     Machine Gun Team Leader
[this,"US39_MG"] call Olsen_FW_FNC_GearScript;       Machine Gunner
[this,"US39_MGA"] call Olsen_FW_FNC_GearScript;      Assistant Machine Gunner
[this,"US39_MGAB"] call Olsen_FW_FNC_GearScript;     Machine Gun Ammo Bearer

[this,"US39_MortTL"] call Olsen_FW_FNC_GearScript;   Mortar Team Leader
[this,"US39_MortG"] call Olsen_FW_FNC_GearScript;    Mortar Gunner
[this,"US39_MortA"] call Olsen_FW_FNC_GearScript;    Mortar Assistant
[this,"US39_MortAB"] call Olsen_FW_FNC_GearScript;   Mortar Ammo Bearer

    //Tank Crew
[this,"US39_VCom"] call Olsen_FW_FNC_GearScript;     Tank Commander
[this,"US39_VCrew"] call Olsen_FW_FNC_GearScript;    Tank Crew
*/

//======================== Definitions ========================



//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "US39_CC" : {
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
    };

    //Company Executive Officer
    case "US39_C2" : {
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
    };

    //Company First Sergeant
    case "US39_CSGT" : {
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
    };

    //Company Radio Operator
    case "US39_CRTO" : {
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
    };

//Platoon HQ

    //Platoon Commander
    case "US39_PC" : {
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
    };

    //Platoon Sergeant
    case "US39_PSGT" : {
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
    };

    //Messenger
    case "US39_Mess" : {
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
    };

    //Medic
    case "US39_Med" : {
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
    };

//Squad

    //Squad Leader
    case "US39_SL" : {
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
    };

    //Assistant Squad Leader
    case "US39_S2" : {
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
    };

    //Scout
    case "US39_Scout" : {
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
    };

    //Automatic Rifleman
    case "US39_AR" : {
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
    case "US39_AAR" : {
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
    };

    //Automatic Rifle Ammo Bearer
    case "US39_ARB" : {
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
    };

    //Rifleman
    case "US39_Rif" : {
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
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "US39_MGTL" : {
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
    };

    //Machine Gunner
    case "US39_MG" : {
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
    case "US39_MGA" : {
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
    };

    //Machine Gun Ammo Bearer
    case "US39_MGAB" : {
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
    };

//Mortar Team

    //Mortar Team Leader
    case "US39_MortTL" : {
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
    };

    //Mortar Gunner
    case "US39_MortG" : {
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
    case "US39_MortA" : {
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
    case "US39_MortAB" : {
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
    };

//Tank Crew

    //Tank Commander
    case "US39_VCom" : {
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
    };

    //Tank Crew
    case "US39_VCrew" : {
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
    };
