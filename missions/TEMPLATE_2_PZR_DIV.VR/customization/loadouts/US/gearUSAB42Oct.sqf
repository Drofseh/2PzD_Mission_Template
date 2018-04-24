// Info: US Army 1942 October Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USAB42Oct_CC"] call FNC_GearScript;          Company Commander
[this,"USAB42Oct_C2"] call FNC_GearScript;          Company Executive Officer
[this,"USAB42Oct_CSGT"] call FNC_GearScript;        Company First Sergeant
[this,"USAB42Oct_CRTO"] call FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this,"USAB42Oct_PC"] call FNC_GearScript;          Platoon Commander
[this,"USAB42Oct_PSGT"] call FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this,"USAB42Oct_Mess"] call FNC_GearScript;        Messenger
[this,"USAB42Oct_Med"] call FNC_GearScript;         Medic

    //Squad
[this,"USAB42Oct_SL"] call FNC_GearScript;          Squad Leader
[this,"USAB42Oct_S2"] call FNC_GearScript;          Assistant Squad Leader
[this,"USAB42Oct_Scout"] call FNC_GearScript;       Scout
[this,"USAB42Oct_MG"] call FNC_GearScript;          Machine Gunner
[this,"USAB42Oct_MGA"] call FNC_GearScript;         Assistant Machine Gunner
[this,"USAB42Oct_MGAB"] call FNC_GearScript;        Machine Gun Ammo Bearer
[this,"USAB42Oct_AR"] call FNC_GearScript;          Automatic Rifleman
[this,"USAB42Oct_AAR"] call FNC_GearScript;         Assistant Automatic Rifleman
[this,"USAB42Oct_ARB"] call FNC_GearScript;         Ammo Bearer
[this,"USAB42Oct_Rif"] call FNC_GearScript;         Rifleman

    //Weapons Teams
[this,"USAB42Oct_MGTL"] call FNC_GearScript;        Machine Gun Team Leader

[this,"USAB42Oct_MortTL"] call FNC_GearScript;      Mortar Team Leader
[this,"USAB42Oct_MortG"] call FNC_GearScript;       Mortar Gunner
[this,"USAB42Oct_MortA"] call FNC_GearScript;       Mortar Assistant
[this,"USAB42Oct_MortAB"] call FNC_GearScript;      Mortar Ammo Bearer

[this,"USAB42Oct_BzkaTL"] call FNC_GearScript;      Bazooka Team Leader
[this,"USAB42Oct_BzkaG"] call FNC_GearScript;       Bazooka Gunner
[this,"USAB42Oct_BzkaAB"] call FNC_GearScript;      Bazooka Ammo Bearer

    //Tank Crew
[this,"USAB42Oct_VCom"] call FNC_GearScript;        Tank Commander
[this,"USAB42Oct_VCrew"] call FNC_GearScript;       Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USAB42Oct_CC" : {
        [USAB_UniK_CPT] call FNC_AddItem;
        [USAB_Helm_CPT_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[35],
        [//M1928A1
        [USAB_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1A1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [USAB_Vest_M1T],
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
    case "USAB42Oct_C2" : {
        [USAB_UniK_LT] call FNC_AddItem;
        [USAB_Helm_LT_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[35],
        [//M1928A1
        [USAB_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1A1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [USAB_Vest_M1T],
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
    case "USAB42Oct_CSGT" : {
        [USAB_UniK_SGT] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
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
    case "USAB42Oct_CRTO" : {
        [USAB_UniK_CPL] call FNC_AddItem;
        [USAB_BP_Radio] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
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
    case "USAB42Oct_PC" : {
        [USAB_UniK_LT] call FNC_AddItem;
        [USAB_Helm_2LT_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[35],
        [//M1928A1
        [USAB_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1A1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [USAB_Vest_M1T],
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
    case "USAB42Oct_PSGT" : {
        [USAB_UniK_SGT] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
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
    case "USAB42Oct_Mess" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
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
    case "USAB42Oct_Med" : {
        [USAB_UniK_Med] call FNC_AddItem;
        [USAB_Vest_Med] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_Med_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
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
        [//M1A1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
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
    case "USAB42Oct_SL" : {
        [USAB_UniK_SGT] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[35],
        [//M1928A1
        [USAB_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,5,"vest"]
        ],[25],
        [//M1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[20],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1A1 Thompson
        [USAB_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_1,5,"vest"]
        ],[5],
        [//M1928
        [USAB_Vest_M1T],
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
    case "USAB42Oct_S2" : {
        [USAB_UniK_CPL] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
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
    case "USAB42Oct_Scout" : {
        [//Uni
        [
        [USAB_UniK_PFC]
        ],[50],
        [
        [USAB_UniK_PVT]
        ],[50]
        ] call FNC_AddItemRandomPercent;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "USAB42Oct_MG" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_Vest_MGA] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    case "USAB42Oct_MGA" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USAB42Oct_MGAB" : {
        [//Uniform
        [//PFC
        [USAB_UniK_PFC]
        ],[90],
        [//PVT
        [USAB_UniK_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
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

    //Automatic Rifleman
    case "USAB42Oct_AR" : {
        [USAB_UniK_CPL] call FNC_AddItem;
        [USAB_Vest_BAR] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

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
    case "USAB42Oct_AAR" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
        [US_Mag_BAR,10] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USAB42Oct_ARB" : {
        [//Uniform
        [//PFC
        [USAB_UniK_PFC]
        ],[90],
        [//PVT
        [USAB_UniK_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
        [US_Mag_BAR,15] call FNC_AddItem;
    };

    //Rifleman
    case "USAB42Oct_Rif" : {
        [//Uniform
        [//PFC
        [USAB_UniK_PFC]
        ],[90],
        [//PVT
        [USAB_UniK_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USAB42Oct_MGTL" : {
        [USAB_UniK_CPL] call FNC_AddItem;
        [USAB_Vest_M1G] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    };

//Mortar Team

    //Mortar Team Leader
    case "USAB42Oct_MortTL" : {
        [USAB_UniK_CPL] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,4] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "USAB42Oct_MortG" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_Vest_Mort] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    case "USAB42Oct_MortA" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_Vest_Mort] call FNC_AddItem;
        [USAB_BP_MG] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    case "USAB42Oct_MortAB" : {
        [//Uniform
        [//PFC
        [USAB_UniK_PFC]
        ],[90],
        [//PVT
        [USAB_UniK_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_Vest_M1G_Gren] call FNC_AddItem;
        [USAB_BP_r] call FNC_AddItemRandom;
        [USAB_Helm_r] call FNC_AddItemRandom;
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
    case "USAB42Oct_BzkaTL" : {
        [USAB_UniK_CPL] call FNC_AddItem;
        [USAB_BP_AT] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
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
    case "USAB42Oct_BzkaG" : {
        [USAB_UniK_PFC] call FNC_AddItem;
        [USAB_BP_AT] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[20],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1A1 Carbine
        [USAB_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1A1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M1903A3
        [USAB_Vest_M1G],
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
    case "USAB42Oct_BzkaAB" : {
        [//Uniform
        [//PFC
        [USAB_UniK_PFC]
        ],[90],
        [//PVT
        [USAB_UniK_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USAB_BP_AT] call FNC_AddItem;
        [USAB_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Primary Weapon
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[27],
        [//M1 Garand
        [USAB_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[26],
        [//M1903A1
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[14],
        [//M1903A3
        [USAB_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[6]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };