// Info: Civilian Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Unit
//[this,"Civ_Ran"] call FNC_GearScript;		Random Civs, like either Civ_R1 or Civ_R2
//[this,"Civ_R1"] call FNC_GearScript;		Random Civs with Leather Jackets, Turtlenecks, Slacks
//[this,"Civ_R2"] call FNC_GearScript;		Random Civs with Fat button up shirt, slacks, rubber boots
//[this,"Civ_R3"] call FNC_GearScript;		Random Civs with Suits, Fedora, no backpack
//[this,"Civ_R4"] call FNC_GearScript;		Random Civs with Lab Coats
//[this,"Civ_Priest"] call FNC_GearScript;	Orthodox Priest

	//Unit
//[this,""] call FNC_GearScript;	Loadout Name

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define Civ_Weap_K98			"LIB_K98"
#define Civ_Weap_G43			"LIB_G43"
#define Civ_Weap_MP40			"LIB_MP40"
#define Civ_Weap_MG42			"LIB_MG42"
#define Civ_Weap_MosM9130		"LIB_M9130"
#define Civ_Weap_MosM38			"LIB_M38"
#define Civ_Weap_SVT40			"LIB_SVT_40"
#define Civ_Weap_PPSH_S			"LIB_PPSh41_m"
#define Civ_Weap_PPSH_D			"LIB_PPSh41_d"
#define Civ_Weap_DP				"LIB_DP28"

//Secondary
#define Civ_Weap_P38			"LIB_P38"
#define Civ_Weap_C96			"sab_mauser96_handgun"
#define Civ_Weap_TT33			"LIB_TT33"
#define Civ_Weap_M1895			"LIB_M1895"
#define Civ_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define Civ_Weap_PzFaust		"LIB_PzFaust_30m"
#define Civ_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define Civ_Weap_K98_RG			"LIB_ACC_GW_SB_Empty"

//Ammo
#define Civ_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define Civ_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define Civ_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define Civ_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define Civ_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define Civ_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define Civ_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define Civ_Weap_K98_Grn_AP		"LIB_1Rnd_G_SPRGR_30"
#define Civ_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"
#define Civ_Weap_Mos_Mag		"LIB_5Rnd_762x54"
#define Civ_Weap_SVT40_Mag		"LIB_10Rnd_762x54"
#define Civ_Weap_PPSH_S_Mag		"LIB_35Rnd_762x25"
#define Civ_Weap_PPSH_D_Mag		"LIB_71Rnd_762x25"
#define Civ_Weap_DP_Mag			"LIB_47Rnd_762x54"
#define Civ_Weap_TT33_Mag		"LIB_8Rnd_762x25"
#define Civ_Weap_M1895_Mag		"LIB_7Rnd_762x38"
#define Civ_Flare_W				"LIB_1Rnd_flare_white"
#define Civ_Flare_R				"LIB_1Rnd_flare_red"
#define Civ_Flare_G				"LIB_1Rnd_flare_green"
#define Civ_Flare_Y				"LIB_1Rnd_flare_yellow"

//Grenades
#define Civ_Gren_Frag_P			"HandGrenade"
#define Civ_Gren_Frag_SF		"fow_e_m24_spli"
#define Civ_Gren_Frag_SC		"fow_e_m24"
#define Civ_Gren_Frag_S			"LIB_rg42"
#define Civ_Gren_AT				"LIB_rpg6"
#define Civ_Gren_Smoke_W		"SmokeShell"
#define Civ_Gren_Smoke_B		"SmokeShellBlue"
#define Civ_Gren_Smoke_G		"SmokeShellGreen"
#define Civ_Gren_Smoke_O		"SmokeShellOrange"
#define Civ_Gren_Smoke_P		"SmokeShellPurple"
#define Civ_Gren_Smoke_R		"SmokeShellRed"
#define Civ_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define Civ_Uni_ran				["U_LIB_CIV_Citizen_1"],["U_LIB_CIV_Citizen_2"],["U_LIB_CIV_Citizen_3"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Citizen_7"],["U_LIB_CIV_Citizen_8"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_2"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"],["U_LIB_CIV_Villager_1"],["U_LIB_CIV_Villager_2"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Villager_4"]
//Random, includes Uni_1 and Uni_2
#define Civ_Uni_1_r				["U_LIB_CIV_Citizen_1"],["U_LIB_CIV_Citizen_2"],["U_LIB_CIV_Citizen_3"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Citizen_7"],["U_LIB_CIV_Citizen_8"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_2"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"]
//Leather Jackets, Turtlenecks, Slacks
#define Civ_Uni_2_r				["U_LIB_CIV_Villager_1"],["U_LIB_CIV_Villager_2"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Villager_4"]
//Fat button up shirt, slacks, rubber boots
#define Civ_Uni_3_r				["U_LIB_CIV_Functionary_1"],["U_LIB_CIV_Functionary_2"],["U_LIB_CIV_Functionary_3"],["U_LIB_CIV_Functionary_4"]
//Suits
#define Civ_Uni_Lab_r			["U_LIB_CIV_Assistant"],["U_LIB_CIV_Assistant_2"],["U_LIB_CIV_Doctor"],["U_LIB_CIV_Schoolteacher"],["U_LIB_CIV_Schoolteacher_2"]
//Lab Coats
#define Civ_Uni_Priest			"U_LIB_CIV_Priest"
//Orthodox Priest Robes

//Vests
#define Civ_Vest_r				["V_LIB_SOV_RA_Belt"],["V_LIB_GER_OfficerBelt"]
//A brown or black belt that can hold some extra gear, should be under most of the above clothes

//Backpack
#define Civ_BP					"B_LIB_SOV_RA_GasBag"
#define Civ_BP_ran				["B_LIB_SOV_RA_GasBag"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_SOV_RA_Shinel"],["B_LIB_GER_Tonister34_cowhide"]
#define Civ_BP_r				[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],["B_LIB_SOV_RA_GasBag"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_SOV_RA_Shinel"]
#define Civ_BP_MG_r				["B_LIB_SOV_RA_MGAmmoBag_Big_Empty"],["B_LIB_SOV_RA_MGAmmoBag_Big_Empty"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_GER_Tonister34_cowhide"]
#define Civ_BP_Med				"B_LIB_SOV_RA_MedicalBag_Big_Empty"

//Headgear
#define Civ_Hat_r				[],[],[],[],[],["H_LIB_CIV_Worker_Cap_2"],["H_LIB_CIV_Worker_Cap_3"],["H_LIB_CIV_Worker_Cap_4"],["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
#define Civ_Hat_1_r				["H_LIB_CIV_Worker_Cap_2"],["H_LIB_CIV_Worker_Cap_3"],["H_LIB_CIV_Worker_Cap_4"]
//Beanie/Toque
#define Civ_Hat_2_r				["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
//Floppy Berets
#define Civ_Hat_3_r				["H_Hat_brown"],["H_Hat_grey"]
//Fedora-ish
#define Civ_Beret				"H_Beret_blk"
//Black Beret for irregulars

//Face
#define Civ_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]
#define Civ_Face_Bino			"G_LIB_Binoculars"

//=== MISC ===
//ACE
#define Civ_ace_defuse			"ACE_DefusalKit"
#define Civ_ace_earplugs		"ACE_EarPlugs";
#define Civ_ace_firing_device	"ACE_Clacker"
#define Civ_ace_flashlight		"ACE_Flashlight_KSF1"
#define Civ_ace_shovel			"ACE_EntrenchingTool"
#define Civ_ace_sparebarrel		"ACE_SpareBarrel"
#define Civ_ace_wirecutters		"ACE_wirecutter"
#define Civ_ace_carpick		"ACE_key_lockpick"
#define Civ_ace_maptools		"ACE_MapTools"
#define Civ_ace_cabletie		"ACE_CableTie"

//Medical
#define Civ_Bandage				"ACE_fieldDressing";
#define Civ_TQ					"ACE_tourniquet";
#define Civ_Morp				"ACE_morphine";
#define Civ_Epi					"ACE_epinephrine";
#define Civ_Blood1000			"ACE_bloodIV";
#define Civ_Blood500			"ACE_bloodIV_250";
#define Civ_Blood250			"ACE_bloodIV_500";
#define Civ_PAK					"ACE_personalAidKit";
#define Civ_SurgKit				"ACE_surgicalKit";

//Double Misc
#define Civ_Bino				"LIB_Binocular_GER"
#define Civ_Headset				"LIB_GER_Headset"
#define Civ_Demo				"SatchelCharge_Remote_Mag"
#define Civ_Minedetector		"MineDetector"
#define Civ_Toolkit				"ToolKit"

//=== EQUIPMENT ===

#define Civ_default_equipment \
["ItemWatch"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define Civ_leader_equipment \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define Civ_medic_equipment \
["ACE_fieldDressing",16] call FNC_AddItem; \
["ACE_morphine",5] call FNC_AddItem; \
["ACE_epinephrine",4] call FNC_AddItem; \
["ACE_salineIV_500",3] call FNC_AddItem; \
["ACE_fieldDressing",16] call FNC_AddItem; \
["ACE_morphine",5] call FNC_AddItem; \
["ACE_epinephrine",5] call FNC_AddItem; \
["ACE_salineIV_500",2] call FNC_AddItem;

//======================== Loadouts ========================

//Unit

	//Random Civs, like either Civ_R1 or Civ_R2
	case "Civ_Ran" : {
		[Civ_Uni_ran] call FNC_addItemRandom;
		[Civ_BP_r] call FNC_addItemRandom;
		[Civ_Hat_r] call FNC_addItemRandom;
		[Civ_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		Civ_default_equipment;
	};

	//Random Civs with Leather Jackets, Turtlenecks, Slacks
	case "Civ_R1" : {
		[Civ_Uni_1_r] call FNC_addItemRandom;
		[Civ_BP_r] call FNC_addItemRandom;
		[Civ_Hat_r] call FNC_addItemRandom;
		[Civ_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		Civ_default_equipment;
	};

	//Random Civs with Fat button up shirt, slacks, rubber boots
	case "Civ_R2" : {
		[Civ_Uni_2_r] call FNC_addItemRandom;
		[Civ_BP_r] call FNC_addItemRandom;
		[Civ_Hat_r] call FNC_addItemRandom;
		[Civ_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		Civ_default_equipment;
	};

	//Random Civs with Suits, Fedora, no backpack
	case "Civ_R3" : {
		[Civ_Uni_3_r] call FNC_addItemRandom;
		[Civ_Hat_3_r] call FNC_addItemRandom;
		[Civ_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		Civ_default_equipment;
	};

	//Random Civs with Lab Coats
	case "Civ_R4" : {
		[Civ_Uni_Lab_r] call FNC_addItemRandom;
		[Civ_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		Civ_default_equipment;
	};

	//Orthodox Priest
	case "Civ_Priest" : {
		[Civ_Uni_Priest] call FNC_addItemRandom;
		[Civ_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		Civ_default_equipment;
	};