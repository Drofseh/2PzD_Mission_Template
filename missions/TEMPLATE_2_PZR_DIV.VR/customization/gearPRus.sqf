// Info: Soviet Partisan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Unit
//[this,"PRus_PC"] call FNC_GearScript;		Platoon level or higher leader.
//[this,"PRus_SL"] call FNC_GearScript;		Squad level leader
//[this,"PRus_MG"] call FNC_GearScript;		Machine Gunner
//[this,"PRus_MGA"] call FNC_GearScript;	Machine Gun Assistant
//[this,"PRus_Parti"] call FNC_GearScript;	Random Partisan

	//Unit
//[this,""] call FNC_GearScript;	Loadout Name

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define PRus_Weap_K98			"LIB_K98"
#define PRus_Weap_G43			"LIB_G43"
#define PRus_Weap_MP40			"LIB_MP40"
#define PRus_Weap_MG42			"LIB_MG42"
#define PRus_Weap_MosM9130		"LIB_M9130"
#define PRus_Weap_MosM38		"LIB_M38"
#define PRus_Weap_SVT40			"LIB_SVT_40"
#define PRus_Weap_PPSH_S		"LIB_PPSh41_m"
#define PRus_Weap_PPSH_D		"LIB_PPSh41_d"
#define PRus_Weap_DP			"LIB_DP28"

//Secondary
#define PRus_Weap_P38			"LIB_P38"
#define PRus_Weap_C96			"sab_mauser96_handgun"
#define PRus_Weap_TT33			"LIB_TT33"
#define PRus_Weap_M1895			"LIB_M1895"
#define PRus_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define PRus_Weap_PzFaust		"LIB_PzFaust_30m"
#define PRus_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define PRus_Weap_K98_RG		"LIB_ACC_GW_SB_Empty"

//Ammo
#define PRus_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define PRus_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define PRus_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define PRus_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define PRus_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define PRus_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define PRus_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define PRus_Weap_K98_Grn_AP	"LIB_1Rnd_G_SPRGR_30"
#define PRus_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"
#define PRus_Weap_Mos_Mag		"LIB_5Rnd_762x54"
#define PRus_Weap_SVT40_Mag		"LIB_10Rnd_762x54"
#define PRus_Weap_PPSH_S_Mag	"LIB_35Rnd_762x25"
#define PRus_Weap_PPSH_D_Mag	"LIB_71Rnd_762x25"
#define PRus_Weap_DP_Mag		"LIB_47Rnd_762x54"
#define PRus_Weap_TT33_Mag		"LIB_8Rnd_762x25"
#define PRus_Weap_M1895_Mag		"LIB_7Rnd_762x38"
#define PRus_Flare_W			"LIB_1Rnd_flare_white"
#define PRus_Flare_R			"LIB_1Rnd_flare_red"
#define PRus_Flare_G			"LIB_1Rnd_flare_green"
#define PRus_Flare_Y			"LIB_1Rnd_flare_yellow"

//Grenades
#define PRus_Gren_Frag_P		"HandGrenade"
#define PRus_Gren_Frag_SF		"fow_e_m24_spli"
#define PRus_Gren_Frag_SC		"fow_e_m24"
#define PRus_Gren_Frag_S		"LIB_rg42"
#define PRus_Gren_AT			"LIB_rpg6"
#define PRus_Gren_Smoke_W		"SmokeShell"
#define PRus_Gren_Smoke_B		"SmokeShellBlue"
#define PRus_Gren_Smoke_G		"SmokeShellGreen"
#define PRus_Gren_Smoke_O		"SmokeShellOrange"
#define PRus_Gren_Smoke_P		"SmokeShellPurple"
#define PRus_Gren_Smoke_R		"SmokeShellRed"
#define PRus_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define PRus_Uni_ran			["U_LIB_CIV_Citizen_1"],["U_LIB_CIV_Citizen_2"],["U_LIB_CIV_Citizen_3"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Citizen_7"],["U_LIB_CIV_Citizen_8"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_2"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"],["U_LIB_CIV_Villager_1"],["U_LIB_CIV_Villager_2"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Villager_4"]
//Random, includes Uni_1 and Uni_2
#define PRus_Uni_1_r			["U_LIB_CIV_Citizen_1"],["U_LIB_CIV_Citizen_2"],["U_LIB_CIV_Citizen_3"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Citizen_7"],["U_LIB_CIV_Citizen_8"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_2"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"]
//Leather Jackets, Turtlenecks, Slacks
#define PRus_Uni_2_r			["U_LIB_CIV_Villager_1"],["U_LIB_CIV_Villager_2"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Villager_4"]
//Fat button up shirt, slacks, rubber boots
#define PRus_Uni_3_r			["U_LIB_CIV_Functionary_1"],["U_LIB_CIV_Functionary_2"],["U_LIB_CIV_Functionary_3"],["U_LIB_CIV_Functionary_4"]
//Suits
#define PRus_Uni_Lab_r			["U_LIB_CIV_Assistant"],["U_LIB_CIV_Assistant_2"],["U_LIB_CIV_Doctor"],["U_LIB_CIV_Schoolteacher"],["U_LIB_CIV_Schoolteacher_2"]
//Lab Coats
#define PRus_Uni_Priest			"U_LIB_CIV_Priest"
//Orthodox Priest Robes
#define PRus_Uni_r				["U_BG_Guerilla3_1"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"]
//Partisan appropriate uniforms

//Vests
#define PRus_Vest_r				["V_LIB_SOV_RA_Belt"],["V_LIB_GER_OfficerBelt"]
//A brown or black belt that can hold some extra gear, should be under most of the above clothes

//Backpack
#define PRus_BP					"B_LIB_SOV_RA_GasBag"
#define PRus_BP_ran				["B_LIB_SOV_RA_GasBag"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_SOV_RA_Shinel"],["B_LIB_GER_Tonister34_cowhide"]
#define PRus_BP_r				[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],["B_LIB_SOV_RA_GasBag"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_SOV_RA_Shinel"],["B_LIB_GER_Tonister34_cowhide"]
#define PRus_BP_MG_r			["B_LIB_SOV_RA_MGAmmoBag_Big_Empty"],["B_LIB_SOV_RA_MGAmmoBag_Big_Empty"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_GER_Tonister34_cowhide"]
#define PRus_BP_Med				"B_LIB_SOV_RA_MedicalBag_Big_Empty"

//Headgear
#define PRus_Hat_r				[],[],[],[],[],["H_LIB_CIV_Worker_Cap_2"],["H_LIB_CIV_Worker_Cap_3"],["H_LIB_CIV_Worker_Cap_4"],["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
#define PRus_Hat_1_r			["H_LIB_CIV_Worker_Cap_2"],["H_LIB_CIV_Worker_Cap_3"],["H_LIB_CIV_Worker_Cap_4"]
//Beanie/Toque
#define PRus_Hat_2_r			["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
//Floppy Berets
#define PRus_Hat_3_r			["H_Hat_brown"],["H_Hat_grey"]
//Fedora-ish
#define PRus_Beret				"H_Beret_blk"
//Black Beret for irregulars

//Face
#define PRus_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]
#define PRus_Face_Bino			"G_LIB_Binoculars"

//=== MISC ===
//ACE
#define PRus_ace_defuse			"ACE_DefusalKit"
#define PRus_ace_earplugs		"ACE_EarPlugs";
#define PRus_ace_firing_device	"ACE_Clacker"
#define PRus_ace_flashlight		"ACE_Flashlight_KSF1"
#define PRus_ace_shovel			"ACE_EntrenchingTool"
#define PRus_ace_sparebarrel	"ACE_SpareBarrel"
#define PRus_ace_wirecutters	"ACE_wirecutter"
#define PRus_ace_carpick		"ACE_key_lockpick"
#define PRus_ace_maptools		"ACE_MapTools"
#define PRus_ace_cabletie		"ACE_CableTie"

//Medical
#define PRus_Bandage			"ACE_fieldDressing";
#define PRus_TQ					"ACE_tourniquet";
#define PRus_Morp				"ACE_morphine";
#define PRus_Epi				"ACE_epinephrine";
#define PRus_Blood1000			"ACE_bloodIV";
#define PRus_Blood500			"ACE_bloodIV_250";
#define PRus_Blood250			"ACE_bloodIV_500";
#define PRus_PAK				"ACE_personalAidKit";
#define PRus_SurgKit			"ACE_surgicalKit";

//Double Misc
#define PRus_Bino				"LIB_Binocular_GER"
#define PRus_Headset			"LIB_GER_Headset"
#define PRus_Demo				"SatchelCharge_Remote_Mag"
#define PRus_Minedetector		"MineDetector"
#define PRus_Toolkit			"ToolKit"

//=== EQUIPMENT ===

#define PRus_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_fieldDressing",2] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define PRus_leader_equipment \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define PRus_medic_equipment \
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
	case "PRus_PC" : {
		[PRus_Uni_ran] call FNC_addItemRandom;
		[PRus_Vest_r] call FNC_addItemRandom;
		[PRus_BP] call FNC_addItem;
		[PRus_Beret] call FNC_addItem;
		[PRus_Face_Bino] call FNC_addItem;
		
		//Assigned Items
		PRus_default_equipment;
		PRus_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh41 Stick
		[PRus_Weap_PPSH_S_Mag,1],
		[PRus_Weap_PPSH_S],
		[PRus_Weap_PPSH_S_Mag,3]
		],[50],
		[//PPSh41 Drum
		[PRus_Weap_PPSH_D_Mag,1],
		[PRus_Weap_PPSH_D],
		[PRus_Weap_PPSH_D_Mag,1]
		],[25],
		[//MP40
		[PRus_Weap_MP40_Mag,1],
		[PRus_Weap_MP40],
		[PRus_Weap_MP40_Mag,3]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[PRus_Flare_W,1] call FNC_addItem;
		[PRus_Flare_Pistol] call FNC_addItem;
		[PRus_Flare_W,2,"backpack"] call FNC_addItem;
		[PRus_Flare_R,2,"backpack"] call FNC_addItem;
		[PRus_Flare_G,2,"backpack"] call FNC_addItem;
		[PRus_Flare_Y,2,"backpack"] call FNC_addItem;
		
		//Extra
		[PRus_Gren_Smoke_W,2] call FNC_AddItem;
	};

	//Squad or team level leader
	case "PRus_SL" : {
		[PRus_Uni_ran] call FNC_addItemRandom;
		[PRus_Vest_r] call FNC_addItemRandom;
		[PRus_BP] call FNC_addItem;
		[PRus_Beret] call FNC_addItem;
		[PRus_Face_Bino] call FNC_addItem;
		
		//Assigned Items
		PRus_default_equipment;
		PRus_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh41 Stick
		[PRus_Weap_PPSH_S_Mag,1],
		[PRus_Weap_PPSH_S],
		[PRus_Weap_PPSH_S_Mag,3]
		],[50],
		[//PPSh41 Drum
		[PRus_Weap_PPSH_D_Mag,1],
		[PRus_Weap_PPSH_D],
		[PRus_Weap_PPSH_D_Mag,1]
		],[25],
		[//MP40
		[PRus_Weap_MP40_Mag,1],
		[PRus_Weap_MP40],
		[PRus_Weap_MP40_Mag,3]
		],[25]
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
		[PRus_Weap_PzFaust]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PRus_Gren_Smoke_W,2] call FNC_AddItem;
	};

	//Machine Gunner
	case "PRus_MG" : {
		[PRus_Uni_ran] call FNC_addItemRandom;
		[PRus_Vest_r] call FNC_addItemRandom;
		[PRus_BP_MG_r] call FNC_addItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[PRus_Hat_r] call FNC_addItemRandom;
		[PRus_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PRus_default_equipment;
		
		//Primary Weapon
		[PRus_Weap_DP_Mag,1] call FNC_addItem;
		[PRus_Weap_DP] call FNC_addItem;
		[PRus_Weap_DP_Mag,2] call FNC_addItem;
		
		//Secondary Weapon
		[
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,2]
		],[50],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,2]
		],[25],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,2]
		],[15],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,2]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PRus_Weap_DP_Mag,6] call FNC_AddItem;
	};

	//Machine Gun Assistant
	case "PRus_MGA" : {
		[PRus_Uni_ran] call FNC_addItemRandom;
		[PRus_Vest_r] call FNC_addItemRandom;
		[PRus_BP_MG_r] call FNC_addItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[PRus_Hat_r] call FNC_addItemRandom;
		[PRus_Face_Bino] call FNC_addItem;
		
		//Assigned Items
		PRus_default_equipment;
		PRus_leader_equipment;
		
		//Primary Weapon
		[
		[//Mosin M9130
		[PRus_Weap_Mos_Mag,1],
		[PRus_Weap_MosM9130],
		[PRus_Weap_Mos_Mag,6]
		],[25],
		[//PPSh41 Stick
		[PRus_Weap_PPSH_S_Mag,1],
		[PRus_Weap_PPSH_S],
		[PRus_Weap_PPSH_S_Mag,3]
		],[20],
		[//Mosin M38
		[PRus_Weap_Mos_Mag,1],
		[PRus_Weap_MosM38],
		[PRus_Weap_Mos_Mag,6]
		],[10],
		[//PPSh41 Drum
		[PRus_Weap_PPSH_D_Mag,1],
		[PRus_Weap_PPSH_D],
		[PRus_Weap_PPSH_D_Mag,1]
		],[10],
		[//MP40
		[PRus_Weap_MP40_Mag,1],
		[PRus_Weap_MP40],
		[PRus_Weap_MP40_Mag,3]
		],[10],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,2]
		],[10],
		[//K98
		[PRus_Weap_K98_Mag,1],
		[PRus_Weap_K98],
		[PRus_Weap_K98_Mag,6]
		],[5],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,2]
		],[5],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,2]
		],[3],
		[//C96
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,3]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		switch TRUE do {
		case (_unit hasWeapon PRus_Weap_MosM9130): {
		[
		[//Nothing
		[]
		],[55],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[23],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[12],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,2]
		],[4]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_PPSH_S): {
		[
		[//Nothing
		[]
		],[77],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[13],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[3],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,2]
		],[1]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_MosM38): {
		[
		[//Nothing
		[]
		],[55],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[23],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[12],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,2]
		],[4]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_PPSH_D): {
		[
		[//Nothing
		[]
		],[77],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[13],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[3],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,2]
		],[1]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_MP40): {
		[
		[//Nothing
		[]
		],[77],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[13],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[3],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,2]
		],[1]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_K98): {
		[
		[//Nothing
		[]
		],[55],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[23],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[12],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,2]
		],[4]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_TT33): {
		[PRus_Weap_TT33_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PRus_Weap_M1895): {
		[PRus_Weap_M1895_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PRus_Weap_P38): {
		[PRus_Weap_P38_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PRus_Weap_C96): {
		[PRus_Weap_C96_Mag,2] call FNC_AddItem;
		};
		};
		
		//Extra
		[PRus_Weap_DP_Mag,6] call FNC_AddItem;
	};

	//Partisan
	case "PRus_Parti" : {
		[PRus_Uni_ran] call FNC_addItemRandom;
		[PRus_Vest_r] call FNC_addItemRandom;
		[PRus_BP_r] call FNC_addItemRandom;
		[PRus_Hat_r] call FNC_addItemRandom;
		[PRus_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PRus_default_equipment;
		
		//Primary Weapon
		[
		[//Mosin M9130
		[PRus_Weap_Mos_Mag,1],
		[PRus_Weap_MosM9130],
		[PRus_Weap_Mos_Mag,6]
		],[25],
		[//PPSh41 Stick
		[PRus_Weap_PPSH_S_Mag,1],
		[PRus_Weap_PPSH_S],
		[PRus_Weap_PPSH_S_Mag,3]
		],[20],
		[//Mosin M38
		[PRus_Weap_Mos_Mag,1],
		[PRus_Weap_MosM38],
		[PRus_Weap_Mos_Mag,6]
		],[10],
		[//PPSh41 Drum
		[PRus_Weap_PPSH_D_Mag,1],
		[PRus_Weap_PPSH_D],
		[PRus_Weap_PPSH_D_Mag,1]
		],[10],
		[//MP40
		[PRus_Weap_MP40_Mag,1],
		[PRus_Weap_MP40],
		[PRus_Weap_MP40_Mag,3]
		],[10],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,2]
		],[10],
		[//K98
		[PRus_Weap_K98_Mag,1],
		[PRus_Weap_K98],
		[PRus_Weap_K98_Mag,6]
		],[5],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,2]
		],[5],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,2]
		],[3],
		[//C96
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,3]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		switch TRUE do {
		case (_unit hasWeapon PRus_Weap_MosM9130): {
		[
		[//Nothing
		[]
		],[55],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[23],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[12],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,1]
		],[4]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_PPSH_S): {
		[
		[//Nothing
		[]
		],[77],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[13],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[3],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,1]
		],[1]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_MosM38): {
		[
		[//Nothing
		[]
		],[55],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[23],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[12],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,1]
		],[4]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_PPSH_D): {
		[
		[//Nothing
		[]
		],[77],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[13],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[3],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,1]
		],[1]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_MP40): {
		[
		[//Nothing
		[]
		],[77],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[13],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[3],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,1]
		],[1]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_K98): {
		[
		[//Nothing
		[]
		],[55],
		[//TT33
		[PRus_Weap_TT33_Mag,1],
		[PRus_Weap_TT33],
		[PRus_Weap_TT33_Mag,1]
		],[23],
		[//M1895 Nagant
		[PRus_Weap_M1895_Mag,1],
		[PRus_Weap_M1895],
		[PRus_Weap_M1895_Mag,1]
		],[12],
		[//P38
		[PRus_Weap_P38_Mag,1],
		[PRus_Weap_P38],
		[PRus_Weap_P38_Mag,1]
		],[6],
		[//P38
		[PRus_Weap_C96_Mag,1],
		[PRus_Weap_C96],
		[PRus_Weap_C96_Mag,1]
		],[4]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PRus_Weap_TT33): {
		[PRus_Weap_TT33_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PRus_Weap_M1895): {
		[PRus_Weap_M1895_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PRus_Weap_P38): {
		[PRus_Weap_P38_Mag,2] call FNC_AddItem;
		};
		case (_unit hasWeapon PRus_Weap_C96): {
		[PRus_Weap_C96_Mag,2] call FNC_AddItem;
		};
		};
		
		//Launcher
		[
		[//Nothing
		[]
		],[90],
		[//Panzerfaust
		[PRus_Weap_PzFaust]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		//Chance to either be grenadier or have a hand grenade and extra MG ammo
		switch TRUE do {
		case (_unit hasWeapon PRus_Weap_K98): {
		[
		[//Nope!
		[]
		],[50],
		[//Yes!
		[PRus_BP],
		[PRus_Weap_K98_RG],
		[PRus_Weap_K98_Grn_ATS,2],
		[PRus_Weap_K98_Grn_AP,2],
		[PRus_Weap_K98_Grn_ATL,1]
		],[50]
		] call FNC_AddItemRandomPercent;
		};
		default {
		[//Frag Grenades
		[
		[PRus_Gren_Frag_P,1]
		],[34],
		[
		[PRus_Gren_Frag_SF,1]
		],[33],
		[
		[PRus_Gren_Frag_SC,1]
		],[33]
		] call FNC_AddItemRandomPercent;
		[PRus_Weap_DP_Mag,1] call FNC_addItem;
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