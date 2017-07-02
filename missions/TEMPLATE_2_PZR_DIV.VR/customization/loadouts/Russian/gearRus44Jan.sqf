// Info: Red Army January 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/* Loadouts

	//Company HQ
[this,"R44Jan_CC"] call FNC_GearScript;			Company Commander
[this,"R44Jan_CSgt"] call FNC_GearScript;		Company Sergeant
[this,"R44Jan_RTO"] call FNC_GearScript;		Radio Operator

	//Platoon HQ
[this,"R44Jan_PC"] call FNC_GearScript;			Platoon Commander
[this,"R44Jan_PSgt"] call FNC_GearScript;		Platoon Sergeant
[this,"R44Jan_Mess"] call FNC_GearScript;		Messenger
[this,"R44Jan_Med"] call FNC_GearScript;		Medic

	//Squad
[this,"R44Jan_SL"] call FNC_GearScript;			Squad Leader
[this,"R44Jan_TL"] call FNC_GearScript;			Team Leader
[this,"R44Jan_SMG"] call FNC_GearScript;		Submachine Gunner
[this,"R44Jan_Gren"] call FNC_GearScript;		Grenadier
[this,"R44Jan_Rif"] call FNC_GearScript;		Rifleman
[this,"R44Jan_MG"] call FNC_GearScript;			Machine Gunner
[this,"R44Jan_MGA"] call FNC_GearScript;		MG Assistant

	//Heavy Weapons Teams
[this,"R44Jan_MortTL"] call FNC_GearScript;		Mortar Team Leader
[this,"R44Jan_MortG"] call FNC_GearScript;		Mortar Gunner
[this,"R44Jan_MortA"] call FNC_GearScript;		Mortar Ammo Bearer

[this,"R44Jan_HMGTL"] call FNC_GearScript;		HMG Team Leader
[this,"R44Jan_HMGG"] call FNC_GearScript;		HMG Gunner
[this,"R44Jan_HMGA"] call FNC_GearScript;		HMG Ammo Bearer

[this,"R44Jan_ATRTL"] call FNC_GearScript;		AT Rifle Team Leader
[this,"R44Jan_ATRG"] call FNC_GearScript;		AT Rifle Gunner
[this,"R44Jan_ATRA"] call FNC_GearScript;		AT Rifle Ammo Bearer

	//Vehicle Crew
[this,"R44Jan_VCom"] call FNC_GearScript;		Tank Commander
[this,"R44Jan_VCrew"] call FNC_GearScript;		Tank Crew
*/

//======================== Loadouts ========================

//Company HQ

	//Company Commander
	case "R44Jan_CC" : {
		[Rus_Uni_CC] call FNC_AddItemRandom;
		[Rus_Vest_PC] call FNC_AddItem;
		[Rus_Hat_PC] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,3,"vest"]
		],[70],
		[//PPS-43
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,3,"vest"]
		],[25],
		[//PPD-40
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,1,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[74],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[26]
		] call FNC_AddItemRandomPercent;
	};
	
	//Company Sergeant
	case "R44Jan_CSgt" : {
		[Rus_Uni_CSgt] call FNC_AddItem;
		[Rus_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[Rus_BP] call FNC_AddItem;
		[Rus_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,3,"vest"]
		],[70],
		[//PPS-43
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,3,"vest"]
		],[25],
		[//PPD-40
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,1,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[74],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[26]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Radio Operator
	case "R44Jan_RTO" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[73],
		[//SVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_SVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[15],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[10],
		[//AVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_AVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_Radio] call FNC_AddItem;
		[Rus_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		[GEN_Headset] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "R44Jan_PC" : {
		[Rus_Uni_PC] call FNC_AddItemRandom;
		[Rus_Vest_PC] call FNC_AddItem;
		[Rus_Hat_PC] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,3,"vest"]
		],[70],
		[//PPS-43
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,3,"vest"]
		],[25],
		[//PPD-40
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,1,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[74],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[26]
		] call FNC_AddItemRandomPercent;
	};
	
	//Platoon Sergeant
	case "R44Jan_PSgt" : {
		[Rus_Uni_SL] call FNC_AddItem;
		[Rus_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[Rus_BP] call FNC_AddItem;
		[Rus_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,3,"vest"]
		],[70],
		[//PPS-43
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,3,"vest"]
		],[25],
		[//PPD-40
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,1,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[74],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[26]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Medic
	case "R44Jan_Med" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[73],
		[//SVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_SVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[15],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[10],
		[//AVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_AVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_Med] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		//Extra
		Rus_medic_equipment;
	};
	
	//Messenger
	case "R44Jan_Mess" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[73],
		[//SVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_SVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[15],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[10],
		[//AVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_AVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Extra
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
	};

//Squad

	//Squad Leader
	case "R44Jan_SL" : {
		[Rus_Uni_SL] call FNC_AddItem;
		[Rus_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[Rus_BP_r] call FNC_AddItemRandom;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,6,"vest"]
		],[70],
		[//PPS-43
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,6,"vest"]
		],[25],
		[//PPD-40
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,1,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
		[Rus_Mag_DP,1] call FNC_AddItem;
	};
	
	//Team Leader
	case "R44Jan_TL" : {
		[Rus_Uni_TL] call FNC_AddItem;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,6,"vest"]
		],[40],
		[//PPSh-41, Drum
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPSH_D,1],
		[Rus_Weap_PPSH_D],
		[Rus_Mag_PPSH_D,2,"vest"]
		],[27],
		[//PPS-43
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,6,"vest"]
		],[25],
		[//PPD-40
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,2,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_r] call FNC_AddItemRandom;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		//Extra
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
		[Rus_Mag_DP,1] call FNC_AddItem;
	};
	
	//Submachine Gunner
	case "R44Jan_SMG" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,6,"vest"]
		],[40],
		[//PPSh-41, Drum
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPSH_D,1],
		[Rus_Weap_PPSH_D],
		[Rus_Mag_PPSH_D,2,"vest"]
		],[27],
		[//PPS-43
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,6,"vest"]
		],[25],
		[//PPD-40
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,2,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_r] call FNC_AddItemRandom;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		//Extra
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
		[Rus_Mag_DP,1] call FNC_AddItem;
	};
	
	//Grenadier
	case "R44Jan_Gren" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_GL],
		[Rus_Mag_Mosin,12,"vest"]
		],[95],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Weap_Mos_GL],
		[Rus_Mag_Mosin,12,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_r] call FNC_AddItemRandom;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		//Extra
		[Rus_Mag_RGrn_HE,6] call FNC_AddItem;
	};
	
	//Rifleman
	case "R44Jan_Rif" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[56],
		[//SVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_SVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[15],
		[//PPSh-41, Stick
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,6,"vest"]
		],[10],
		[//PPSh-41, Drum
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPSH_D,1],
		[Rus_Weap_PPSH_D],
		[Rus_Mag_PPSH_D,2,"vest"]
		],[7],
		[//PPS-43
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,6,"vest"]
		],[6],
		[//PPD-40
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,2,"vest"]
		],[2],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[2],
		[//AVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_AVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_r] call FNC_AddItemRandom;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		//Extra
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
		[Rus_Mag_DP,1,"backpack"] call FNC_AddItem;
	};
	
	//Machine Gunner
	case "R44Jan_MG" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		[Rus_Vest_MG] call FNC_AddItemRandom;
		[Rus_BP_MG] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		//Primary Weapon
		[Rus_Mag_DP,1] call FNC_AddItem;
		[Rus_Weap_DP] call FNC_AddItem;
		[Rus_Mag_DP,3,"vest"] call FNC_AddItem;
		[Rus_Mag_DP,6,"backpack"] call FNC_AddItem;
	};
	
	//MG Assistant
	case "R44Jan_MGA" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[80],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_MG] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
		
		//Extra
		[Rus_Mag_DP,6,"backpack"] call FNC_AddItem;
	};

//Heavy Weapons Teams

	//Mortar Team Leader
	case "R44Jan_MortTL" : {
		[Rus_Uni_TL] call FNC_AddItem;
		[Rus_Vest_HGun] call FNC_AddItem;
		[Rus_BP_GB] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[71],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[29]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[Rus_Weap_MortT] call FNC_AddItem;
		
		//Extra
		[Rus_Mag_Mort_HE,3] call FNC_AddItem;
	};
	
	//Mortar Gunner
	case "R44Jan_MortG" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		[Rus_Vest_HGun] call FNC_AddItem;
		[Rus_BP_GB] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[71],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[29]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[Rus_Weap_MortB] call FNC_AddItem;
		
		//Extra
		[Rus_Mag_Mort_HE,3] call FNC_AddItem;
	};
	
	//Mortar Ammo Bearer
	case "R44Jan_MortA" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[73],
		[//SVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_SVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[15],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[10],
		[//AVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_AVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_GB] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		//Extra
		[Rus_Mag_Mort_HE,4] call FNC_AddItem;
	};
	
	//HMG Team Leader
	case "R44Jan_HMGTL" : {
		[Rus_Uni_TL] call FNC_AddItem;
		[Rus_Vest_HGun] call FNC_AddItem;
		[Rus_Weap_HMG_T] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[71],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[29]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		
		//Extra
	};
	
	//HMG Gunner
	case "R44Jan_HMGG" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		[Rus_Vest_HGun] call FNC_AddItem;
		[Rus_Weap_HMG_B] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[71],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[29]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		
		//Extra
	};
	
	//HMG Ammo Bearer
	case "R44Jan_HMGA" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[73],
		[//SVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_SVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[15],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[10],
		[//AVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_AVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_GB] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		//Extra
	};

	//Anti-Tank Rifle Team Leader
	case "R44Jan_ATRTL" : {
		[Rus_Uni_TL] call FNC_AddItem;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,6,"vest"]
		],[40],
		[//PPSh-41, Drum
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPSH_D,1],
		[Rus_Weap_PPSH_D],
		[Rus_Mag_PPSH_D,2,"vest"]
		],[27],
		[//PPS-43
		[Rus_Vest_PPSH_D2],
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,6,"vest"]
		],[25],
		[//PPD-40
		[Rus_Vest_PPSH_D1],
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,2,"vest"]
		],[8]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_GB] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		//Extra
		[Rus_Mag_PTRD,20,"backpack"] call FNC_AddItem;
		[Rus_Gren_Frag_S,1] call FNC_AddItem;
	};
	
	//Anti-Tank Rifle Gunner
	case "R44Jan_ATRG" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		[Rus_Vest_HGun] call FNC_AddItem;
		[Rus_BP_GB] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[71],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[29]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[Rus_Mag_PTRD,1] call FNC_AddItem;
		[Rus_Weap_PTRD] call FNC_AddItem;
		[Rus_Mag_PTRD,20] call FNC_AddItem;
	};
	
	//Anti-Tank Rifle Ammo Bearer
	case "R44Jan_ATRA" : {
		[Rus_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM9130],
		[Rus_Weap_Mos_Bayo],
		[Rus_Mag_Mosin,12,"vest"]
		],[73],
		[//SVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_SVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[15],
		[//Mosin M38
		[Rus_Vest_Mosin],
		[Rus_Mag_Mosin,1],
		[Rus_Weap_MosM38],
		[Rus_Mag_Mosin,12,"vest"]
		],[10],
		[//AVT
		[Rus_Vest_SVT],
		[Rus_Mag_SVT40,1],
		[Rus_Weap_AVT40],
		[Rus_Mag_SVT40,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[Rus_BP_GB] call FNC_AddItem;
		[Rus_Helmet] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		//Extra
		[Rus_Mag_PTRD,20,"backpack"] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Commander
	case "R44Jan_VCom" : {
		[Rus_Uni_VCrew] call FNC_AddItem;
		[Rus_Vest_PC] call FNC_AddItem;
		[Rus_Hat_VCrew] call FNC_AddItem;
		[Rus_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		Rus_leader_equipment;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[Rus_Mag_PPSH_S,1],
		[Rus_Weap_PPSH_S],
		[Rus_Mag_PPSH_S,3,"vest"]
		],[70],
		[//PPS-43
		[Rus_Mag_PPS43,1],
		[Rus_Weap_PPS43],
		[Rus_Mag_PPS43,3,"vest"]
		],[25],
		[//PPD-40
		[Rus_Mag_PPD40,1],
		[Rus_Weap_PPD40],
		[Rus_Mag_PPD40,1,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[74],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[26]
		] call FNC_AddItemRandomPercent;
	};
	
	//Tank Crew
	case "R44Jan_VCrew" : {
		[Rus_Uni_VCrew] call FNC_AddItem;
		[Rus_Vest_VCrew] call FNC_AddItem;
		[Rus_BP_r] call FNC_AddItemRandom;
		[Rus_Hat_VCrew] call FNC_AddItem;
		[Rus_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Rus_default_equipment;
		
		[//Secondary Weapon
		[//TT-33
		[Rus_Mag_TT33,1],
		[Rus_Weap_TT33],
		[Rus_Mag_TT33,2]
		],[74],
		[//M1895
		[Rus_Mag_M1895,1],
		[Rus_Weap_M1895],
		[Rus_Mag_M1895,2]
		],[26]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Rus_Toolkit] call FNC_AddItem;
	};