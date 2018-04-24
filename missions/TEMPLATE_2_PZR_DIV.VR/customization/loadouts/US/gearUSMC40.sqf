// Info: United States Marine Corps 1940 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USMC40_CC"] call FNC_GearScript;         Company Commander
[this,"USMC40_C2"] call FNC_GearScript;         Company Executive Officer
[this,"USMC40_CSGT"] call FNC_GearScript;       Company First Sergeant
[this,"USMC40_CRTO"] call FNC_GearScript;       Company Radio Operator

    //Platoon HQ
[this,"USMC40_PC"] call FNC_GearScript;         Platoon Commander
[this,"USMC40_PSGT"] call FNC_GearScript;       Platoon Sergeant/Platoon Guide
[this,"USMC40_Mess"] call FNC_GearScript;       Messenger
[this,"USMC40_Med"] call FNC_GearScript;        Medic

    //Squad
[this,"USMC40_SL"] call FNC_GearScript;         Squad Leader
[this,"USMC40_S2"] call FNC_GearScript;         Assistant Squad Leader
[this,"USMC40_Scout"] call FNC_GearScript;      Scout
[this,"USMC40_AR"] call FNC_GearScript;         Automatic Rifleman
[this,"USMC40_AAR"] call FNC_GearScript;        Assistant Automatic Rifleman
[this,"USMC40_ARB"] call FNC_GearScript;        Ammo Bearer
[this,"USMC40_Rif"] call FNC_GearScript;        Rifleman

    //Weapons Teams
[this,"USMC40_MGTL"] call FNC_GearScript;       Machine Gun Team Leader
[this,"USMC40_MG"] call FNC_GearScript;         Machine Gunner
[this,"USMC40_MGA"] call FNC_GearScript;        Assistant Machine Gunner
[this,"USMC40_MGAB"] call FNC_GearScript;       Machine Gun Ammo Bearer

[this,"USMC40_MortTL"] call FNC_GearScript;     Mortar Team Leader
[this,"USMC40_MortG"] call FNC_GearScript;      Mortar Gunner
[this,"USMC40_MortA"] call FNC_GearScript;      Mortar Assistant
[this,"USMC40_MortAB"] call FNC_GearScript;     Mortar Ammo Bearer

    //Tank Crew
[this,"USMC40_VOff"] call FNC_GearScript;       Tank Officer
[this,"USMC40_VCom"] call FNC_GearScript;       Tank Commander
[this,"USMC40_VCrew"] call FNC_GearScript;      Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USMC40_CC" : {
        [USMC_Uni_CPT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_CPT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "USMC40_C2" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "USMC40_CSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

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
    case "USMC40_CRTO" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

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
    case "USMC40_PC" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Vest_M1T] call FNC_AddItem;
        [USMC_Helm_2LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1928A1 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[60],
        [//M1928 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[40]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "USMC40_PSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

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
    case "USMC40_Mess" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "USMC40_Med" : {
        [USMC_Uni_Med] call FNC_AddItem;
        [USMC_Vest_Med] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        USMC_medic_equipment;
    };

//Squad

    //Squad Leader
    case "USMC40_SL" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_M1T] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1928A1 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[60],
        [//M1928 Thompson
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
    case "USMC40_S2" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "USMC40_Scout" : {
        [//Uni
        [
        [USMC_Uni_PFC]
        ],[50],
        [
        [USMC_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "USMC40_AR" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_BAR] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_BAR,1] call FNC_AddItem;
        [US_Weap_BAR] call FNC_AddItem;
        [US_Weap_BAR_Bipod] call FNC_AddItem;
        [US_Mag_BAR,6,"vest"] call FNC_AddItem;
        [US_Mag_BAR,9,"backpack"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Automatic Rifleman
    case "USMC40_AAR" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USMC40_ARB" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[50],
        [//PVT
        [USMC_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "USMC40_Rif" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[50],
        [//PVT
        [USMC_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

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
    case "USMC40_MGTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [US_Mag_M1919_250,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "USMC40_MG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_MGA] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

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
    case "USMC40_MGA" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20] call FNC_AddItem;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USMC40_MGAB" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[50],
        [//PVT
        [USMC_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USMC40_MortTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,4] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "USMC40_MortG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;
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
    case "USMC40_MortA" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;
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
    case "USMC40_MortAB" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[50],
        [//PVT
        [USMC_Uni_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
    };

//Tank Crew

    //Tank Officer
    case "USMC40_VOff" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Commander
    case "USMC40_VCom" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_M1T] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1928A1 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[60],
        [//M1928 Thompson
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
    case "USMC40_VCrew" : {
        [//Uniform
        [//Cpl
        [USMC_Uni_CPL]
        ],[30],
        [//PFC
        [USMC_Uni_PFC]
        ],[40],
        [//PVT
        [USMC_Uni_PVT]
        ],[30]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
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