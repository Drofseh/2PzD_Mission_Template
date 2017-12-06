// Info: US Army 1942 October Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Company HQ
[this,"US42Oct_CC"] call FNC_GearScript;		Company Commander
[this,"US42Oct_C2"] call FNC_GearScript;		Company Executive Officer
[this,"US42Oct_CSGT"] call FNC_GearScript;		Company First Sergeant
[this,"US42Oct_CRTO"] call FNC_GearScript;		Company Radio Operator

	//Platoon HQ
[this,"US42Oct_PC"] call FNC_GearScript;		Platoon Commander
[this,"US42Oct_PSGT"] call FNC_GearScript;		Platoon Sergeant/Platoon Guide
[this,"US42Oct_Mess"] call FNC_GearScript;		Messenger
[this,"US42Oct_Med"] call FNC_GearScript;		Medic

	//Squad
[this,"US42Oct_SL"] call FNC_GearScript;		Squad Leader
[this,"US42Oct_S2"] call FNC_GearScript;		Assistant Squad Leader
[this,"US42Oct_Scout"] call FNC_GearScript;		Scout
[this,"US42Oct_AR"] call FNC_GearScript;		Automatic Rifleman
[this,"US42Oct_AAR"] call FNC_GearScript;		Assistant Automatic Rifleman
[this,"US42Oct_ARB"] call FNC_GearScript;		Ammo Bearer
[this,"US42Oct_Rif"] call FNC_GearScript;		Rifleman

	//Weapons Teams
[this,"US42Oct_MGTL"] call FNC_GearScript;		Machine Gun Team Leader
[this,"US42Oct_MG"] call FNC_GearScript;		Machine Gunner
[this,"US42Oct_MGA"] call FNC_GearScript;		Assistant Machine Gunner
[this,"US42Oct_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer

[this,"US42Oct_MortTL"] call FNC_GearScript;	Mortar Team Leader
[this,"US42Oct_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"US42Oct_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"US42Oct_MortAB"] call FNC_GearScript;	Mortar Ammo Bearer

[this,"US42Oct_BzkaTL"] call FNC_GearScript;	Bazooka Team Leader
[this,"US42Oct_BzkaG"] call FNC_GearScript;		Bazooka Gunner
[this,"US42Oct_BzkaAB"] call FNC_GearScript;	Bazooka Ammo Bearer

	//Tank Crew
[this,"US42Oct_VCom"] call FNC_GearScript;		Tank Commander
[this,"US42Oct_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

	//Company Commander
	case "US42Oct_CC" : {
		[US_Uni_CPT] call FNC_AddItem;
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
	case "US42Oct_C2" : {
		[US_Uni_LT] call FNC_AddItem;
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
	case "US42Oct_CSGT" : {
		[US_Uni_SGT] call FNC_AddItem;
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
	case "US42Oct_CRTO" : {
		[US_Uni_CPL] call FNC_AddItem;
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
	case "US42Oct_PC" : {
		[US_Uni_LT] call FNC_AddItem;
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
	case "US42Oct_PSGT" : {
		[US_Uni_SGT] call FNC_AddItem;
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
	case "US42Oct_Mess" : {
		[US_Uni_PFC] call FNC_AddItem;
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
	case "US42Oct_Med" : {
		[US_Uni_Med] call FNC_AddItem;
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
	case "US42Oct_SL" : {
		[US_Uni_SGT] call FNC_AddItem;
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
	case "US42Oct_S2" : {
		[US_Uni_CPL] call FNC_AddItem;
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
	case "US42Oct_Scout" : {
		[//Uni
		[
		[US_Uni_PFC]
		],[50],
		[
		[US_Uni_PVT]
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
	case "US42Oct_AR" : {
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
	case "US42Oct_AAR" : {
		[US_Uni_PFC] call FNC_AddItem;
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
	case "US42Oct_ARB" : {
		[//Uniform
		[//PFC
		[US_Uni_PFC]
		],[90],
		[//PVT
		[US_Uni_PVT]
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
	case "US42Oct_Rif" : {
		[//Uniform
		[//PFC
		[US_Uni_PFC]
		],[90],
		[//PVT
		[US_Uni_PVT]
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
	case "US42Oct_MGTL" : {
		[US_Uni_CPL] call FNC_AddItem;
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
	case "US42Oct_MG" : {
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
	case "US42Oct_MGA" : {
		[US_Uni_PFC] call FNC_AddItem;
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
	case "US42Oct_MGAB" : {
		[//Uniform
		[//PFC
		[US_Uni_PFC]
		],[90],
		[//PVT
		[US_Uni_PVT]
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
	case "US42Oct_MortTL" : {
		[US_Uni_CPL] call FNC_AddItem;
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
	case "US42Oct_MortG" : {
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
	case "US42Oct_MortA" : {
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
	case "US42Oct_MortAB" : {
		[//Uniform
		[//PFC
		[US_Uni_PFC]
		],[90],
		[//PVT
		[US_Uni_PVT]
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
	case "US42Oct_BzkaTL" : {
		[US_Uni_CPL] call FNC_AddItem;
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
	case "US42Oct_BzkaG" : {
		[US_Uni_PFC] call FNC_AddItem;
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
	case "US42Oct_BzkaAB" : {
		[//Uniform
		[//PFC
		[US_Uni_PFC]
		],[90],
		[//PVT
		[US_Uni_PVT]
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
	case "US42Oct_VCom" : {
		[US_Uni_SGT] call FNC_AddItem;
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
	case "US42Oct_VCrew" : {
		[//Uniform
		[//Cpl
		[US_Uni_CPL]
		],[40],
		[//PFC
		[US_Uni_PFC]
		],[50],
		[//PVT
		[US_Uni_PVT]
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