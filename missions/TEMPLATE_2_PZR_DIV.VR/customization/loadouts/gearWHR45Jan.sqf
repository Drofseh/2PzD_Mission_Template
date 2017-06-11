// Info: German Wehrmacht 1945 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"WHR45Jan_CC"] call FNC_GearScript;		Kompanieführer
//[this,"WHR45Jan_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"WHR45Jan_PC"] call FNC_GearScript;		Zugführer
//[this,"WHR45Jan_P2"] call FNC_GearScript;		Zugtruppführer
//[this,"WHR45Jan_RTO"] call FNC_GearScript;	Funker
//[this,"WHR45Jan_Mess"] call FNC_GearScript;	Melder
//[this,"WHR45Jan_Med"] call FNC_GearScript;	Krankenträger

	//Gruppe
//[this,"WHR45Jan_SL"] call FNC_GearScript;		Gruppenführer
//[this,"WHR45Jan_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"WHR45Jan_S3"] call FNC_GearScript;		Gefreiter
//[this,"WHR45Jan_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"WHR45Jan_MGA"] call FNC_GearScript;	MG-Hilfsschütze
//[this,"WHR45Jan_MGAB"] call FNC_GearScript;	MG-Munitionsträger
//[this,"WHR45Jan_Gren"] call FNC_GearScript;	Grenadier
//[this,"WHR45Jan_Rif"] call FNC_GearScript;	Gewehrschütze

	//Tank Crew
//[this,"WHR45Jan_VCom"] call FNC_GearScript;	Besatzungsführer
//[this,"WHR45Jan_VCrew"] call FNC_GearScript;	Besatzung

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "WHR45Jan_CC" : {
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
		[Ger_Weap_MP40_Mag,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[70],
		[//P08
		[Ger_Weap_P08_Mag,1],
		[Ger_Weap_P08],
		[Ger_Weap_P08_Mag,1]
		],[18],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[12]
		] call FNC_AddItemRandomPercent;
	};

	//Kompanietruppführer
	case "WHR45Jan_C2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Weap_MP40_Mag,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[70],
		[//P08
		[Ger_Weap_P08_Mag,1],
		[Ger_Weap_P08],
		[Ger_Weap_P08_Mag,1]
		],[18],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[12]
		] call FNC_AddItemRandomPercent;
	};

//Platoon HQ

	//Zugführer
	case "WHR45Jan_PC" : {
		[Ger_Uni_PC] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_Hat_Officer] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Weap_MP40_Mag,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[55],
		[//P08
		[Ger_Weap_P08_Mag,1],
		[Ger_Weap_P08],
		[Ger_Weap_P08_Mag,1]
		],[33],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[12]
		] call FNC_AddItemRandomPercent;
	};

	//Zugtruppführer
	case "WHR45Jan_P2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_SL] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Weap_MP40_Mag,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
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
	case "WHR45Jan_RTO" : {
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
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[60],
		[//G43
		[Ger_Vest_G43],
		[Ger_Weap_G43_Mag,1],
		[Ger_Weap_G43],
		[Ger_Weap_G43_Mag,6,"vest"]
		],[30],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Weap_MP44_Mag,1],
		[Ger_Weap_MP44],
		[Ger_Weap_MP44_Mag,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
	};

	//Melder
	case "WHR45Jan_Mess" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[60],
		[//G43
		[Ger_Vest_G43],
		[Ger_Weap_G43_Mag,1],
		[Ger_Weap_G43],
		[Ger_Weap_G43_Mag,6,"vest"]
		],[30],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Weap_MP44_Mag,1],
		[Ger_Weap_MP44],
		[Ger_Weap_MP44_Mag,6,"vest"]
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
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Krankenträger
	case "WHR45Jan_Med" : {
		[Ger_Uni_Med] call FNC_AddItemRandom;
		[Ger_Vest_Med] call FNC_AddItemRandom;
		[Ger_BP_Med] call FNC_AddItem;
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[60],
		[//G43
		[Ger_Vest_G43],
		[Ger_Weap_G43_Mag,1],
		[Ger_Weap_G43],
		[Ger_Weap_G43_Mag,6,"vest"]
		],[30],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Weap_MP44_Mag,1],
		[Ger_Weap_MP44],
		[Ger_Weap_MP44_Mag,6,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		Ger_medic_equipment;
	};

//Squad

	//Gruppenführer
	case "WHR45Jan_SL" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_SL] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Weap_MP40_Mag,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Weap_MP40_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[
		[//M24
		[Ger_Gren_Frag_SC,1]
		],[66],
		[//M24 Splittering
		[Ger_Gren_Frag_SF,1]
		],[34]
		] call FNC_AddItemRandomPercent;
		[Ger_Weap_MG_Mag50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Stellvertretender Gruppenführer
	case "WHR45Jan_S2" : {
		[Ger_Uni_S2_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[60],
		[//G43
		[Ger_Vest_G43],
		[Ger_Weap_G43_Mag,1],
		[Ger_Weap_G43],
		[Ger_Weap_G43_Mag,6,"vest"]
		],[30],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Weap_MP44_Mag,1],
		[Ger_Weap_MP44],
		[Ger_Weap_MP44_Mag,6,"vest"]
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
		[Ger_Weap_MG_Mag50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gefreiter
	case "WHR45Jan_S3" : {
		[Ger_Uni_S3_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//MP40
		[Ger_Vest_MP40],
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,6,"vest"]
		],[80],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Weap_MP44_Mag,1],
		[Ger_Weap_MP44],
		[Ger_Weap_MP44_Mag,6,"vest"]
		],[20]
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
		[Ger_Weap_MG_Mag50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Richtschütze
	case "WHR45Jan_MG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MG] call FNC_AddItem;
		[Ger_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Secondary Weapon
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[55],
		[//P08
		[Ger_Weap_P08_Mag,1],
		[Ger_Weap_P08],
		[Ger_Weap_P08_Mag,1]
		],[33],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[Ger_Weap_MG_Mag50,1] call FNC_AddItem;
		[//Random MG
		[//MG34
		[Ger_Weap_MG34]
		],[50],
		[//MG42
		[Ger_Weap_MG42]
		],[50]
		] call FNC_AddItemRandomPercent;
		[Ger_Weap_MG_Mag50,5,"vest"] call FNC_AddItem;
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[Ger_Weap_MG_Mag50,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[Ger_Weap_MG_Mag50,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG_Mag50,3] call FNC_AddItem;
			};
		};
	};

	//MG-Hilfsschütze
	case "WHR45Jan_MGA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MGA] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_BinoG] call FNC_AddItem;
		[GEN_ace_sparebarrel] call FNC_AddItem;
		
		[//Primary Weapon
		[//K98k
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[63],
		[//G43
		[Ger_Weap_G43_Mag,1],
		[Ger_Weap_G43],
		[Ger_Weap_G43_Mag,6,"vest"]
		],[37]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Weap_MG_Mag50,2] call FNC_AddItem;
	};

	//MG-Munitionsträger
	case "WHR45Jan_MGAB" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"],
		[Ger_Weap_MG_Mag50,2]
		],[60],
		[//G43
		[Ger_Vest_G43],
		[Ger_Weap_G43_Mag,1],
		[Ger_Weap_G43],
		[Ger_Weap_G43_Mag,6,"vest"],
		[Ger_Weap_MG_Mag50,1]
		],[25],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Weap_MP44_Mag,1],
		[Ger_Weap_MP44],
		[Ger_Weap_MP44_Mag,6,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[Ger_Weap_MG_Mag50,3] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[Ger_Weap_MG_Mag50,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG_Mag50,3] call FNC_AddItem;
			};
		};
	};

	//Grenadier
	case "WHR45Jan_Gren" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Weap_K98_Mag,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Weap_K98_RG] call FNC_AddItem;
		[Ger_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		[Ger_Weap_K98_Grn_AP,4] call FNC_AddItem;
		[Ger_Weap_K98_Grn_ATL,4] call FNC_AddItem;
	};

	//Gewehrschütze
	case "WHR45Jan_Rif" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		//Assigned Items
		Ger_default_equipment;
		
		[//Primary Weapon
		[//K98k
		[Ger_Vest_K98],
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[50],
		[//G43
		[Ger_Vest_G43],
		[Ger_Weap_G43_Mag,1],
		[Ger_Weap_G43],
		[Ger_Weap_G43_Mag,6,"vest"]
		],[25],
		[//StG44
		[Ger_Vest_MP44],
		[Ger_Weap_MP44_Mag,1],
		[Ger_Weap_MP44],
		[Ger_Weap_MP44_Mag,6,"vest"]
		],[25]
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
		[Ger_Weap_MG_Mag50,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

//Tank Crew

	//Besatzungsführer
	case "WHR45Jan_VCom" : {
		[Ger_Uni_VCom] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCom] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Weap_MP40_Mag,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Weap_MP40_Mag,6,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[55],
		[//P08
		[Ger_Weap_P08_Mag,1],
		[Ger_Weap_P08],
		[Ger_Weap_P08_Mag,1]
		],[33],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[12]
		] call FNC_AddItemRandomPercent;
	};

	//Besatzung
	case "WHR45Jan_VCrew" : {
		[Ger_Uni_VCrew] call FNC_AddItem;
		[Ger_Vest_VCrew] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCrew] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Secondary Weapon
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[50],
		[//P08
		[Ger_Weap_P08_Mag,1],
		[Ger_Weap_P08],
		[Ger_Weap_P08_Mag,1]
		],[38],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Toolkit] call FNC_AddItem;
	};