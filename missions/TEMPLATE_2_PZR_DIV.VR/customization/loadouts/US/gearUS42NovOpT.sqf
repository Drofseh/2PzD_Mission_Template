// Info: US Army 1942 November Operation Torch Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"US42OpT_CC"] call FNC_GearScript;        Company Commander
[this,"US42OpT_C2"] call FNC_GearScript;        Company Executive Officer
[this,"US42OpT_CSGT"] call FNC_GearScript;      Company First Sergeant
[this,"US42OpT_CRTO"] call FNC_GearScript;      Company Radio Operator

    //Platoon HQ
[this,"US42OpT_PC"] call FNC_GearScript;        Platoon Commander
[this,"US42OpT_PSGT"] call FNC_GearScript;      Platoon Sergeant/Platoon Guide
[this,"US42OpT_Mess"] call FNC_GearScript;      Messenger
[this,"US42OpT_Med"] call FNC_GearScript;       Medic

    //Squad
[this,"US42OpT_SL"] call FNC_GearScript;        Squad Leader
[this,"US42OpT_S2"] call FNC_GearScript;        Assistant Squad Leader
[this,"US42OpT_Scout"] call FNC_GearScript;     Scout
[this,"US42OpT_AR"] call FNC_GearScript;        Automatic Rifleman
[this,"US42OpT_AAR"] call FNC_GearScript;       Assistant Automatic Rifleman
[this,"US42OpT_ARB"] call FNC_GearScript;       Ammo Bearer
[this,"US42OpT_Rif"] call FNC_GearScript;       Rifleman

    //Weapons Teams
[this,"US42OpT_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"US42OpT_MG"] call FNC_GearScript;        Machine Gunner
[this,"US42OpT_MGA"] call FNC_GearScript;       Assistant Machine Gunner
[this,"US42OpT_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"US42OpT_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"US42OpT_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"US42OpT_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"US42OpT_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"US42OpT_BzkaTL"] call FNC_GearScript;    Bazooka Team Leader
[this,"US42OpT_BzkaG"] call FNC_GearScript;     Bazooka Gunner
[this,"US42OpT_BzkaAB"] call FNC_GearScript;    Bazooka Ammo Bearer

    //Tank Crew
[this,"US42OpT_VCom"] call FNC_GearScript;      Tank Commander
[this,"US42OpT_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "US42OpT_CC" : {
        [US_UniOT_CPT] call FNC_AddItem;
        [US_Helm_CPT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[45],
        [//M1928A1
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "US42OpT_C2" : {
        [US_UniOT_LT] call FNC_AddItem;
        [US_Helm_LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[45],
        [//M1928A1
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "US42OpT_CSGT" : {
        [US_UniOT_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Radio Operator
    case "US42OpT_CRTO" : {
        [US_UniOT_CPL] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        [US_Radio_P] call FNC_AddItem;
        _unit assignItem US_Radio_P;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "US42OpT_PC" : {
        [US_UniOT_LT] call FNC_AddItem;
        [US_Helm_2LT] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[45],
        [//M1928A1
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[5]
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
    case "US42OpT_PSGT" : {
        [US_UniOT_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "US42OpT_Mess" : {
        [US_UniOT_PFC] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "US42OpT_Med" : {
        [US_UniOT_Med] call FNC_AddItem;
        [US_Vest_Med] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        US_medic_equipment;
    };

//Squad

    //Squad Leader
    case "US42OpT_SL" : {
        [US_UniOT_SGT] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[45],
        [//M1928A1
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "US42OpT_S2" : {
        [US_UniOT_CPL] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "US42OpT_Scout" : {
        [//Uni
        [
        [US_UniOT_PFC]
        ],[50],
        [
        [US_UniOT_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "US42OpT_AR" : {
        [US_UniOT_CPL] call FNC_AddItem;
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
    case "US42OpT_AAR" : {
        [US_UniOT_PFC] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "US42OpT_ARB" : {
        [//Uniform
        [//PFC
        [US_UniOT_PFC]
        ],[90],
        [//PVT
        [US_UniOT_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "US42OpT_Rif" : {
        [//Uniform
        [//PFC
        [US_UniOT_PFC]
        ],[90],
        [//PVT
        [US_UniOT_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "US42OpT_MGTL" : {
        [US_UniOT_CPL] call FNC_AddItem;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gunner
    case "US42OpT_MG" : {
        [US_UniOT_PFC] call FNC_AddItem;
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
    case "US42OpT_MGA" : {
        [US_UniOT_PFC] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "US42OpT_MGAB" : {
        [//Uniform
        [//PFC
        [US_UniOT_PFC]
        ],[90],
        [//PVT
        [US_UniOT_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "US42OpT_MortTL" : {
        [US_UniOT_CPL] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "US42OpT_MortG" : {
        [US_UniOT_PFC] call FNC_AddItem;
        [US_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;
        [US_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Assistant
    case "US42OpT_MortA" : {
        [US_UniOT_PFC] call FNC_AddItem;
        [US_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;
        [US_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "US42OpT_MortAB" : {
        [//Uniform
        [//PFC
        [US_UniOT_PFC]
        ],[90],
        [//PVT
        [US_UniOT_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Mort_HE,9] call FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "US42OpT_BzkaTL" : {
        [US_UniOT_CPL] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Bazooka Gunner
    case "US42OpT_BzkaG" : {
        [US_UniOT_PFC] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1903A1
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [US_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,1] call FNC_AddItem;
        [US_Weap_Bazoo] call FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "US42OpT_BzkaAB" : {
        [//Uniform
        [//PFC
        [US_UniOT_PFC]
        ],[90],
        [//PVT
        [US_UniOT_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_Vest_M1G] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [US_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

//Tank Crew

    //Tank Commander
    case "US42OpT_VCom" : {
        [US_UniOT_SGT] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        USA_default_equipment;
        USA_leader_equipment;

        [//Primary Weapon
        [//M1928A1
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[40],
        [//M1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[35],
        [//M1A1 Thompson
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[10],
        [//M1 Carbine
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1928
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,5,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };
    
    //Tank Crew
    case "US42OpT_VCrew" : {
        [//Uniform
        [//Cpl
        [US_UniOT_CPL]
        ],[40],
        [//PFC
        [US_UniOT_PFC]
        ],[50],
        [//PVT
        [US_UniOT_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_BP_M1928] call FNC_AddItem;
        [US_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        USA_default_equipment;

        [//Weapon
        [//M1911 Only
        [US_Vest_Pistol],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[90],
        [//M1928A1 & M1911
        [US_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[4],
        [//M1 Thompson & M1911
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[3],
        [//M1A1 Thompson & M1911
        [US_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[2],
        [//M1 Carbine & M1911
        [US_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };