// Info: British Army 1941 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	Platoon
[this,"UKEsx41Jan_Lt"] call FNC_GearScript;			Lieutenant
[this,"UKEsx41Jan_Sgt"] call FNC_GearScript;		Sergeant
[this,"UKEsx41Jan_Med"] call FNC_GearScript;		Medic
[this,"UKEsx41Jan_Sig"] call FNC_GearScript;		Signaller
[this,"UKEsx41Jan_LMortG"] call FNC_GearScript;		Light Mortar Gunner
[this,"UKEsx41Jan_LMortA"] call FNC_GearScript;		Light Mortar Assistant
[this,"UKEsx41Jan_Cpl"] call FNC_GearScript;		Corporal
[this,"UKEsx41Jan_LCpl"] call FNC_GearScript;		Lance Corporal
[this,"UKEsx41Jan_AR"] call FNC_GearScript;			Bren Gunner
[this,"UKEsx41Jan_AAR"] call FNC_GearScript;		Bren Gun Assistant
[this,"UKEsx41Jan_AAB"] call FNC_GearScript;		Bren Gun Ammo Bearer
[this,"UKEsx41Jan_Rif"] call FNC_GearScript;		Rifleman

	Weapons Teams
[this,"UKEsx41Jan_MGTL"] call FNC_GearScript;		Machine Gun Team Leader
[this,"UKEsx41Jan_MG"] call FNC_GearScript;			Machine Gunner
[this,"UKEsx41Jan_MGA"] call FNC_GearScript;		Machine Gun Assistant
[this,"UKEsx41Jan_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer

[this,"UKEsx41Jan_MortTL"] call FNC_GearScript;		Mortar Team Leader
[this,"UKEsx41Jan_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"UKEsx41Jan_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"UKEsx41Jan_MortAB"] call FNC_GearScript;		Mortar Ammo Bearer

[this,"UKEsx41Jan_ATRTL"] call FNC_GearScript;		Boys AT Rifle Team Leader
[this,"UKEsx41Jan_ATRG"] call FNC_GearScript;		Boys AT Rifle Gunner
[this,"UKEsx41Jan_ATRAB"] call FNC_GearScript;		Boys AT Rifle Ammo Bearer

	Vehicle Crew
[this,"UKEsx41Jan_VCom"] call FNC_GearScript;		Tank Commander
[this,"UKEsx41Jan_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Platoon

	//Lieutenant
	case "UKEsx41Jan_Lt" : {
		[UK_UniEsx_Lt] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Sergeant
	case "UKEsx41Jan_Sgt" : {
		[UK_UniEsx_Sgt] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Primary Weapon
		[US_Mag_M1T_2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Mag_M1T_2,6,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
		[US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

	//Medic
	case "UKEsx41Jan_Med" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		UK_medic_equipment;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Signaller
	case "UKEsx41Jan_Sig" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK_Radio] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[UK_Radio] call FNC_AddItem;
		_unit assignItem UK_Radio;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Light Mortar Gunner
	case "UKEsx41Jan_LMortG" : {
		[UK_UniEsx_LCpl] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_ace_rangetable] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[US_Weap_MortB] call FNC_AddItem;
		[US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
	};

	//Light Mortar Assistant
	case "UKEsx41Jan_LMortA" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_ace_rangetable] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[US_Weap_MortT] call FNC_AddItem;
		[US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
	};

//Squad

	//Corporal
	case "UKEsx41Jan_Cpl" : {
		[UK_UniEsx_Cpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[US_Mag_M1T_2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Mag_M1T_2,6,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
	};

	//Lance Corporal
	case "UKEsx41Jan_LCpl" : {
		[UK_UniEsx_LCpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[US_Mag_M1T_2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Mag_M1T_2,6,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
	};

	//Bren Gunner
	case "UKEsx41Jan_AR" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_Bren,1] call FNC_AddItem;
		[UK_Weap_Bren] call FNC_AddItem;
		[UK_Mag_Bren,10,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
	};

	//Bren Gun Assistant
	case "UKEsx41Jan_AAR" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[UK_Bino] call FNC_AddItem;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
		[UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
	};

	//Bren Gun Ammo Bearer
	case "UKEsx41Jan_AAB" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
	};

	//Rifleman
	case "UKEsx41Jan_Rif" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
	};

//Machine Gun Team

	//Machine Gun Team Leader
	case "UKEsx41Jan_MGTL" : {
		[UK_UniEsx_LCpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Machine Gunner
	case "UKEsx41Jan_MG" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestG_Bren] call FNC_AddItem;
		[UK_Weap_HMG_G] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
	};

	//Machine Gun Assistant
	case "UKEsx41Jan_MGA" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestG_Bren] call FNC_AddItem;
		[UK_Weap_HMG_T] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
	};

	//Machine Gun Ammo Bearer
	case "UKEsx41Jan_MGAB" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
	};

//Mortar Team

	//Mortar Team Leader
	case "UKEsx41Jan_MortTL" : {
		[UK_UniEsx_Cpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

	//Mortar Gunner
	case "UKEsx41Jan_MortG" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		[Rus_Weap_MortB] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Assistant
	case "UKEsx41Jan_MortA" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		[Rus_Weap_MortT] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		[GEN_ace_maptools,1] call FNC_AddItem;
	};

	//Mortar Ammo Bearer
	case "UKEsx41Jan_MortAB" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

//Boys AT Rifle Team

	//Boys AT Rifle Team Leader
	case "UKEsx41Jan_ATRTL" : {
		[UK_UniEsx_Cpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[90],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Boys AT Rifle Gunner
	case "UKEsx41Jan_ATRG" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Primary Weapon
		[UK_Mag_Boys,1] call FNC_AddItem;
		[UK_Weap_Boys] call FNC_AddItem;
		[UK_Mag_Boys,20] call FNC_AddItem;
	};

	//Boys AT Rifle Ammo Bearer
	case "UKEsx41Jan_ATRAB" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[90],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Commander
	case "UKEsx41Jan_VCom" : {
		[UK_UniEsx_Sgt] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Primary Weapon
		[US_Mag_M1T_2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Mag_M1T_2,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
	};

	//Tank Crew
	case "UKEsx41Jan_VCrew" : {
		[UK_UniEsx_Pte] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[US_Mag_M1T_2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Mag_M1T_2,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[GEN_Toolkit] call FNC_AddItem;
	};