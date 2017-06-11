// Info: British Army 1941 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	Platoon
[this,"UK41Jan_Lt"] call FNC_GearScript;		Lieutenant
[this,"UK41Jan_Sgt"] call FNC_GearScript;		Sergeant
[this,"UK41Jan_Med"] call FNC_GearScript;		Medic
[this,"UK41Jan_Sig"] call FNC_GearScript;		Signaller
[this,"UK41Jan_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"UK41Jan_MortA"] call FNC_GearScript;		Mortar Assistant
[this,"UK41Jan_Cpl"] call FNC_GearScript;		Corporal
[this,"UK41Jan_LCpl"] call FNC_GearScript;		Lance Corporal
[this,"UK41Jan_MG"] call FNC_GearScript;		Machine Gunner
[this,"UK41Jan_MGA"] call FNC_GearScript;		Machine Gun Assistant
[this,"UK41Jan_MGAB"] call FNC_GearScript;		Machine Gun Ammo Bearer
[this,"UK41Jan_Rif"] call FNC_GearScript;		Rifleman
*/

//======================== Loadouts ========================

//Platoon

	//Lieutenant
	case "UK41Jan_Lt" : {
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
	case "UK41Jan_Sgt" : {
		[UK_Uni_Sgt] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Primary Weapon
		[US_Weap_M1T_Mag2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Weap_M1T_Mag2,6,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,2] call FNC_AddItem;
		[GEN_Mort_HE,5,"backpack"] call FNC_AddItem;
	};

	//Medic
	case "UK41Jan_Med" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		UK_medic_equipment;
		[UK_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Signaller
	case "UK41Jan_Sig" : {
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
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Mortar Gunner
	case "UK41Jan_MortG" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_rangetable] call FNC_AddItem;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,2] call FNC_AddItem;
		
		//Extra
		[GEN_Mort_Tube] call FNC_AddItem;
		[GEN_Mort_HE,3] call FNC_AddItem;
	};

	//Mortar Assistant
	case "UK41Jan_MortA" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[GEN_ace_maptools] call FNC_AddItem;
		[GEN_rangetable] call FNC_AddItem;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,2] call FNC_AddItem;
		
		//Extra
		[GEN_Mort_Base] call FNC_AddItem;
		[GEN_Mort_HE,3] call FNC_AddItem;
	};

//Squad

	//Corporal
	case "UK41Jan_Cpl" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[US_Weap_M1T_Mag2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Weap_M1T_Mag2,6,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2] call FNC_AddItem;
	};

	//Lance Corporal
	case "UK41Jan_LCpl" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_VestK_Sten] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[US_Weap_M1T_Mag2,1] call FNC_AddItem;
		[US_Weap_M1928] call FNC_AddItem;
		[US_Weap_M1T_Mag2,6,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Gren_Smoke_W,2] call FNC_AddItem;
		[UK_Mag_Bren,2] call FNC_AddItem;
	};

	//Machine Gunner
	case "UK41Jan_MG" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		
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
	case "UK41Jan_MGA" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		[UK_Bino] call FNC_AddItem;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_ace_sparebarrel,1] call FNC_AddItem;
		[UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
	};

	//Machine Gun Ammo Bearer
	case "UK41Jan_MGAB" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_VestK_Bren] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Mag_Bren,4,"backpack"] call FNC_AddItem;
		[UK_Mag_Bren,6] call FNC_AddItem;
	};

	//Rifleman
	case "UK41Jan_Rif" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_VestK_LeeEn] call FNC_AddItem;
		[UK_BPK] call FNC_AddItem;
		[UK_Helm_Mk2_r] call FNC_AddItemRandom;
		[UK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Mag_LeeEn,1] call FNC_AddItem;
		[UK_Weap_LeeEnNo1] call FNC_AddItem;
		[UK_Mag_LeeEn,5,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Mag_Bren,2] call FNC_AddItem;
	};