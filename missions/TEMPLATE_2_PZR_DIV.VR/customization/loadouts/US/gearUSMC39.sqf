// Info: United States Marine Corps 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USMC39_CC"] call FNC_GearScript;         Company Commander
[this,"USMC39_C2"] call FNC_GearScript;         Company Executive Officer
[this,"USMC39_CSGT"] call FNC_GearScript;       Company First Sergeant
[this,"USMC39_CRTO"] call FNC_GearScript;       Company Radio Operator

    //Platoon HQ
[this,"USMC39_PC"] call FNC_GearScript;         Platoon Commander
[this,"USMC39_PSGT"] call FNC_GearScript;       Platoon Sergeant/Platoon Guide
[this,"USMC39_Mess"] call FNC_GearScript;       Messenger
[this,"USMC39_Med"] call FNC_GearScript;        Medic

    //Squad
[this,"USMC39_SL"] call FNC_GearScript;         Squad Leader
[this,"USMC39_S2"] call FNC_GearScript;         Assistant Squad Leader
[this,"USMC39_Scout"] call FNC_GearScript;      Scout
[this,"USMC39_AR"] call FNC_GearScript;         Automatic Rifleman
[this,"USMC39_AAR"] call FNC_GearScript;        Assistant Automatic Rifleman
[this,"USMC39_ARB"] call FNC_GearScript;        Ammo Bearer
[this,"USMC39_Rif"] call FNC_GearScript;        Rifleman

    //Weapons Teams
[this,"USMC39_MGTL"] call FNC_GearScript;       Machine Gun Team Leader
[this,"USMC39_MG"] call FNC_GearScript;         Machine Gunner
[this,"USMC39_MGA"] call FNC_GearScript;        Assistant Machine Gunner
[this,"USMC39_MGAB"] call FNC_GearScript;       Machine Gun Ammo Bearer

[this,"USMC39_MortTL"] call FNC_GearScript;     Mortar Team Leader
[this,"USMC39_MortG"] call FNC_GearScript;      Mortar Gunner
[this,"USMC39_MortA"] call FNC_GearScript;      Mortar Assistant
[this,"USMC39_MortAB"] call FNC_GearScript;     Mortar Ammo Bearer

    //Tank Crew
[this,"USMC39_VOff"] call FNC_GearScript;       Tank Officer
[this,"USMC39_VCom"] call FNC_GearScript;       Tank Commander
[this,"USMC39_VCrew"] call FNC_GearScript;      Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USMC39_CC" : {
        [USMC_Uni_CPT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_CPT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "USMC39_C2" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "USMC39_CSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
    case "USMC39_CRTO" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

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
    case "USMC39_PC" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_2LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Sergeant
    case "USMC39_PSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
    case "USMC39_Mess" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "USMC39_Med" : {
        [USMC_Uni_Med] call FNC_AddItem;
        [USMC_Vest_Med] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        USMC_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "USMC39_SL" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_M1T] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        [//Primary Weapon
        [//M1928A1 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[50],
        [//M1928 Thompson
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[50]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USMC39_S2" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "USMC39_Scout" : {
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
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "USMC39_AR" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_BAR] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

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
    case "USMC39_AAR" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USMC39_ARB" : {
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
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "USMC39_Rif" : {
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
        USMC_Default_Equipment;

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
    case "USMC39_MGTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
    case "USMC39_MG" : {
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
        [US_Mag_M1911,2] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1919_250,1] call FNC_AddItem;
        [US_Weap_M1919A4] call FNC_AddItem;
        [US_Mag_M1919_250,3] call FNC_AddItem;
    };

    //Assistant Machine Gunner
    case "USMC39_MGA" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20] call FNC_AddItem;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USMC39_MGAB" : {
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
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USMC39_MortTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_M1G] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [USMC_Helm_e_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
    case "USMC39_MortG" : {
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
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Assistant
    case "USMC39_MortA" : {
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
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
        [GEN_ace_maptools,1] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "USMC39_MortAB" : {
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
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1903,1] call FNC_AddItem;
        [US_Weap_M1903A1] call FNC_AddItem;
        [US_Mag_M1903,20,"vest"] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
    };

//Tank Crew

    //Tank Officer
    case "USMC39_VOff" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Commander
    case "USMC39_VCom" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Vest_Pistol] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_M1928] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Crew
    case "USMC39_VCrew" : {
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
        US_Default_Equipment;

        //Primary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };