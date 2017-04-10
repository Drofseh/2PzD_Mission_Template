// Info: German Fallschirmjäger Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"FSJ_CC"] call FNC_GearScript;		Kompanieführer
//[this,"FSJ_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"FSJ_PC"] call FNC_GearScript;		Zugführer
//[this,"FSJ_P2"] call FNC_GearScript;		Stellver. Zugführer
//[this,"FSJ_RTO"] call FNC_GearScript;		Funker
//[this,"FSJ_Mess"] call FNC_GearScript;	Melder
//[this,"FSJ_Med"] call FNC_GearScript;		Medic

	//Gruppe
//[this,"FSJ_SL"] call FNC_GearScript;		Gruppenführer
//[this,"FSJ_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"FSJ_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"FSJ_MGA"] call FNC_GearScript;		MG-Schütze
//[this,"FSJ_Gren"] call FNC_GearScript;	Grenadier
//[this,"FSJ_Mark"] call FNC_GearScript;	Scharfschütze
//[this,"FSJ_Rif"] call FNC_GearScript;		Gewehrschütze

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define FSJ_Weap_K98			"LIB_K98"
#define FSJ_Weap_G43			"LIB_G43"
#define FSJ_Weap_MP40			"LIB_MP40"
#define FSJ_Weap_MP44			"LIB_MP44"
#define FSJ_Weap_MG42			"LIB_MG42"
#define FSJ_Weap_K98_S			"LIB_K98ZF39"

//Secondary
#define FSJ_Weap_P38			"LIB_P38"
#define FSJ_Weap_C96			"sab_mauser96_handgun"

#define FSJ_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define FSJ_Weap_PzFaust		"LIB_PzFaust_30m"
#define FSJ_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define FSJ_Weap_K98_RG			"LIB_ACC_GW_SB_Empty"
#define FSJ_Weap_K98_Bay		"LIB_ACC_K98_Bayo"
#define FSJ_Weap_MosM9130_Bay	"LIB_ACC_M1891_Bayo"

//Ammo
#define FSJ_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define FSJ_Weap_G43_Mag		"LIB_10Rnd_792x57"
#define FSJ_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define FSJ_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define FSJ_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define FSJ_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define FSJ_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define FSJ_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define FSJ_Weap_K98_Grn_AP		"LIB_1Rnd_G_SPRGR_30"
#define FSJ_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"

#define FSJ_Flare_W				"LIB_1Rnd_flare_white"
#define FSJ_Flare_R				"LIB_1Rnd_flare_red"
#define FSJ_Flare_G				"LIB_1Rnd_flare_green"
#define FSJ_Flare_Y				"LIB_1Rnd_flare_yellow"

//Grenades
#define FSJ_Gren_Frag_P			"HandGrenade"
#define FSJ_Gren_Frag_SF		"fow_e_m24_spli"
#define FSJ_Gren_Frag_SC		"fow_e_m24"
#define FSJ_Gren_Smoke_W		"SmokeShell"
#define FSJ_Gren_Smoke_B		"SmokeShellBlue"
#define FSJ_Gren_Smoke_G		"SmokeShellGreen"
#define FSJ_Gren_Smoke_O		"SmokeShellOrange"
#define FSJ_Gren_Smoke_P		"SmokeShellPurple"
#define FSJ_Gren_Smoke_R		"SmokeShellRed"
#define FSJ_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define FSJ_Uni_CC				"U_LIB_GER_Hauptmann"
#define FSJ_Uni_C2				"U_LIB_GER_Oberleutnant"
#define FSJ_Uni_PC				"U_LIB_GER_Leutnant"
#define FSJ_Uni_SL				"fow_u_ger_fall_01_sergeant"
#define FSJ_Uni_S2				"fow_u_ger_fall_01_corporal"
#define FSJ_Uni_Rif				"fow_u_ger_fall_01_lance_corporal"

#define FSJ_Uni_VCom			"fow_u_ger_fall_01_sergeant"
#define FSJ_Uni_VCrew			"fow_u_ger_fall_01_lance_corporal"

//Vests
#define FSJ_Vest_CC				"V_LIB_GER_PrivateBelt"
#define FSJ_Vest_C2				"V_LIB_GER_OfficerVest"
#define FSJ_Vest_PC				"V_LIB_GER_FieldOfficer"
#define FSJ_Vest_SL				"V_LIB_GER_VestUnterofficer"
#define FSJ_Vest_MP40NCO		"fow_v_heer_mp40_nco"
#define FSJ_Vest_Rif			"fow_v_fall_bandoleer"
#define FSJ_Vest_K98			"fow_v_heer_k98"
#define FSJ_Vest_G43			"fow_v_heer_g43"
#define FSJ_Vest_MP40			"fow_v_heer_mp40"
#define FSJ_Vest_MP44			"fow_v_heer_mp44"
#define FSJ_Vest_MG				"fow_v_heer_mg"
#define FSJ_Vest_MGA			"fow_v_heer_k98_ass"
#define FSJ_Vest_Med			"V_LIB_GER_VestKar98"

#define FSJ_Vest_VCrew			"V_LIB_GER_TankPrivateBelt"

//Backpack
#define FSJ_BP					"B_LIB_GER_Tonister34_cowhide"
#define FSJ_BP_Para				"ACE_NonSteerableParachute"
#define FSJ_BP_AF				"B_LIB_GER_A_frame"
#define FSJ_BP_AF_Kit			"B_LIB_GER_A_frame_kit"
#define FSJ_BP_MG_r				["fow_b_heer_ammo_belt"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"]
								//use _unit removeItemFromBackpack "fow_50Rnd_792x57";
#define FSJ_BP_Radio			"B_LIB_GER_Radio"
#define FSJ_BP_VCrew			"B_LIB_GER_SapperBackpack_empty"
#define FSJ_BP_Med				"B_LIB_GER_MedicBackpack_Big_Empty"

//Headgear
#define FSJ_Hat_Officer			"H_LIB_GER_OfficerCap"
#define FSJ_Hat_Wedge			"fow_h_ger_m38_feldmutze"
#define FSJ_Hat					"H_LIB_GER_Cap"
#define FSJ_Helmet				"fow_h_ger_m40_fall_01"

#define FSJ_Hat_VCom			["H_LIB_GER_TankOfficerCap"],["H_LIB_GER_TankOfficerCap2"]
#define FSJ_Hat_VCrew			["H_LIB_GER_TankPrivateCap"],["H_LIB_GER_TankPrivateCap2"]

//Face
#define FSJ_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

#define FSJ_Face_Tank_r			["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define FSJ_ace_defuse			"ACE_DefusalKit"
#define FSJ_ace_earplugs		"ACE_EarPlugs";
#define FSJ_ace_firing_device	"ACE_Clacker"
#define FSJ_ace_flashlight		"ACE_Flashlight_KSF1"
#define FSJ_ace_shovel			"ACE_EntrenchingTool"
#define FSJ_ace_sparebarrel		"ACE_SpareBarrel"
#define FSJ_ace_wirecutters		"ACE_wirecutter"
#define FSJ_ace_carpick			"ACE_key_lockpick"
#define FSJ_ace_maptools		"ACE_MapTools"
#define FSJ_ace_cabletie		"ACE_CableTie"

//Medical
#define FSJ_Bandage				"ACE_fieldDressing";
#define FSJ_TQ					"ACE_tourniquet";
#define FSJ_Morp				"ACE_morphine";
#define FSJ_Epi					"ACE_epinephrine";
#define FSJ_Blood1000			"ACE_bloodIV";
#define FSJ_Blood500			"ACE_bloodIV_250";
#define FSJ_Blood250			"ACE_bloodIV_500";
#define FSJ_PAK					"ACE_personalAidKit";
#define FSJ_SurgKit				"ACE_surgicalKit";

//Double Misc
#define FSJ_Bino				"LIB_Binocular_GER"
#define FSJ_Headset				"LIB_GER_Headset"
#define FSJ_Demo				"SatchelCharge_Remote_Mag"
#define FSJ_Minedetector		"MineDetector"
#define FSJ_Toolkit				"ToolKit"

//Radio
//#define FSJ_Radio_Pzr			"ItemRadio"

//=== EQUIPMENT ===

#define FSJ_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define FSJ_leader_equipment \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define FSJ_medic_equipment \
["ACE_fieldDressing",16] call FNC_AddItem; \
["ACE_morphine",5] call FNC_AddItem; \
["ACE_epinephrine",4] call FNC_AddItem; \
["ACE_salineIV_500",3] call FNC_AddItem;

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "FSJ_CC" : {
		[FSJ_Uni_CC] call FNC_AddItem;
		[FSJ_Vest_PC] call FNC_AddItem;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		FSJ_leader_equipment;
		
		//Primary Weapon
		[FSJ_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Kompanietruppführer
	case "FSJ_C2" : {
		[FSJ_Uni_C2] call FNC_AddItem;
		[FSJ_Vest_PC] call FNC_AddItem;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		FSJ_leader_equipment;
		
		//Primary Weapon
		[FSJ_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};

//Platoon HQ

	//Zugführer
	case "FSJ_PC" : {
		[FSJ_Uni_PC] call FNC_AddItem;
		[FSJ_Vest_PC] call FNC_AddItem;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		FSJ_leader_equipment;
		
		//Primary Weapon
		[FSJ_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Stellver. Zugführer
	case "FSJ_P2" : {
		[FSJ_Uni_SL] call FNC_AddItem;
		[FSJ_Vest_Rif] call FNC_AddItem;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		FSJ_leader_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Funker
	case "FSJ_RTO" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_Rif] call FNC_AddItemRandom;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Melder
	case "FSJ_Mess" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_Rif] call FNC_AddItemRandom;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Medic
	case "FSJ_Med" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_Rif] call FNC_AddItemRandom;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
		FSJ_medic_equipment;
	};

//Squad

	//Gruppenführer
	case "FSJ_SL" : {
		[FSJ_Uni_SL] call FNC_AddItem;
		[FSJ_Vest_MP40NCO] call FNC_AddItem;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		FSJ_leader_equipment;
		
		//Primary Weapon
		[FSJ_Weap_MP40_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,2] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Stellvertretender Gruppenführer
	case "FSJ_S2" : {
		[FSJ_Uni_S2] call FNC_AddItemRandom;
		[FSJ_Vest_MP40] call FNC_AddItemRandom;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_MP40_Mag,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,2] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//MG-Richtschütze
	case "FSJ_MG" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_MG] call FNC_AddItem;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_MG42_Mag,5,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,2] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//MG-Schütze
	case "FSJ_MGA" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_MGA] call FNC_AddItemRandom;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		FSJ_leader_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,2] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Scharfschütze
	case "FSJ_Mark" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_Rif] call FNC_AddItemRandom;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
	};
	
	//Grenadier
	case "FSJ_Gren" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_Rif] call FNC_AddItem;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
	};
	
	//Gewehrschütze
	case "FSJ_Rif" : {
		[FSJ_Uni_Rif] call FNC_AddItemRandom;
		[FSJ_Vest_Rif] call FNC_AddItemRandom;
		[FSJ_BP_Para] call FNC_AddItem;
		[FSJ_Helmet] call FNC_AddItem;
		[FSJ_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		FSJ_default_equipment;
		
		//Primary Weapon
		[FSJ_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[FSJ_Weap_P38_Mag,1] call FNC_AddItem;
		[FSJ_Weap_P38] call FNC_AddItem;
		[FSJ_Weap_P38_Mag,5] call FNC_AddItem;
		
		//Extra
		[FSJ_Gren_Smoke_W,2] call FNC_AddItem;
		[FSJ_Gren_Frag_SC,1] call FNC_AddItem;
		[FSJ_Gren_Frag_P,1] call FNC_AddItem;
	};