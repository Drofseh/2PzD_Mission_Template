// Info: United States Marine Corps 1945 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USMC45Jan_CC"] call FNC_GearScript;          Company Commander
[this,"USMC45Jan_C2"] call FNC_GearScript;          Company Executive Officer
[this,"USMC45Jan_CSGT"] call FNC_GearScript;        Company First Sergeant
[this,"USMC45Jan_CRTO"] call FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this,"USMC45Jan_PC"] call FNC_GearScript;          Platoon Commander
[this,"USMC45Jan_PSGT"] call FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this,"USMC45Jan_PRTO"] call FNC_GearScript;        Platoon Radio Operator
[this,"USMC45Jan_Mess"] call FNC_GearScript;        Messenger
[this,"USMC45Jan_Med"] call FNC_GearScript;         Medic

    //Squad
[this,"USMC45Jan_SL"] call FNC_GearScript;          Squad Leader
[this,"USMC45Jan_S2"] call FNC_GearScript;          Assistant Squad Leader
[this,"USMC45Jan_Scout"] call FNC_GearScript;       Scout
[this,"USMC45Jan_AR"] call FNC_GearScript;          Automatic Rifleman
[this,"USMC45Jan_AAR"] call FNC_GearScript;         Assistant Automatic Rifleman
[this,"USMC45Jan_ARB"] call FNC_GearScript;         AR Ammo Bearer
[this,"USMC45Jan_Rif"] call FNC_GearScript;         Rifleman

    //Weapons Teams
[this,"USMC45Jan_MGTL"] call FNC_GearScript;        Machine Gun Team Leader
[this,"USMC45Jan_MG"] call FNC_GearScript;          Machine Gunner
[this,"USMC45Jan_MGA"] call FNC_GearScript;         Assistant Machine Gunner
[this,"USMC45Jan_MGAB"] call FNC_GearScript;        Machine Gun Ammo Bearer

[this,"USMC45Jan_MortTL"] call FNC_GearScript;      Mortar Team Leader
[this,"USMC45Jan_MortG"] call FNC_GearScript;       Mortar Gunner
[this,"USMC45Jan_MortA"] call FNC_GearScript;       Mortar Assistant
[this,"USMC45Jan_MortAB"] call FNC_GearScript;      Mortar Ammo Bearer

[this,"USMC45Jan_BzkaTL"] call FNC_GearScript;      Bazooka Team Leader
[this,"USMC45Jan_BzkaG"] call FNC_GearScript;       Bazooka Gunner
[this,"USMC45Jan_BzkaAB"] call FNC_GearScript;      Bazooka Ammo Bearer

    //Tank Crew
[this,"USMC45Jan_VOff"] call FNC_GearScript;        Tank Officer
[this,"USMC45Jan_VCom"] call FNC_GearScript;        Tank Commander
[this,"USMC45Jan_VCrew"] call FNC_GearScript;       Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USMC45Jan_CC" : {
        [USMC_Uni_CPT] call FNC_AddItem;
        [USMC_Helm_CPT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[30],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[21],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[10],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"]
        ],[3],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M3A1 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3A1GG],
        [US_Mag_M3GG,5,"vest"]
        ],[1],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company Executive Officer
    case "USMC45Jan_C2" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Helm_LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[30],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[21],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[10],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"]
        ],[3],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M3A1 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3A1GG],
        [US_Mag_M3GG,5,"vest"]
        ],[1],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Company First Sergeant
    case "USMC45Jan_CSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[17],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[9],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
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
    case "USMC45Jan_CRTO" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [US_BP_Radio] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        [GEN_Radio_BP,"backpack"] call FNC_AddItem;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[17],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[9],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Radio_HH,"vest"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "USMC45Jan_PC" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Helm_2LT] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[30],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[21],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[10],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"]
        ],[3],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M3A1 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3A1GG],
        [US_Mag_M3GG,5,"vest"]
        ],[1],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1]
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
    case "USMC45Jan_PSGT" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[17],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[9],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,1] call FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Platoon Radio Operator
    case "USMC45Jan_PRTO" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[17],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[9],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Radio_HH,"vest"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Messenger
    case "USMC45Jan_Mess" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[17],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[9],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "USMC45Jan_Med" : {
        [USMC_Uni_Med] call FNC_AddItem;
        [USMC_Vest_Med] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

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
        ],[17],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M12 Shotgun
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[9],
        [//M2 Carbine
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        USMC_medic_equipment;
    };

//Squad

    //Squad Leader
    case "USMC45Jan_SL" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[30],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[21],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[10],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"]
        ],[3],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M3A1 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3A1GG],
        [US_Mag_M3GG,5,"vest"]
        ],[1],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USMC45Jan_S2" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[30],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[21],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[10],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"]
        ],[3],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M3A1 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3A1GG],
        [US_Mag_M3GG,5,"vest"]
        ],[1],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Scout
    case "USMC45Jan_Scout" : {
        [//Uni
        [//PFC
        [USMC_Uni_PFC]
        ],[90],
        [//PVT
        [USMC_Uni_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Automatic Rifleman
    case "USMC45Jan_AR" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_Vest_BAR] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
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
    case "USMC45Jan_AAR" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[11],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,10,"backpack"] call FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USMC45Jan_ARB" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[90],
        [//PVT
        [USMC_Uni_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[11],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [US_Mag_BAR,15,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "USMC45Jan_Rif" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[90],
        [//PVT
        [USMC_Uni_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[11],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_BAR,7,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USMC45Jan_MGTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "USMC45Jan_MG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_MGA] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
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
    case "USMC45Jan_MGA" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;
        [US_Weap_M1919A4_T] call FNC_AddItem;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[30],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[17],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[16],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[9],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250,2] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USMC45Jan_MGAB" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[90],
        [//PVT
        [USMC_Uni_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1903
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[11],
        [//M2 Carbine
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M12 Shotgun
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250,4] call FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USMC45Jan_MortTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [US_Mag_Mort_HE,4] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;
    };

    //Mortar Gunner
    case "USMC45Jan_MortG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
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
    case "USMC45Jan_MortA" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [USMC_Vest_Mort] call FNC_AddItem;
        [US_BP_MG] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
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
    case "USMC45Jan_MortAB" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[90],
        [//PVT
        [USMC_Uni_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1903
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[11],
        [//M2 Carbine
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M12 Shotgun
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Mort_HE,8] call FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "USMC45Jan_BzkaTL" : {
        [USMC_Uni_CPL] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;
        USMC_leader_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Bazooka Gunner
    case "USMC45Jan_BzkaG" : {
        [USMC_Uni_PFC] call FNC_AddItem;
        [US_BP_AT] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,1] call FNC_AddItem;
        [US_Weap_Bazoo] call FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "USMC45Jan_BzkaAB" : {
        [//Uniform
        [//PFC
        [USMC_Uni_PFC]
        ],[90],
        [//PVT
        [USMC_Uni_PVT]
        ],[10]
        ] call FNC_AddItemRandomPercent;
        [US_BP_AT] call FNC_AddItem;
        [USMC_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        USMC_default_equipment;

        [//Primary Weapon
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[25],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_1],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_2],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Weap_M1G_3],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1903
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[11],
        [//M2 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M2C,1],
        [US_Weap_M2C],
        [US_Mag_M2C,4,"vest"]
        ],[2],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
    };

//Tank Crew

    //Tank Officer
    case "USMC45Jan_VOff" : {
        [USMC_Uni_LT] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_O] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[35],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[35],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[17],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"]
        ],[5],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[5],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Commander
    case "USMC45Jan_VCom" : {
        [USMC_Uni_SGT] call FNC_AddItem;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [USMC_BP_r] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;
        US_leader_equipment;

        [//Primary Weapon
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[35],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[35],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"]
        ],[17],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"]
        ],[5],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[5],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call FNC_AddItem;
        [US_Weap_M1911] call FNC_AddItem;
        [US_Mag_M1911,3] call FNC_AddItem;
    };

    //Tank Crew
    case "USMC45Jan_VCrew" : {
        [//Uniform
        [//Cpl
        [USMC_Uni_CPL]
        ],[40],
        [//PFC
        [USMC_Uni_PFC]
        ],[55],
        [//PVT
        [USMC_Uni_PVT]
        ],[5]
        ] call FNC_AddItemRandomPercent;
        [USMC_BP_r] call FNC_AddItemRandom;
        [USMC_Helm_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        US_default_equipment;

        [//Weapon
        [//M1911 Only
        [USMC_Vest_Pistol],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[85],
        [//M3 Grease Gun & M1911
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[5],
        [//M1A1 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[3],
        [//M3A1 Grease Gun & M1911
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3A1GG],
        [US_Mag_M3GG,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1],
        [//M55 Reising & M1911
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M55],
        [US_Mag_M50_1,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1],
        [//M1 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1T],
        [US_Mag_M1T_2,1,"vest"],
        [US_Mag_M1T_1,4,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1],
        [//M1 Carbine & M1911
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1],
        [//M1928A1 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_1,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1],
        [//M1928 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_2,1],
        [US_Weap_M1928],
        [US_Mag_M1T_2,2,"vest"],
        [US_Mag_M1T_1,3,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1],
        [//M50 Reising & M1911
        [USMC_Vest_M1T],
        [US_Mag_M50_1,1],
        [US_Weap_M50],
        [US_Mag_M50_1,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };