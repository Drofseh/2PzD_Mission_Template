// Info: German Wehrmacht 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Kompanietrupp
[this,"WHR39_CC"] call FNC_GearScript;		Kompanieführer
[this,"WHR39_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
[this,"WHR39_PC"] call FNC_GearScript;		Zugführer
[this,"WHR39_P2"] call FNC_GearScript;		Zugtruppführer
[this,"WHR39_RTO"] call FNC_GearScript;		Funker
[this,"WHR39_Mess"] call FNC_GearScript;	Melder
[this,"WHR39_MedP"] call FNC_GearScript;	Krankenträger

	//Gruppe
[this,"WHR39_SL"] call FNC_GearScript;		Gruppenführer
[this,"WHR39_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
[this,"WHR39_S3"] call FNC_GearScript;		Gefreiter
[this,"WHR39_MG"] call FNC_GearScript;		MG-Richtschütze
[this,"WHR39_MGA"] call FNC_GearScript;		MG-Hilfsschütze
[this,"WHR39_MGAB"] call FNC_GearScript;	MG-Munitionsträger
[this,"WHR39_Gren"] call FNC_GearScript;	Grenadier
[this,"WHR39_MedS"] call FNC_GearScript;	Hilfs-Krankenträger
[this,"WHR39_Rif"] call FNC_GearScript;		Gewehrschütze

	//Weapon Truppen
[this,"WHR39_MortSL"] call FNC_GearScript;	Mortar Truppführer
[this,"WHR39_MortG"] call FNC_GearScript;	Mortar Granatwerferschützen
[this,"WHR39_MortA"] call FNC_GearScript;	Mortar Munitionsträger

[this,"WHR39_HMGSL"] call FNC_GearScript;	HMG Truppführer
[this,"WHR39_HMGG"] call FNC_GearScript;	HMG Richtschütze
[this,"WHR39_HMGA"] call FNC_GearScript;	HMG Munitionsträger

	//Tank Crew
[this,"WHR39_VCom"] call FNC_GearScript;	Besatzungsführer
[this,"WHR39_VCrew"] call FNC_GearScript;	Besatzung
*/

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "WHR39_CC" : {
		[Ger_Uni_CC] call FNC_AddItem;
		[Ger_Vest_C2] call FNC_AddItem;
		[Ger_BP_Radio] call FNC_AddItem;
		[Ger_Hat_Officer] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[53],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[37],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10]
		] call FNC_AddItemRandomPercent;
	};

	//Kompanietruppführer
	case "WHR39_C2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_K982] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[58],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[42]
		] call FNC_AddItemRandomPercent;
	};

//Platoon HQ

	//Zugführer
	case "WHR39_PC" : {
		[Ger_Uni_PC] call FNC_AddItem;
		[Ger_Vest_C2] call FNC_AddItem;
		[Ger_Hat_Officer] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[53],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[37],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10]
		] call FNC_AddItemRandomPercent;
	};

	//Zugtruppführer
	case "WHR39_P2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_K982] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Funker
	case "WHR39_RTO" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItemRandom;
		[Ger_BP_Radio] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_Headset] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
	};

	//Melder
	case "WHR39_Mess" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Krankenträger
	case "WHR39_MedP" : {
		[Ger_Uni_Med] call FNC_AddItemRandom;
		[Ger_Vest_Med] call FNC_AddItemRandom;
		[Ger_BP_Med] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		Ger_medicP_equipment;
	};

//Squad

	//Gruppenführer
	case "WHR39_SL" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_K982] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Stellvertretender Gruppenführer
	case "WHR39_S2" : {
		[Ger_Uni_S2_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gefreiter
	case "WHR39_S3" : {
		[Ger_Uni_S3_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Richtschütze
	case "WHR39_MG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MG] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[58],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[42]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[Ger_Weap_MG34] call FNC_AddItem;
		[Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_50,3] call FNC_AddItem;
	};

	//MG-Hilfsschütze
	case "WHR39_MGA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MGA] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_BinoG] call FNC_AddItem;
		[GEN_ace_sparebarrel] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_50,3] call FNC_AddItem;
	};

	//MG-Munitionsträger
	case "WHR39_MGAB" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_50,5] call FNC_AddItem;
	};

	//Grenadier
	case "WHR39_Gren" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Weap_K98_RG] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		[Ger_Mag_RGrn_HE,4] call FNC_AddItem;
		[Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
	};

	//Hilfs-Krankenträger
	case "WHR39_MedS" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItemRandom;
		[Ger_BP_Med] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_medicS_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Gewehrschütze
	case "WHR39_Rif" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
	};

//Weapon Truppen

	//Mortar Team
	//Mortar Truppführer
	case "WHR39_MortSL" : {
		[Ger_Uni_S3_r] call FNC_AddItemRandom;
		[Ger_Vest_HGun] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_ace_maptools,1] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[58],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[42]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[Ger_Weap_MortB,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Mortar Granatwerferschützen
	case "WHR39_MortG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_HGun] call FNC_AddItemRandom;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_ace_maptools,1] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[58],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[42]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[Ger_Weap_MortT,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
	};

	//Mortar Munitionsträger
	case "WHR39_MortA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItemRandom;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_ace_maptools,1] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
	};

	//HMG Team
	//HMG Truppführer
	case "WHR39_HMGSL" : {
		[Ger_Uni_S3_r] call FNC_AddItemRandom;
		[Ger_Vest_MGA] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		[GEN_ace_sparebarrel] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12] call FNC_AddItem;
		
		//Launcher
		[Ger_Weap_MG_T,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_250,2] call FNC_AddItem;
	};

	//HMG Richtschütze
	case "WHR39_HMGG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MG] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[58],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[42]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[Ger_Mag_MG_250,1] call FNC_AddItem;
		[Ger_Weap_MG34] call FNC_AddItem;
		[Ger_Mag_MG_250,1] call FNC_AddItem;
		[Ger_Mag_MG_150,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_250,2] call FNC_AddItem;
	};

	//HMG Munitionsträger
	case "WHR39_HMGA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_250,3] call FNC_AddItem;
		[Ger_Mag_MG_150,1] call FNC_AddItem;
	};

//Tank Crew

	//Besatzungsführer
	case "WHR39_VCom" : {
		[Ger_Uni_VCom] call FNC_AddItem;
		[Ger_Vest_VCrew] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCom] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[53],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[37],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10]
		] call FNC_AddItemRandomPercent;
	};

	//Besatzung
	case "WHR39_VCrew" : {
		[Ger_Uni_VCrew] call FNC_AddItem;
		[Ger_Vest_VCrew] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCrew] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Secondary Weapon
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[58],
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[42]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Toolkit] call FNC_AddItem;
	};