// Info: British Army 1944 Sept Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	Platoon
[this,"CdnBC44Sep_Lt"] call FNC_GearScript;		Lieutenant
[this,"CdnBC44Sep_Sgt"] call FNC_GearScript;		Sergeant
[this,"CdnBC44Sep_Med"] call FNC_GearScript;		Medic
[this,"CdnBC44Sep_Sig"] call FNC_GearScript;		Signaller
[this,"CdnBC44Sep_LMortG"] call FNC_GearScript;	Light Mortar Gunner
[this,"CdnBC44Sep_LMortA"] call FNC_GearScript;	Light Mortar Assistant
[this,"CdnBC44Sep_Cpl"] call FNC_GearScript;		Corporal
[this,"CdnBC44Sep_LCpl"] call FNC_GearScript;		Lance Corporal
[this,"CdnBC44Sep_AR"] call FNC_GearScript;		Bren Gunner
[this,"CdnBC44Sep_AAR"] call FNC_GearScript;		Bren Gun Assistant
[this,"CdnBC44Sep_AAB"] call FNC_GearScript;		Bren Gun Ammo Bearer
[this,"CdnBC44Sep_Rif"] call FNC_GearScript;		Rifleman

	Weapons Teams
[this,"CdnBC44Sep_MGTL"] call FNC_GearScript;		Machine Gun Team Leader
[this,"CdnBC44Sep_MG"] call FNC_GearScript;		Machine Gunner
[this,"CdnBC44Sep_MGA"] call FNC_GearScript;		Machine Gun Assistant
[this,"CdnBC44Sep_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer

[this,"CdnBC44Sep_MortTL"] call FNC_GearScript;	Mortar Team Leader
[this,"CdnBC44Sep_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"CdnBC44Sep_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"CdnBC44Sep_MortAB"] call FNC_GearScript;	Mortar Ammo Bearer

[this,"CdnBC44Sep_ATRTL"] call FNC_GearScript;		Boys AT Rifle Team Leader
[this,"CdnBC44Sep_ATRG"] call FNC_GearScript;		Boys AT Rifle Gunner
[this,"CdnBC44Sep_ATRAB"] call FNC_GearScript;		Boys AT Rifle Ammo Bearer

[this,"CdnBC44Sep_ATTL"] call FNC_GearScript;		PIAT Team Leader
[this,"CdnBC44Sep_ATG"] call FNC_GearScript;		PIAT Gunner
[this,"CdnBC44Sep_ATAB"] call FNC_GearScript;		PIAT Ammo Bearer

	Vehicle Crew
[this,"CdnBC44Sep_VCom"] call FNC_GearScript;		Tank Commander
[this,"CdnBC44Sep_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Platoon

	//Lieutenant
	case "CdnBC44Sep_Lt" : {
		[CDN_UniBCR_Lt] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Secondary Weapon
		[
		[//Webley
		[UK_Mag_Webley455,1],
		[UK_Weap_Webley455],
		[UK_Mag_Webley455,3]
		],[90],
		[//Browning Hi-Power
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Sergeant
	case "CdnBC44Sep_Sgt" : {
		[CDN_UniBCR_Sgt] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		[//Primary Weapon
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[50],
		[//M1 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,6,"vest"]
		],[25],
		[//Sten MkV
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkV],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1928 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"],
		[US_Mag_M1T_2,1,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
		[US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

	//Medic
	case "CdnBC44Sep_Med" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		UK_medic_equipment;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Signaller
	case "CdnBC44Sep_Sig" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK_Radio] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[UK_Radio] call FNC_AddItem;
		_unit assignItem UK_Radio;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Light Mortar Gunner
	case "CdnBC44Sep_LMortG" : {
		[CDN_UniBCR_LCpl] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_rangetable] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[US_Weap_MortB] call FNC_AddItem;
		[US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
	};

	//Light Mortar Assistant
	case "CdnBC44Sep_LMortA" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_rangetable] call FNC_AddItem;
		
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
	case "CdnBC44Sep_Cpl" : {
		[CDN_UniBCR_Cpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[50],
		[//M1 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,6,"vest"]
		],[25],
		[//Sten MkV
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkV],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1928 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"],
		[US_Mag_M1T_2,1,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
	};

	//Lance Corporal
	case "CdnBC44Sep_LCpl" : {
		[CDN_UniBCR_LCpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[50],
		[//M1 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,6,"vest"]
		],[25],
		[//Sten MkV
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkV],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1928 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"],
		[US_Mag_M1T_2,1,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
	};

	//Bren Gunner
	case "CdnBC44Sep_AR" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
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
	case "CdnBC44Sep_AAR" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_BinoR] call FNC_AddItem;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
		[UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
	};

	//Bren Gun Ammo Bearer
	case "CdnBC44Sep_AAB" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[UK_Mag_Bren,10,"backpack"] call FNC_AddItem;
	};

	//Rifleman
	case "CdnBC44Sep_Rif" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[UK_Mag_Bren,2,"backpack"] call FNC_AddItem;
	};

//Machine Gun Team

	//Machine Gun Team Leader
	case "CdnBC44Sep_MGTL" : {
		[CDN_UniBCR_LCpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Machine Gunner
	case "CdnBC44Sep_MG" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
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
	case "CdnBC44Sep_MGA" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
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
	case "CdnBC44Sep_MGAB" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
	};

//Mortar Team

	//Mortar Team Leader
	case "CdnBC44Sep_MortTL" : {
		[CDN_UniBCR_Cpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

	//Mortar Gunner
	case "CdnBC44Sep_MortG" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
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
	case "CdnBC44Sep_MortA" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
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
	case "CdnBC44Sep_MortAB" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPG_L] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

//Boys AT Rifle Team

	//Boys AT Rifle Team Leader
	case "CdnBC44Sep_ATRTL" : {
		[CDN_UniBCR_Cpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Boys AT Rifle Gunner
	case "CdnBC44Sep_ATRG" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
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
	case "CdnBC44Sep_ATRAB" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Mag_Boys,20,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

//PIAT Team

	//PIAT Team Leader
	case "CdnBC44Sep_ATTL" : {
		[CDN_UniBCR_Cpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BP_P] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//PIAT Gunner
	case "CdnBC44Sep_ATG" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
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
		[UK_Weap_Piat] call FNC_AddItem;
		[UK_Mag_Piat_HEAT,3] call FNC_AddItem;
	};

	//PIAT Ammo Bearer
	case "CdnBC44Sep_ATAB" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[65],
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Commander
	case "CdnBC44Sep_VCom" : {
		[CDN_UniBCR_Sgt] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		[//Primary Weapon
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[50],
		[//M1 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,6,"vest"]
		],[25],
		[//Sten MkV
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkV],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1928 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"],
		[US_Mag_M1T_2,1,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call FNC_AddItem;
	};

	//Tank Crew
	case "CdnBC44Sep_VCrew" : {
		[CDN_UniBCR_Pte] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		[//Primary Weapon
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[50],
		[//M1 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1T],
		[US_Mag_M1T_1,6,"vest"]
		],[25],
		[//Sten MkV
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkV],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1928 Thompson
		[US_Mag_M1T_1,1],
		[US_Weap_M1928],
		[US_Mag_M1T_1,5,"vest"],
		[US_Mag_M1T_2,1,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,3] call FNC_AddItem;
		
		//Extra
		[GEN_Toolkit] call FNC_AddItem;
	};