// Info: United States Marine Corps 1944 May Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Company HQ
[this,"USMC44May_CC"] call Olsen_FW_FNC_GearScript;          Company Commander
[this,"USMC44May_C2"] call Olsen_FW_FNC_GearScript;          Company Executive Officer
[this,"USMC44May_CSGT"] call Olsen_FW_FNC_GearScript;        Company First Sergeant
[this,"USMC44May_CRTO"] call Olsen_FW_FNC_GearScript;        Company Radio Operator

    //Platoon HQ
[this,"USMC44May_PC"] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this,"USMC44May_PSGT"] call Olsen_FW_FNC_GearScript;        Platoon Sergeant/Platoon Guide
[this,"USMC44May_PRTO"] call Olsen_FW_FNC_GearScript;        Platoon Radio Operator
[this,"USMC44May_Mess"] call Olsen_FW_FNC_GearScript;        Messenger
[this,"USMC44May_Med"] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this,"USMC44May_SL"] call Olsen_FW_FNC_GearScript;          Squad Leader
[this,"USMC44May_S2"] call Olsen_FW_FNC_GearScript;          Assistant Squad Leader
[this,"USMC44May_TL"] call Olsen_FW_FNC_GearScript;          Team Leader
[this,"USMC44May_Scout"] call Olsen_FW_FNC_GearScript;       Scout
[this,"USMC44May_AR"] call Olsen_FW_FNC_GearScript;          Automatic Rifleman
[this,"USMC44May_AAR"] call Olsen_FW_FNC_GearScript;         Assistant Automatic Rifleman
[this,"USMC44May_ARB"] call Olsen_FW_FNC_GearScript;         AR Ammo Bearer
[this,"USMC44May_Rif"] call Olsen_FW_FNC_GearScript;         Rifleman

    //Weapons Teams
[this,"USMC44May_MGTL"] call Olsen_FW_FNC_GearScript;        Machine Gun Team Leader
[this,"USMC44May_MG"] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this,"USMC44May_MGA"] call Olsen_FW_FNC_GearScript;         Assistant Machine Gunner
[this,"USMC44May_MGAB"] call Olsen_FW_FNC_GearScript;        Machine Gun Ammo Bearer

[this,"USMC44May_MortTL"] call Olsen_FW_FNC_GearScript;      Mortar Team Leader
[this,"USMC44May_MortG"] call Olsen_FW_FNC_GearScript;       Mortar Gunner
[this,"USMC44May_MortA"] call Olsen_FW_FNC_GearScript;       Mortar Assistant
[this,"USMC44May_MortAB"] call Olsen_FW_FNC_GearScript;      Mortar Ammo Bearer

[this,"USMC44May_BzkaTL"] call Olsen_FW_FNC_GearScript;      Bazooka Team Leader
[this,"USMC44May_BzkaG"] call Olsen_FW_FNC_GearScript;       Bazooka Gunner
[this,"USMC44May_BzkaAB"] call Olsen_FW_FNC_GearScript;      Bazooka Ammo Bearer

    //Tank Crew
[this,"USMC44May_VOff"] call Olsen_FW_FNC_GearScript;        Tank Officer
[this,"USMC44May_VCom"] call Olsen_FW_FNC_GearScript;        Tank Commander
[this,"USMC44May_VCrew"] call Olsen_FW_FNC_GearScript;       Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "USMC44May_CC" : {
        [USMC_Uni_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_CPT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
        ],[25],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[17],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[16],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[9],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Executive Officer
    case "USMC44May_C2" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
        ],[25],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[17],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[16],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[9],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company First Sergeant
    case "USMC44May_CSGT" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Company Radio Operator
    case "USMC44May_CRTO" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_Radio] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Radio_HH] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "USMC44May_PC" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
        ],[25],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[17],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[16],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[9],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Platoon Sergeant
    case "USMC44May_PSGT" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Platoon Radio Operator
    case "USMC44May_PRTO" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Radio_HH] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Messenger
    case "USMC44May_Mess" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "USMC44May_Med" : {
        [USMC_Uni_Med] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[20],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        USMC_Medic_Equipment;
    };

//Squad

    //Squad Leader
    case "USMC44May_SL" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

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
        ],[25],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[17],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[16],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[9],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Squad Leader
    case "USMC44May_S2" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

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
        ],[25],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[17],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[16],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[9],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Team Leader
    case "USMC44May_TL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

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
        ],[25],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[17],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[16],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[9],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Scout
    case "USMC44May_Scout" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifleman
    case "USMC44May_AR" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Primary Weapon
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem;
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Automatic Rifleman
    case "USMC44May_AAR" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[23],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Automatic Rifle Ammo Bearer
    case "USMC44May_ARB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[23],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,15,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "USMC44May_Rif" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[23],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,7,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "USMC44May_MGTL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "USMC44May_MG" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,3] call Olsen_FW_FNC_AddItem;
    };

    //Assistant Machine Gunner
    case "USMC44May_MGA" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
        [US_Weap_M1919A4_T] call Olsen_FW_FNC_AddItem;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[19],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[18],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "USMC44May_MGAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[23],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4],
        [//M12 Shotgun
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,4] call Olsen_FW_FNC_AddItem;
    };

//Mortar Team

    //Mortar Team Leader
    case "USMC44May_MortTL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [GEN_ace_rangetable,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "USMC44May_MortG" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
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
    case "USMC44May_MortA" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Mort] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;
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
    case "USMC44May_MortAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_Vest_M1G_Gren] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[23],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4],
        [//M12 Shotgun
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Mort_HE,8] call Olsen_FW_FNC_AddItem;
    };

//Bazooka Team

    //Bazooka Team Leader
    case "USMC44May_BzkaTL" : {
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;
        USMC_Leader_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Bazooka Gunner
    case "USMC44May_BzkaG" : {
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[5],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Bazooka Ammo Bearer
    case "USMC44May_BzkaAB" : {
        [
            [
                [USMC_Uni_PFC]
            ],[90],
            [
                [USMC_Uni_PVT]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USMC_Default_Equipment;

        [//Primary Weapon
        [//M1903A3
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A3],
        [US_Mag_M1903,20,"vest"]
        ],[23],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[21],
        [//M1 Garand
        [USMC_Vest_M1G],
        [US_Mag_M1G,1],
        [US_Acc_M1_Bayo,1,"uniform"],
        [US_Weap_M1G],
        [US_Mag_M1G,10,"vest"]
        ],[20],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[10],
        [//M1903A1
        [USMC_Vest_M1G],
        [US_Mag_M1903,1],
        [US_Weap_M1903A1],
        [US_Mag_M1903,20,"vest"]
        ],[4],
        [//M12 Shotgun
        [USMC_Vest_M1G],
        [US_Mag_M12_Buck00,1],
        [US_Weap_M12],
        [US_Mag_M12_Buck00,6,"vest"],
        [US_Mag_M12_Slug,1,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Tank Officer
    case "USMC44May_VOff" : {
        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        [//Primary Weapon
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[30],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[26],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[20],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[16],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[5],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    };

    //Tank Commander
    case "USMC44May_VCom" : {
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;
        US_Leader_Equipment;

        [//Primary Weapon
        [//M3 Grease Gun
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"]
        ],[30],
        [//M1A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[26],
        [//M1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"]
        ],[20],
        [//M55 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"]
        ],[16],
        [//M1 Carbine
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"]
        ],[5],
        [//M50 Reising
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"]
        ],[1],
        [//M1928A1 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1],
        [//M1928 Thompson
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    };

    //Tank Crew
    case "USMC44May_VCrew" : {
        [
            [
                [USMC_Uni_CPL]
            ],[40],
            [
                [USMC_Uni_PFC]
            ],[55],
            [
                [USMC_Uni_PVT]
            ],[5]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        US_Default_Equipment;

        [//Weapon
        [//M1911 Only
        [USMC_Vest_Pistol],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[85],
        [//M3 Grease Gun & M1911
        [USMC_Vest_M1T],
        [US_Mag_M3GG,1],
        [US_Weap_M3GG],
        [US_Mag_M3GG,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[4],
        [//M1A1 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1A1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[3],
        [//M55 Reising & M1911
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M55],
        [US_Mag_M50_20,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[2],
        [//M1 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1T],
        [US_Mag_M1T_20,1,"vest"],
        [US_Mag_M1T_30,4,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[2],
        [//M1 Carbine & M1911
        [USMC_Vest_M1C],
        [US_Mag_M1C,1],
        [US_Weap_M1C],
        [US_Mag_M1C,4,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[1],
        [//M1928A1 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_30,1],
        [US_Weap_M1928A1],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[1],
        [//M1928 Thompson & M1911
        [USMC_Vest_M1T],
        [US_Mag_M1T_20,1],
        [US_Weap_M1928],
        [US_Mag_M1T_20,2,"vest"],
        [US_Mag_M1T_30,3,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[1],
        [//M50 Reising & M1911
        [USMC_Vest_M1T],
        [US_Mag_M50_20,1],
        [US_Weap_M50],
        [US_Mag_M50_20,5,"vest"],
        [US_Mag_M1911,1],
        [US_Weap_M1911],
        [US_Mag_M1911,3,"uniform"]
        ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
