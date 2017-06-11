// Info: German Fallschirmjäger 1944 January Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"FSJ44Jan_CC"] call FNC_GearScript;		Kompanieführer
//[this,"FSJ44Jan_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"FSJ44Jan_PC"] call FNC_GearScript;		Zugführer
//[this,"FSJ44Jan_P2"] call FNC_GearScript;		Zugtruppführer
//[this,"FSJ44Jan_RTO"] call FNC_GearScript;	Funker
//[this,"FSJ44Jan_Mess"] call FNC_GearScript;	Melder
//[this,"FSJ44Jan_Med"] call FNC_GearScript;	Krankenträger

	//Gruppe
//[this,"FSJ44Jan_SL"] call FNC_GearScript;		Gruppenführer
//[this,"FSJ44Jan_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"FSJ44Jan_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"FSJ44Jan_MGA"] call FNC_GearScript;	MG-Hilfsschütze
//[this,"FSJ44Jan_Gren"] call FNC_GearScript;	Grenadier
//[this,"FSJ44Jan_Mark"] call FNC_GearScript;	Scharfschütze
//[this,"FSJ44Jan_Rif"] call FNC_GearScript;	Gewehrschütze

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "FSJ44Jan_CC" : {
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
		],[90],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[68],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[18],
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
	case "FSJ44Jan_C2" : {
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
		],[90],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_PC" : {
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
		],[90],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[68],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[18],
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
	case "FSJ44Jan_P2" : {
		[FSJ_UniC_SL] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[FSJ_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Primary Weapon
		[//MP40
		[Ger_Vest_MP40],
		[Ger_Mag_MP40,1],
		[Ger_Weap_MP40],
		[Ger_Mag_MP40,6,"vest"]
		],[90],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_RTO" : {
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
		],[65],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,12,"vest"]
		],[15],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[12],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_Mess" : {
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
		],[65],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,12,"vest"]
		],[15],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[12],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_Med" : {
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
		],[65],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,6,"vest"]
		],[15],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[12],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_SL" : {
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
		],[90],
		[//StG44
		[Ger_Vest_MP44],
		[GEN_Face_Bino],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_S2" : {
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
		],[90],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_MG" : {
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
		],[65],
		[//MG42
		[Ger_Weap_MG42]
		],[35]
		] call FNC_AddItemRandomPercent;
		[Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_MGA" : {
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
		],[65],
		[//G43
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,6,"vest"]
		],[15],
		[//StG44
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[12],
		[//FG42
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_Mark" : {
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
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
	case "FSJ44Jan_Gren" : {
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
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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
		[Ger_Mag_RGrn_ATL,4] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gewehrschütze
	case "FSJ44Jan_Rif" : {
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
		],[65],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,12,"vest"]
		],[15],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[12],
		[//FG42
		[Ger_Vest_G43],
		[Ger_Mag_FG42,1],
		[Ger_Weap_FG42],
		[Ger_Mag_FG42,6,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[70],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[26],
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