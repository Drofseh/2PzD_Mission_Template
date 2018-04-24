// Info: US Army 1940 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"US40_CC"] call FNC_GearScript;       Company Commander
[this,"US40_C2"] call FNC_GearScript;       Company Executive Officer
[this,"US40_CSGT"] call FNC_GearScript;     Company First Sergeant
[this,"US40_CRTO"] call FNC_GearScript;     Company Radio Operator

    //Platoon HQ
[this,"US40_PC"] call FNC_GearScript;       Platoon Commander
[this,"US40_PSGT"] call FNC_GearScript;     Platoon Sergeant/Platoon Guide
[this,"US40_Mess"] call FNC_GearScript;     Messenger
[this,"US40_Med"] call FNC_GearScript;      Medic

    //Squad
[this,"US40_SL"] call FNC_GearScript;       Squad Leader
[this,"US40_S2"] call FNC_GearScript;       Assistant Squad Leader
[this,"US40_Scout"] call FNC_GearScript;    Scout
[this,"US40_AR"] call FNC_GearScript;       Automatic Rifleman
[this,"US40_AAR"] call FNC_GearScript;      Assistant Automatic Rifleman
[this,"US40_ARB"] call FNC_GearScript;      Ammo Bearer
[this,"US40_Rif"] call FNC_GearScript;      Rifleman

    //Weapons Teams
[this,"US40_MGTL"] call FNC_GearScript;     Machine Gun Team Leader
[this,"US40_MG"] call FNC_GearScript;       Machine Gunner
[this,"US40_MGA"] call FNC_GearScript;      Assistant Machine Gunner
[this,"US40_MGAB"] call FNC_GearScript;     Machine Gun Ammo Bearer

[this,"US40_MortTL"] call FNC_GearScript;   Mortar Team Leader
[this,"US40_MortG"] call FNC_GearScript;    Mortar Gunner
[this,"US40_MortA"] call FNC_GearScript;    Mortar Assistant
[this,"US40_MortAB"] call FNC_GearScript;   Mortar Ammo Bearer

    //Tank Crew
[this,"US40_VCom"] call FNC_GearScript;     Tank Commander
[this,"US40_VCrew"] call FNC_GearScript;    Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "US40_CC" : {
        [US_Uni_CPT] call FNC_AddItem;
        [US_Vest_Pistol] call FNC_AddItem;
        [US_Helm_CPT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "US40_C2" : {
        [US_Uni_LT] call FNC_AddItem;
        [US_Vest_Pistol] call FNC_AddItem;
        [US_Helm_LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "US40_CSGT" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Radio Operator
    case "US40_CRTO" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "US40_PC" : {
        [US_Uni_LT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_Helm_2LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1928A1
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[60],
        [//M1928
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[40]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "US40_PSGT" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "US40_Mess" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "US40_Med" : {
        [US_Uni_Med] call FNC_AddItem;
        [US_Vest_Med] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        US_medic_equipment;
    };

//Squad

    //Squad Leader
    case "US40_SL" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1928A1
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[60],
        [//M1928
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[40]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "US40_S2" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "US40_Scout" : {
        [//Uni
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
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "US40_AR" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_BAR] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

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
    case "US40_AAR" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "US40_ARB" : {
        [//Uniform
        [//PFC
        [US_Uni_PFC]
        ],[50],
        [//PVT
        [US_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "US40_Rif" : {
        [//Uniform
        [//PFC
        [US_Uni_PFC]
        ],[50],
        [//PVT
        [US_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "US40_MGTL" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gunner
    case "US40_MG" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_MGA] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

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
    case "US40_MGA" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20] call FNC_AddItem;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "US40_MGAB" : {
        [//Uniform
        [//PFC
        [US_Uni_PFC]
        ],[50],
        [//PVT
        [US_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "US40_MortTL" : {
        [US_Uni_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "US40_MortG" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
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
    case "US40_MortA" : {
        [US_Uni_PFC] call FNC_AddItem;
        [US_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
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
    case "US40_MortAB" : {
        [//Uniform
        [//PFC
        [US_Uni_PFC]
        ],[50],
        [//PVT
        [US_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,9] call FNC_AddItem;
    };

//Tank Crew

    //Tank Commander
    case "US40_VCom" : {
        [US_Uni_SGT] call FNC_AddItem;
        [US_Vest_M1T] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1928A1
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[60],
        [//M1928
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[40]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Crew
    case "US40_VCrew" : {
        [//Uniform
        [//Cpl
        [US_Uni_CPL]
        ],[30],
        [//PFC
        [US_Uni_PFC]
        ],[40],
        [//PVT
        [US_Uni_PVT]
        ],[30]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_Pistol] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        //Primary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };