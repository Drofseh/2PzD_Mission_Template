// Info: German Wehrmacht Generic Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"WHR_CC"] call FNC_GearScript;		Kompanieführer
//[this,"WHR_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"WHR_PC"] call FNC_GearScript;		Zugführer
//[this,"WHR_P2"] call FNC_GearScript;		Stellver. Zugführer
//[this,"WHR_RTO"] call FNC_GearScript;		Funker
//[this,"WHR_Mess"] call FNC_GearScript;	Melder
//[this,"WHR_Med"] call FNC_GearScript;		Medic

	//Gruppe
//[this,"WHR_SL"] call FNC_GearScript;		Gruppenführer
//[this,"WHR_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"WHR_S3"] call FNC_GearScript;		Gefreiter
//[this,"WHR_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"WHR_MGA"] call FNC_GearScript;		MG-Schütze
//[this,"WHR_Gren"] call FNC_GearScript;	Grenadier
//[this,"WHR_Rif"] call FNC_GearScript;		Gewehrschütze

	//Tank Crew
//[this,"WHR_VCom"] call FNC_GearScript;	Besatzungsführer
//[this,"WHR_VCrew"] call FNC_GearScript;	Besatzung

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define WHR_Weap_K98			"LIB_K98"
#define WHR_Weap_G43			"LIB_G43"
#define WHR_Weap_MP40			"LIB_MP40"
#define WHR_Weap_MP44			"LIB_MP44"
#define WHR_Weap_MG42			"LIB_MG42"
#define WHR_Weap_K98_S			"LIB_K98ZF39"

//Secondary
#define WHR_Weap_P38			"LIB_P38"
#define WHR_Weap_C96			"sab_mauser96_handgun"

#define WHR_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define WHR_Weap_PzFaust		"LIB_PzFaust_30m"
#define WHR_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define WHR_Weap_K98_RG			"LIB_ACC_GW_SB_Empty"
#define WHR_Weap_K98_Bay		"LIB_ACC_K98_Bayo"
#define WHR_Weap_MosM9130_Bay	"LIB_ACC_M1891_Bayo"

//Ammo
#define WHR_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define WHR_Weap_G43_Mag		"LIB_10Rnd_792x57"
#define WHR_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define WHR_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define WHR_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define WHR_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define WHR_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define WHR_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define WHR_Weap_K98_Grn_AP		"LIB_1Rnd_G_SPRGR_30"
#define WHR_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"

#define WHR_Flare_W				"LIB_1Rnd_flare_white"
#define WHR_Flare_R				"LIB_1Rnd_flare_red"
#define WHR_Flare_G				"LIB_1Rnd_flare_green"
#define WHR_Flare_Y				"LIB_1Rnd_flare_yellow"

//Grenades
#define WHR_Gren_Frag_P			"HandGrenade"
#define WHR_Gren_Frag_SF		"fow_e_m24_spli"
#define WHR_Gren_Frag_SC		"fow_e_m24"
#define WHR_Gren_Smoke_W		"SmokeShell"
#define WHR_Gren_Smoke_B		"SmokeShellBlue"
#define WHR_Gren_Smoke_G		"SmokeShellGreen"
#define WHR_Gren_Smoke_O		"SmokeShellOrange"
#define WHR_Gren_Smoke_P		"SmokeShellPurple"
#define WHR_Gren_Smoke_R		"SmokeShellRed"
#define WHR_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define WHR_Uni_CC				"U_LIB_GER_Hauptmann"
#define WHR_Uni_C2				"U_LIB_GER_Oberleutnant"
#define WHR_Uni_PC				"U_LIB_GER_Leutnant"
#define WHR_Uni_SL				"U_LIB_GER_Unterofficer"
#define WHR_Uni_S2_r			["fow_u_ger_m43_01_corporal"],["fow_u_ger_m43_02_corporal"]
#define WHR_Uni_S3_r			["fow_u_ger_m43_01_lance_corporal"],["fow_u_ger_m43_02_lance_corporal"]
#define WHR_Uni_Rif_r			["fow_u_ger_m43_01_private"],["fow_u_ger_m43_02_private"],["fow_u_ger_m43_01_frag_private"]
#define WHR_Uni_Med				"U_LIB_GER_Medic"

#define WHR_Uni_VCom			"U_LIB_GER_Tank_crew_unterofficer"
#define WHR_Uni_VCrew			"U_LIB_GER_Tank_crew_private"

//Vests
#define WHR_Vest_CC				"V_LIB_GER_PrivateBelt"
#define WHR_Vest_C2				"V_LIB_GER_OfficerVest"
#define WHR_Vest_PC				"V_LIB_GER_FieldOfficer"
#define WHR_Vest_SL				"V_LIB_GER_VestUnterofficer"
#define WHR_Vest_MP40NCO		"fow_v_heer_mp40_nco"
#define WHR_Vest_Rif			["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_g43"]
#define WHR_Vest_K98			"fow_v_heer_k98"
#define WHR_Vest_G43			"fow_v_heer_g43"
#define WHR_Vest_MP40			"fow_v_heer_mp40"
#define WHR_Vest_MP44			"fow_v_heer_mp44"
#define WHR_Vest_MG				"fow_v_heer_mg"
#define WHR_Vest_Med			"V_LIB_GER_VestKar98"

#define WHR_Vest_VCrew			"V_LIB_GER_TankPrivateBelt"

//Backpack
#define WHR_BP_r				["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_Tonister34_cowhide"]
#define WHR_BP_AF				"B_LIB_GER_A_frame"
#define WHR_BP_AF_Kit			"B_LIB_GER_A_frame_kit"
#define WHR_BP_MG_r				["fow_b_heer_ammo_belt"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"]
								//use _unit removeItemFromBackpack "fow_50Rnd_792x57";
#define WHR_BP_Radio			"B_LIB_GER_Radio"
#define WHR_BP_VCrew			"B_LIB_GER_SapperBackpack_empty"
#define WHR_BP_Med				"B_LIB_GER_MedicBackpack_Big_Empty"
#define WHR_BP_AT				"B_LIB_GER_Panzer_Big_Empty"

//Headgear
#define WHR_Hat_Officer			"H_LIB_GER_OfficerCap"
#define WHR_Hat_Wedge			"fow_h_ger_m38_feldmutze"
#define WHR_Hat					"H_LIB_GER_Cap"
#define WHR_Helmet				["fow_h_ger_m40_heer_01"],["fow_h_ger_m40_heer_01"],["fow_h_ger_m40_heer_camo"],["H_LIB_GER_Helmet"],["H_LIB_GER_Helmet"],["H_LIB_GER_HelmetCamo2"],["H_LIB_GER_HelmetCamo"],["H_LIB_GER_Helmet_net"],["H_LIB_GER_Helmet_ns"],["H_LIB_GER_Helmet_painted"],["H_LIB_GER_Helmet_net_painted"],["H_LIB_GER_Helmet_ns_painted"]

#define WHR_Hat_VCom			["H_LIB_GER_TankOfficerCap"],["H_LIB_GER_TankOfficerCap2"]
#define WHR_Hat_VCrew			["H_LIB_GER_TankPrivateCap"],["H_LIB_GER_TankPrivateCap2"]

//Face
#define WHR_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

#define WHR_Face_Tank_r			["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define WHR_ace_defuse			"ACE_DefusalKit"
#define WHR_ace_earplugs		"ACE_EarPlugs";
#define WHR_ace_firing_device	"ACE_Clacker"
#define WHR_ace_flashlight		"ACE_Flashlight_KSF1"
#define WHR_ace_shovel			"ACE_EntrenchingTool"
#define WHR_ace_sparebarrel		"ACE_SpareBarrel"
#define WHR_ace_wirecutters		"ACE_wirecutter"
#define WHR_ace_carpick			"ACE_key_lockpick"
#define WHR_ace_maptools		"ACE_MapTools"
#define WHR_ace_cabletie		"ACE_CableTie"

//Medical
#define WHR_Bandage				"ACE_fieldDressing";
#define WHR_TQ					"ACE_tourniquet";
#define WHR_Morp				"ACE_morphine";
#define WHR_Epi					"ACE_epinephrine";
#define WHR_Blood1000			"ACE_bloodIV";
#define WHR_Blood500			"ACE_bloodIV_250";
#define WHR_Blood250			"ACE_bloodIV_500";
#define WHR_PAK					"ACE_personalAidKit";
#define WHR_SurgKit				"ACE_surgicalKit";

//Double Misc
#define WHR_Bino				"LIB_Binocular_GER"
#define WHR_Headset				"LIB_GER_Headset"
#define WHR_Demo				"SatchelCharge_Remote_Mag"
#define WHR_Minedetector		"MineDetector"
#define WHR_Toolkit				"ToolKit"

//Radio
//#define WHR_Radio_Pzr			"ItemRadio"

//=== EQUIPMENT ===

#define WHR_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define WHR_leader_equipment \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define WHR_medic_equipment \
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
	case "WHR_CC" : {
		[WHR_Uni_CC] call FNC_AddItem;
		[WHR_Vest_PC] call FNC_AddItem;
		[WHR_BP_Radio] call FNC_AddItem;
		[WHR_Hat_Officer] call FNC_AddItem;
		[WHR_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		WHR_default_equipment;
		WHR_leader_equipment;
		
		//Primary Weapon
		[WHR_Weap_MP40_Mag,1] call FNC_AddItem;
		[WHR_Weap_MP40] call FNC_AddItem;
		[WHR_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[WHR_Weap_P38_Mag,1],
		[WHR_Weap_P38],
		[WHR_Weap_P38_Mag,1,"vest"]
		],[88],
		[//C96
		[WHR_Weap_C96_Mag,1],
		[WHR_Weap_C96],
		[WHR_Weap_C96_Mag,1,"vest"]
		],[12]
		] call FNC_AddItemRandomPercent;
	};

	//Kompanietruppführer
	case "WHR_C2" : {
		[WHR_Uni_SL] call FNC_AddItem;
		[WHR_Vest_PC] call FNC_AddItem;
		[WHR_Hat_Officer] call FNC_AddItem;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		WHR_leader_equipment;
		
		//Primary Weapon
		[WHR_Weap_MP40_Mag,1] call FNC_AddItem;
		[WHR_Weap_MP40] call FNC_AddItem;
		[WHR_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[WHR_Weap_P38_Mag,1],
		[WHR_Weap_P38],
		[WHR_Weap_P38_Mag,1,"vest"]
		],[88],
		[//C96
		[WHR_Weap_C96_Mag,1],
		[WHR_Weap_C96],
		[WHR_Weap_C96_Mag,1,"vest"]
		],[12]
		] call FNC_AddItemRandomPercent;
	};

//Platoon HQ

	//Zugführer
	case "WHR_PC" : {
		[WHR_Uni_PC] call FNC_AddItem;
		[WHR_Vest_PC] call FNC_AddItem;
		[WHR_Hat_Officer] call FNC_AddItem;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		WHR_leader_equipment;
		
		//Primary Weapon
		[WHR_Weap_MP40_Mag,1] call FNC_AddItem;
		[WHR_Weap_MP40] call FNC_AddItem;
		[WHR_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[WHR_Weap_P38_Mag,1],
		[WHR_Weap_P38],
		[WHR_Weap_P38_Mag,1,"vest"]
		],[88],
		[//C96
		[WHR_Weap_C96_Mag,1],
		[WHR_Weap_C96],
		[WHR_Weap_C96_Mag,1,"vest"]
		],[12]
		] call FNC_AddItemRandomPercent;
	};
	
	//Stellver. Zugführer
	case "WHR_P2" : {
		[WHR_Uni_SL] call FNC_AddItem;
		[WHR_Vest_SL] call FNC_AddItem;
		[WHR_BP_AF] call FNC_AddItem;
		[WHR_Hat] call FNC_AddItem;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		WHR_leader_equipment;
		
		//Primary Weapon
		[WHR_Weap_MP40_Mag,1] call FNC_AddItem;
		[WHR_Weap_MP40] call FNC_AddItem;
		[WHR_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Extra
		[WHR_Gren_Frag_P,1] call FNC_AddItem;
		[WHR_Gren_Frag_SF,1] call FNC_AddItem;
		[WHR_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Funker
	case "WHR_RTO" : {
		[WHR_Uni_Rif_r] call FNC_AddItemRandom;
		[WHR_Vest_Rif] call FNC_AddItemRandom;
		[WHR_BP_Radio] call FNC_AddItem;
		[WHR_Hat] call FNC_AddItem;
		[WHR_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		WHR_default_equipment;
		[WHR_Headset] call FNC_AddItem;
		
		//Primary Weapon
		switch (vest _unit) do {
			case (WHR_Vest_K98): {
				[WHR_Weap_K98_Mag,1] call FNC_AddItem;
				[WHR_Weap_K98] call FNC_AddItem;
				[WHR_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
			};
			case (WHR_Vest_G43): {
				[WHR_Weap_G43_Mag,1] call FNC_AddItem;
				[WHR_Weap_G43] call FNC_AddItem;
				[WHR_Weap_G43_Mag,6,"vest"] call FNC_AddItem;
			};
		};
	};
	
	//Melder
	case "WHR_Mess" : {
		[WHR_Uni_Rif_r] call FNC_AddItemRandom;
		[WHR_Vest_Rif] call FNC_AddItemRandom;
		[WHR_BP_r] call FNC_AddItemRandom;
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Primary Weapon
		switch (vest _unit) do {
			case (WHR_Vest_K98): {
				[WHR_Weap_K98_Mag,1] call FNC_AddItem;
				[WHR_Weap_K98] call FNC_AddItem;
				[WHR_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
			};
			case (WHR_Vest_G43): {
				[WHR_Weap_G43_Mag,1] call FNC_AddItem;
				[WHR_Weap_G43] call FNC_AddItem;
				[WHR_Weap_G43_Mag,6,"vest"] call FNC_AddItem;
			};
		};
		
		//Extra
		[WHR_Gren_Frag_SF,1] call FNC_AddItem;
	};
	
	//Medic
	case "WHR_Med" : {
		[WHR_Uni_Rif_r] call FNC_AddItemRandom;
		[WHR_Vest_Med] call FNC_AddItemRandom;
		[WHR_BP_Med] call FNC_AddItem;
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Primary Weapon
		[WHR_Weap_K98_Mag,1] call FNC_AddItem;
		[WHR_Weap_K98] call FNC_AddItem;
		[WHR_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[WHR_Gren_Frag_SF,1] call FNC_AddItem;
		Ger_medic_equipment;
	};

//Squad

	//Gruppenführer
	case "WHR_SL" : {
		[WHR_Uni_SL] call FNC_AddItem;
		[WHR_Vest_SL] call FNC_AddItem;
		[WHR_BP_AF] call FNC_AddItem;
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		WHR_leader_equipment;
		
		//Primary Weapon
		[WHR_Weap_MP40_Mag,1] call FNC_AddItem;
		[WHR_Weap_MP40] call FNC_AddItem;
		[WHR_Weap_MP40_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[WHR_Gren_Frag_SF,1] call FNC_AddItem;
		[WHR_Weap_MG42_Mag,1] call FNC_AddItem;
	};
	
	//Stellvertretender Gruppenführer
	case "WHR_S2" : {
		[WHR_Uni_S2_r] call FNC_AddItemRandom;
		[WHR_Vest_G43] call FNC_AddItemRandom;
		[WHR_BP_r] call FNC_AddItemRandom;
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Primary Weapon
		[WHR_Weap_G43_Mag,1] call FNC_AddItem;
		[WHR_Weap_G43] call FNC_AddItem;
		[WHR_Weap_G43_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[WHR_Gren_Frag_SF,1] call FNC_AddItem;
		[WHR_Weap_MG42_Mag,1] call FNC_AddItem;
	};
	
	//Gefreiter
	case "WHR_S3" : {
		[WHR_Uni_S3_r] call FNC_AddItemRandom;
		[WHR_Vest_MP40] call FNC_AddItem;
		[WHR_BP_r] call FNC_AddItemRandom;
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Primary Weapon
		[WHR_Weap_MP40_Mag,1] call FNC_AddItem;
		[WHR_Weap_MP40] call FNC_AddItem;
		[WHR_Weap_MP40_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[WHR_Gren_Frag_SF,1] call FNC_AddItem;
		[WHR_Weap_MG42_Mag,1] call FNC_AddItem;
	};
	
	//MG-Richtschütze
	case "WHR_MG" : {
		[WHR_Uni_Rif_r] call FNC_AddItemRandom;
		[WHR_Vest_MG] call FNC_AddItem;
		[WHR_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Secondary Weapon
		[
		[//P38
		[WHR_Weap_P38_Mag,1],
		[WHR_Weap_P38],
		[WHR_Weap_P38_Mag,1]
		],[88],
		[//C96
		[WHR_Weap_C96_Mag,1],
		[WHR_Weap_C96],
		[WHR_Weap_C96_Mag,1]
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[WHR_Weap_MG42_Mag,1] call FNC_AddItem;
		[WHR_Weap_MG42] call FNC_AddItem;
		[WHR_Weap_MG42_Mag,5,"vest"] call FNC_AddItem;
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[WHR_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[WHR_Weap_MG42_Mag,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG42_Mag,3] call FNC_AddItem;
			};
		};
	};
	
	//MG-Schütze
	case "WHR_MGA" : {
		[WHR_Uni_Rif_r] call FNC_AddItemRandom;
		[WHR_Vest_Rif] call FNC_AddItemRandom;
		[WHR_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Primary Weapon
		switch (vest _unit) do {
			case (WHR_Vest_K98): {
				[WHR_Weap_K98_Mag,1] call FNC_AddItem;
				[WHR_Weap_K98] call FNC_AddItem;
				[WHR_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
			};
			case (WHR_Vest_G43): {
				[WHR_Weap_G43_Mag,1] call FNC_AddItem;
				[WHR_Weap_G43] call FNC_AddItem;
				[WHR_Weap_G43_Mag,6,"vest"] call FNC_AddItem;
			};
		};
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[WHR_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[WHR_Weap_MG42_Mag,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG42_Mag,3] call FNC_AddItem;
			};
		};
	};
	
	//Grenadier
	case "WHR_Gren" : {
		[WHR_Uni_Rif_r] call FNC_AddItemRandom;
		[WHR_Vest_K98] call FNC_AddItem;
		[WHR_BP_r] call FNC_AddItemRandom;
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Primary Weapon
		[WHR_Weap_K98_Mag,1] call FNC_AddItem;
		[WHR_Weap_K98] call FNC_AddItem;
		[WHR_Weap_K98_RG] call FNC_AddItem;
		[WHR_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		[WHR_Weap_K98_Grn_ATS,2,"vest"] call FNC_AddItem;
		[WHR_Weap_K98_Grn_AP,4,"vest"] call FNC_AddItem;
		[WHR_Weap_K98_Grn_ATL,2,"backpack"] call FNC_AddItem;
	};
	
	//Gewehrschütze
	case "WHR_Rif" : {
		[WHR_Uni_Rif_r] call FNC_AddItemRandom;
		[WHR_Vest_Rif] call FNC_AddItemRandom;
		[WHR_BP_r] call FNC_AddItemRandom;
		[WHR_Helmet] call FNC_AddItemRandom;
		[WHR_Face_r] call FNC_AddItemRandom;
		//Assigned Items
		WHR_default_equipment;
		
		//Primary Weapon
		switch (vest _unit) do {
			case (WHR_Vest_K98): {
				[WHR_Weap_K98_Mag,1] call FNC_AddItem;
				[WHR_Weap_K98] call FNC_AddItem;
				[WHR_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
			};
			case (WHR_Vest_G43): {
				[WHR_Weap_G43_Mag,1] call FNC_AddItem;
				[WHR_Weap_G43] call FNC_AddItem;
				[WHR_Weap_G43_Mag,6,"vest"] call FNC_AddItem;
			};
		};
		
		//Extra
		[WHR_Gren_Frag_SF,2] call FNC_AddItem;
		[WHR_Weap_MG42_Mag,1] call FNC_AddItem;
	};

//Tank Crew

	//Besatzungsführer
	case "WHR_VCom" : {
		[WHR_Uni_VCom] call FNC_AddItem;
		[WHR_Vest_PC] call FNC_AddItem;
		[WHR_BP_VCrew] call FNC_AddItem;
		[WHR_Hat_VCom] call FNC_AddItemRandom;
		[WHR_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		WHR_leader_equipment;
		
		//Primary Weapon
		[WHR_Weap_MP40_Mag,1] call FNC_AddItem;
		[WHR_Weap_MP40] call FNC_AddItem;
		[WHR_Weap_MP40_Mag,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[WHR_Weap_P38_Mag,1],
		[WHR_Weap_P38],
		[WHR_Weap_P38_Mag,1,"vest"]
		],[88],
		[//C96
		[WHR_Weap_C96_Mag,1],
		[WHR_Weap_C96],
		[WHR_Weap_C96_Mag,1,"vest"]
		],[12]
		] call FNC_AddItemRandomPercent;
	};
	
	//Besatzung
	case "WHR_VCrew" : {
		[WHR_Uni_VCrew] call FNC_AddItem;
		[WHR_Vest_VCrew] call FNC_AddItem;
		[WHR_BP_VCrew] call FNC_AddItem;
		[WHR_Hat_VCrew] call FNC_AddItemRandom;
		[WHR_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		WHR_default_equipment;
		
		//Secondary Weapon
		[
		[//P38
		[WHR_Weap_P38_Mag,1],
		[WHR_Weap_P38],
		[WHR_Weap_P38_Mag,2,"vest"]
		],[88],
		[//C96
		[WHR_Weap_C96_Mag,1],
		[WHR_Weap_C96],
		[WHR_Weap_C96_Mag,2,"vest"]
		],[12]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[WHR_Toolkit] call FNC_AddItem;
	};