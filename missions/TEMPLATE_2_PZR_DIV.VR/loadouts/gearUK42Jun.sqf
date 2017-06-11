// Info: British Army 1942 Jun Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	Platoon
[this,"UK42Jun_Lt"] call FNC_GearScript;		Lieutenant
[this,"UK42Jun_Sgt"] call FNC_GearScript;		Sergeant
[this,"UK42Jun_Med"] call FNC_GearScript;		Medic
[this,"UK42Jun_Sig"] call FNC_GearScript;		Signaller
[this,"UK42Jun_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"UK42Jun_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"UK42Jun_Cpl"] call FNC_GearScript;		Corporal
[this,"UK42Jun_LCpl"] call FNC_GearScript;		Lance Corporal
[this,"UK42Jun_MG"] call FNC_GearScript;		Machine Gunner
[this,"UK42Jun_MGA"] call FNC_GearScript;		Machine Gun Assistant
[this,"UK42Jun_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer
[this,"UK42Jun_Rif"] call FNC_GearScript;		Rifleman
*/

//======================== Loadouts ========================

//Platoon

	//Lieutenant
	case "UK42Jun_Lt" : {
		[UK_Uni_Lt] call FNC_AddItem;
		[UK_VestK_O] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,2,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Sergeant
	case "UK42Jun_Sgt" : {
		[UK_Uni_Sgt] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Primary Weapon
		[
		[//M1928 Thompson
		[US_Weap_M1T_Mag1,1],
		[US_Weap_M1928],
		[US_Weap_M1T_Mag1,1,"vest"],
		[US_Weap_M1T_Mag2,5,"vest"]
		],[75],
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1 Thompson
		[US_Weap_M1T_Mag1,1],
		[US_Weap_M1T],
		[US_Weap_M1T_Mag1,2,"vest"],
		[US_Weap_M1T_Mag2,4,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,2] call FNC_AddItem;
		[GEN_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

	//Medic
	case "UK42Jun_Med" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[80],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		UK_medic_equipment;
		[UK_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Signaller
	case "UK42Jun_Sig" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK_Radio] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[UK_Radio] call FNC_AddItem;
		_unit assignItem UK_Radio;
		
		//Primary Weapon
		[
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[80],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Mortar Gunner
	case "UK42Jun_MortG" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_rangetable] call FNC_AddItem;
		
		//Primary Weapon
		[
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,2]
		],[80],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,2]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Mort_Tube] call FNC_AddItem;
		[GEN_Mort_HE,3] call FNC_AddItem;
	};

	//Mortar Assistant
	case "UK42Jun_MortA" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_rangetable] call FNC_AddItem;
		
		//Primary Weapon
		[
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,2]
		],[80],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,2]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Mort_Base] call FNC_AddItem;
		[GEN_Mort_HE,3] call FNC_AddItem;
	};

//Squad

	//Corporal
	case "UK42Jun_Cpl" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//M1928 Thompson
		[US_Weap_M1T_Mag1,1],
		[US_Weap_M1928],
		[US_Weap_M1T_Mag1,1,"vest"],
		[US_Weap_M1T_Mag2,5,"vest"]
		],[75],
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1 Thompson
		[US_Weap_M1T_Mag1,1],
		[US_Weap_M1T],
		[US_Weap_M1T_Mag1,2,"vest"],
		[US_Weap_M1T_Mag2,4,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2] call FNC_AddItem;
	};

	//Lance Corporal
	case "UK42Jun_LCpl" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//M1928 Thompson
		[US_Weap_M1T_Mag1,1],
		[US_Weap_M1928],
		[US_Weap_M1T_Mag1,1,"vest"],
		[US_Weap_M1T_Mag2,5,"vest"]
		],[75],
		[//Sten MkII
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkII],
		[UK_Mag_Sten,6,"vest"]
		],[10],
		[//M1 Thompson
		[US_Weap_M1T_Mag1,1],
		[US_Weap_M1T],
		[US_Weap_M1T_Mag1,2,"vest"],
		[US_Weap_M1T_Mag2,4,"vest"]
		],[10],
		[//Sten MkI
		[UK_Mag_Sten,1],
		[UK_Weap_StenMkI],
		[UK_Mag_Sten,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2] call FNC_AddItem;
	};

	//Machine Gunner
	case "UK42Jun_MG" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_Bren,1] call FNC_AddItem;
		[UK_Weap_Bren] call FNC_AddItem;
		[UK_Mag_Bren,10,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Mag_Webley455,1] call FNC_AddItem;
		[UK_Weap_Webley455] call FNC_AddItem;
		[UK_Mag_Webley455,2] call FNC_AddItem;
	};

	//Machine Gun Assistant
	case "UK42Jun_MGA" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[UK_Bino] call FNC_AddItem;
		
		//Primary Weapon
		[
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[80],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_ace_sparebarrel,1] call FNC_AddItem;
		[UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
	};

	//Machine Gun Ammo Bearer
	case "UK42Jun_MGAB" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[80],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
		[UK_Mag_Bren,6] call FNC_AddItem;
	};

	//Rifleman
	case "UK42Jun_Rif" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield No1
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo1],
		[UK_Mag_LeeEn,5,"vest"]
		],[80],
		[//Lee Enfield No4
		[UK_Mag_LeeEn,1],
		[UK_Weap_LeeEnNo4],
		[UK_Mag_LeeEn,5,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Mag_Bren,2] call FNC_AddItem;
	};