// Info: German Fallschirmjäger 1939 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"FSJP39_CC"] call FNC_GearScript;		Kompanieführer
//[this,"FSJP39_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"FSJP39_PC"] call FNC_GearScript;		Zugführer
//[this,"FSJP39_P2"] call FNC_GearScript;		Zugtruppführer
//[this,"FSJP39_RTO"] call FNC_GearScript;		Funker
//[this,"FSJP39_Mess"] call FNC_GearScript;		Melder
//[this,"FSJP39_Med"] call FNC_GearScript;		Krankenträger

	//Gruppe
//[this,"FSJP39_SL"] call FNC_GearScript;		Gruppenführer
//[this,"FSJP39_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"FSJP39_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"FSJP39_MGA"] call FNC_GearScript;		MG-Hilfsschütze
//[this,"FSJP39_Gren"] call FNC_GearScript;		Grenadier
//[this,"FSJP39_Mark"] call FNC_GearScript;		Scharfschütze
//[this,"FSJP39_Rif"] call FNC_GearScript;		Gewehrschütze

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "FSJP39_CC" : {
		[FSJ_Uni_NI] call FNC_AddItem;
		[FSJ_Vest_CC] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
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

	//Kompanietruppführer
	case "FSJP39_C2" : {
		[FSJ_Uni_NI] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

//Platoon HQ

	//Zugführer
	case "FSJP39_PC" : {
		[FSJ_Uni_NI] call FNC_AddItem;
		[FSJ_Vest_CC] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
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
	case "FSJP39_P2" : {
		[FSJ_Uni_SL] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Funker
	case "FSJP39_RTO" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Melder
	case "FSJP39_Mess" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Krankenträger
	case "FSJP39_Med" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
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
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		FSJ_medic_equipment;
	};

//Squad

	//Gruppenführer
	case "FSJP39_SL" : {
		[FSJ_Uni_SL] call FNC_AddItem;
		[FSJ_Vest_PC] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Stellvertretender Gruppenführer
	case "FSJP39_S2" : {
		[FSJ_Uni_S2] call FNC_AddItem;
		[Ger_Vest_MP40] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,6,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Richtschütze
	case "FSJP39_MG" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[Ger_Vest_MG] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_BinoG] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Hilfsschütze
	case "FSJP39_MGA" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[Ger_Vest_MGA] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_BinoG] call FNC_AddItem;
		
		//Primary Weapon
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
		
		//Extra
		[GEN_ace_sparebarrel] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Scharfschütze
	case "FSJP39_Mark" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Grenadier
	case "FSJP39_Gren" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
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
		[Ger_Mag_RGrn_HE,4] call FNC_AddItem;
		[Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gewehrschütze
	case "FSJP39_Rif" : {
		[FSJ_Uni_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};