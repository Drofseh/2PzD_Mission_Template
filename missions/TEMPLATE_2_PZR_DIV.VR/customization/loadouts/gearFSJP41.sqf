// Info: German Fallschirmjäger 1941 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"FSJP41_CC"] call FNC_GearScript;		Kompanieführer
//[this,"FSJP41_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"FSJP41_PC"] call FNC_GearScript;		Zugführer
//[this,"FSJP41_P2"] call FNC_GearScript;		Zugtruppführer
//[this,"FSJP41_RTO"] call FNC_GearScript;		Funker
//[this,"FSJP41_Mess"] call FNC_GearScript;		Melder
//[this,"FSJP41_Med"] call FNC_GearScript;		Krankenträger

	//Gruppe
//[this,"FSJP41_SL"] call FNC_GearScript;		Gruppenführer
//[this,"FSJP41_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"FSJP41_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"FSJP41_MGA"] call FNC_GearScript;		MG-Hilfsschütze
//[this,"FSJP41_Gren"] call FNC_GearScript;		Grenadier
//[this,"FSJP41_Mark"] call FNC_GearScript;		Scharfschütze
//[this,"FSJP41_Rif"] call FNC_GearScript;		Gewehrschütze

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "FSJP41_CC" : {
		[FSJ_UniC_NI] call FNC_AddItem;
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
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[50],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[36],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10],
		[//PPK
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
	};

	//Kompanietruppführer
	case "FSJP41_C2" : {
		[FSJ_UniC_NI] call FNC_AddItem;
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
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

//Platoon HQ

	//Zugführer
	case "FSJP41_PC" : {
		[FSJ_UniC_NI] call FNC_AddItem;
		[FSJ_Vest_PC] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[50],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[36],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10],
		[//PPK
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
	};

	//Zugtruppführer
	case "FSJP41_P2" : {
		[FSJ_UniC_SL] call FNC_AddItem;
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
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Funker
	case "FSJP41_RTO" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Melder
	case "FSJP41_Mess" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Krankenträger
	case "FSJP41_Med" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		FSJ_medic_equipment;
	};

//Squad

	//Gruppenführer
	case "FSJP41_SL" : {
		[FSJ_UniC_SL] call FNC_AddItem;
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
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Stellvertretender Gruppenführer
	case "FSJP41_S2" : {
		[FSJ_UniC_S2] call FNC_AddItem;
		[Ger_Vest_MP40] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,6,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Richtschütze
	case "FSJP41_MG" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
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
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Hilfsschütze
	case "FSJP41_MGA" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
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
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_ace_sparebarrel] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Scharfschütze
	case "FSJP41_Mark" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Grenadier
	case "FSJP41_Gren" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Mag_RGrn_HE,4] call FNC_AddItem;
		[Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gewehrschütze
	case "FSJP41_Rif" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[GEN_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[52],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[44],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};