// Info: US Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Company HQ
//[this,"USAB_CC"] call FNC_GearScript;		Company Commander
//[this,"USAB_C2"] call FNC_GearScript;		Company Executive Officer
//[this,"USAB_CSGT"] call FNC_GearScript;	Company First Sergeant
//[this,"USAB_CRTO"] call FNC_GearScript;	Company Radio Operator

	//Platoon HQ
//[this,"USAB_PC"] call FNC_GearScript;		Platoon Commander
//[this,"USAB_PSGT"] call FNC_GearScript;	Platoon Sergeant
//[this,"USAB_PRTO"] call FNC_GearScript;	Radio Operator
//[this,"USAB_Mess"] call FNC_GearScript;	Messenger
//[this,"USAB_Med"] call FNC_GearScript;	Medic

	//Squad
//[this,"USAB_SL"] call FNC_GearScript;		Squad Leader
//[this,"USAB_S2"] call FNC_GearScript;		Assistant Squad Leader
//[this,"USAB_Scout"] call FNC_GearScript;	Scout
//[this,"USAB_MG"] call FNC_GearScript;		Machine Gunner
//[this,"USAB_MGA"] call FNC_GearScript;	Assistant Machine Gunner
//[this,"USAB_MGAB"] call FNC_GearScript;	Machine Gun Ammo Bearer
//[this,"USAB_AR"] call FNC_GearScript;		Automatic Rifleman
//[this,"USAB_AAR"] call FNC_GearScript;	Assistant Automatic Rifleman
//[this,"USAB_ARB"] call FNC_GearScript;	Ammo Bearer
//[this,"USAB_Rif"] call FNC_GearScript;	Rifleman

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define USAB_Weap_M1903A3		"LIB_M1903A3_Springfield"
#define USAB_Weap_M1G			"fow_w_m1_garand"
#define USAB_Weap_M1C			"fow_w_m1_carbine"
#define USAB_Weap_M1T			"fow_w_m1a1_thompson"
#define USAB_Weap_M3GG			"fow_w_m3"
#define USAB_Weap_BAR			"LIB_M1918A2_BAR"
#define USAB_Weap_M1919A4		"fow_w_m1919a4"
#define USAB_Weap_M1919A6		"fow_w_m1919a6"
#define USAB_Weap_M1903A4		"LIB_M1903A4_Springfield"

//Secondary
#define USAB_Weap_M1911			"LIB_Colt_M1911"

#define USAB_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define USAB_Weap_Bazoo			"LIB_M1A1_Bazooka"

//Attachments
#define USAB_Weap_BAR_Bipod		"LIB_M1918A2_BAR_Bipod"

//Ammo
#define USAB_Weap_M1903_Mag		"LIB_5Rnd_762x63"
#define USAB_Weap_M1G_Mag		"LIB_8Rnd_762x63"
#define USAB_Weap_M1C_Mag		"LIB_15Rnd_762x33"
#define USAB_Weap_M1T_Mag1		"fow_30Rnd_45acp_M1_2PzD"
#define USAB_Weap_M1T_Mag2		"fow_20Rnd_45acp_M1_2PzD"
#define USAB_Weap_M3GG_Mag		"fow_30Rnd_45acp_M3_2PzD"
#define USAB_Weap_BAR_Mag		"LIB_20Rnd_762x63"
#define USAB_Weap_M1919_Mag25	"fow_250Rnd_M1919"
#define USAB_Weap_M1919_Mag20	"fow_200Rnd_M1919_2PzD"
#define USAB_Weap_M1919_Mag15	"fow_150Rnd_M1919_2PzD"
#define USAB_Weap_M1919_Mag10	"fow_100Rnd_M1919_2PzD"
#define USAB_Weap_M1919_Mag5	"fow_50Rnd_M1919"
#define USAB_Weap_M1911_Mag		"LIB_7Rnd_45ACP"
#define USAB_Weap_Bazoo_Mag		"LIB_1Rnd_60mm_M6"

#define USAB_Flare_W			"LIB_1Rnd_flare_white"
#define USAB_Flare_R			"LIB_1Rnd_flare_red"
#define USAB_Flare_G			"LIB_1Rnd_flare_green"
#define USAB_Flare_Y			"LIB_1Rnd_flare_yellow"

//Grenades
#define USAB_Gren_Frag			"fow_e_mk2"
#define USAB_Gren_Smoke_W		"SmokeShell"
#define USAB_Gren_Smoke_B		"SmokeShellBlue"
#define USAB_Gren_Smoke_G		"SmokeShellGreen"
#define USAB_Gren_Smoke_O		"SmokeShellOrange"
#define USAB_Gren_Smoke_P		"SmokeShellPurple"
#define USAB_Gren_Smoke_R		"SmokeShellRed"
#define USAB_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define USAB_Uni_CPT			"U_LIB_US_Cap"
#define USAB_Uni_LT				"U_LIB_US_Off"
#define USAB_Uni_SGT			"U_LIB_US_Sergant"
#define USAB_Uni_CPL			"U_LIB_US_Corp"
#define USAB_Uni_PFC			"U_LIB_US_Private_1st"
#define USAB_Uni_PVT			"U_LIB_US_Private"
#define USAB_Uni_Med			"U_LIB_US_Med"

//Vests
#define USAB_Vest_Pistol		"fow_v_us_45"
#define USAB_Vest_NCO_M1C		"fow_v_us_carbine_nco"
#define USAB_Vest_NCO_M1T		"fow_v_us_thompson_nco"
#define USAB_Vest_M1G			"fow_v_us_garand"
#define USAB_Vest_M1G_Frag		"fow_v_us_Grenade"
#define USAB_Vest_M1C			"fow_v_us_carbine"
#define USAB_Vest_M1C_Eng		"fow_v_us_carbine_eng"
#define USAB_Vest_M1T			"fow_v_us_thompson"
#define USAB_Vest_BAR			"fow_v_us_bar"
#define USAB_Vest_MGA			"fow_v_us_asst_mg"
#define USAB_Vest_Med			"fow_v_us_medic"

//Backpack
#define USAB_BP_r				["B_LIB_US_Backpack"],["B_LIB_US_Backpack"],["B_LIB_US_Backpack"],["B_LIB_US_M36"]
#define USAB_BP_M1928			"B_LIB_US_Backpack"
#define USAB_BP_M36				"B_LIB_US_M36"
#define USAB_BP_MG				"B_LIB_US_MedicBackpack_Big_Empty"
#define USAB_BP_MG				"B_LIB_US_MGbag_Big_Empty"
#define USAB_BP_AT				"B_LIB_US_RocketBag_Big_Empty"
#define USAB_BP_Radio			"fow_b_US_Radio"
#define USAB_BP_Para			"ACE_NonSteerableParachute"
#define USAB_Bando				"B_LIB_US_Bandoleer"

//Headgear
#define USAB_Helm_CPT			"H_LIB_US_Helmet_Cap"
#define USAB_Helm_LT			"H_LIB_US_Helmet_First_lieutenant"
#define USAB_Helm_2LT			"H_LIB_US_Helmet_Second_lieutenant"
#define USAB_Helm_Med_r			["H_LIB_US_Helmet_Med"],["H_LIB_US_Helmet_Med_os"],["H_LIB_US_Helmet_Med_ns"]
								//strap, open strap, no strap
#define USAB_Helm_r				["H_LIB_US_Helmet"],["H_LIB_US_Helmet_os"],["H_LIB_US_Helmet_ns"],["H_LIB_US_Helmet_Net"],["H_LIB_US_Helmet_Net_os"],["H_LIB_US_Helmet_Net_ns"]
								//strap, open strap, no strap, camo strap, camo open strap, camo no strap

#define USAB_Helm_VCrew			"H_LIB_US_Helmet_Tank"

//Face
#define USAB_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

//=== MISC ===
//ACE
#define USAB_ace_defuse			"ACE_DefusalKit"
#define USAB_ace_earplugs		"ACE_EarPlugs";
#define USAB_ace_firing_device	"ACE_Clacker"
#define USAB_ace_flashlight		"ACE_Flashlight_MX991"
#define USAB_ace_shovel			"ACE_EntrenchingTool"
#define USAB_ace_sparebarrel	"ACE_SpareBarrel"
#define USAB_ace_wirecutters	"ACE_wirecutter"
#define USAB_ace_carpick		"ACE_key_lockpick"
#define USAB_ace_maptools		"ACE_MapTools"
#define USAB_ace_cabletie		"ACE_CableTie"

//Medical
#define USAB_Bandage			"ACE_fieldDressing";
#define USAB_TQ					"ACE_tourniquet";
#define USAB_Morp				"ACE_morphine";
#define USAB_Epi				"ACE_epinephrine";
#define USAB_Blood1000			"ACE_bloodIV";
#define USAB_Blood500			"ACE_bloodIV_250";
#define USAB_Blood250			"ACE_bloodIV_500";
#define USAB_PAK				"ACE_personalAidKit";
#define USAB_SurgKit			"ACE_surgicalKit";

//Double Misc
#define USAB_Bino				"LIB_Binocular_SU"
#define USAB_Demo				"SatchelCharge_Remote_Mag"
#define USAB_Minedetector		"MineDetector"
#define USAB_Toolkit			"ToolKit"

//Radio
#define USAB_Radio_P			"tf_anprc154"
#define USAB_Radio_C			"tf_anprc155"

//=== EQUIPMENT ===

#define USAB_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_MX991"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define USAB_leader_equipment \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define USAB_medic_equipment \
["ACE_fieldDressing",16] call FNC_AddItem; \
["ACE_morphine",5] call FNC_AddItem; \
["ACE_epinephrine",4] call FNC_AddItem; \
["ACE_salineIV_500",2] call FNC_AddItem;

//======================== Loadouts ========================

//Company HQ

	//Company Commander
	case "USAB_CC" : {
		[USAB_Uni_CPT] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_CPT] call FNC_AddItem;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		USAB_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USAB_Vest_M1T],
		[USAB_Weap_M1T_Mag1,1],
		[USAB_Weap_M1T],
		[USAB_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USAB_Vest_M1T],
		[USAB_Weap_M3GG_Mag,1],
		[USAB_Weap_M3GG],
		[USAB_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};

	//Company Executive Officer
	case "USAB_C2" : {
		[USAB_Uni_LT] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_LT] call FNC_AddItem;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		USAB_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USAB_Vest_M1T],
		[USAB_Weap_M1T_Mag1,1],
		[USAB_Weap_M1T],
		[USAB_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USAB_Vest_M1T],
		[USAB_Weap_M3GG_Mag,1],
		[USAB_Weap_M3GG],
		[USAB_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Company First Sergeant
	case "USAB_CSGT" : {
		[USAB_Uni_SGT] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		USAB_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Thompson
		[USAB_Vest_M1T],
		[USAB_Weap_M1T_Mag1,1],
		[USAB_Weap_M1T],
		[USAB_Weap_M1T_Mag1,5,"vest"]
		],[40],
		[//Grease Gun
		[USAB_Vest_M1T],
		[USAB_Weap_M3GG_Mag,1],
		[USAB_Weap_M3GG],
		[USAB_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Company Radio Operator
	case "USAB_CRTO" : {
		[USAB_Uni_CPL] call FNC_AddItem;
		[USAB_Vest_NCO_M1C] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		[USAB_Radio_P] call FNC_AddItem;
		_unit assignItem USAB_Radio_P;
		
		//Primary Weapon
		[USAB_Weap_M1C_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1C] call FNC_AddItem;
		[USAB_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,2] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "USAB_PC" : {
		[USAB_Uni_LT] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_2LT] call FNC_AddItem;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		USAB_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USAB_Vest_M1T],
		[USAB_Weap_M1T_Mag1,1],
		[USAB_Weap_M1T],
		[USAB_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USAB_Vest_M1T],
		[USAB_Weap_M3GG_Mag,1],
		[USAB_Weap_M3GG],
		[USAB_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Platoon Sergeant
	case "USAB_PSGT" : {
		[USAB_Uni_SGT] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		USAB_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Thompson
		[USAB_Vest_M1T],
		[USAB_Weap_M1T_Mag1,1],
		[USAB_Weap_M1T],
		[USAB_Weap_M1T_Mag1,5,"vest"]
		],[40],
		[//Grease Gun
		[USAB_Vest_M1T],
		[USAB_Weap_M3GG_Mag,1],
		[USAB_Weap_M3GG],
		[USAB_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Radio Operator
	case "USAB_PRTO" : {
		[USAB_Uni_CPL] call FNC_AddItem;
		[USAB_Vest_NCO_M1C] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		[USAB_Radio_P] call FNC_AddItem;
		_unit assignItem USAB_Radio_P;
		
		//Primary Weapon
		[USAB_Weap_M1C_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1C] call FNC_AddItem;
		[USAB_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,2] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Messenger
	case "USAB_Mess" : {
		[USAB_Uni_PFC] call FNC_AddItem;
		[USAB_Vest_M1G] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1G_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1G] call FNC_AddItem;
		[USAB_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,2] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Medic
	case "USAB_Med" : {
		[USAB_Uni_Med] call FNC_AddItem;
		[USAB_Vest_Med] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_Med_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1G_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1G] call FNC_AddItem;
		[USAB_Weap_M1G_Mag,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
		USAB_medic_equipment;
	};

//Squad

	//Squad Leader
	case "USAB_SL" : {
		[USAB_Uni_SGT] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Thompson
		[USAB_Vest_M1T],
		[USAB_Weap_M1T_Mag1,1],
		[USAB_Weap_M1T],
		[USAB_Weap_M1T_Mag1,5,"vest"]
		],[50],
		[//Grease Gun
		[USAB_Vest_M1T],
		[USAB_Weap_M3GG_Mag,1],
		[USAB_Weap_M3GG],
		[USAB_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Assistant Squad Leader
	case "USAB_S2" : {
		[USAB_Uni_CPL] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Thompson
		[USAB_Vest_M1T],
		[USAB_Weap_M1T_Mag1,1],
		[USAB_Weap_M1T],
		[USAB_Weap_M1T_Mag1,5,"vest"]
		],[50],
		[//Grease Gun
		[USAB_Vest_M1T],
		[USAB_Weap_M3GG_Mag,1],
		[USAB_Weap_M3GG],
		[USAB_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Scout
	case "USAB_Scout" : {
		[//Uni
		[
		[USAB_Uni_PFC]
		],[50],
		[
		[USAB_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[//Vest
		[//Carbine
		[USAB_Vest_M1C],
		[USAB_Weap_M1C_Mag,1],
		[USAB_Weap_M1C],
		[USAB_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Garand + Frag
		[USAB_Vest_M1G_Frag],
		[USAB_Weap_M1G_Mag,1],
		[USAB_Weap_M1G],
		[USAB_Weap_M1G_Mag,5,"vest"],
		[USAB_Gren_Frag,3,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,1] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};

	//Machine Gunner
	case "USAB_MG" : {
		[USAB_Uni_CPL] call FNC_AddItem;
		[USAB_Vest_MGA] call FNC_AddItem;
		[USAB_BP_M1928] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1919_Mag25,1] call FNC_AddItem;
		[USAB_Weap_M1919A4] call FNC_AddItem;
		removeBackpack _unit;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Weap_M1919_Mag25,1] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1],
		[USAB_Weap_M1911],
		[USAB_Weap_M1911_Mag,2]
	};
	
	//Assistant Machine Gunner
	case "USAB_MGA" : {
		[USAB_Uni_PFC] call FNC_AddItem;
		[USAB_Vest_M1C] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		USAB_leader_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1C_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1C] call FNC_AddItem;
		[USAB_Weap_M1C_Mag,4] call FNC_AddItem;
		
		//Extra
		[USAB_Weap_M1919_Mag5,1] call FNC_AddItem;
	};
	
	//Machine Gun Ammo Bearer
	case "USAB_MGAB" : {
		[
		[//PFC
		[USAB_Uni_PFC]
		],[50],
		[//PVT
		[USAB_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USAB_Vest_M1G] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1G_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1G] call FNC_AddItem;
		[USAB_Weap_M1G_Mag,10] call FNC_AddItem;
		
		//Extra
		[USAB_Weap_M1919_Mag5,1] call FNC_AddItem;
	};
	
	//Automatic Rifleman
	case "USAB_AR" : {
		[USAB_Uni_CPL] call FNC_AddItem;
		[USAB_Vest_BAR] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[USAB_Weap_BAR_Mag,1] call FNC_AddItem;
		[USAB_Weap_BAR] call FNC_AddItem;
		[USAB_Weap_BAR_Bipod] call FNC_AddItem;
		[USAB_Weap_BAR_Mag,6,"vest"] call FNC_AddItem;
		[USAB_Weap_BAR_Mag,9] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Automatic Rifle Assistant
	case "USAB_AAR" : {
		[USAB_Uni_PFC] call FNC_AddItem;
		[USAB_Vest_M1C] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		USAB_leader_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1C_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1C] call FNC_AddItem;
		[USAB_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Smoke_W,1] call FNC_AddItem;
		[USAB_Weap_BAR_Mag,7] call FNC_AddItem;
	};
	
	//Automatic Rifle Ammo Bearer
	case "USAB_ARB" : {
		[
		[//PFC
		[USAB_Uni_PFC]
		],[50],
		[//PVT
		[USAB_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USAB_Vest_M1G] call FNC_AddItem;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1G_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1G] call FNC_AddItem;
		[USAB_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Smoke_W,1] call FNC_AddItem;
		[USAB_Weap_BAR_Mag,8] call FNC_AddItem;
	};
	
	//Rifleman
	case "USAB_Rif" : {
		[//Uni
		[
		[USAB_Uni_PFC]
		],[50],
		[
		[USAB_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[//Vest
		[
		[USAB_Vest_M1G]
		],[50],
		[
		[USAB_Vest_M1G_Frag],
		[USAB_Gren_Frag,3,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USAB_BP_Para] call FNC_AddItem;
		[USAB_Helm_r] call FNC_AddItemRandom;
		[USAB_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USAB_default_equipment;
		
		//Primary Weapon
		[USAB_Weap_M1G_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1G] call FNC_AddItem;
		[USAB_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		[USAB_Weap_M1911] call FNC_AddItem;
		[USAB_Weap_M1911_Mag,1] call FNC_AddItem;
		
		//Extra
		[USAB_Gren_Frag,2] call FNC_AddItem;
		[USAB_Gren_Smoke_W,2] call FNC_AddItem;
	};