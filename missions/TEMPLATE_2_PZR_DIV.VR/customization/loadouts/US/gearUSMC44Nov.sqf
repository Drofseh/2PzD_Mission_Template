// Info: United States Marine Corps 1944 November Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Company HQ
[this,"USMC44Nov_CC"] call FNC_GearScript;			Company Commander
[this,"USMC44Nov_C2"] call FNC_GearScript;			Company Executive Officer
[this,"USMC44Nov_CSGT"] call FNC_GearScript;		Company First Sergeant
[this,"USMC44Nov_CRTO"] call FNC_GearScript;		Company Radio Operator

	//Platoon HQ
[this,"USMC44Nov_PC"] call FNC_GearScript;			Platoon Commander
[this,"USMC44Nov_PSGT"] call FNC_GearScript;		Platoon Sergeant/Platoon Guide
[this,"USMC44Nov_PRTO"] call FNC_GearScript;		Platoon Radio Operator
[this,"USMC44Nov_Mess"] call FNC_GearScript;		Messenger
[this,"USMC44Nov_Med"] call FNC_GearScript;			Medic

	//Squad
[this,"USMC44Nov_SL"] call FNC_GearScript;			Squad Leader
[this,"USMC44Nov_S2"] call FNC_GearScript;			Assistant Squad Leader
[this,"USMC44Nov_Scout"] call FNC_GearScript;		Scout
[this,"USMC44Nov_AR"] call FNC_GearScript;			Automatic Rifleman
[this,"USMC44Nov_AAR"] call FNC_GearScript;			Assistant Automatic Rifleman
[this,"USMC44Nov_ARB"] call FNC_GearScript;			AR Ammo Bearer
[this,"USMC44Nov_Rif"] call FNC_GearScript;			Rifleman

	//Weapons Teams
[this,"USMC44Nov_MGTL"] call FNC_GearScript;		Machine Gun Team Leader
[this,"USMC44Nov_MG"] call FNC_GearScript;			Machine Gunner
[this,"USMC44Nov_MGA"] call FNC_GearScript;			Assistant Machine Gunner
[this,"USMC44Nov_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer

[this,"USMC44Nov_MortTL"] call FNC_GearScript;		Mortar Team Leader
[this,"USMC44Nov_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"USMC44Nov_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"USMC44Nov_MortAB"] call FNC_GearScript;		Mortar Ammo Bearer

[this,"USMC44Nov_BzkaTL"] call FNC_GearScript;		Bazooka Team Leader
[this,"USMC44Nov_BzkaG"] call FNC_GearScript;		Bazooka Gunner
[this,"USMC44Nov_BzkaAB"] call FNC_GearScript;		Bazooka Ammo Bearer

	//Vehicle Crew
[this,"USMC44Nov_VOff"] call FNC_GearScript;		Tank Officer
[this,"USMC44Nov_VCom"] call FNC_GearScript;		Tank Commander
[this,"USMC44Nov_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

	//Company Commander
	case "USMC44Nov_CC" : {
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
		],[19],
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
		],[7],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
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
	case "USMC44Nov_C2" : {
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
		],[19],
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
		],[7],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
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
	case "USMC44Nov_CSGT" : {
		[USMC_Uni_SGT] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[51],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[13],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[10],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
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
	case "USMC44Nov_CRTO" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[US_BP_Radio] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		[US_Radio_C] call FNC_AddItem;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[56],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[24],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[10],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "USMC44Nov_PC" : {
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
		],[19],
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
		],[7],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
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
	case "USMC44Nov_PSGT" : {
		[USMC_Uni_SGT] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[51],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[13],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[10],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
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
	case "USMC44Nov_PRTO" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		[US_Radio_C] call FNC_AddItem;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[51],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[13],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[10],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Messenger
	case "USMC44Nov_Mess" : {
		[USMC_Uni_PFC] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[51],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[13],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[10],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Medic
	case "USMC44Nov_Med" : {
		[USMC_Uni_Med] call FNC_AddItem;
		[USMC_Vest_Med] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[51],
		[//M1 Carbine
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[13],
		[//M12 Shotgun
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[10],
		[//M2 Carbine
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		USMC_medic_equipment;
	};

//Squad

	//Squad Leader
	case "USMC44Nov_SL" : {
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
		],[19],
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
		],[7],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
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
	case "USMC44Nov_S2" : {
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
		],[19],
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
		],[7],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
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
	case "USMC44Nov_Scout" : {
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
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[55],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[14],
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
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Automatic Rifleman
	case "USMC44Nov_AR" : {
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
	case "USMC44Nov_AAR" : {
		[USMC_Uni_PFC] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[58],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[15],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[1],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,10,"backpack"] call FNC_AddItem;
	};

	//Automatic Rifle Ammo Bearer
	case "USMC44Nov_ARB" : {
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
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[58],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[15],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[1],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[US_Mag_BAR,15,"backpack"] call FNC_AddItem;
	};

	//Rifleman
	case "USMC44Nov_Rif" : {
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
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[58],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[15],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[1],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,2] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,7,"backpack"] call FNC_AddItem;
	};

//Machine Gun Team

	//Machine Gun Team Leader
	case "USMC44Nov_MGTL" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[55],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[14],
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
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_M1919_250,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Machine Gunner
	case "USMC44Nov_MG" : {
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
	case "USMC44Nov_MGA" : {
		[USMC_Uni_PFC] call FNC_AddItem;
		[US_BP_MG] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		[US_Weap_M1919A4_T] call FNC_AddItem;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[51],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[13],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[10],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_M1919_250,2] call FNC_AddItem;
	};

	//Machine Gun Ammo Bearer
	case "USMC44Nov_MGAB" : {
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
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[58],
		[//M1 Carbine
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[15],
		[//M12 Shotgun
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[1],
		[//M2 Carbine
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_M1919_250,4] call FNC_AddItem;
	};

//Mortar Team

	//Mortar Team Leader
	case "USMC44Nov_MortTL" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[55],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[14],
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
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_Mort_HE,4] call FNC_AddItem;
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Gunner
	case "USMC44Nov_MortG" : {
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
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Assistant
	case "USMC44Nov_MortA" : {
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
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Ammo Bearer
	case "USMC44Nov_MortAB" : {
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
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[58],
		[//M1 Carbine
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[15],
		[//M12 Shotgun
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[1],
		[//M2 Carbine
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Mort_HE,8] call FNC_AddItem;
	};

//Bazooka Team

	//Bazooka Team Leader
	case "USMC44Nov_BzkaTL" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[US_BP_AT] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[55],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[14],
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
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Bazooka Gunner
	case "USMC44Nov_BzkaG" : {
		[USMC_Uni_PFC] call FNC_AddItem;
		[US_BP_AT] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[55],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[14],
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
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Bazoo,1] call FNC_AddItem;
		[US_Weap_Bazoo] call FNC_AddItem;
		[US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
	};

	//Bazooka Ammo Bearer
	case "USMC44Nov_BzkaAB" : {
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
		[//M1 Garand
		[USMC_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[58],
		[//M1 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[25],
		[//M1903
		[USMC_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[15],
		[//M12 Shotgun
		[USMC_Vest_M1G],
		[US_Mag_M12_Buck,1],
		[US_Weap_M12],
		[US_Mag_M12_Buck,6,"vest"],
		[US_Mag_M12_Slug,1,"vest"]
		],[1],
		[//M2 Carbine
		[USMC_Vest_M1C],
		[US_Mag_M2C,1],
		[US_Weap_M2C],
		[US_Mag_M2C,4,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Officer
	case "USMC44Nov_VOff" : {
		[USMC_Uni_LT] call FNC_AddItem;
		[USMC_Helm_VCrew] call FNC_AddItem;
		[USMC_BP_O] call FNC_AddItem;
		[GEN_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
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
		],[29],
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
		],[11],
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
	case "USMC44Nov_VCom" : {
		[USMC_Uni_SGT] call FNC_AddItem;
		[USMC_Helm_VCrew] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[GEN_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
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
		],[29],
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
		],[11],
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
	case "USMC44Nov_VCrew" : {
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
		USA_default_equipment;
		
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
		],[6],
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