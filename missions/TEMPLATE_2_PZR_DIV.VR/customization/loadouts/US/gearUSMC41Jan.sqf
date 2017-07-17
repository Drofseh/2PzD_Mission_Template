// Info: United States Marine Corps 1941 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Company HQ
[this,"USMC41Jan_CC"] call FNC_GearScript;			Company Commander
[this,"USMC41Jan_C2"] call FNC_GearScript;			Company Executive Officer
[this,"USMC41Jan_CSGT"] call FNC_GearScript;		Company First Sergeant
[this,"USMC41Jan_CRTO"] call FNC_GearScript;		Company Radio Operator

	//Platoon HQ
[this,"USMC41Jan_PC"] call FNC_GearScript;			Platoon Commander
[this,"USMC41Jan_PSGT"] call FNC_GearScript;		Platoon Sergeant/Platoon Guide
[this,"USMC41Jan_Mess"] call FNC_GearScript;		Messenger
[this,"USMC41Jan_Med"] call FNC_GearScript;			Medic

	//Squad
[this,"USMC41Jan_SL"] call FNC_GearScript;			Squad Leader
[this,"USMC41Jan_S2"] call FNC_GearScript;			Assistant Squad Leader
[this,"USMC41Jan_Scout"] call FNC_GearScript;		Scout
[this,"USMC41Jan_AR"] call FNC_GearScript;			Automatic Rifleman
[this,"USMC41Jan_AAR"] call FNC_GearScript;			Assistant Automatic Rifleman
[this,"USMC41Jan_ARB"] call FNC_GearScript;			AR Ammo Bearer
[this,"USMC41Jan_Rif"] call FNC_GearScript;			Rifleman

	//Weapons Teams
[this,"USMC41Jan_MGTL"] call FNC_GearScript;		Machine Gun Team Leader
[this,"USMC41Jan_MG"] call FNC_GearScript;			Machine Gunner
[this,"USMC41Jan_MGA"] call FNC_GearScript;			Assistant Machine Gunner
[this,"USMC41Jan_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer

[this,"USMC41Jan_MortTL"] call FNC_GearScript;		Mortar Team Leader
[this,"USMC41Jan_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"USMC41Jan_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"USMC41Jan_MortAB"] call FNC_GearScript;		Mortar Ammo Bearer

	//Vehicle Crew
[this,"USMC41Jan_VOff"] call FNC_GearScript;		Tank Officer
[this,"USMC41Jan_VCom"] call FNC_GearScript;		Tank Commander
[this,"USMC41Jan_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

	//Company Commander
	case "USMC41Jan_CC" : {
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
	case "USMC41Jan_C2" : {
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
	case "USMC41Jan_CSGT" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
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
	case "USMC41Jan_CRTO" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[USMC_Vest_M1G] call FNC_AddItem;
		[US_BP_Radio] call FNC_AddItem;
		[USMC_Helm_e_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		[US_Radio_C] call FNC_AddItem;
		
		//Primary Weapon
		[US_Mag_M1903,1] call FNC_AddItem;
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "USMC41Jan_PC" : {
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
		],[70],
		[//M1928 Thompson
		[US_Mag_M1T_2,1],
		[US_Weap_M1928],
		[US_Mag_M1T_2,5,"vest"]
		],[30]
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
	case "USMC41Jan_PSGT" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
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
	case "USMC41Jan_Mess" : {
		[USMC_Uni_PFC] call FNC_AddItem;
		[USMC_Vest_M1G] call FNC_AddItem;
		[USMC_Helm_e_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[US_Mag_M1903,1] call FNC_AddItem;
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Medic
	case "USMC41Jan_Med" : {
		[USMC_Uni_Med] call FNC_AddItem;
		[USMC_Vest_Med] call FNC_AddItem;
		[USMC_BP_M1928] call FNC_AddItem;
		[USMC_Helm_Med_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[US_Mag_M1903,1] call FNC_AddItem;
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		USMC_medic_equipment;
	};

//Squad

	//Squad Leader
	case "USMC41Jan_SL" : {
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
		],[70],
		[//M1928 Thompson
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
	case "USMC41Jan_S2" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[USMC_Vest_M1G] call FNC_AddItem;
		[USMC_BP_M1928] call FNC_AddItem;
		[USMC_Helm_e_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[US_Mag_M1903,1] call FNC_AddItem;
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Scout
	case "USMC41Jan_Scout" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Automatic Rifleman
	case "USMC41Jan_AR" : {
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
	case "USMC41Jan_AAR" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,10,"backpack"] call FNC_AddItem;
	};

	//Automatic Rifle Ammo Bearer
	case "USMC41Jan_ARB" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[US_Mag_BAR,15,"backpack"] call FNC_AddItem;
	};

	//Rifleman
	case "USMC41Jan_Rif" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,2] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_BAR,2,"backpack"] call FNC_AddItem;
	};

//Machine Gun Team

	//Machine Gun Team Leader
	case "USMC41Jan_MGTL" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[US_Mag_M1919_250,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Machine Gunner
	case "USMC41Jan_MG" : {
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
	case "USMC41Jan_MGA" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20] call FNC_AddItem;
		
		//Extra
		[US_Mag_M1919_250,2] call FNC_AddItem;
	};

	//Machine Gun Ammo Bearer
	case "USMC41Jan_MGAB" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[US_Mag_M1919_250,4] call FNC_AddItem;
	};

//Mortar Team

	//Mortar Team Leader
	case "USMC41Jan_MortTL" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[US_Mag_Mort_HE,4] call FNC_AddItem;
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Gunner
	case "USMC41Jan_MortG" : {
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
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Assistant
	case "USMC41Jan_MortA" : {
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
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Ammo Bearer
	case "USMC41Jan_MortAB" : {
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
		[US_Weap_M1903A3] call FNC_AddItem;
		[US_Mag_M1903,20,"vest"] call FNC_AddItem;
		
		//Extra
		[US_Mag_Mort_HE,8] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Officer
	case "USMC41Jan_VOff" : {
		[USMC_Uni_LT] call FNC_AddItem;
		[USMC_Vest_Pistol] call FNC_AddItem;
		[USMC_Helm_VCrew] call FNC_AddItem;
		[USMC_BP_O] call FNC_AddItem;
		[GEN_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Secondary Weapon
		[US_Mag_M1911,1] call FNC_AddItem;
		[US_Weap_M1911] call FNC_AddItem;
		[US_Mag_M1911,3] call FNC_AddItem;
	};

	//Tank Commander
	case "USMC41Jan_VCom" : {
		[USMC_Uni_SGT] call FNC_AddItem;
		[USMC_Vest_M1T] call FNC_AddItem;
		[USMC_Helm_VCrew] call FNC_AddItem;
		[USMC_BP_M1928] call FNC_AddItem;
		[GEN_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		[//Primary Weapon
		[//M1928A1 Thompson
		[US_Mag_M1T_2,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_2,5,"vest"]
		],[70],
		[//M1928 Thompson
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
	case "USMC41Jan_VCrew" : {
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
		[USMC_BP_M1928] call FNC_AddItem;
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
		],[90],
		[//M1928A1 Thompson & M1911
		[USMC_Vest_M1T],
		[US_Mag_M1T_2,1],
		[US_Weap_M1928A1],
		[US_Mag_M1T_2,5,"vest"],
		[US_Mag_M1911,1],
		[US_Weap_M1911],
		[US_Mag_M1911,3]
		],[7],
		[//M1928 Thompson & M1911
		[USMC_Vest_M1T],
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