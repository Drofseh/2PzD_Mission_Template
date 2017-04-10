// Info: Polish Home Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Unit
//[this,"PHA_CC"] call FNC_GearScript;		Company Commander
//[this,"PHA_CSgt"] call FNC_GearScript;	Company Sergeant
//[this,"PHA_PC"] call FNC_GearScript;		Platoon Commander
//[this,"PHA_PSgt"] call FNC_GearScript;	Platoon Sergeant
//[this,"PHA_RTO"] call FNC_GearScript;		Radio Operator
//[this,"PHA_Med"] call FNC_GearScript;		Medic
//[this,"PHA_Sgt"] call FNC_GearScript;		Sergeant
//[this,"PHA_Cpl"] call FNC_GearScript;		Corporal
//[this,"PHA_MG"] call FNC_GearScript;		Machine Gunner
//[this,"PHA_MGA"] call FNC_GearScript;		Machine Gun Assistant
//[this,"PHA_AR"] call FNC_GearScript;		Automatic Rifleman
//[this,"PHA_Gren"] call FNC_GearScript;	Grenadier
//[this,"PHA_Woj"] call FNC_GearScript;		Wojownik (Fighter)

//[this,"PHA_Parti"] call FNC_GearScript;	Partisan

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define PHA_Weap_K98			"LIB_K98"
#define PHA_Weap_G43			"LIB_G43"
#define PHA_Weap_MP40			"LIB_MP40"
#define PHA_Weap_MP44			"LIB_MP44"
#define PHA_Weap_MG42			"LIB_MG42"
#define PHA_Weap_Sten			"fow_w_sten_mk2"
#define PHA_Weap_Bren			"fow_w_bren"
#define PHA_Weap_ZB26			"fow_w_type99_lmg"
#define PHA_Weap_K98_S			"LIB_K98ZF39"

//Secondary
#define PHA_Weap_P38			"LIB_P38"
#define PHA_Weap_C96			"sab_mauser96_handgun"
#define PHA_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define PHA_Weap_PzFaust		"LIB_PzFaust_30m"
#define PHA_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define PHA_Weap_K98_RG			"LIB_ACC_GW_SB_Empty"

//Ammo
#define PHA_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define PHA_Weap_G43_Mag		"LIB_10Rnd_792x57"
#define PHA_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define PHA_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define PHA_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define PHA_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define PHA_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define PHA_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define PHA_Weap_K98_Grn_AP		"LIB_1Rnd_G_SPRGR_30"
#define PHA_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"
#define PHA_Weap_Sten_Mag		"fow_32Rnd_9x19_sten"
#define PHA_Weap_Bren_Mag		"fow_30Rnd_303_bren"
#define PHA_Weap_ZB26_Mag		"fow_30Rnd_77x58"
#define PHA_Flare_W			"LIB_1Rnd_flare_white"
#define PHA_Flare_R			"LIB_1Rnd_flare_red"
#define PHA_Flare_G			"LIB_1Rnd_flare_green"
#define PHA_Flare_Y			"LIB_1Rnd_flare_yellow"

//Grenades
#define PHA_Gren_Frag_P			"HandGrenade"
#define PHA_Gren_Frag_SF		"fow_e_m24_spli"
#define PHA_Gren_Frag_SC		"fow_e_m24"
#define PHA_Gren_Smoke_W		"SmokeShell"
#define PHA_Gren_Smoke_B		"SmokeShellBlue"
#define PHA_Gren_Smoke_G		"SmokeShellGreen"
#define PHA_Gren_Smoke_O		"SmokeShellOrange"
#define PHA_Gren_Smoke_P		"SmokeShellPurple"
#define PHA_Gren_Smoke_R		"SmokeShellRed"
#define PHA_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define PHA_Uni_r				["U_LIB_WP_Soldier_camo_1"],["U_LIB_WP_Soldier_camo_2"],["U_LIB_WP_Soldier_camo_3"]
#define PHA_Uni_Civ_r			["U_LIB_CIV_Citizen_1"],["U_LIB_CIV_Citizen_2"],["U_LIB_CIV_Citizen_3"],["U_LIB_CIV_Citizen_4"],["U_LIB_CIV_Citizen_5"],["U_LIB_CIV_Citizen_6"],["U_LIB_CIV_Citizen_7"],["U_LIB_CIV_Citizen_8"],["U_LIB_CIV_Woodlander_1"],["U_LIB_CIV_Woodlander_2"],["U_LIB_CIV_Woodlander_3"],["U_LIB_CIV_Woodlander_4"],["U_LIB_CIV_Villager_1"],["U_LIB_CIV_Villager_2"],["U_LIB_CIV_Villager_3"],["U_LIB_CIV_Villager_4"]

//Vests
#define PHA_Pistol				"V_LIB_GER_PrivateBelt"
#define PHA_MP40_O				"V_LIB_WP_OfficerVest"
#define PHA_K98_O				"V_LIB_WP_SniperBela"
#define PHA_K98					"V_LIB_WP_Kar98Vest"
#define PHA_G43					"V_LIB_WP_G43Vest"
#define PHA_MP40				"V_LIB_WP_MP40Vest"
#define PHA_MG					"V_LIB_WP_MGVest"
#define PHA_Vest_Civ_r			["V_LIB_SOV_RA_Belt"],["V_LIB_GER_OfficerBelt"]

//Backpack
#define PHA_BP					"B_LIB_SOV_RA_GasBag"
#define PHA_BP_r				["B_LIB_GER_Backpack"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_GER_Tonister34_cowhide"]
#define PHA_BP_MG_r				["fow_b_heer_ammo_belt"],["fow_b_heer_ammo_belt"],["fow_b_heer_ammo_belt"],["fow_b_heer_ammo_belt"],["B_LIB_SOV_RA_MGAmmoBag_Big_Empty"],["B_LIB_GER_Backpack"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_GER_Tonister34_cowhide"]
#define PHA_BP_Med				"B_LIB_SOV_RA_MedicalBag_Big_Empty"
#define PHA_BP_Radio			"B_LIB_GER_Radio"
								// use _unit removeItem "TFAR_rf7800str"; in the loadout
								// and this removeItem "TFAR_rf7800str"; in the units init.
#define PHA_BP_Civ_r			[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],["B_LIB_SOV_RA_GasBag"],["B_LIB_SOV_RA_Rucksack"],["B_LIB_SOV_RA_Rucksack2"],["B_LIB_SOV_RA_Rucksack_Green"],["B_LIB_SOV_RA_Rucksack2_Green"],["B_LIB_SOV_RA_Shinel"],["B_LIB_GER_Tonister34_cowhide"]

//Headgear
#define PHA_Head_r				["H_LIB_WP_Helmet"],["H_LIB_WP_Helmet"],["H_LIB_WP_Helmet"],["H_LIB_WP_Helmet_camo"],["H_LIB_WP_Helmet_camo"],["H_LIB_WP_Helmet_camo"],["H_LIB_WP_Cap"],["H_Beret_blk"],["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
#define PHA_Helmet_Med			"H_LIB_WP_Helmet_med"
#define PHA_Hat_Civ_r			[],[],[],[],[],["H_LIB_CIV_Worker_Cap_2"],["H_LIB_CIV_Worker_Cap_3"],["H_LIB_CIV_Worker_Cap_4"],["H_LIB_CIV_Villager_Cap_1"],["H_LIB_CIV_Villager_Cap_2"],["H_LIB_CIV_Villager_Cap_4"]
#define PHA_Beret				"H_Beret_blk"

//Face
#define PHR_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

//=== MISC ===
//ACE
#define PHA_ace_defuse			"ACE_DefusalKit"
#define PHA_ace_earplugs		"ACE_EarPlugs";
#define PHA_ace_firing_device	"ACE_Clacker"
#define PHA_ace_flashlight		"ACE_Flashlight_KSF1"
#define PHA_ace_shovel			"ACE_EntrenchingTool"
#define PHA_ace_sparebarrel		"ACE_SpareBarrel"
#define PHA_ace_wirecutters		"ACE_wirecutter"
#define PHA_ace_carpick			"ACE_key_lockpick"
#define PHA_ace_maptools		"ACE_MapTools"
#define PHA_ace_cabletie		"ACE_CableTie"

//Medical
#define PHA_Bandage				"ACE_fieldDressing";
#define PHA_TQ					"ACE_tourniquet";
#define PHA_Morp				"ACE_morphine";
#define PHA_Epi					"ACE_epinephrine";
#define PHA_Blood1000			"ACE_bloodIV";
#define PHA_Blood500			"ACE_bloodIV_250";
#define PHA_Blood250			"ACE_bloodIV_500";
#define PHA_PAK					"ACE_personalAidKit";
#define PHA_SurgKit				"ACE_surgicalKit";

//Double Misc
#define PHA_Bino				"LIB_Binocular_GER"
#define PHA_Demo				"SatchelCharge_Remote_Mag"
#define PHA_Headset				"LIB_GER_Headset"
#define PHA_Minedetector		"MineDetector"
#define PHA_Toolkit				"ToolKit"

//Radio
//#define PHA_Radio_Pzr			"ItemRadio"

//=== EQUIPMENT ===

#define PHA_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define PHA_leader_equipment \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define PHA_medic_equipment \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",4,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",3,"backpack"] call FNC_AddItem; \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",5,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;

#define PHA_civilian_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_fieldDressing",2] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

//======================== Loadouts ========================

//Unit

	//Company Commander
	case "PHA_CC" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_Pistol] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		PHA_leader_equipment;
		
		//Secondary Weapon
		[
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,1,"vest"]
		],[65],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,1,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
	};

	//Company Sergeant
	case "PHA_CSgt" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_MP40_O] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		PHA_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,3,"vest"]
		],[70],
		[//Sten
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,3,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,1,"vest"]
		],[65],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,1,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PHA_Gren_Smoke_W] call FNC_addItem;
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P]
		],[34],
		[
		[PHA_Gren_Frag_SF]
		],[33],
		[
		[PHA_Gren_Frag_SC]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Platoon Commander
	case "PHA_PC" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_MP40_O] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		PHA_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,3,"vest"]
		],[70],
		[//Sten
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,3,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,1,"vest"]
		],[65],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,1,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
	};

	//Platoon Sergeant
	case "PHA_PSgt" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_MP40_O] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		PHA_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,3,"vest"]
		],[70],
		[//Sten
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,3,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,1,"vest"]
		],[65],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,1,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[
		[//Nothing
		[]
		],[55],
		[//Panzerfaust
		[PHA_Weap_PzFaust]
		],[45]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PHA_Gren_Smoke_W] call FNC_addItem;
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P]
		],[34],
		[
		[PHA_Gren_Frag_SF]
		],[33],
		[
		[PHA_Gren_Frag_SC]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Radio Operator
	case "PHA_RTO" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[//Vest and Primary Weapon
		[//K98
		[PHA_K98],
		[PHA_Weap_K98_Mag,1],
		[PHA_Weap_K98],
		[PHA_Weap_K98_Mag,12,"vest"]
		],[45],
		[//MP40
		[PHA_MP40],
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,6,"vest"]
		],[35],
		[//Sten
		[PHA_MP40],
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,6,"vest"]
		],[15],
		[//G43
		[PHA_G43],
		[PHA_Weap_G43_Mag,1],
		[PHA_Weap_G43],
		[PHA_Weap_G43_Mag,4,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		[PHA_BP_Radio] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		PHA_default_equipment;
		
		//Extra
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P,2]
		],[34],
		[
		[PHA_Gren_Frag_SF,2]
		],[33],
		[
		[PHA_Gren_Frag_SC,2]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Medic
	case "PHA_Med" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[//Vest and Primary Weapon
		[//K98
		[PHA_K98],
		[PHA_Weap_K98_Mag,1],
		[PHA_Weap_K98],
		[PHA_Weap_K98_Mag,12,"vest"]
		],[45],
		[//MP40
		[PHA_MP40],
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,6,"vest"]
		],[35],
		[//Sten
		[PHA_MP40],
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,6,"vest"]
		],[15],
		[//G43
		[PHA_G43],
		[PHA_Weap_G43_Mag,1],
		[PHA_Weap_G43],
		[PHA_Weap_G43_Mag,4,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		[PHA_BP_Med] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		
		//Extra
		PHA_medic_equipment;
	};

	//Sergeant
	case "PHA_Sgt" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_K98_O] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		PHA_leader_equipment;
		
		//Primary Weapon
		[PHA_Weap_K98_Mag,1] call FNC_AddItem;
		[PHA_Weap_K98] call FNC_AddItem;
		[PHA_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,1,"vest"]
		],[65],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,1,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[
		[//Nothing
		[]
		],[55],
		[//Panzerfaust
		[PHA_Weap_PzFaust]
		],[45]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PHA_Gren_Smoke_W] call FNC_addItem;
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P]
		],[34],
		[
		[PHA_Gren_Frag_SF]
		],[33],
		[
		[PHA_Gren_Frag_SC]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Corporal
	case "PHA_Cpl" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_MP40_O] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		PHA_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[PHA_MP40],
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,6,"vest"]
		],[70],
		[//Sten
		[PHA_MP40],
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,6,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,1,"vest"]
		],[65],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,1,"vest"]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[
		[//Nothing
		[]
		],[55],
		[//Panzerfaust
		[PHA_Weap_PzFaust]
		],[45]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PHA_Gren_Smoke_W] call FNC_addItem;
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P]
		],[34],
		[
		[PHA_Gren_Frag_SF]
		],[33],
		[
		[PHA_Gren_Frag_SC]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Machine Gunner
	case "PHA_MG" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_MG] call FNC_addItem;
		[PHA_BP_MG_r] call FNC_addItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		
		//Primary Weapon
		[PHA_Weap_MG42_Mag,1] call FNC_AddItem;
		[PHA_Weap_MG42] call FNC_AddItem;
		[PHA_Weap_MG42_Mag,4,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,1]
		],[65],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,1]
		],[35]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[PHA_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_MGAmmoBag_Big_Empty"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_GER_Backpack"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack_Green"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2_Green"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
		};
	};

	//Machine Gun Assistant
	case "PHA_MGA" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[//Vest and Primary Weapon
		[//K98
		[PHA_K98],
		[PHA_Weap_K98_Mag,1],
		[PHA_Weap_K98],
		[PHA_Weap_K98_Mag,12,"vest"]
		],[45],
		[//MP40
		[PHA_MP40],
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,6,"vest"]
		],[35],
		[//Sten
		[PHA_MP40],
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,6,"vest"]
		],[15],
		[//G43
		[PHA_G43],
		[PHA_Weap_G43_Mag,1],
		[PHA_Weap_G43],
		[PHA_Weap_G43_Mag,4,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		[PHA_BP_MG_r] call FNC_addItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		
		//Launcher
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[PHA_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_MGAmmoBag_Big_Empty"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_GER_Backpack"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack_Green"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
			case ("B_LIB_SOV_RA_Rucksack2_Green"): {
				[Ger_Weap_MG42_Mag,4] call FNC_AddItem;
			};
		};
		[PHA_Gren_Smoke_W] call FNC_addItem;
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P]
		],[34],
		[
		[PHA_Gren_Frag_SF]
		],[33],
		[
		[PHA_Gren_Frag_SC]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Automatic Rifleman
	case "PHA_AR" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_MG] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		
		//Primary Weapon
		[//Vest and Primary Weapon
		[//ZB26
		[PHA_Weap_ZB26_Mag,1],
		[PHA_Weap_ZB26],
		[PHA_Weap_ZB26_Mag,6,"vest"],
		[PHA_Weap_ZB26_Mag,4,"backpack"]
		],[66],
		[//Bren
		[PHA_Weap_Bren_Mag,1],
		[PHA_Weap_Bren],
		[PHA_Weap_Bren_Mag,6,"vest"],
		[PHA_Weap_Bren_Mag,4,"backpack"]
		],[34]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P]
		],[34],
		[
		[PHA_Gren_Frag_SF]
		],[33],
		[
		[PHA_Gren_Frag_SC]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Grenadier
	case "PHA_Gren" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[PHA_K98] call FNC_addItem;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		
		//Primary Weapon
		[PHA_Weap_K98_Mag,1] call FNC_AddItem;
		[PHA_Weap_K98] call FNC_AddItem;
		[PHA_Weap_K98_RG] call FNC_AddItem;
		[PHA_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		[PHA_Weap_K98_Grn_ATS,2,"vest"] call FNC_AddItem;
		[PHA_Weap_K98_Grn_AP,4,"vest"] call FNC_AddItem;
		[PHA_Weap_K98_Grn_ATL,2,"backpack"] call FNC_AddItem;
	};

	//Wojownik (Fighter)
	case "PHA_Woj" : {
		[PHA_Uni_r] call FNC_addItemRandom;
		[//Vest and Primary Weapon
		[//K98
		[PHA_K98],
		[PHA_Weap_K98_Mag,1],
		[PHA_Weap_K98],
		[PHA_Weap_K98_Mag,12,"vest"]
		],[45],
		[//MP40
		[PHA_MP40],
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,6,"vest"]
		],[35],
		[//Sten
		[PHA_MP40],
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,6,"vest"]
		],[15],
		[//G43
		[PHA_G43],
		[PHA_Weap_G43_Mag,1],
		[PHA_Weap_G43],
		[PHA_Weap_G43_Mag,4,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		[PHA_BP_r] call FNC_addItemRandom;
		[PHA_Head_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_default_equipment;
		
		//Launcher
		[
		[//Nothing
		[]
		],[55],
		[//Panzerfaust
		[PHA_Weap_PzFaust]
		],[45]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P,2]
		],[34],
		[
		[PHA_Gren_Frag_SF,2]
		],[33],
		[
		[PHA_Gren_Frag_SC,2]
		],[33]
		] call FNC_AddItemRandomPercent;
	};

	//Partisan Squad Leader
	case "PHA_PartiSL" : {
		[PHA_Uni_Civ_r] call FNC_addItemRandom;
		[PHA_Vest_Civ_r] call FNC_addItemRandom;
		[PHA_BP_Civ_r] call FNC_addItemRandom;
		[PHA_Beret] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_civilian_equipment;
		PFrn_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,3]
		],[40],
		[//Sten
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,3]
		],[40],
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,2]
		],[15],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,2]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		switch TRUE do {
		case (_unit hasWeapon PHA_Weap_MP40): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,2]
		],[38],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,3]
		],[7]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PHA_Weap_Sten): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,2]
		],[38],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,3]
		],[7]
		] call FNC_AddItemRandomPercent;
		};
		};
		
		//Launcher
		[
		[//Nothing
		[]
		],[90],
		[//Panzerfaust
		[PHA_Weap_PzFaust]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[PHA_Gren_Smoke_W,2] call FNC_AddItemRandomPercent;
	};

	//Partisan
	case "PHA_Parti" : {
		[PHA_Uni_Civ_r] call FNC_addItemRandom;
		[PHA_Vest_Civ_r] call FNC_addItemRandom;
		[PHA_BP_Civ_r] call FNC_addItemRandom;
		[PHA_Hat_Civ_r] call FNC_addItemRandom;
		[PHR_Face_r] call FNC_addItemRandom;
		
		//Assigned Items
		PHA_civilian_equipment;
		
		//Primary Weapon
		[
		[//K98
		[PHA_Weap_K98_Mag,1],
		[PHA_Weap_K98],
		[PHA_Weap_K98_Mag,6]
		],[40],
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,2]
		],[25],
		[//MP40
		[PHA_Weap_MP40_Mag,1],
		[PHA_Weap_MP40],
		[PHA_Weap_MP40_Mag,3]
		],[20],
		[//Sten
		[PHA_Weap_Sten_Mag,1],
		[PHA_Weap_Sten],
		[PHA_Weap_Sten_Mag,3]
		],[10],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,3]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		switch TRUE do {
		case (_unit hasWeapon PHA_Weap_K98): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,2]
		],[38],
		[//P38
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,3]
		],[7]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PHA_Weap_MP40): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,2]
		],[38],
		[//P38
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,3]
		],[7]
		] call FNC_AddItemRandomPercent;
		};
		case (_unit hasWeapon PHA_Weap_Sten): {
		[
		[//Nothing
		[]
		],[55],
		[//P38
		[PHA_Weap_P38_Mag,1],
		[PHA_Weap_P38],
		[PHA_Weap_P38_Mag,2]
		],[38],
		[//C96
		[PHA_Weap_C96_Mag,1],
		[PHA_Weap_C96],
		[PHA_Weap_C96_Mag,3]
		],[7]
		] call FNC_AddItemRandomPercent;
		};
		};
		
		//Launcher
		[
		[//Nothing
		[]
		],[90],
		[//Panzerfaust
		[PHA_Weap_PzFaust]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[//Frag Grenades
		[
		[PHA_Gren_Frag_P,1]
		],[34],
		[
		[PHA_Gren_Frag_SF,1]
		],[33],
		[
		[PHA_Gren_Frag_SC,1]
		],[33]
		] call FNC_AddItemRandomPercent;
	};