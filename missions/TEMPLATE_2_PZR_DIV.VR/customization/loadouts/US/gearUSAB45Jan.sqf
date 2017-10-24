// Info: US Army 1945 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Company HQ
[this,"USAB45Jan_CC"] call FNC_GearScript;			Company Commander
[this,"USAB45Jan_C2"] call FNC_GearScript;			Company Executive Officer
[this,"USAB45Jan_CSGT"] call FNC_GearScript;		Company First Sergeant
[this,"USAB45Jan_CRTO"] call FNC_GearScript;		Company Radio Operator

	//Platoon HQ
[this,"USAB45Jan_PC"] call FNC_GearScript;			Platoon Commander
[this,"USAB45Jan_PSGT"] call FNC_GearScript;		Platoon Sergeant/Platoon Guide
[this,"USAB45Jan_PRTO"] call FNC_GearScript;		Radio Operator
[this,"USAB45Jan_Mess"] call FNC_GearScript;		Messenger
[this,"USAB45Jan_Med"] call FNC_GearScript;			Medic

	//Squad
[this,"USAB45Jan_SL"] call FNC_GearScript;			Squad Leader
[this,"USAB45Jan_S2"] call FNC_GearScript;			Assistant Squad Leader
[this,"USAB45Jan_Scout"] call FNC_GearScript;		Scout
[this,"USAB45Jan_MG"] call FNC_GearScript;			Machine Gunner
[this,"USAB45Jan_MGA"] call FNC_GearScript;			Assistant Machine Gunner
[this,"USAB45Jan_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer
[this,"USAB45Jan_AR"] call FNC_GearScript;			Automatic Rifleman
[this,"USAB45Jan_AAR"] call FNC_GearScript;			Assistant Automatic Rifleman
[this,"USAB45Jan_ARB"] call FNC_GearScript;			Ammo Bearer
[this,"USAB45Jan_Rif"] call FNC_GearScript;			Rifleman

	//Weapons Teams
[this,"USAB45Jan_MGTL"] call FNC_GearScript;		Machine Gun Team Leader

[this,"USAB45Jan_MortTL"] call FNC_GearScript;		Mortar Team Leader
[this,"USAB45Jan_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"USAB45Jan_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"USAB45Jan_MortAB"] call FNC_GearScript;		Mortar Ammo Bearer

[this,"USAB45Jan_BzkaTL"] call FNC_GearScript;		Bazooka Team Leader
[this,"USAB45Jan_BzkaG"] call FNC_GearScript;		Bazooka Gunner
[this,"USAB45Jan_BzkaAB"] call FNC_GearScript;		Bazooka Ammo Bearer

	//Vehicle Crew
[this,"USAB45Jan_VCom"] call FNC_GearScript;		Tank Commander
[this,"USAB45Jan_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

	//Company Commander
	case "USAB45Jan_CC" : {
		[USAB_UniG_CPT] call FNC_AddItem;
		[USAB_Helm_CPT] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[20],
		[//M3 Grease Gun
		[USAB_Vest_M1T],
		[US_Mag_M3GG,1],
		[US_Weap_M3GG],
		[US_Mag_M3GG,5,"vest"]
		],[8],
		[//M1A1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1A1T],
		[US_Mag_M1T_1,5,"vest"]
		],[7],
		[//M1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,5,"vest"]
		],[2],
		[//M1928A1
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_1,5,"vest"]
		],[2],
		[//M1928
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"]
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

	//Company Executive Officer
	case "USAB45Jan_C2" : {
		[USAB_UniG_LT] call FNC_AddItem;
		[USAB_Helm_LT] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[20],
		[//M3 Grease Gun
		[USAB_Vest_M1T],
		[US_Mag_M3GG,1],
		[US_Weap_M3GG],
		[US_Mag_M3GG,5,"vest"]
		],[8],
		[//M1A1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1A1T],
		[US_Mag_M1T_1,5,"vest"]
		],[7],
		[//M1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,5,"vest"]
		],[2],
		[//M1928A1
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_1,5,"vest"]
		],[2],
		[//M1928
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"]
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

	//Company First Sergeant
	case "USAB45Jan_CSGT" : {
		[USAB_UniG_SGT] call FNC_AddItem;
		[USAB_BP_r] call FNC_AddItemRandom;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
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
	case "USAB45Jan_CRTO" : {
		[USAB_UniG_CPL] call FNC_AddItem;
		[USAB_BP_Radio] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		[US_Radio_P] call FNC_AddItem;
		_unit assignItem US_Radio_P;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "USAB45Jan_PC" : {
		[USAB_UniG_LT] call FNC_AddItem;
		[USAB_Helm_2LT] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[20],
		[//M3 Grease Gun
		[USAB_Vest_M1T],
		[US_Mag_M3GG,1],
		[US_Weap_M3GG],
		[US_Mag_M3GG,5,"vest"]
		],[8],
		[//M1A1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1A1T],
		[US_Mag_M1T_1,5,"vest"]
		],[7],
		[//M1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,5,"vest"]
		],[2],
		[//M1928A1
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_1,5,"vest"]
		],[2],
		[//M1928
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"]
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

	//Platoon Sergeant
	case "USAB45Jan_PSGT" : {
		[USAB_UniG_SGT] call FNC_AddItem;
		[USAB_BP_r] call FNC_AddItemRandom;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
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

	//Radio Operator
	case "USAB45Jan_PRTO" : {
		[USAB_UniG_CPL] call FNC_AddItem;
		[USAB_BP_Radio] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		[US_Radio_P] call FNC_AddItem;
		_unit assignItem US_Radio_P;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Messenger
	case "USAB45Jan_Mess" : {
		[USAB_UniG_PFC] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Medic
	case "USAB45Jan_Med" : {
		[USAB_UniG_Med] call FNC_AddItem;
		[USAB_Vest_Med] call FNC_AddItem;
		[USAB_BP_r] call FNC_AddItemRandom;
		[USAB_Helm_Med_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		US_medic_equipment;
	};

//Squad

	//Squad Leader
	case "USAB45Jan_SL" : {
		[USAB_UniG_SGT] call FNC_AddItem;
		[USAB_BP_r] call FNC_AddItemRandom;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M3 Grease Gun
		[USAB_Vest_M1T],
		[US_Mag_M3GG,1],
		[US_Weap_M3GG],
		[US_Mag_M3GG,5,"vest"]
		],[31],
		[//M1A1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1A1T],
		[US_Mag_M1T_1,5,"vest"]
		],[31],
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[20],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[10],
		[//M1 Thompson
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,5,"vest"]
		],[5],
		[//M1928A1
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_1,5,"vest"]
		],[2],
		[//M1928
		[USAB_Vest_M1T],
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Assistant Squad Leader
	case "USAB45Jan_S2" : {
		[USAB_UniG_CPL] call FNC_AddItem;
		[USAB_BP_r] call FNC_AddItemRandom;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Weap_M1G_GL],
		[US_Mag_M1G,10,"vest"],
		[US_Mag_RGrn_HE,10,"vest"],
		[US_Mag_RGrn_AT,2,"vest"]
		],[97],
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[1],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[1],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Scout
	case "USAB45Jan_Scout" : {
		[//Uni
		[
		[USAB_UniG_PFC]
		],[50],
		[
		[USAB_UniG_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USAB_BP_r] call FNC_AddItemRandom;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Machine Gunner
	case "USAB45Jan_MG" : {
		[USAB_UniG_PFC] call FNC_AddItem;
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
	case "USAB45Jan_MGA" : {
		[USAB_UniG_PFC] call FNC_AddItem;
		[USAB_BP_MG] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		[US_Weap_M1919A4_T] call FNC_AddItem;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_M1919_250,2] call FNC_AddItem;
	};

	//Machine Gun Ammo Bearer
	case "USAB45Jan_MGAB" : {
		[//Uniform
		[//PFC
		[USAB_UniG_PFC]
		],[90],
		[//PVT
		[USAB_UniG_PVT]
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
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[99],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_M1919_250,4] call FNC_AddItem;
	};

	//Automatic Rifleman
	case "USAB45Jan_AR" : {
		[USAB_UniG_CPL] call FNC_AddItem;
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
	case "USAB45Jan_AAR" : {
		[USAB_UniG_PFC] call FNC_AddItem;
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
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[99],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,10] call FNC_AddItem;
	};

	//Automatic Rifle Ammo Bearer
	case "USAB45Jan_ARB" : {
		[//Uniform
		[//PFC
		[USAB_UniG_PFC]
		],[90],
		[//PVT
		[USAB_UniG_PVT]
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
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[99],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[US_Mag_BAR,15] call FNC_AddItem;
	};

	//Rifleman
	case "USAB45Jan_Rif" : {
		[//Uniform
		[//PFC
		[USAB_UniG_PFC]
		],[90],
		[//PVT
		[USAB_UniG_PVT]
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
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[99],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,2] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,2] call FNC_AddItem;
	};

//Machine Gun Team

	//Machine Gun Team Leader
	case "USAB45Jan_MGTL" : {
		[USAB_UniG_CPL] call FNC_AddItem;
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
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[99],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

//Mortar Team

	//Mortar Team Leader
	case "USAB45Jan_MortTL" : {
		[USAB_UniG_CPL] call FNC_AddItem;
		[USAB_BP_r] call FNC_AddItemRandom;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_Mort_HE,4] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
	};

	//Mortar Gunner
	case "USAB45Jan_MortG" : {
		[USAB_UniG_PFC] call FNC_AddItem;
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
	case "USAB45Jan_MortA" : {
		[USAB_UniG_PFC] call FNC_AddItem;
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
	case "USAB45Jan_MortAB" : {
		[//Uniform
		[//PFC
		[USAB_UniG_PFC]
		],[90],
		[//PVT
		[USAB_UniG_PVT]
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
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[99],
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Mort_HE,9] call FNC_AddItem;
	};

//Bazooka Team

	//Bazooka Team Leader
	case "USAB45Jan_BzkaTL" : {
		[USAB_UniG_CPL] call FNC_AddItem;
		[USAB_BP_AT] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Bazooka Gunner
	case "USAB45Jan_BzkaG" : {
		[USAB_UniG_PFC] call FNC_AddItem;
		[USAB_BP_AT] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1A1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1A1C],
		[US_Mag_M1C,4,"vest"]
		],[60],
		[//M1 Carbine
		[USAB_Vest_M1C],
		[US_Mag_M1C,1],
		[US_Weap_M1C],
		[US_Mag_M1C,4,"vest"]
		],[30],
		[//M1 Garand
		[USAB_Vest_M1G],
		[US_Mag_M1G,1],
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[9],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Bazoo,1] call FNC_AddItem;
		[US_Weap_Bazoo] call FNC_AddItem;
		[US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
	};

	//Bazooka Ammo Bearer
	case "USAB45Jan_BzkaAB" : {
		[//Uniform
		[//PFC
		[USAB_UniG_PFC]
		],[90],
		[//PVT
		[USAB_UniG_PVT]
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
		[US_Weap_M1G],
		[US_Mag_M1G,10,"vest"]
		],[99],
		[//M1903
		[USAB_Vest_M1G],
		[US_Mag_M1903,1],
		[US_Weap_M1903A3],
		[US_Mag_M1903,20,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Bazoo,3,"backpack"] call FNC_AddItem;
	};