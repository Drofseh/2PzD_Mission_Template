// Info: US Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Company HQ
//[this,"USMC_CC"] call FNC_GearScript;		Company Commander
//[this,"USMC_C2"] call FNC_GearScript;		Company Executive Officer
//[this,"USMC_CSGT"] call FNC_GearScript;	Company First Sergeant
//[this,"USMC_CRTO"] call FNC_GearScript;	Company Radio Operator

	//Platoon HQ
//[this,"USMC_PC"] call FNC_GearScript;		Platoon Commander
//[this,"USMC_PSGT"] call FNC_GearScript;	Platoon Sergeant
//[this,"USMC_PRTO"] call FNC_GearScript;	Radio Operator
//[this,"USMC_Mess"] call FNC_GearScript;	Messenger
//[this,"USMC_Med"] call FNC_GearScript;	Medic

	//Squad
//[this,"USMC_SL"] call FNC_GearScript;		Squad Leader
//[this,"USMC_S2"] call FNC_GearScript;		Assistant Squad Leader
//[this,"USMC_Scout"] call FNC_GearScript;	Scout
//[this,"USMC_AR"] call FNC_GearScript;		Automatic Rifleman
//[this,"USMC_AAR"] call FNC_GearScript;	Assistant Automatic Rifleman
//[this,"USMC_ARB"] call FNC_GearScript;	Automatic Rifle Ammo Bearer
//[this,"USMC_Rif"] call FNC_GearScript;	Rifleman

	//Weapons Squad
//[this,"USMC_MG"] call FNC_GearScript;		Machine Gunner
//[this,"USMC_MGA"] call FNC_GearScript;		Assistant Machine Gunner
//[this,"USMC_MGAB"] call FNC_GearScript;	Machine Gun Ammo Bearer
//[this,"USMC_AT"] call FNC_GearScript;		Anti-tank Gunner
//[this,"USMC_ATA"] call FNC_GearScript;		Assistant Anti-tank Gunner

	//Crew
//[this,"USMC_VCom"] call FNC_GearScript;	Tank Commander
//[this,"USMC_VCrew"] call FNC_GearScript;	Tank Crew

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define USMC_Weap_M1903A3		"LIB_M1903A3_Springfield"
#define USMC_Weap_M1G			"fow_w_m1_garand"
#define USMC_Weap_M1C			"fow_w_m1_carbine"
#define USMC_Weap_M2C			"fow_w_m2_carbine_2PzD"
#define USMC_Weap_M1T			"fow_w_m1a1_thompson"
#define USMC_Weap_M3GG			"fow_w_m3"
#define USMC_Weap_BAR			"LIB_M1918A2_BAR"
#define USMC_Weap_M1919A4		"fow_w_m1919a4"
#define USMC_Weap_M1919A6		"fow_w_m1919a6"
#define USMC_Weap_M1903A4		"LIB_M1903A4_Springfield"

//Secondary
#define USMC_Weap_M1911			"LIB_Colt_M1911"

#define USMC_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define USMC_Weap_Bazoo			"LIB_M1A1_Bazooka"

//Attachments
#define USMC_Weap_BAR_Bipod		"LIB_M1918A2_BAR_Bipod"

//Ammo
#define USMC_Weap_M1903_Mag		"LIB_5Rnd_762x63"
#define USMC_Weap_M1G_Mag		"LIB_8Rnd_762x63"
#define USMC_Weap_M1C_Mag		"LIB_15Rnd_762x33"
#define USMC_Weap_M2C_Mag		"LIB_30Rnd_762x33_2PzD"
#define USMC_Weap_M1T_Mag1		"fow_30Rnd_45acp_M1_2PzD"
#define USMC_Weap_M1T_Mag2		"fow_20Rnd_45acp_M1_2PzD"
#define USMC_Weap_M3GG_Mag		"fow_30Rnd_45acp_M3_2PzD"
#define USMC_Weap_BAR_Mag		"LIB_20Rnd_762x63"
#define USMC_Weap_M1919_Mag25	"fow_250Rnd_M1919"
#define USMC_Weap_M1919_Mag20	"fow_200Rnd_M1919_2PzD"
#define USMC_Weap_M1919_Mag15	"fow_150Rnd_M1919_2PzD"
#define USMC_Weap_M1919_Mag10	"fow_100Rnd_M1919_2PzD"
#define USMC_Weap_M1919_Mag5	"fow_50Rnd_M1919"
#define USMC_Weap_M1911_Mag		"LIB_7Rnd_45ACP"
#define USMC_Weap_Bazoo_Mag		"LIB_1Rnd_60mm_M6"

#define USMC_Flare_W			"LIB_1Rnd_flare_white"
#define USMC_Flare_R			"LIB_1Rnd_flare_red"
#define USMC_Flare_G			"LIB_1Rnd_flare_green"
#define USMC_Flare_Y			"LIB_1Rnd_flare_yellow"

//Grenades
#define USMC_Gren_Frag			"fow_e_mk2"
#define USMC_Gren_Smoke_W		"SmokeShell"
#define USMC_Gren_Smoke_B		"SmokeShellBlue"
#define USMC_Gren_Smoke_G		"SmokeShellGreen"
#define USMC_Gren_Smoke_O		"SmokeShellOrange"
#define USMC_Gren_Smoke_P		"SmokeShellPurple"
#define USMC_Gren_Smoke_R		"SmokeShellRed"
#define USMC_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define USMC_Uni				"fow_u_usmc_p41_01_private"

//Vests
#define USMC_Vest_Pistol		"fow_v_usmc_45"
#define USMC_Vest_NCO_M1T		"fow_v_usmc_thompson_nco"
#define USMC_Vest_M1G			"fow_v_usmc_garand"
#define USMC_Vest_M1G_Frag		"fow_v_us_Grenade"
#define USMC_Vest_M1C			"fow_v_usmc_carbine"
#define USMC_Vest_M1C_Eng		"fow_v_us_carbine_eng"
#define USMC_Vest_M1T			"fow_v_usmc_thompson"
#define USMC_Vest_BAR			"fow_v_usmc_bar"
#define USMC_Vest_MGA			"fow_v_us_asst_mg"
#define USMC_Vest_Med			"fow_v_us_medic"

//Backpack
#define USMC_BP_r				["fow_b_usmc_m1928"],["fow_b_usmc_m1928"],["fow_b_usmc_m1928"],["B_LIB_US_M36"]
#define USMC_BP_M1928			"fow_b_usmc_m1928"
#define USMC_BP_M36				"B_LIB_US_M36"
#define USMC_BP_MG				"B_LIB_US_MedicBackpack_Big_Empty"
#define USMC_BP_MG				"B_LIB_US_MGbag_Big_Empty"
#define USMC_BP_AT				"B_LIB_US_RocketBag_Big_Empty"
#define USMC_BP_Radio			"fow_b_US_Radio"
#define USMC_Bando				"B_LIB_US_Bandoleer"

//Headgear
#define USMC_Helm_CPT			"H_LIB_US_Helmet_Cap"
#define USMC_Helm_LT			"H_LIB_US_Helmet_First_lieutenant"
#define USMC_Helm_2LT			"H_LIB_US_Helmet_Second_lieutenant"
#define USMC_Helm_Med_r			["H_LIB_US_Helmet_Med"],["H_LIB_US_Helmet_Med_os"],["H_LIB_US_Helmet_Med_ns"]
								//strap, open strap, no strap
#define USMC_Helm_r				["H_LIB_US_Helmet"],["H_LIB_US_Helmet_os"],["H_LIB_US_Helmet_ns"],["H_LIB_US_Helmet_Net"],["H_LIB_US_Helmet_Net_os"],["H_LIB_US_Helmet_Net_ns"]
								//strap, open strap, no strap, camo strap, camo open strap, camo no strap

#define USMC_Helm_VCrew			"H_LIB_US_Helmet_Tank"

//Face
#define USMC_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

#define USMC_Face_Tank_r		["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define USMC_ace_defuse			"ACE_DefusalKit"
#define USMC_ace_earplugs		"ACE_EarPlugs";
#define USMC_ace_firing_device	"ACE_Clacker"
#define USMC_ace_flashlight		"ACE_Flashlight_MX991"
#define USMC_ace_shovel			"ACE_EntrenchingTool"
#define USMC_ace_sparebarrel	"ACE_SpareBarrel"
#define USMC_ace_wirecutters	"ACE_wirecutter"
#define USMC_ace_carpick		"ACE_key_lockpick"
#define USMC_ace_maptools		"ACE_MapTools"
#define USMC_ace_cabletie		"ACE_CableTie"

//Medical
#define USMC_Bandage			"ACE_fieldDressing";
#define USMC_TQ					"ACE_tourniquet";
#define USMC_Morp				"ACE_morphine";
#define USMC_Epi				"ACE_epinephrine";
#define USMC_Blood1000			"ACE_bloodIV";
#define USMC_Blood500			"ACE_bloodIV_250";
#define USMC_Blood250			"ACE_bloodIV_500";
#define USMC_PAK				"ACE_personalAidKit";
#define USMC_SurgKit			"ACE_surgicalKit";

//Double Misc
#define USMC_Bino				"LIB_Binocular_SU"
#define USMC_Demo				"SatchelCharge_Remote_Mag"
#define USMC_Minedetector		"MineDetector"
#define USMC_Toolkit			"ToolKit"

//Radio
#define USMC_Radio_P			"tf_anprc154"
#define USMC_Radio_C			"tf_anprc155"

//=== EQUIPMENT ===

#define USMC_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_MX991"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define USMC_leader_equipment \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define USMC_medic_equipment \
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

	//Company Commander
	case "USMC_CC" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Helm_CPT] call FNC_AddItem;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USMC_Vest_NCO_M1T],
		[USMC_Weap_M1T_Mag1,1],
		[USMC_Weap_M1T],
		[USMC_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USMC_Vest_NCO_M1T],
		[USMC_Weap_M3GG_Mag,1],
		[USMC_Weap_M3GG],
		[USMC_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USMC_Weap_M1911_Mag,1],
		[USMC_Weap_M1911],
		[USMC_Weap_M1911_Mag,2,"vest"]
	};

	//Company Executive Officer
	case "USMC_C2" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Helm_LT] call FNC_AddItem;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USMC_Vest_NCO_M1T],
		[USMC_Weap_M1T_Mag1,1],
		[USMC_Weap_M1T],
		[USMC_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USMC_Vest_NCO_M1T],
		[USMC_Weap_M3GG_Mag,1],
		[USMC_Weap_M3GG],
		[USMC_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USMC_Weap_M1911_Mag,1],
		[USMC_Weap_M1911],
		[USMC_Weap_M1911_Mag,2,"vest"]
	};

	//Company First Sergeant
	case "USMC_CSGT" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Thompson
		[USMC_Vest_M1T],
		[USMC_Weap_M1T_Mag1,1],
		[USMC_Weap_M1T],
		[USMC_Weap_M1T_Mag1,5,"vest"]
		],[40],
		[//Grease Gun
		[USMC_Vest_M1T],
		[USMC_Weap_M3GG_Mag,1],
		[USMC_Weap_M3GG],
		[USMC_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USMC_Gren_Frag,2] call FNC_AddItem;
		[USMC_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Company Radio Operator
	case "USMC_CRTO" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_M1C] call FNC_AddItem;
		[USMC_BP_Radio] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		[USMC_Radio_P] call FNC_AddItem;
		_unit assignItem USMC_Radio_P;
		
		//Primary Weapon
		[USMC_Weap_M1C_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1C] call FNC_AddItem;
		[USMC_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "USMC_PC" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Helm_2LT] call FNC_AddItem;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USMC_Vest_NCO_M1T],
		[USMC_Weap_M1T_Mag1,1],
		[USMC_Weap_M1T],
		[USMC_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USMC_Vest_NCO_M1T],
		[USMC_Weap_M3GG_Mag,1],
		[USMC_Weap_M3GG],
		[USMC_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USMC_Weap_M1911_Mag,1],
		[USMC_Weap_M1911],
		[USMC_Weap_M1911_Mag,2,"vest"]
	};

	//Platoon Sergeant
	case "USMC_PSGT" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Thompson
		[USMC_Vest_M1T],
		[USMC_Weap_M1T_Mag1,1],
		[USMC_Weap_M1T],
		[USMC_Weap_M1T_Mag1,5,"vest"]
		],[40],
		[//Grease Gun
		[USMC_Vest_M1T],
		[USMC_Weap_M3GG_Mag,1],
		[USMC_Weap_M3GG],
		[USMC_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USMC_Gren_Frag,2] call FNC_AddItem;
		[USMC_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Radio Operator
	case "USMC_PRTO" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_M1C] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		[USMC_Radio_P] call FNC_AddItem;
		_unit assignItem USMC_Radio_P;
		
		//Primary Weapon
		[USMC_Weap_M1C_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1C] call FNC_AddItem;
		[USMC_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
	};

	//Messenger
	case "USMC_Mess" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_M1G] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1G_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1G] call FNC_AddItem;
		[USMC_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USMC_Gren_Frag,1] call FNC_AddItem;
	};

	//Medic
	case "USMC_Med" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_Med] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_Med_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1G_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1G] call FNC_AddItem;
		[USMC_Weap_M1G_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[USMC_Gren_Frag,1] call FNC_AddItem;
		USMC_medic_equipment;
	};

//Squad

	//Squad Leader
	case "USMC_SL" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Thompson
		[USMC_Vest_M1T],
		[USMC_Weap_M1T_Mag1,1],
		[USMC_Weap_M1T],
		[USMC_Weap_M1T_Mag1,5,"vest"]
		],[50],
		[//Grease Gun
		[USMC_Vest_M1T],
		[USMC_Weap_M3GG_Mag,1],
		[USMC_Weap_M3GG],
		[USMC_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USMC_Gren_Frag,1] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,1] call FNC_AddItem;
	};

	//Assistant Squad Leader
	case "USMC_S2" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Thompson
		[USMC_Vest_M1T],
		[USMC_Weap_M1T_Mag1,1],
		[USMC_Weap_M1T],
		[USMC_Weap_M1T_Mag1,5,"vest"]
		],[50],
		[//Grease Gun
		[USMC_Vest_M1T],
		[USMC_Weap_M3GG_Mag,1],
		[USMC_Weap_M3GG],
		[USMC_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USMC_Gren_Frag,1] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,1] call FNC_AddItem;
	};

	//Scout
	case "USMC_Scout" : {
		[USMC_Uni] call FNC_AddItem;
		[//Vest
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Garand + Frag
		[USMC_Vest_M1G_Frag],
		[USMC_Weap_M1G_Mag,1],
		[USMC_Weap_M1G],
		[USMC_Weap_M1G_Mag,5,"vest"],
		[USMC_Gren_Frag,3,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Extra
		[USMC_Gren_Frag,3] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,1,"backpack"] call FNC_AddItem;
	};

	//Automatic Rifleman
	case "USMC_AR" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_BAR] call FNC_AddItem;
		[USMC_BP_MG] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_BAR_Mag,1] call FNC_AddItem;
		[USMC_Weap_BAR] call FNC_AddItem;
		[USMC_Weap_BAR_Bipod] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,6,"vest"] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,9,"backpack"] call FNC_AddItem;
	};

	//Automatic Rifle Assistant
	case "USMC_AAR" : {
		[USMC_Uni] call FNC_AddItem;
		[//Vest
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Garand + Frag
		[USMC_Vest_M1G_Frag],
		[USMC_Weap_M1G_Mag,1],
		[USMC_Weap_M1G],
		[USMC_Weap_M1G_Mag,5,"vest"],
		[USMC_Gren_Frag,3,"vest"]
		],[40],
		[//Garand
		[USMC_Vest_M1G],
		[USMC_Weap_M1G_Mag,1],
		[USMC_Weap_M1G],
		[USMC_Weap_M1G_Mag,10,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		[USMC_BP_MG] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Extra
		[USMC_Gren_Frag,1] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,5,"backpack"] call FNC_AddItem;
	};

	//Automatic Rifle Ammo Bearer
	case "USMC_ARB" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_M1G] call FNC_AddItem;
		[USMC_BP_MG] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1G_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1G] call FNC_AddItem;
		[USMC_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USMC_Gren_Frag,1] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,10,"backpack"] call FNC_AddItem;
	};

	//Rifleman
	case "USMC_Rif" : {
		[USMC_Uni] call FNC_AddItem;
		[//Vest
		[//Carbine
		[USMC_Vest_M1C],
		[USMC_Weap_M1C_Mag,1],
		[USMC_Weap_M1C],
		[USMC_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Garand + Frag
		[USMC_Vest_M1G_Frag],
		[USMC_Weap_M1G_Mag,1],
		[USMC_Weap_M1G],
		[USMC_Weap_M1G_Mag,5,"vest"],
		[USMC_Gren_Frag,3,"vest"]
		],[40],
		[//Garand
		[USMC_Vest_M1G],
		[USMC_Weap_M1G_Mag,1],
		[USMC_Weap_M1G],
		[USMC_Weap_M1G_Mag,10,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		[USMC_BP_r] call FNC_AddItemRandom;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Extra
		[USMC_Gren_Frag,3] call FNC_AddItem;
		[USMC_Weap_BAR_Mag,1,"backpack"] call FNC_AddItem;
	};

//Weapons Squad

	//Machine Gunner
	case "USMC_MG" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[USMC_Vest_MGA] call FNC_AddItem;
		[USMC_BP_M1928] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1919_Mag25,1] call FNC_AddItem;
		[USMC_Weap_M1919A4] call FNC_AddItem;
		[USMC_Weap_M1919_Mag25,2] call FNC_AddItem;
		
		//Secondary Weapon
		[USMC_Weap_M1911_Mag,1],
		[USMC_Weap_M1911],
		[USMC_Weap_M1911_Mag,2]
	};
	
	//Assistant Machine Gunner
	case "USMC_MGA" : {
		[USMC_Uni_PFC] call FNC_AddItem;
		[USMC_Vest_M1C] call FNC_AddItem;
		[USMC_BP_M1928] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1C_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1C] call FNC_AddItem;
		[USMC_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Extra
		[USMC_Weap_M1919_Mag25,1] call FNC_AddItem;
		[USMC_Gren_Frag,1] call FNC_AddItem;
	};
	
	//Machine Gun Ammo Bearer
	case "USMC_MGAB" : {
		[
		[//PFC
		[USMC_Uni_PFC]
		],[50],
		[//PVT
		[USMC_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USMC_Vest_M1G] call FNC_AddItem;
		[USMC_BP_M1928] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1G_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1G] call FNC_AddItem;
		[USMC_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USMC_Weap_M1919_Mag25,1] call FNC_AddItem;
		[USMC_Gren_Frag,1] call FNC_AddItem;
	};

	//Anti-tank Gunner
	case "USMC_AT" : {
		[USMC_Uni_CPL] call FNC_AddItem;
		[USMC_Vest_M1C] call FNC_AddItem;
		[USMC_BP_AT] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1C_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1C] call FNC_AddItem;
		[USMC_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Launcher
		[USMC_Weap_Bazoo_Mag,1] call FNC_AddItem;
		[USMC_Weap_Bazoo] call FNC_AddItem;
		[USMC_Weap_Bazoo_Mag,3] call FNC_AddItem;
	};
	
	//Anti-tank Assistant
	case "USMC_ATA" : {
		[USMC_Uni_PFC] call FNC_AddItem;
		[USMC_Vest_M1G] call FNC_AddItem;
		[USMC_BP_AT] call FNC_AddItem;
		[USMC_Helm_r] call FNC_AddItemRandom;
		[USMC_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1G_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1G] call FNC_AddItem;
		[USMC_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USMC_Weap_Bazoo_Mag,3] call FNC_AddItem;
		[USMC_Gren_Frag,1] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Commander
	case "USMC_VCom" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_Pistol] call FNC_AddItem;
		[USMC_Helm_VCrew] call FNC_AddItem;
		[USMC_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		USMC_leader_equipment;
		
		//Secondary Weapon
		[USMC_Weap_M1911_Mag,1],
		[USMC_Weap_M1911],
		[USMC_Weap_M1911_Mag,2,"vest"]
	};

	//Tank Crew
	case "USMC_VCrew" : {
		[USMC_Uni] call FNC_AddItem;
		[USMC_Vest_M1C_Eng] call FNC_AddItem;
		[USAB_BP_M1928] call FNC_AddItem;
		[USMC_Helm_VCrew] call FNC_AddItem;
		[USMC_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USMC_default_equipment;
		
		//Primary Weapon
		[USMC_Weap_M1C_Mag,1] call FNC_AddItem;
		[USMC_Weap_M1C] call FNC_AddItem;
		[USMC_Weap_M1C_Mag,2,"vest"] call FNC_AddItem;
		
		//Extra
		[USMC_Toolkit] call FNC_AddItem;
	};