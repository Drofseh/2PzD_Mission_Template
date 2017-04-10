// Info: US Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Company HQ
//[this,"USA_CC"] call FNC_GearScript;		Company Commander
//[this,"USA_C2"] call FNC_GearScript;		Company Executive Officer
//[this,"USA_CSGT"] call FNC_GearScript;	Company First Sergeant
//[this,"USA_CRTO"] call FNC_GearScript;	Company Radio Operator

	//Platoon HQ
//[this,"USA_PC"] call FNC_GearScript;		Platoon Commander
//[this,"USA_PSGT"] call FNC_GearScript;	Platoon Sergeant
//[this,"USA_PRTO"] call FNC_GearScript;	Radio Operator
//[this,"USA_Mess"] call FNC_GearScript;	Messenger
//[this,"USA_Med"] call FNC_GearScript;		Medic

	//Rifle Squad
//[this,"USA_SL"] call FNC_GearScript;		Squad Leader
//[this,"USA_S2"] call FNC_GearScript;		Assistant Squad Leader
//[this,"USA_Scout"] call FNC_GearScript;	Scout
//[this,"USA_AR"] call FNC_GearScript;		Automatic Rifleman
//[this,"USA_AAR"] call FNC_GearScript;		Assistant Automatic Rifleman
//[this,"USA_ARB"] call FNC_GearScript;		Ammo Bearer
//[this,"USA_Rif"] call FNC_GearScript;		Rifleman

	//Weapons Squad
//[this,"USA_MG"] call FNC_GearScript;		Machine Gunner
//[this,"USA_MGA"] call FNC_GearScript;		Assistant Machine Gunner
//[this,"USA_MGAB"] call FNC_GearScript;	Machine Gun Ammo Bearer
//[this,"USA_AT"] call FNC_GearScript;		Anti-tank Gunner
//[this,"USA_ATA"] call FNC_GearScript;		Assistant Anti-tank Gunner

	//Crew
//[this,"USA_VCom"] call FNC_GearScript;	Tank Commander
//[this,"USA_VCrew"] call FNC_GearScript;	Tank Crew

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define USA_Weap_M1903A3		"LIB_M1903A3_Springfield"
#define USA_Weap_M1G			"fow_w_m1_garand"
#define USA_Weap_M1C			"fow_w_m1_carbine"
#define USA_Weap_M1T			"fow_w_m1a1_thompson"
#define USA_Weap_M3GG			"fow_w_m3"
#define USA_Weap_BAR			"LIB_M1918A2_BAR"
#define USA_Weap_M1919A4		"fow_w_m1919a4"
#define USA_Weap_M1919A6		"fow_w_m1919a6"
#define USA_Weap_M1903A4		"LIB_M1903A4_Springfield"

//Secondary
#define USA_Weap_M1911			"LIB_Colt_M1911"

#define USA_Flare_Pistol		"LIB_FLARE_PISTOL"

//Launcher
#define USA_Weap_Bazoo			"LIB_M1A1_Bazooka"

//Attachments
#define USA_Weap_BAR_Bipod		"LIB_M1918A2_BAR_Bipod"

//Ammo
#define USA_Weap_M1903_Mag		"LIB_5Rnd_762x63"
#define USA_Weap_M1G_Mag		"LIB_8Rnd_762x63"
#define USA_Weap_M1C_Mag		"LIB_15Rnd_762x33"
#define USA_Weap_M1T_Mag1		"fow_30Rnd_45acp_M1_2PzD"
#define USA_Weap_M1T_Mag2		"fow_20Rnd_45acp_M1_2PzD"
#define USA_Weap_M3GG_Mag		"fow_30Rnd_45acp_M3_2PzD"
#define USA_Weap_BAR_Mag		"LIB_20Rnd_762x63"
#define USA_Weap_M1919_Mag25	"fow_250Rnd_M1919"
#define USA_Weap_M1919_Mag20	"fow_200Rnd_M1919_2PzD"
#define USA_Weap_M1919_Mag15	"fow_150Rnd_M1919_2PzD"
#define USA_Weap_M1919_Mag10	"fow_100Rnd_M1919_2PzD"
#define USA_Weap_M1919_Mag5		"fow_50Rnd_M1919"
#define USA_Weap_M1911_Mag		"LIB_7Rnd_45ACP"
#define USA_Weap_Bazoo_Mag		"LIB_1Rnd_60mm_M6"

#define USA_Flare_W				"LIB_1Rnd_flare_white"
#define USA_Flare_R				"LIB_1Rnd_flare_red"
#define USA_Flare_G				"LIB_1Rnd_flare_green"
#define USA_Flare_Y				"LIB_1Rnd_flare_yellow"

//Grenades
#define USA_Gren_Frag			"fow_e_mk2"
#define USA_Gren_Smoke_W		"SmokeShell"
#define USA_Gren_Smoke_B		"SmokeShellBlue"
#define USA_Gren_Smoke_G		"SmokeShellGreen"
#define USA_Gren_Smoke_O		"SmokeShellOrange"
#define USA_Gren_Smoke_P		"SmokeShellPurple"
#define USA_Gren_Smoke_R		"SmokeShellRed"
#define USA_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define USA_Uni_CPT				"U_LIB_US_Cap"
#define USA_Uni_LT				"U_LIB_US_Off"
#define USA_Uni_SGT				"U_LIB_US_Sergant"
#define USA_Uni_CPL				"U_LIB_US_Corp"
#define USA_Uni_PFC				"U_LIB_US_Private_1st"
#define USA_Uni_PVT				"U_LIB_US_Private"
#define USA_Uni_Med				"U_LIB_US_Med"

//Vests
#define USA_Vest_Pistol			"fow_v_us_45"
#define USA_Vest_NCO_M1C		"fow_v_us_carbine_nco"
#define USA_Vest_NCO_M1T		"fow_v_us_thompson_nco"
#define USA_Vest_M1G			"fow_v_us_garand"
#define USA_Vest_M1G_Frag		"fow_v_us_Grenade"
#define USA_Vest_M1C			"fow_v_us_carbine"
#define USA_Vest_M1C_Eng		"fow_v_us_carbine_eng"
#define USA_Vest_M1T			"fow_v_us_thompson"
#define USA_Vest_BAR			"fow_v_us_bar"
#define USA_Vest_MGA			"fow_v_us_asst_mg"
#define USA_Vest_Med			"fow_v_us_medic"

//Backpack
#define USA_BP_r				["B_LIB_US_Backpack"],["B_LIB_US_Backpack"],["B_LIB_US_Backpack"],["B_LIB_US_M36"]
#define USA_BP_M1928			"B_LIB_US_Backpack"
#define USA_BP_M36				"B_LIB_US_M36"
#define USA_BP_Med				"B_LIB_US_MGbag_Big_Empty"
#define USA_BP_MG				"B_LIB_US_MedicBackpack_Big_Empty"
#define USA_BP_AT				"B_LIB_US_RocketBag_Big_Empty"
#define USA_BP_Radio			"fow_b_US_Radio"
#define USA_Bando				"B_LIB_US_Bandoleer"

//Headgear
#define USA_Helm_CPT			"H_LIB_US_Helmet_Cap"
#define USA_Helm_LT				"H_LIB_US_Helmet_First_lieutenant"
#define USA_Helm_2LT			"H_LIB_US_Helmet_Second_lieutenant"
#define USA_Helm_Med_r			["H_LIB_US_Helmet_Med"],["H_LIB_US_Helmet_Med_os"],["H_LIB_US_Helmet_Med_ns"]
								//strap, open strap, no strap
#define USA_Helm_r				["H_LIB_US_Helmet"],["H_LIB_US_Helmet_os"],["H_LIB_US_Helmet_ns"],["H_LIB_US_Helmet_Net"],["H_LIB_US_Helmet_Net_os"],["H_LIB_US_Helmet_Net_ns"]
								//strap, open strap, no strap, camo strap, camo open strap, camo no strap

#define USA_Helm_VCrew			"H_LIB_US_Helmet_Tank"

//Face
#define USA_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

#define USA_Face_Tank_r			["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define USA_ace_defuse			"ACE_DefusalKit"
#define USA_ace_earplugs		"ACE_EarPlugs";
#define USA_ace_firing_device	"ACE_Clacker"
#define USA_ace_flashlight		"ACE_Flashlight_MX991"
#define USA_ace_shovel			"ACE_EntrenchingTool"
#define USA_ace_sparebarrel		"ACE_SpareBarrel"
#define USA_ace_wirecutters		"ACE_wirecutter"
#define USA_ace_carpick			"ACE_key_lockpick"
#define USA_ace_maptools		"ACE_MapTools"
#define USA_ace_cabletie		"ACE_CableTie"

//Medical
#define USA_Bandage				"ACE_fieldDressing";
#define USA_TQ					"ACE_tourniquet";
#define USA_Morp				"ACE_morphine";
#define USA_Epi					"ACE_epinephrine";
#define USA_Blood1000			"ACE_bloodIV";
#define USA_Blood500			"ACE_bloodIV_250";
#define USA_Blood250			"ACE_bloodIV_500";
#define USA_PAK					"ACE_personalAidKit";
#define USA_SurgKit				"ACE_surgicalKit";

//Double Misc
#define USA_Bino				"LIB_Binocular_SU"
#define USA_Demo				"SatchelCharge_Remote_Mag"
#define USA_Minedetector		"MineDetector"
#define USA_Toolkit				"ToolKit"

//Radio
#define USA_Radio_P				"tf_anprc154"
#define USA_Radio_C				"tf_anprc155"

//=== EQUIPMENT ===

#define USA_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_MX991"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define USA_leader_equipment \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define USA_medic_equipment \
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
	case "USA_CC" : {
		[USA_Uni_CPT] call FNC_AddItem;
		[USA_Helm_CPT] call FNC_AddItem;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USA_Vest_M1T],
		[USA_Weap_M1T_Mag1,1],
		[USA_Weap_M1T],
		[USA_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USA_Vest_M1T],
		[USA_Weap_M3GG_Mag,1],
		[USA_Weap_M3GG],
		[USA_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USA_Weap_M1911_Mag,1],
		[USA_Weap_M1911],
		[USA_Weap_M1911_Mag,2,"vest"]
	};

	//Company Executive Officer
	case "USA_C2" : {
		[USA_Uni_LT] call FNC_AddItem;
		[USA_Helm_LT] call FNC_AddItem;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USA_Vest_M1T],
		[USA_Weap_M1T_Mag1,1],
		[USA_Weap_M1T],
		[USA_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USA_Vest_M1T],
		[USA_Weap_M3GG_Mag,1],
		[USA_Weap_M3GG],
		[USA_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USA_Weap_M1911_Mag,1],
		[USA_Weap_M1911],
		[USA_Weap_M1911_Mag,2,"vest"]
	};
	
	//Company First Sergeant
	case "USA_CSGT" : {
		[USA_Uni_SGT] call FNC_AddItem;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Thompson
		[USA_Vest_M1T],
		[USA_Weap_M1T_Mag1,1],
		[USA_Weap_M1T],
		[USA_Weap_M1T_Mag1,5,"vest"]
		],[40],
		[//Grease Gun
		[USA_Vest_M1T],
		[USA_Weap_M3GG_Mag,1],
		[USA_Weap_M3GG],
		[USA_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USA_Gren_Frag,2] call FNC_AddItem;
		[USA_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Company Radio Operator
	case "USA_CRTO" : {
		[USA_Uni_CPL] call FNC_AddItem;
		[USA_Vest_NCO_M1C] call FNC_AddItem;
		[USA_BP_Radio] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		[USA_Radio_P] call FNC_AddItem;
		_unit assignItem USA_Radio_P;
		
		//Primary Weapon
		[USA_Weap_M1C_Mag,1] call FNC_AddItem;
		[USA_Weap_M1C] call FNC_AddItem;
		[USA_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "USA_PC" : {
		[USA_Uni_LT] call FNC_AddItem;
		[USA_Helm_2LT] call FNC_AddItem;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[60],
		[//Thompson
		[USA_Vest_M1T],
		[USA_Weap_M1T_Mag1,1],
		[USA_Weap_M1T],
		[USA_Weap_M1T_Mag1,5,"vest"]
		],[30],
		[//Grease Gun
		[USA_Vest_M1T],
		[USA_Weap_M3GG_Mag,1],
		[USA_Weap_M3GG],
		[USA_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[USA_Weap_M1911_Mag,1],
		[USA_Weap_M1911],
		[USA_Weap_M1911_Mag,2,"vest"]
	};
	
	//Platoon Sergeant
	case "USA_PSGT" : {
		[USA_Uni_SGT] call FNC_AddItem;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Thompson
		[USA_Vest_M1T],
		[USA_Weap_M1T_Mag1,1],
		[USA_Weap_M1T],
		[USA_Weap_M1T_Mag1,5,"vest"]
		],[40],
		[//Grease Gun
		[USA_Vest_M1T],
		[USA_Weap_M3GG_Mag,1],
		[USA_Weap_M3GG],
		[USA_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USA_Gren_Frag,2] call FNC_AddItem;
		[USA_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Radio Operator
	case "USA_PRTO" : {
		[USA_Uni_CPL] call FNC_AddItem;
		[USA_Vest_NCO_M1C] call FNC_AddItem;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		[USA_Radio_P] call FNC_AddItem;
		_unit assignItem USA_Radio_P;
		
		//Primary Weapon
		[USA_Weap_M1C_Mag,1] call FNC_AddItem;
		[USA_Weap_M1C] call FNC_AddItem;
		[USA_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
	};
	
	//Messenger
	case "USA_Mess" : {
		[USA_Uni_PFC] call FNC_AddItem;
		[USA_Vest_M1G] call FNC_AddItem;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1G_Mag,1] call FNC_AddItem;
		[USA_Weap_M1G] call FNC_AddItem;
		[USA_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Gren_Frag,1] call FNC_AddItem;
	};
	
	//Medic
	case "USA_Med" : {
		[USA_Uni_Med] call FNC_AddItem;
		[USA_Vest_Med] call FNC_AddItem;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_Med_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1G_Mag,1] call FNC_AddItem;
		[USA_Weap_M1G] call FNC_AddItem;
		[USA_Weap_M1G_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Gren_Frag,1] call FNC_AddItem;
		USA_medic_equipment;
	};

//Rifle Squad

	//Squad Leader
	case "USA_SL" : {
		[USA_Uni_SGT] call FNC_AddItem;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Thompson
		[USA_Vest_M1T],
		[USA_Weap_M1T_Mag1,1],
		[USA_Weap_M1T],
		[USA_Weap_M1T_Mag1,5,"vest"]
		],[50],
		[//Grease Gun
		[USA_Vest_M1T],
		[USA_Weap_M3GG_Mag,1],
		[USA_Weap_M3GG],
		[USA_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USA_Gren_Frag,1] call FNC_AddItem;
		[USA_Weap_BAR_Mag,1] call FNC_AddItem;
	};
	
	//Assistant Squad Leader
	case "USA_S2" : {
		[USA_Uni_CPL] call FNC_AddItem;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[40],
		[//Thompson
		[USA_Vest_M1T],
		[USA_Weap_M1T_Mag1,1],
		[USA_Weap_M1T],
		[USA_Weap_M1T_Mag1,5,"vest"]
		],[50],
		[//Grease Gun
		[USA_Vest_M1T],
		[USA_Weap_M3GG_Mag,1],
		[USA_Weap_M3GG],
		[USA_Weap_M3GG_Mag,5,"vest"]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[USA_Gren_Frag,1] call FNC_AddItem;
		[USA_Weap_BAR_Mag,1] call FNC_AddItem;
	};
	
	//Scout
	case "USA_Scout" : {
		[//Uni
		[
		[USA_Uni_PFC]
		],[50],
		[
		[USA_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[//Vest
		[//Carbine
		[USA_Vest_M1C],
		[USA_Weap_M1C_Mag,1],
		[USA_Weap_M1C],
		[USA_Weap_M1C_Mag,4,"vest"]
		],[50],
		[//Garand + Frag
		[USA_Vest_M1G_Frag],
		[USA_Weap_M1G_Mag,1],
		[USA_Weap_M1G],
		[USA_Weap_M1G_Mag,5,"vest"],
		[USA_Gren_Frag,3,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Extra
		[USA_Gren_Frag,3] call FNC_AddItem;
		[USA_Weap_BAR_Mag,1,"backpack"] call FNC_AddItem;
	};
	
	//Automatic Rifleman
	case "USA_AR" : {
		[USA_Uni_CPL] call FNC_AddItem;
		[USA_Vest_BAR] call FNC_AddItem;
		[USA_BP_MG] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_BAR_Mag,1] call FNC_AddItem;
		[USA_Weap_BAR] call FNC_AddItem;
		[USA_Weap_BAR_Bipod] call FNC_AddItem;
		[USA_Weap_BAR_Mag,6,"vest"] call FNC_AddItem;
		[USA_Weap_BAR_Mag,9,"backpack"] call FNC_AddItem;
	};
	
	//Automatic Rifle Assistant
	case "USA_AAR" : {
		[USA_Uni_PFC] call FNC_AddItem;
		[USA_Vest_M1C] call FNC_AddItem;
		[USA_BP_MG] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[USA_Weap_M1C_Mag,1] call FNC_AddItem;
		[USA_Weap_M1C] call FNC_AddItem;
		[USA_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Gren_Frag,1] call FNC_AddItem;
		[USA_Weap_BAR_Mag,5,"backpack"] call FNC_AddItem;
	};
	
	//Automatic Rifle Ammo Bearer
	case "USA_ARB" : {
		[
		[//PFC
		[USA_Uni_PFC]
		],[50],
		[//PVT
		[USA_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USA_Vest_M1G] call FNC_AddItem;
		[USA_BP_MG] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1G_Mag,1] call FNC_AddItem;
		[USA_Weap_M1G] call FNC_AddItem;
		[USA_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Gren_Frag,1] call FNC_AddItem;
		[USA_Weap_BAR_Mag,10,"backpack"] call FNC_AddItem;
	};
	
	//Rifleman
	case "USA_Rif" : {
		[//Uni
		[
		[USA_Uni_PFC]
		],[50],
		[
		[USA_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[//Vest
		[
		[USA_Vest_M1G]
		],[50],
		[
		[USA_Vest_M1G_Frag],
		[USA_Gren_Frag,3,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USA_BP_r] call FNC_AddItemRandom;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1G_Mag,1] call FNC_AddItem;
		[USA_Weap_M1G] call FNC_AddItem;
		[USA_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Gren_Frag,3] call FNC_AddItem;
		[USA_Weap_BAR_Mag,1,"backpack"] call FNC_AddItem;
	};

//Weapons Squad

	//Machine Gunner
	case "USA_MG" : {
		[USA_Uni_CPL] call FNC_AddItem;
		[USA_Vest_MGA] call FNC_AddItem;
		[USA_BP_M1928] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1919_Mag25,1] call FNC_AddItem;
		[USA_Weap_M1919A4] call FNC_AddItem;
		[USA_Weap_M1919_Mag25,2] call FNC_AddItem;
		
		//Secondary Weapon
		[USA_Weap_M1911_Mag,1],
		[USA_Weap_M1911],
		[USA_Weap_M1911_Mag,2]
	};
	
	//Assistant Machine Gunner
	case "USA_MGA" : {
		[USA_Uni_PFC] call FNC_AddItem;
		[USA_Vest_M1C] call FNC_AddItem;
		[USA_BP_M1928] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[USA_Weap_M1C_Mag,1] call FNC_AddItem;
		[USA_Weap_M1C] call FNC_AddItem;
		[USA_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Weap_M1919_Mag25,1] call FNC_AddItem;
		[USA_Gren_Frag,1] call FNC_AddItem;
	};
	
	//Machine Gun Ammo Bearer
	case "USA_MGAB" : {
		[
		[//PFC
		[USA_Uni_PFC]
		],[50],
		[//PVT
		[USA_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USA_Vest_M1G] call FNC_AddItem;
		[USA_BP_M1928] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1G_Mag,1] call FNC_AddItem;
		[USA_Weap_M1G] call FNC_AddItem;
		[USA_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Weap_M1919_Mag25,1] call FNC_AddItem;
		[USA_Gren_Frag,1] call FNC_AddItem;
	};

	//Anti-tank Gunner
	case "USA_AT" : {
		[USA_Uni_CPL] call FNC_AddItem;
		[USA_Vest_M1C] call FNC_AddItem;
		[USA_BP_AT] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1C_Mag,1] call FNC_AddItem;
		[USA_Weap_M1C] call FNC_AddItem;
		[USA_Weap_M1C_Mag,4,"vest"] call FNC_AddItem;
		
		//Launcher
		[USA_Weap_Bazoo_Mag,1] call FNC_AddItem;
		[USA_Weap_Bazoo] call FNC_AddItem;
		[USA_Weap_Bazoo_Mag,3] call FNC_AddItem;
	};
	
	//Anti-tank Assistant
	case "USA_ATA" : {
		[USA_Uni_PFC] call FNC_AddItem;
		[USA_Vest_M1G] call FNC_AddItem;
		[USA_BP_AT] call FNC_AddItem;
		[USA_Helm_r] call FNC_AddItemRandom;
		[USA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Primary Weapon
		[USA_Weap_M1G_Mag,1] call FNC_AddItem;
		[USA_Weap_M1G] call FNC_AddItem;
		[USA_Weap_M1G_Mag,10,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Weap_Bazoo_Mag,3] call FNC_AddItem;
		[USA_Gren_Frag,1] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Commander
	case "USA_VCom" : {
		[USA_Uni_SGT] call FNC_AddItem;
		[USA_Vest_Pistol] call FNC_AddItem;
		[USA_Helm_VCrew] call FNC_AddItem;
		[USA_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		USA_leader_equipment;
		
		//Secondary Weapon
		[USA_Weap_M1911_Mag,1],
		[USA_Weap_M1911],
		[USA_Weap_M1911_Mag,2,"vest"]
	};
	
	//Tank Crew
	case "USA_VCrew" : {
		[
		[//PFC
		[USA_Uni_PFC]
		],[50],
		[//PVT
		[USA_Uni_PVT]
		],[50]
		] call FNC_AddItemRandomPercent;
		[USA_Vest_M1C_Eng] call FNC_AddItem;
		[USA_BP_M1928] call FNC_AddItem;
		[USA_Helm_VCrew] call FNC_AddItem;
		[USA_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		USA_default_equipment;
		
		//Primary Weapon
		[USA_Weap_M1C_Mag,1] call FNC_AddItem;
		[USA_Weap_M1C] call FNC_AddItem;
		[USA_Weap_M1C_Mag,2,"vest"] call FNC_AddItem;
		
		//Extra
		[USA_Toolkit] call FNC_AddItem;
	};