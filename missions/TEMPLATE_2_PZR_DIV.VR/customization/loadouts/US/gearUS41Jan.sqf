// Info: US Army 1941 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Company HQ
[this,"US41Jan_CC"] call FNC_GearScript;		Company Commander
[this,"US41Jan_C2"] call FNC_GearScript;		Company Executive Officer
[this,"US41Jan_CSGT"] call FNC_GearScript;		Company First Sergeant
[this,"US41Jan_CRTO"] call FNC_GearScript;		Company Radio Operator

	//Platoon HQ
[this,"US41Jan_PC"] call FNC_GearScript;		Platoon Commander
[this,"US41Jan_PSGT"] call FNC_GearScript;		Platoon Sergeant/Platoon Guide
[this,"US41Jan_Mess"] call FNC_GearScript;		Messenger
[this,"US41Jan_Med"] call FNC_GearScript;		Medic

	//Squad
[this,"US41Jan_SL"] call FNC_GearScript;		Squad Leader
[this,"US41Jan_S2"] call FNC_GearScript;		Assistant Squad Leader
[this,"US41Jan_Scout"] call FNC_GearScript;		Scout
[this,"US41Jan_AR"] call FNC_GearScript;		Automatic Rifleman
[this,"US41Jan_AAR"] call FNC_GearScript;		Assistant Automatic Rifleman
[this,"US41Jan_ARB"] call FNC_GearScript;		Ammo Bearer
[this,"US41Jan_Rif"] call FNC_GearScript;		Rifleman

	//Weapons Teams
[this,"US41Jan_MGTL"] call FNC_GearScript;		Machine Gun Team Leader
[this,"US41Jan_MG"] call FNC_GearScript;		Machine Gunner
[this,"US41Jan_MGA"] call FNC_GearScript;		Assistant Machine Gunner
[this,"US41Jan_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer

[this,"US41Jan_MortTL"] call FNC_GearScript;	Mortar Team Leader
[this,"US41Jan_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"US41Jan_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"US41Jan_MortAB"] call FNC_GearScript;	Mortar Ammo Bearer

	//Tank Crew
[this,"US41Jan_VCom"] call FNC_GearScript;		Tank Commander
[this,"US41Jan_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

	//Company Commander
	case "US41Jan_CC" : {
		[US_Uni_CPT] call FNC_AddItem;
		[US_Vest_M1T] call FNC_AddItem;
		[US_Helm_CPT] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1928A1
		[US_Mag_M1T_2,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_2,5,"vest"]
		],[70],
		[//M1928
		[US_Mag_M1T_2,1],
		[US_Weap_M1928],
		[US_Mag_M1T_2,5,"vest"]
		],[30]
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
	case "US41Jan_C2" : {
		[US_Uni_LT] call FNC_AddItem;
		[US_Vest_M1T] call FNC_AddItem;
		[US_Helm_LT] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1928A1
		[US_Mag_M1T_2,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_2,5,"vest"]
		],[70],
		[//M1928
		[US_Mag_M1T_2,1],
		[US_Weap_M1928],
		[US_Mag_M1T_2,5,"vest"]
		],[30]
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
	case "US41Jan_CSGT" : {
		[US_Uni_SGT] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
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
	case "US41Jan_CRTO" : {
		[US_Uni_CPL] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_Radio] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		[US_Radio_C] call FNC_AddItem;
		_unit assignItem US_Radio_C;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "US41Jan_PC" : {
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
		],[70],
		[//M1928
		[US_Mag_M1T_2,1],
		[US_Weap_M1928],
		[US_Mag_M1T_2,5,"vest"]
		],[30]
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
	case "US41Jan_PSGT" : {
		[US_Uni_SGT] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
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
	case "US41Jan_Mess" : {
		[US_Uni_PFC] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Medic
	case "US41Jan_Med" : {
		[US_Uni_Med] call FNC_AddItem;
		[US_Vest_Med] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_Med_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		US_medic_equipment;
	};

//Squad

	//Squad Leader
	case "US41Jan_SL" : {
		[US_Uni_SGT] call FNC_AddItem;
		[US_Vest_M1T] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1928A1
		[US_Mag_M1T_2,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_2,5,"vest"]
		],[70],
		[//M1928
		[US_Mag_M1T_2,1],
		[US_Weap_M1928],
		[US_Mag_M1T_2,5,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Assistant Squad Leader
	case "US41Jan_S2" : {
		[US_Uni_CPL] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Scout
	case "US41Jan_Scout" : {
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
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Automatic Rifleman
	case "US41Jan_AR" : {
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
	case "US41Jan_AAR" : {
		[US_Uni_PFC] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,10,"backpack"] call FNC_AddItem;
	};

	//Automatic Rifle Ammo Bearer
	case "US41Jan_ARB" : {
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
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[US_Mag_BAR,15,"backpack"] call FNC_AddItem;
	};

	//Rifleman
	case "US41Jan_Rif" : {
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
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,2] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,2,"backpack"] call FNC_AddItem;
	};

//Machine Gun Team

	//Machine Gun Team Leader
	case "US41Jan_MGTL" : {
		[US_Uni_CPL] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_M1919_250,2] call FNC_AddItem;
	};

	//Machine Gunner
	case "US41Jan_MG" : {
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
	case "US41Jan_MGA" : {
		[US_Uni_PFC] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_MG] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		[US_Weap_M1919A4_T] call FNC_AddItem;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_M1919_250,2] call FNC_AddItem;
	};

	//Machine Gun Ammo Bearer
	case "US41Jan_MGAB" : {
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
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_M1919_250,4] call FNC_AddItem;
	};

//Mortar Team

	//Mortar Team Leader
	case "US41Jan_MortTL" : {
		[US_Uni_CPL] call FNC_AddItem;
		[US_Vest_M1G] call FNC_AddItem;
		[US_BP_M1928] call FNC_AddItem;
		[US_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		US_default_equipment;
		US_leader_equipment;
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_Mort_HE,5] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
	};

	//Mortar Gunner
	case "US41Jan_MortG" : {
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
	case "US41Jan_MortA" : {
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
	case "US41Jan_MortAB" : {
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
		
		[//Primary Weapon
		[//M1903
		[US_Mag_M1903,1],
		[US_Weap_M1903A1],
		[US_Mag_M1903,20,"vest"]
		],[80],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_1],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_2],
		[US_Mag_M1G,10,"vest"]
		],[7],
		[//M1 Garand
		[US_Mag_M1G,1],
		[US_Weap_M1G_3],
		[US_Mag_M1G,10,"vest"]
		],[6]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[US_Mag_Mort_HE,9] call FNC_AddItem;
	};

//Tank Crew

	//Tank Commander
	case "US41Jan_VCom" : {
		[US_Uni_SGT] call FNC_AddItem;
		[US_Vest_M1T] call FNC_AddItem;
		[US_Helm_VCrew] call FNC_AddItem;
		[GEN_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		[//Primary Weapon
		[//M1928A1
		[US_Mag_M1T_2,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_2,5,"vest"]
		],[70],
		[//M1928
		[US_Mag_M1T_2,1],
		[US_Weap_M1928],
		[US_Mag_M1T_2,5,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[US_Mag_M1911,1] call FNC_AddItem;
		[US_Weap_M1911] call FNC_AddItem;
		[US_Mag_M1911,3] call FNC_AddItem;
	};
	
	//Tank Crew
	case "US41Jan_VCrew" : {
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
		],[7],
		[//M1928 & M1911
		[US_Vest_M1T],
		[US_Mag_M1T_2,1],
		[US_Weap_M1928],
		[US_Mag_M1T_2,5,"vest"],
		[US_Mag_M1911,1],
		[US_Weap_M1911],
		[US_Mag_M1911,3]
		],[3]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Toolkit] call FNC_AddItem;
	};