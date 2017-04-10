// Info: German DAK Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"DAK_CC"] call FNC_GearScript;		Kompanieführer
//[this,"DAK_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"DAK_PC"] call FNC_GearScript;		Zugführer
//[this,"DAK_P2"] call FNC_GearScript;		Stellver. Zugführer
//[this,"DAK_RTO"] call FNC_GearScript;		Funker
//[this,"DAK_Mess"] call FNC_GearScript;	Melder
//[this,"DAK_Med"] call FNC_GearScript;		Medic

	//Gruppe
//[this,"DAK_SL"] call FNC_GearScript;		Gruppenführer
//[this,"DAK_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"DAK_S3"] call FNC_GearScript;		Gefreiter
//[this,"DAK_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"DAK_MGA"] call FNC_GearScript;		MG-Schütze
//[this,"DAK_Gren"] call FNC_GearScript;	Grenadier
//[this,"DAK_Rif"] call FNC_GearScript;		Gewehrschütze

	//Tank Crew
//[this,"DAK_VCom"] call FNC_GearScript;	Besatzungsführer
//[this,"DAK_VCrew"] call FNC_GearScript;	Besatzung

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define DAK_Weap_K98			"LIB_K98"
#define DAK_Weap_G43			"LIB_G43"
#define DAK_Weap_MP40			"LIB_MP40"
#define DAK_Weap_MG42			"LIB_MG42"
#define DAK_Weap_K98_S			"LIB_K98ZF39"

//Secondary
#define DAK_Weap_P38			"LIB_P38"
#define DAK_Weap_C96			"sab_mauser96_handgun"

//Launcher
#define DAK_Weap_PzFaust		"LIB_PzFaust_30m"
#define DAK_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define DAK_Weap_K98_RG			"LIB_ACC_GW_SB_Empty"
#define DAK_Weap_K98_Bay		"LIB_ACC_K98_Bayo"
#define DAK_Weap_MosM9130_Bay	"LIB_ACC_M1891_Bayo"

//Ammo
#define DAK_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define DAK_Weap_G43_Mag		"LIB_10Rnd_792x57"
#define DAK_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define DAK_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define DAK_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define DAK_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define DAK_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define DAK_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define DAK_Weap_K98_Grn_AP		"LIB_1Rnd_G_SPRGR_30"
#define DAK_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"

//Grenades
#define DAK_Gren_Frag_P			"HandGrenade"
#define DAK_Gren_Frag_SF		"fow_e_m24_spli"
#define DAK_Gren_Frag_SC		"fow_e_m24"
#define DAK_Gren_Smoke_W		"SmokeShell"
#define DAK_Gren_Smoke_B		"SmokeShellBlue"
#define DAK_Gren_Smoke_G		"SmokeShellGreen"
#define DAK_Gren_Smoke_O		"SmokeShellOrange"
#define DAK_Gren_Smoke_P		"SmokeShellPurple"
#define DAK_Gren_Smoke_R		"SmokeShellRed"
#define DAK_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define DAK_Uni_O				"U_LIB_DAK_lieutenant"
#define DAK_Uni_NCO_S			["U_LIB_DAK_NCO"],["U_LIB_DAK_NCO"],["U_LIB_DAK_NCO_2"]
#define DAK_Uni_NCO_J			["U_LIB_DAK_Sentry"],["U_LIB_DAK_Sentry_2"]
#define DAK_Uni_Rif				["U_LIB_DAK_Soldier"],["U_LIB_DAK_Soldier_2"],["U_LIB_DAK_Soldier_3"]
#define DAK_Uni_Med				"U_LIB_DAK_Medic"

//Vests
#define DAK_Vest_CC				"V_LIB_DAK_PrivateBelt"
#define DAK_Vest_C2				"V_LIB_DAK_OfficerVest"
#define DAK_Vest_PC				"V_LIB_DAK_FieldOfficer"
#define DAK_Vest_SL				"V_LIB_DAK_VestUnterofficer"
#define DAK_Vest_K98			"V_LIB_DAK_VestKar98"
#define DAK_Vest_G43			"V_LIB_DAK_VestG43"
#define DAK_Vest_MP40			"V_LIB_DAK_VestMP40"
#define DAK_Vest_MP44			"V_LIB_DAK_VestSTG"
#define DAK_Vest_MG				"V_LIB_DAK_VestMG"
#define DAK_Vest_Med			"V_LIB_DAK_VestKar98"

#define DAK_Vest_VCrew			"V_LIB_DAK_PrivateBelt"

//Backpack
#define DAK_BP_r				["B_LIB_DAK_A_frame"],["B_LIB_DAK_A_frame_kit"],["B_LIB_GER_Tonister34_cowhide"]
#define DAK_BP_AF				"B_LIB_GER_A_frame"
#define DAK_BP_AF_Kit			"B_LIB_GER_A_frame_kit"
#define DAK_BP_T34				"B_LIB_GER_Tonister34_cowhide"
#define DAK_BP_MG_r				["fow_b_heer_ammo_belt"],["B_LIB_DAK_A_frame"],["B_LIB_DAK_A_frame_kit"],["B_LIB_GER_Tonister34_cowhide"]
								//use _unit removeItemFromBackpack "fow_50Rnd_792x57";
#define DAK_BP_Radio			"B_LIB_GER_Radio"
#define DAK_BP_VCrew			"B_LIB_GER_SapperBackpack_empty"
#define DAK_BP_Med				"B_LIB_GER_MedicBackpack_Big_Empty"

//Headgear
#define DAK_Hat_O				"H_LIB_DAK_OfficerCap"
#define DAK_Hat_Pith			"H_LIB_DAK_PithHelmet"
#define DAK_Hat					"H_LIB_DAK_Cap"
#define DAK_Helmet_r			["H_LIB_DAK_Helmet"],["H_LIB_DAK_Helmet_net"],["H_LIB_DAK_Helmet_ns"],["H_LIB_DAK_Helmet_2"],["H_LIB_DAK_Helmet_net_2"],["H_LIB_DAK_Helmet_ns_2"]

//Face
#define DAK_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

#define DAK_Face_Tank_r			["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define DAK_ace_defuse			"ACE_DefusalKit"
#define DAK_ace_earplugs		"ACE_EarPlugs";
#define DAK_ace_firing_device	"ACE_Clacker"
#define DAK_ace_flashlight		"ACE_Flashlight_KSF1"
#define DAK_ace_shovel			"ACE_EntrenchingTool"
#define DAK_ace_sparebarrel		"ACE_SpareBarrel"
#define DAK_ace_wirecutters		"ACE_wirecutter"
#define DAK_ace_carpick			"ACE_key_lockpick"
#define DAK_ace_maptools		"ACE_MapTools"
#define DAK_ace_cabletie		"ACE_CableTie"

//Medical
#define DAK_Bandage				"ACE_fieldDressing";
#define DAK_TQ					"ACE_tourniquet";
#define DAK_Morp				"ACE_morphine";
#define DAK_Epi					"ACE_epinephrine";
#define DAK_Blood1000			"ACE_bloodIV";
#define DAK_Blood500			"ACE_bloodIV_250";
#define DAK_Blood250			"ACE_bloodIV_500";
#define DAK_PAK					"ACE_personalAidKit";
#define DAK_SurgKit				"ACE_surgicalKit";

//Double Misc
#define DAK_Bino				"LIB_Binocular_GER"
#define DAK_Demo				"SatchelCharge_Remote_Mag"
#define DAK_Headset				"LIB_GER_Headset"
#define DAK_Minedetector		"MineDetector"
#define DAK_Toolkit				"ToolKit"

//Radio
//#define DAK_Radio_Pzr			"ItemRadio"

//=== EQUIPMENT ===

#define DAK_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define DAK_leader_equipment \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define DAK_medic_equipment \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",4,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",3,"backpack"] call FNC_AddItem; \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",5,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "DAK_CC" : {
		[DAK_Uni_O] call FNC_AddItem;
		[DAK_Vest_PC] call FNC_AddItem;
		[DAK_BP_Radio] call FNC_AddItem;
		[DAK_Hat_O] call FNC_AddItem;
		[DAK_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		DAK_default_equipment;
		DAK_leader_equipment;
		
		//Primary Weapon
		[DAK_Weap_MP40_Mag,1] call FNC_AddItem;
		[DAK_Weap_MP40] call FNC_AddItem;
		[DAK_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[DAK_Weap_P38_Mag,1],
		[DAK_Weap_P38],
		[DAK_Weap_P38_Mag,1]
		],[80],
		[//C96
		[DAK_Weap_C96_Mag,1],
		[DAK_Weap_C96],
		[DAK_Weap_C96_Mag,1]
		],[20]
		] call FNC_AddItemRandomPercent;
	};

	//Kompanietruppführer
	case "DAK_C2" : {
		[DAK_Uni_NCO_S] call FNC_AddItemRandom;
		[DAK_Vest_PC] call FNC_AddItem;
		[DAK_Hat_Pith] call FNC_AddItem;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		DAK_leader_equipment;
		
		//Primary Weapon
		[DAK_Weap_MP40_Mag,1] call FNC_AddItem;
		[DAK_Weap_MP40] call FNC_AddItem;
		[DAK_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[DAK_Weap_P38_Mag,1],
		[DAK_Weap_P38],
		[DAK_Weap_P38_Mag,1]
		],[80],
		[//C96
		[DAK_Weap_C96_Mag,1],
		[DAK_Weap_C96],
		[DAK_Weap_C96_Mag,1]
		],[20]
		] call FNC_AddItemRandomPercent;
	};

//Platoon HQ

	//Zugführer
	case "DAK_PC" : {
		[DAK_Uni_O] call FNC_AddItem;
		[DAK_Vest_PC] call FNC_AddItem;
		[DAK_Hat_O] call FNC_AddItem;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		DAK_leader_equipment;
		
		//Primary Weapon
		[DAK_Weap_MP40_Mag,1] call FNC_AddItem;
		[DAK_Weap_MP40] call FNC_AddItem;
		[DAK_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[DAK_Weap_P38_Mag,1],
		[DAK_Weap_P38],
		[DAK_Weap_P38_Mag,1]
		],[80],
		[//C96
		[DAK_Weap_C96_Mag,1],
		[DAK_Weap_C96],
		[DAK_Weap_C96_Mag,1]
		],[20]
		] call FNC_AddItemRandomPercent;
	};
	
	//Stellver. Zugführer
	case "DAK_P2" : {
		[DAK_Uni_NCO_S] call FNC_AddItemRandom;
		[DAK_Vest_SL] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Hat] call FNC_AddItem;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		DAK_leader_equipment;
		
		//Primary Weapon
		[DAK_Weap_MP40_Mag,1] call FNC_AddItem;
		[DAK_Weap_MP40] call FNC_AddItem;
		[DAK_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Gren_Frag_P,1] call FNC_AddItem;
		[DAK_Gren_Frag_SF,1] call FNC_AddItem;
		[DAK_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Funker
	case "DAK_RTO" : {
		[DAK_Uni_Rif] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_Radio] call FNC_AddItem;
		[DAK_Hat] call FNC_AddItem;
		[DAK_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		DAK_default_equipment;
		[DAK_Headset] call FNC_AddItem;
		
		//Primary Weapon
		[DAK_Weap_K98_Mag,1] call FNC_AddItem;
		[DAK_Weap_K98] call FNC_AddItem;
		[DAK_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
	};
	
	//Melder
	case "DAK_Mess" : {
		[DAK_Uni_Rif] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_K98_Mag,1] call FNC_AddItem;
		[DAK_Weap_K98] call FNC_AddItem;
		[DAK_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Gren_Frag_SF,1] call FNC_AddItem;
	};
	
	//Medic
	case "DAK_Med" : {
		[DAK_Uni_Med] call FNC_AddItem;
		[DAK_Vest_Med] call FNC_AddItem;
		[DAK_BP_Med] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_K98_Mag,1] call FNC_AddItem;
		[DAK_Weap_K98] call FNC_AddItem;
		[DAK_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Gren_Frag_SF,1] call FNC_AddItem;
		DAK_medic_equipment;
	};

//Squad

	//Gruppenführer
	case "DAK_SL" : {
		[DAK_Uni_NCO_J] call FNC_AddItemRandom;
		[DAK_Vest_SL] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		DAK_leader_equipment;
		
		//Primary Weapon
		[DAK_Weap_MP40_Mag,1] call FNC_AddItem;
		[DAK_Weap_MP40] call FNC_AddItem;
		[DAK_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Gren_Frag_SF,1] call FNC_AddItem;
		[DAK_Weap_MG42_Mag,1] call FNC_AddItem;
	};
	
	//Stellvertretender Gruppenführer
	case "DAK_S2" : {
		[DAK_Uni_NCO_J] call FNC_AddItemRandom;
		[DAK_Vest_G43] call FNC_AddItemRandom;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_K98_Mag,1] call FNC_AddItem;
		[DAK_Weap_K98] call FNC_AddItem;
		[DAK_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Gren_Frag_SF,1] call FNC_AddItem;
		[DAK_Weap_MG42_Mag,2] call FNC_AddItem;
	};
	
	//Gefreiter
	case "DAK_S3" : {
		[DAK_Uni_NCO_J] call FNC_AddItemRandom;
		[DAK_Vest_MP40] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_MP40_Mag,1] call FNC_AddItem;
		[DAK_Weap_MP40] call FNC_AddItem;
		[DAK_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Gren_Frag_SF,1] call FNC_AddItem;
		[DAK_Weap_MG42_Mag,2] call FNC_AddItem;
	};
	
	//MG-Richtschütze
	case "DAK_MG" : {
		[DAK_Uni_Rif] call FNC_AddItemRandom;
		[DAK_Vest_MG] call FNC_AddItem;
		[DAK_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_MG42_Mag,1] call FNC_AddItem;
		[DAK_Weap_MG42] call FNC_AddItem;
		[DAK_Weap_MG42_Mag,4,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[DAK_Weap_P38_Mag,1],
		[DAK_Weap_P38],
		[DAK_Weap_P38_Mag,1]
		],[80],
		[//C96
		[DAK_Weap_C96_Mag,1],
		[DAK_Weap_C96],
		[DAK_Weap_C96_Mag,1]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[DAK_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[DAK_Weap_MG42_Mag,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[DAK_Weap_MG42_Mag,3] call FNC_AddItem;
			};
		};
	};
	
	//MG-Schütze
	case "DAK_MGA" : {
		[DAK_Uni_Rif] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_K98_Mag,1] call FNC_AddItem;
		[DAK_Weap_K98] call FNC_AddItem;
		[DAK_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Weap_MG42_Mag,1] call FNC_AddItem;
		
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[DAK_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[DAK_Weap_MG42_Mag,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[DAK_Weap_MG42_Mag,3] call FNC_AddItem;
			};
		};
	};
	
	//Grenadier
	case "DAK_Gren" : {
		[DAK_Uni_Rif] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_K98_Mag,1] call FNC_AddItem;
		[DAK_Weap_K98] call FNC_AddItem;
		[DAK_Weap_K98_RG] call FNC_AddItem;
		[DAK_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		[DAK_Weap_K98_Grn_ATS,2,"vest"] call FNC_AddItem;
		[DAK_Weap_K98_Grn_AP,4,"vest"] call FNC_AddItem;
		[DAK_Weap_K98_Grn_ATL,2,"backpack"] call FNC_AddItem;
	};
	
	//Gewehrschütze
	case "DAK_Rif" : {
		[DAK_Uni_Rif] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[DAK_Face_r] call FNC_AddItemRandom;
		//Assigned Items
		DAK_default_equipment;
		
		//Primary Weapon
		[DAK_Weap_K98_Mag,1] call FNC_AddItem;
		[DAK_Weap_K98] call FNC_AddItem;
		[DAK_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[DAK_Gren_Frag_SF,2] call FNC_AddItem;
		[DAK_Weap_MG42_Mag,2] call FNC_AddItem;
	};

//Tank Crew

	//Besatzungsführer
	case "DAK_VCom" : {
		[DAK_Uni_NCO_S] call FNC_AddItemRandom;
		[DAK_Vest_PC] call FNC_AddItem;
		[DAK_BP_VCrew] call FNC_AddItem;
		[DAK_Hat_Pith] call FNC_AddItem;
		[DAK_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		DAK_leader_equipment;
		
		//Primary Weapon
		[DAK_Weap_MP40_Mag,1] call FNC_AddItem;
		[DAK_Weap_MP40] call FNC_AddItem;
		[DAK_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[DAK_Weap_P38_Mag,1],
		[DAK_Weap_P38],
		[DAK_Weap_P38_Mag,1]
		],[80],
		[//C96
		[DAK_Weap_C96_Mag,1],
		[DAK_Weap_C96],
		[DAK_Weap_C96_Mag,1]
		],[20]
		] call FNC_AddItemRandomPercent;
	};
	
	//Besatzung
	case "DAK_VCrew" : {
		[DAK_Uni_Rif] call FNC_AddItemRandom;
		[DAK_Vest_VCrew] call FNC_AddItem;
		[DAK_BP_VCrew] call FNC_AddItem;
		[DAK_Hat_Pith] call FNC_AddItem;
		[DAK_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		DAK_default_equipment;
		
		//Secondary Weapon
		[
		[//P38
		[DAK_Weap_P38_Mag,1],
		[DAK_Weap_P38],
		[DAK_Weap_P38_Mag,2]
		],[80],
		[//C96
		[DAK_Weap_C96_Mag,1],
		[DAK_Weap_C96],
		[DAK_Weap_C96_Mag,2]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[DAK_Toolkit] call FNC_AddItem;
	};