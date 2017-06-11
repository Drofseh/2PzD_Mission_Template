// Info: German Wehrmacht 1944 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Kompanietrupp
[this,"WHR44Jan_CC"] call FNC_GearScript;		Kompanieführer
[this,"WHR44Jan_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
[this,"WHR44Jan_PC"] call FNC_GearScript;		Zugführer
[this,"WHR44Jan_P2"] call FNC_GearScript;		Zugtruppführer
[this,"WHR44Jan_RTO"] call FNC_GearScript;		Funker
[this,"WHR44Jan_Mess"] call FNC_GearScript;		Melder
[this,"WHR44Jan_MedP"] call FNC_GearScript;		Krankenträger

	//Gruppe
[this,"WHR44Jan_SL"] call FNC_GearScript;		Gruppenführer
[this,"WHR44Jan_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
[this,"WHR44Jan_S3"] call FNC_GearScript;		Gefreiter
[this,"WHR44Jan_MG"] call FNC_GearScript;		MG-Richtschütze
[this,"WHR44Jan_MGA"] call FNC_GearScript;		MG-Hilfsschütze
[this,"WHR44Jan_MGAB"] call FNC_GearScript;		MG-Munitionsträger
[this,"WHR44Jan_Gren"] call FNC_GearScript;		Grenadier
[this,"WHR44Jan_MedS"] call FNC_GearScript;		Hilfs-Krankenträger
[this,"WHR44Jan_Rif"] call FNC_GearScript;		Gewehrschütze

	//Weapon Truppen
[this,"WHR44Jan_MortSL"] call FNC_GearScript;	Mortar Truppführer
[this,"WHR44Jan_MortG"] call FNC_GearScript;	Mortar Granatwerferschützen
[this,"WHR44Jan_MortA"] call FNC_GearScript;	Mortar Munitionsträger

[this,"WHR44Jan_HMGSL"] call FNC_GearScript;	HMG Truppführer
[this,"WHR44Jan_HMGG"] call FNC_GearScript;		HMG Richtschütze
[this,"WHR44Jan_HMGA"] call FNC_GearScript;		HMG Munitionsträger

[this,"WHR44Jan_PzrSL"] call FNC_GearScript;	Panzerschreck Truppführer
[this,"WHR44Jan_PzrG"] call FNC_GearScript;		Panzerschreck Richtschütze
[this,"WHR44Jan_PzrA"] call FNC_GearScript;		Panzerschreck Munitionsträger

	//Tank Crew
[this,"WHR44Jan_VCom"] call FNC_GearScript;		Besatzungsführer
[this,"WHR44Jan_VCrew"] call FNC_GearScript;	Besatzung
*/

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "WHR44Jan_CC" : {
		[Ger_Uni_CC] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_BP_Radio] call FNC_AddItem;
		[Ger_Hat_Officer] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
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
	};

	//Kompanietruppführer
	case "WHR44Jan_C2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
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
	};

//Platoon HQ

	//Zugführer
	case "WHR44Jan_PC" : {
		[Ger_Uni_PC] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_Hat_Officer] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
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
	};

	//Zugtruppführer
	case "WHR44Jan_P2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_SL] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
		//Extra
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Funker
	case "WHR44Jan_RTO" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_Radio] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_Headset] call FNC_AddItem;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
	};

	//Melder
	case "WHR44Jan_Mess" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Krankenträger
	case "WHR44Jan_MedP" : {
		[Ger_Uni_Med] call FNC_AddItemRandom;
		[Ger_Vest_Med] call FNC_AddItemRandom;
		[Ger_BP_Med] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		Ger_medicP_equipment;
	};

//Squad

	//Gruppenführer
	case "WHR44Jan_SL" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_SL] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,6,"vest"] call FNC_AddItem;
		
		//Extra
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Stellvertretender Gruppenführer
	case "WHR44Jan_S2" : {
		[Ger_Uni_S2_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gefreiter
	case "WHR44Jan_S3" : {
		[Ger_Uni_S3_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
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
		
		//Extra
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Richtschütze
	case "WHR44Jan_MG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MG] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
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
		
		//Extra
		[Ger_Mag_MG_50,3] call FNC_AddItem;
	};

	//MG-Hilfsschütze
	case "WHR44Jan_MGA" : {
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
		
		[//Primary Weapon
		[//K98k
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
		[//G43
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,6,"vest"]
		],[15],
		[//StG44
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Mag_MG_50,3] call FNC_AddItem;
	};

	//MG-Munitionsträger
	case "WHR44Jan_MGAB" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"],
		[Ger_Mag_MG_50,2]
		],[73],
		[//G43
		[Ger_Vest_G43],
		[Ger_Mag_G43,1],
		[Ger_Weap_G43],
		[Ger_Mag_G43,6,"vest"],
		[Ger_Mag_MG_50,1]
		],[15],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Mag_StG44,1],
		[Ger_Weap_MP44],
		[Ger_Mag_StG44,6,"vest"]
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Mag_MG_50,5] call FNC_AddItem;
	};

	//Grenadier
	case "WHR44Jan_Gren" : {
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
		[Ger_Mag_RGrn_ATL,4] call FNC_AddItem;
	};

	//Hilfs-Krankenträger
	case "WHR44Jan_Rif" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_Med] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_medicS_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
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

	//Gewehrschütze
	case "WHR44Jan_Rif" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[Ger_Weap_PzFaust] call FNC_AddItem;
		
		//Extra
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[Ger_Mag_MG_50,3] call FNC_AddItem;
	};

//Weapon Truppen

	//Mortar Team
	//Mortar Truppführer
	case "WHR44Jan_MortSL" : {
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
		[Ger_Weap_MortB,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Mortar Granatwerferschützen
	case "WHR44Jan_MortG" : {
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
		[Ger_Weap_MortT,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
	};

	//Mortar Munitionsträger
	case "WHR44Jan_MortA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_ace_maptools,1] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
	};

	//HMG Team
	//HMG Truppführer
	case "WHR44Jan_HMGSL" : {
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
	case "WHR44Jan_HMGG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MG] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
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
		
		//Primary Weapon
		[Ger_Mag_MG_250,1] call FNC_AddItem;
		[//Random MG
		[//MG34
		[Ger_Weap_MG34]
		],[65],
		[//MG42
		[Ger_Weap_MG42]
		],[35]
		] call FNC_AddItemRandomPercent;
		[Ger_Mag_MG_250,1] call FNC_AddItem;
		[Ger_Mag_MG_150,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_250,2] call FNC_AddItem;
	};

	//HMG Munitionsträger
	case "WHR44Jan_HMGA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_T34] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Mag_MG_250,3] call FNC_AddItem;
		[Ger_Mag_MG_150,1] call FNC_AddItem;
	};

	//Panzerschreck Team
	//Panzerschreck Truppführer
	case "WHR44Jan_PzrSL" : {
		[Ger_Uni_S3_r] call FNC_AddItemRandom;
		[Ger_BP_Pzr] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
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
		
		//Extra
		[Ger_Mag_Pzschrck,5] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Panzerschreck Richtschütze
	case "WHR44Jan_PzrG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_HGun] call FNC_AddItemRandom;
		[Ger_BP_Pzr] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
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
		[Ger_Weap_Pzschrck] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Pzschrck,5] call FNC_AddItem;
	};

	//Panzerschreck Munitionsträger
	case "WHR44Jan_PzrA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_Pzr] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Mag_K98,1],
		[Ger_Weap_K98],
		[Ger_Mag_K98,12,"vest"]
		],[73],
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
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Mag_Pzschrck,5] call FNC_AddItem;
	};

//Tank Crew

	//Besatzungsführer
	case "WHR44Jan_VCom" : {
		[Ger_Uni_VCom] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCom] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
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
	};

	//Besatzung
	case "WHR44Jan_VCrew" : {
		[Ger_Uni_VCrew] call FNC_AddItem;
		[Ger_Vest_VCrew] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCrew] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
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
		[GEN_Toolkit] call FNC_AddItem;
	};