// Info: French Partisan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Unit
//[this,"PFrn_PC"] call FNC_GearScript;		Platoon level or higher leader
//[this,"PFrn_SL"] call FNC_GearScript;		Squad or team level leader
//[this,"PFrn_MG"] call FNC_GearScript;		Machine Gunner
//[this,"PFrn_MGA"] call FNC_GearScript;	Machine Gun Assistant
//[this,"PFrn_AR"] call FNC_GearScript;		Automatic Rifleman
//[this,"PFrn_Parti"] call FNC_GearScript;	Random Partisan

	//Unit
//[this,""] call FNC_GearScript;	Loadout Name

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define PFrn_Weap_K98			"LIB_K98"
#define PFrn_Weap_G43			"LIB_G43"
#define PFrn_Weap_MP40			"LIB_MP40"
#define PFrn_Weap_MG42			"LIB_MG42"
#define PFrn_Weap_Sten			"fow_w_sten_mk2"
#define PFrn_Weap_Bren			"fow_w_bren"

//Secondary
#define PFrn_Weap_P38			"LIB_P38"
#define PFrn_Weap_C96			"sab_mauser96_handgun"
#define PFrn_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define PFrn_Weap_PzFaust		"LIB_PzFaust_30m"
#define PFrn_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define PFrn_Weap_K98_RG		"LIB_ACC_GW_SB_Empty"

//Ammo
#define PFrn_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define PFrn_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define PFrn_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define PFrn_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define PFrn_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define PFrn_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define PFrn_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define PFrn_Weap_K98_Grn_AP	"LIB_1Rnd_G_SPRGR_30"
#define PFrn_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"
#define PFrn_Weap_Sten_Mag		"fow_32Rnd_9x19_sten"
#define PFrn_Weap_Bren_Mag		"fow_30Rnd_303_bren"
#define PFrn_Flare_W			"LIB_1Rnd_flare_white"
#define PFrn_Flare_R			"LIB_1Rnd_flare_red"
#define PFrn_Flare_G			"LIB_1Rnd_flare_green"
#define PFrn_Flare_Y			"LIB_1Rnd_flare_yellow"

//Grenades
#define PFrn_Gren_Frag_P		"HandGrenade"
#define PFrn_Gren_Frag_SF		"fow_e_m24_spli"
#define PFrn_Gren_Frag_SC		"fow_e_m24"
#define PFrn_Gren_Smoke_W		"SmokeShell"
#define PFrn_Gren_Smoke_B		"SmokeShellBlue"
#define PFrn_Gren_Smoke_G		"SmokeShellGreen"
#define PFrn_Gren_Smoke_O		"SmokeShellOrange"
#define PFrn_Gren_Smoke_P		"SmokeShellPurple"
#define PFrn_Gren_Smoke_R		"SmokeShellRed"
#define PFrn_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define PFrn_Uni_ran			["U_LIB_CIV_Citizen_1"],["U_LIB_CIV_Citizen_2"],["U_LIB_CIV_Citizen_3"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Citizen_7"],["U_LIB_CIV_Citizen_8"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_2"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"],["U_LIB_CIV_Villager_1"],["U_LIB_CIV_Villager_2"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Villager_4"]
//Random, includes Uni_1 and Uni_2
#define PFrn_Uni_1_r			["U_LIB_CIV_Citizen_1"],["U_LIB_CIV_Citizen_2"],["U_LIB_CIV_Citizen_3"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Citizen_7"],["U_LIB_CIV_Citizen_8"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_2"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"]
//Leather Jackets, Turtlenecks, Slacks
#define PFrn_Uni_2_r			["U_LIB_CIV_Villager_1"],["U_LIB_CIV_Villager_2"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Villager_4"]
//Fat button up shirt, slacks, rubber boots
#define PFrn_Uni_3_r			["U_LIB_CIV_Functionary_1"],["U_LIB_CIV_Functionary_2"],["U_LIB_CIV_Functionary_3"],["U_LIB_CIV_Functionary_4"]
//Suits
#define PFrn_Uni_Lab_r			["U_LIB_CIV_Assistant"],["U_LIB_CIV_Assistant_2"],["U_LIB_CIV_Doctor"],["U_LIB_CIV_Schoolteacher"],["U_LIB_CIV_Schoolteacher_2"]
//Lab Coats
#define PFrn_Uni_Priest			"U_LIB_CIV_Priest"
//Orthodox Priest Robes
#define PFrn_Uni_r				["U_BG_Guerilla3_1"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"]
//Partisan appropriate uniforms

//Vests
#define PFrn_Vest_r				["V_LIB_SOV_RA_Belt"],["V_LIB_GER_OfficerBelt"]
//A brown or black belt that can hold some extra gear, should be under most of the above clothes

//Backpack
#define PFrn_BP					"B_LIB_SOV_RA_GasBag"
#define PFrn_BP_r				[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],["B_LIB_SOV_RA_GasBag"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_SOV_RA_Shinel"],["B_LIB_GER_Tonister34_cowhide"]
#define PFrn_BP_MG_r			["fow_b_heer_ammo_belt"],["fow_b_heer_ammo_belt"],["B_LIB_SOV_RA_MGAmmoBag_Big_Empty"],["B_LIB_SOV_RA_MGAmmoBag_Big_Empty"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_GER_Tonister34_cowhide"]
#define PFrn_BP_Med				"B_LIB_SOV_RA_MedicalBag_Big_Empty"

//Headgear
#define PFrn_Hat_r				[],[],[],[],[],["H_LIB_CIV_Worker_Cap_2"],["H_LIB_CIV_Worker_Cap_3"],["H_LIB_CIV_Worker_Cap_4"],["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
#define PFrn_Hat_1_r			["H_LIB_CIV_Worker_Cap_2"],["H_LIB_CIV_Worker_Cap_3"],["H_LIB_CIV_Worker_Cap_4"]
//Beanie/Toque
#define PFrn_Hat_2_r			["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
//Floppy Berets
#define PFrn_Hat_3_r			["H_Hat_brown"],["H_Hat_grey"]
//Fedora-ish
#define PFrn_Beret				"H_Beret_blk"
//Black Beret for irregulars

//Face
#define PFrn_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]
#define PFrn_Face_Bino			"G_LIB_Binoculars"

//=== MISC ===
//ACE
#define PFrn_ace_defuse			"ACE_DefusalKit"
#define PFrn_ace_earplugs		"ACE_EarPlugs";
#define PFrn_ace_firing_device	"ACE_Clacker"
#define PFrn_ace_flashlight		"ACE_Flashlight_KSF1"
#define PFrn_ace_shovel			"ACE_EntrenchingTool"
#define PFrn_ace_sparebarrel	"ACE_SpareBarrel"
#define PFrn_ace_wirecutters	"ACE_wirecutter"
#define PFrn_ace_carpick		"ACE_key_lockpick"
#define PFrn_ace_maptools		"ACE_MapTools"
#define PFrn_ace_cabletie		"ACE_CableTie"

//Medical
#define PFrn_Bandage			"ACE_fieldDressing";
#define PFrn_TQ					"ACE_tourniquet";
#define PFrn_Morp				"ACE_morphine";
#define PFrn_Epi				"ACE_epinephrine";
#define PFrn_Blood1000			"ACE_bloodIV";
#define PFrn_Blood500			"ACE_bloodIV_250";
#define PFrn_Blood250			"ACE_bloodIV_500";
#define PFrn_PAK				"ACE_personalAidKit";
#define PFrn_SurgKit			"ACE_surgicalKit";

//Double Misc
#define PFrn_Bino				"LIB_Binocular_GER"
#define PFrn_Headset			"LIB_GER_Headset"
#define PFrn_Demo				"SatchelCharge_Remote_Mag"
#define PFrn_Minedetector		"MineDetector"
#define PFrn_Toolkit			"ToolKit"

//=== EQUIPMENT ===

#define PFrn_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_fieldDressing",2] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define PFrn_leader_equipment \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define PFrn_medic_equipment \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",4,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",3,"backpack"] call FNC_AddItem; \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",5,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;

//======================== Loadouts ========================

//Unit

	//Platoon level or higher leader
	case "PFrn_PC" : {
		[PFrn_Uni_ran] call FNC_addItemRandom;
		[PFrn_Vest_r] call FNC_addItemRandom;
		[PFrn_BP] call FNC_addItem;
		[PFrn_Beret] call FNC_addItem;
		[PFrn_Face_Bino] call FNC_addItem;
		
		//Assigned Items
		PFrn_default_equipment;
		PFrn_leader_equipment;
		
		//Primary Weapon
		[
		[//Sten
		[PFrn_Weap_Sten_Mag,1],
		[PFrn_Weap_Sten],
		[PFrn_Weap_Sten_Mag,3]
		],[50],
		[//MP40
		[PFrn_Weap_MP40_Mag,1],
		[PFrn_Weap_MP40],
		[PFrn_Weap_MP40_Mag,3]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[PRus_Flare_W,1] call FNC_addItem;
		[PRus_Flare_Pistol] call FNC_addItem;
		[PRus_Flare_W,2,"backpack"] call FNC_addItem;
		[PRus_Flare_R,2,"backpack"] call FNC_addItem;
		[PRus_Flare_G,2,"backpack"] call FNC_addItem;
		[PRus_Flare_Y,2,"backpack"] call FNC_addItem;
		
		//Launcher
		[
		[//Nothing
		[]
		],[90],
		[//Panzerfaust
		[PFrn_Weap_PzFaust]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PFrn_Gren_Smoke_W,2] call FNC_AddItem;
		[//Frag Grenades
		[
		[PFrn_Gren_Frag_P,1]
		],[34],
		[
		[PFrn_Gren_Frag_SF,1]
		],[33],
		[
		[PFrn_Gren_Frag_SC,1]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Squad or team level leader
	case "PFrn_SL" : {
		[PFrn_Uni_ran] call FNC_addItemRandom;
		[PFrn_Vest_r] call FNC_addItemRandom;
		[PFrn_BP] call FNC_addItem;
		[PFrn_Beret] call FNC_addItem;
		[PFrn_Face_Bino] call FNC_addItem;
		
		//Assigned Items
		PFrn_default_equipment;
		PFrn_leader_equipment;
		
		//Primary Weapon
		[
		[//Sten
		[PFrn_Weap_Sten_Mag,1],
		[PFrn_Weap_Sten],
		[PFrn_Weap_Sten_Mag,3]
		],[50],
		[//MP40
		[PFrn_Weap_MP40_Mag,1],
		[PFrn_Weap_MP40],
		[PFrn_Weap_MP40_Mag,3]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[PRus_Flare_W,1] call FNC_addItem;
		[PRus_Flare_Pistol] call FNC_addItem;
		[PRus_Flare_W,2,"backpack"] call FNC_addItem;
		[PRus_Flare_R,2,"backpack"] call FNC_addItem;
		[PRus_Flare_G,2,"backpack"] call FNC_addItem;
		[PRus_Flare_Y,2,"backpack"] call FNC_addItem;
		
		//Launcher
		[
		[//Nothing
		[]
		],[90],
		[//Panzerfaust
		[PFrn_Weap_PzFaust]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PFrn_Gren_Smoke_W,2] call FNC_AddItem;
		[//Frag Grenades
		[
		[PFrn_Gren_Frag_P,1]
		],[34],
		[
		[PFrn_Gren_Frag_SF,1]
		],[33],
		[
		[PFrn_Gren_Frag_SC,1]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Machine Gunner
	case "PFrn_MG" : {
		[PFrn_Uni_ran] call FNC_addItemRandom;
		[PFrn_Vest_r] call FNC_addItemRandom;
		[PFrn_BP_MG_r] call FNC_addItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[PFrn_Hat_r] call FNC_addItemRandom;
		[PFrn_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PFrn_default_equipment;
		
		//Primary Weapon
		[PFrn_Weap_MG42_Mag,1] call FNC_addItem;
		[PFrn_Weap_MG42] call FNC_addItem;
		[PFrn_Weap_MG42_Mag,2] call FNC_addItem;
		
		//Secondary Weapon
		[
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[75],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_MGAmmoBag_Big_Empty"): {
				[Ger_Weap_MG42_Mag,5] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack_Green"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2_Green"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG42_Mag,5] call FNC_AddItem;
			};
		};
	};

	//Machine Gun Assistant
	case "PFrn_MGA" : {
		[PFrn_Uni_ran] call FNC_addItemRandom;
		[PFrn_Vest_r] call FNC_addItemRandom;
		[PFrn_BP_MG_r] call FNC_addItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[PFrn_Hat_r] call FNC_addItemRandom;
		[PFrn_Face_Bino] call FNC_addItem;
		
		//Assigned Items
		PFrn_default_equipment;
		PFrn_leader_equipment;
		
		//Primary Weapon
		[
		[//K98
		[PFrn_Weap_K98_Mag,1],
		[PFrn_Weap_K98],
		[PFrn_Weap_K98_Mag,6]
		],[40],
		[//Sten
		[PFrn_Weap_Sten_Mag,1],
		[PFrn_Weap_Sten],
		[PFrn_Weap_Sten_Mag,3]
		],[20],
		[//MP40
		[PFrn_Weap_MP40_Mag,1],
		[PFrn_Weap_MP40],
		[PFrn_Weap_MP40_Mag,3]
		],[20],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,2]
		],[15],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,3]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		switch TRUE do {
		case (_unit hasWeapon PFrn_Weap_K98): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[34],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[11]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PFrn_Weap_Sten): {
		[
		[//Nothing
		[]
		],[77],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[18],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[5]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PFrn_Weap_MP40): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[34],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[11]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PFrn_Weap_P38): {
		[PFrn_Weap_P38_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PFrn_Weap_C96): {
		[PFrn_Weap_C96_Mag,2] call FNC_AddItem;
		};
		};
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_MGAmmoBag_Big_Empty"): {
				[Ger_Weap_MG42_Mag,5] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack_Green"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2_Green"): {
				[Ger_Weap_MG42_Mag,6] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG42_Mag,5] call FNC_AddItem;
			};
		};
	};

	//Automatic Rifleman
	case "PFrn_AR" : {
		[PFrn_Uni_ran] call FNC_addItemRandom;
		[PFrn_Vest_r] call FNC_addItemRandom;
		[PFrn_BP] call FNC_addItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[PFrn_Hat_r] call FNC_addItemRandom;
		[PFrn_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PFrn_default_equipment;
		
		//Primary Weapon
		[PFrn_Weap_Bren_Mag,1] call FNC_addItem;
		[PFrn_Weap_Bren] call FNC_addItem;
		[PFrn_Weap_Bren_Mag,2] call FNC_addItem;
		
		//Secondary Weapon
		[
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[75],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PFrn_Weap_Bren_Mag,6] call FNC_AddItem;
	};

	//Partisan
	case "PFrn_Parti" : {
		[PFrn_Uni_ran] call FNC_addItemRandom;
		[PFrn_Vest_r] call FNC_addItemRandom;
		[PFrn_BP_r] call FNC_addItemRandom;
		[PFrn_Hat_r] call FNC_addItemRandom;
		[PFrn_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PFrn_default_equipment;
		
		
		[
		[//K98
		[PFrn_Weap_K98_Mag,1],
		[PFrn_Weap_K98],
		[PFrn_Weap_K98_Mag,6]
		],[40],
		[//Sten
		[PFrn_Weap_Sten_Mag,1],
		[PFrn_Weap_Sten],
		[PFrn_Weap_Sten_Mag,3]
		],[20],
		[//MP40
		[PFrn_Weap_MP40_Mag,1],
		[PFrn_Weap_MP40],
		[PFrn_Weap_MP40_Mag,3]
		],[20],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,2]
		],[15],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,3]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		switch TRUE do {
		case (_unit hasWeapon PFrn_Weap_K98): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[34],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[11]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PFrn_Weap_Sten): {
		[
		[//Nothing
		[]
		],[77],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[18],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[5]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PFrn_Weap_MP40): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PFrn_Weap_P38_Mag,1],
		[PFrn_Weap_P38],
		[PFrn_Weap_P38_Mag,1]
		],[34],
		[//C96
		[PFrn_Weap_C96_Mag,1],
		[PFrn_Weap_C96],
		[PFrn_Weap_C96_Mag,2]
		],[11]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PFrn_Weap_P38): {
		[PFrn_Weap_P38_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PFrn_Weap_C96): {
		[PFrn_Weap_C96_Mag,2] call FNC_AddItem;
		};
		};
		
		//Launcher
		[
		[//Nothing
		[]
		],[90],
		[//Panzerfaust
		[PFrn_Weap_PzFaust]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		//Chance to either be grenadier or have a hand grenade and extra MG ammo
		switch TRUE do {
		case (_unit hasWeapon PFrn_Weap_K98): {
		[
		[//Nope!
		[]
		],[84],
		[//Yes!
		[PFrn_BP],
		[PFrn_Weap_K98_RG],
		[PFrn_Weap_K98_Grn_ATS,2],
		[PFrn_Weap_K98_Grn_AP,2],
		[PFrn_Weap_K98_Grn_ATL,1]
		],[16]
		] call FNC_AddItemRandomPercent;
		};
		default {
		[PFrn_Weap_MG42_Mag,1] call FNC_addItem;
		[//Frag Grenades
		[
		[PFrn_Gren_Frag_P,1]
		],[34],
		[
		[PFrn_Gren_Frag_SF,1]
		],[33],
		[
		[PFrn_Gren_Frag_SC,1]
		],[33]
		] call FNC_AddItemRandomPercent;
		};
		};
	};

	//Loadout Name
	//case "" : {
		//Uniform
		//Vests
		//Backpack
		//Hat
		//Face
		
		//Assigned Items
		
		//Primary Weapon
		
		//Secondary Weapon
		
		//Launcher
		
		//Extra
	//};