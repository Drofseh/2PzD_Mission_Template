// Info: German Fallschirmjäger 1943 October Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"FSJ43Oct_CC"] call FNC_GearScript;		Kompanieführer
//[this,"FSJ43Oct_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"FSJ43Oct_PC"] call FNC_GearScript;		Zugführer
//[this,"FSJ43Oct_P2"] call FNC_GearScript;		Zugtruppführer
//[this,"FSJ43Oct_RTO"] call FNC_GearScript;	Funker
//[this,"FSJ43Oct_Mess"] call FNC_GearScript;	Melder
//[this,"FSJ43Oct_Med"] call FNC_GearScript;	Krankenträger

	//Gruppe
//[this,"FSJ43Oct_SL"] call FNC_GearScript;		Gruppenführer
//[this,"FSJ43Oct_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"FSJ43Oct_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"FSJ43Oct_MGA"] call FNC_GearScript;	MG-Hilfsschütze
//[this,"FSJ43Oct_Gren"] call FNC_GearScript;	Grenadier
//[this,"FSJ43Oct_Mark"] call FNC_GearScript;	Scharfschütze
//[this,"FSJ43Oct_Rif"] call FNC_GearScript;	Gewehrschütze

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "FSJ43Oct_CC" : {
		[FSJ_UniC_NI] call FNC_AddItem;
		[Ger_BP_Radio] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Primary Weapon
		[//MP40
		[FSJ_Vest_PC],
		[Ger_Mag_MP40,1],
		[Ger_Weap_MP40],
		[Ger_Mag_MP40,3,"vest"]
		],[95],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[65],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[21],
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
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Kompanietruppführer
	case "FSJ43Oct_C2" : {
		[FSJ_UniC_NI] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Primary Weapon
		[//MP40
		[FSJ_Vest_PC],
		[Ger_Mag_MP40,1],
		[Ger_Weap_MP40],
		[Ger_Mag_MP40,3,"vest"]
		],[95],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
	};

//Platoon HQ

	//Zugführer
	case "FSJ43Oct_PC" : {
		[FSJ_UniC_NI] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Primary Weapon
		[//MP40
		[FSJ_Vest_PC],
		[Ger_Mag_MP40,1],
		[Ger_Weap_MP40],
		[Ger_Mag_MP40,3,"vest"]
		],[95],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[65],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[21],
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
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Zugtruppführer
	case "FSJ43Oct_P2" : {
		[FSJ_UniC_SL] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Primary Weapon
		[//MP40
		[FSJ_Vest_PC],
		[Ger_Mag_MP40,1],
		[Ger_Weap_MP40],
		[Ger_Mag_MP40,3,"vest"]
		],[95],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
	};

	//Funker
	case "FSJ43Oct_RTO" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[Ger_BP_Radio] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[FSJ_Vest_Band],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,24,"vest"]
		],[80],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,12,"vest"]
		],[10],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
	};

	//Melder
	case "FSJ43Oct_Mess" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[FSJ_Vest_Band],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,24,"vest"]
		],[80],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,12,"vest"]
		],[10],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
	};

	//Krankenträger
	case "FSJ43Oct_Med" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[Ger_BP_Med] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[FSJ_Vest_Band],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[80],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,6,"vest"]
		],[10],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		Ger_medicP_equipment;
	};

//Squad

	//Gruppenführer
	case "FSJ43Oct_SL" : {
		[FSJ_UniC_SL] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Primary Weapon
		[//MP40
		[FSJ_Vest_PC],
		[Ger_Mag_MP40,1],
		[Ger_Weap_MP40],
		[Ger_Mag_MP40,3,"vest"]
		],[95],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[Ger_Mag_MG_50,1] call FNC_AddItem;
	};

	//Stellvertretender Gruppenführer
	case "FSJ43Oct_S2" : {
		[FSJ_UniC_S2] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//MP40
		[Ger_Vest_MP40],
		[Ger_Mag_MP40,1],
		[Ger_Weap_MP40],
		[Ger_Mag_MP40,6,"vest"]
		],[95],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[Ger_Mag_MG_50,1] call FNC_AddItem;
	};

	//MG-Richtschütze
	case "FSJ43Oct_MG" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[Ger_Vest_MG] call FNC_AddItem;
		[Ger_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_BinoG] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[//Random MG
		[//MG34
		[Ger_Weap_MG34]
		],[75],
		[//MG42
		[Ger_Weap_MG42]
		],[25]
		] call FNC_AddItemRandomPercent;
		[Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[Ger_Mag_MG_50,3] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Hilfsschütze
	case "FSJ43Oct_MGA" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[Ger_Vest_MGA] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_BinoG] call FNC_AddItem;
		
		[//Primary Weapon
		[//K98k
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[80],
		[//G43
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,6,"vest"]
		],[10],
		[//StG44
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5],
		[//FG42
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[Ger_Mag_MG_50,5] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Scharfschütze
	case "FSJ43Oct_Mark" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98_S] call FNC_AddItem;
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Grenadier
	case "FSJ43Oct_Gren" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[FSJ_Vest_Band] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Weap_K98_RG] call FNC_AddItem;
		[Ger_Mag_K98,24,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		[Ger_Mag_RGrn_ATS,1] call FNC_AddItem;
		[Ger_Mag_RGrn_ATL,3] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gewehrschütze
	case "FSJ43Oct_Rif" : {
		[FSJ_UniC_Rif] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[FSJ_Vest_Band],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,24,"vest"]
		],[80],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,12,"vest"]
		],[10],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[5],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[67],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[29],
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
		
		//Launcher
		[Ger_Weap_PzFaust] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};