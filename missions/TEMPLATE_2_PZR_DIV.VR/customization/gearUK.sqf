// Info: British Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Unit
//[this,"UK_Lt"] call FNC_GearScript;	Lieutenant
//[this,"UK_Med"] call FNC_GearScript;	Medic
//[this,"UK_Sig"] call FNC_GearScript;	Signaller
//[this,"UK_Sgt"] call FNC_GearScript;	Sergeant
//[this,"UK_Cpl"] call FNC_GearScript;	Corporal
//[this,"UK_LCpl"] call FNC_GearScript;	Lance Corporal
//[this,"UK_MG"] call FNC_GearScript;	Machine Gunner
//[this,"UK_MGA"] call FNC_GearScript;	Machine Gun Assistant
//[this,"UK_Rif"] call FNC_GearScript;	Rifleman

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define UK_Weap_LeeEn			"fow_w_leeenfield_no4mk1"
#define UK_Weap_Sten			"fow_w_sten_mk2"
#define UK_Weap_M1T				"fow_w_m1a1_thompson"
#define UK_Weap_Bren			"fow_w_bren"

//Secondary
#define UK_Weap_M1895			"LIB_M1895"

//Launcher

//Attachments

//Ammo
#define UK_Weap_LeeEn_Mag		"fow_10Rnd_303"
#define UK_Weap_Sten_Mag		"fow_32Rnd_9x19_sten"
#define UK_Weap_M1T_Mag1		"fow_30Rnd_45acp_M1_2PzD"
#define UK_Weap_M1T_Mag2		"fow_20Rnd_45acp_M1_2PzD"
#define UK_Weap_Bren_Mag		"fow_30Rnd_303_bren"
#define UK_Weap_M1895_Mag		"LIB_7Rnd_762x38"

//Grenades
#define UK_Gren_Frag			"fow_e_no36mk1"
#define UK_Gren_Smoke_W			"SmokeShell"
#define UK_Gren_Smoke_B			"SmokeShellBlue"
#define UK_Gren_Smoke_G			"SmokeShellGreen"
#define UK_Gren_Smoke_O			"SmokeShellOrange"
#define UK_Gren_Smoke_P			"SmokeShellPurple"
#define UK_Gren_Smoke_R			"SmokeShellRed"
#define UK_Gren_Smoke_Y			"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define UK_Uni_Lt				"fow_u_uk_bd40_01_lieutenant"
#define UK_Uni_Sgt				"fow_u_uk_bd40_01_sergeant"
#define UK_Uni_Cpl				"fow_u_uk_bd40_01_corporal"
#define UK_Uni_LCpl				"fow_u_uk_bd40_01_lance_corporal"
#define UK_Uni_Pte				"fow_u_uk_bd40_01_private"

//Vests
#define UK_Vest_LeeEn			"fow_v_uk_base"
#define UK_Vest_Sten			"fow_v_uk_sten"
#define UK_Vest_Bren			"fow_v_uk_bren"
#define UK_Vest_O				"fow_v_uk_officer"

//Backpack
#define UK_BP					"fow_b_uk_p37"
#define UK_BP_Radio				"fow_b_us_radio"

//Headgear
#define UK_Helmet_Mk2			"fow_h_uk_mk2"
#define UK_Helmet_Mk3			"fow_h_uk_mk3"
#define UK_Helmet_Mk3_Net		"fow_h_uk_mk3_net"

//Face
#define UK_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

//=== MISC ===
//ACE
#define UK_ace_defuse			"ACE_DefusalKit"
#define UK_ace_earplugs			"ACE_EarPlugs";
#define UK_ace_firing_device	"ACE_Clacker"
#define UK_ace_flashlight		"ACE_Flashlight_MX991"
#define UK_ace_shovel			"ACE_EntrenchingTool"
#define UK_ace_sparebarrel		"ACE_SpareBarrel"
#define UK_ace_wirecutters		"ACE_wirecutter"
#define UK_ace_carpick			"ACE_key_lockpick"
#define UK_ace_maptools			"ACE_MapTools"
#define UK_ace_cabletie		"ACE_CableTie"

//Medical
#define UK_Bandage				"ACE_fieldDressing";
#define UK_TQ					"ACE_tourniquet";
#define UK_Morp					"ACE_morphine";
#define UK_Epi					"ACE_epinephrine";
#define UK_Blood1000			"ACE_bloodIV";
#define UK_Blood500				"ACE_bloodIV_250";
#define UK_Blood250				"ACE_bloodIV_500";
#define UK_PAK					"ACE_personalAidKit";
#define UK_SurgKit				"ACE_surgicalKit";

//Double Misc
#define UK_Bino					"LIB_Binocular_SU"
#define UK_Demo					"SatchelCharge_Remote_Mag"
#define UK_Headset				"LIB_GER_Headset"
#define UK_Minedetector			"MineDetector"
#define UK_Toolkit				"ToolKit"

//Radio
#define UK_Radio				"tf_anprc154"

//=== EQUIPMENT ===

#define UK_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_MX991"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define UK_leader_equipment \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define UK_medic_equipment \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",4,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;

//======================== Loadouts ========================

//Unit

	//Lieutenant
	case "UK_Lt" : {
		[UK_Uni_Lt] call FNC_AddItem;
		[UK_Vest_O] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Secondary Weapon
		[UK_Weap_M1895_Mag,1] call FNC_AddItem;
		[UK_Weap_M1895] call FNC_AddItem;
		[UK_Weap_M1895_Mag,2,"vest"] call FNC_AddItem;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
	};

	//Medic
	case "UK_Med" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		[UK_BP] call FNC_AddItem;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield
		[UK_Vest_LeeEn],
		[UK_Weap_LeeEn_Mag,1],
		[UK_Weap_LeeEn],
		[UK_Weap_LeeEn_Mag,5,"vest"]
		],[50],
		[//Thompson
		[UK_Vest_Sten],
		[UK_Weap_M1T_Mag2,1],
		[UK_Weap_M1T],
		[UK_Weap_M1T_Mag2,6,"vest"]
		],[30],
		[//Sten Gun
		[UK_Vest_Sten],
		[UK_Weap_Sten_Mag,1],
		[UK_Weap_Sten],
		[UK_Weap_Sten_Mag,6,"vest"]
		],[20]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		UK_default_equipment;
	};

	//Signaller
	case "UK_Sig" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[UK_BP_Radio] call FNC_AddItem;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		
		//Assigned Items
		UK_default_equipment;
		[UK_Radio] call FNC_AddItem;
		_unit assignItem UK_Radio;
		
		//Primary Weapon
		[
		[//Lee Enfield
		[UK_Vest_LeeEn],
		[UK_Weap_LeeEn_Mag,1],
		[UK_Weap_LeeEn],
		[UK_Weap_LeeEn_Mag,5,"vest"]
		],[85],
		[//Thompson
		[UK_Vest_Sten],
		[UK_Weap_M1T_Mag2,1],
		[UK_Weap_M1T],
		[UK_Weap_M1T_Mag2,6,"vest"]
		],[10],
		[//Sten Gun
		[UK_Vest_Sten],
		[UK_Weap_Sten_Mag,1],
		[UK_Weap_Sten],
		[UK_Weap_Sten_Mag,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
	};

	//Sergeant
	case "UK_Sgt" : {
		[UK_Uni_Sgt] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		[UK_BP] call FNC_AddItem;
		
		//Assigned Items
		UK_default_equipment;
		UK_leader_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield
		[UK_Vest_LeeEn],
		[UK_Weap_LeeEn_Mag,1],
		[UK_Weap_LeeEn],
		[UK_Weap_LeeEn_Mag,5,"vest"]
		],[20],
		[//Thompson
		[UK_Vest_Sten],
		[UK_Weap_M1T_Mag2,1],
		[UK_Weap_M1T],
		[UK_Weap_M1T_Mag2,6,"vest"]
		],[50],
		[//Sten Gun
		[UK_Vest_Sten],
		[UK_Weap_Sten_Mag,1],
		[UK_Weap_Sten],
		[UK_Weap_Sten_Mag,6,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Weap_Bren_Mag,1] call FNC_AddItem;
	};

	//Corporal
	case "UK_Cpl" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		[UK_BP] call FNC_AddItem;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield
		[UK_Vest_LeeEn],
		[UK_Weap_LeeEn_Mag,1],
		[UK_Weap_LeeEn],
		[UK_Weap_LeeEn_Mag,5,"vest"]
		],[20],
		[//Thompson
		[UK_Vest_Sten],
		[UK_Weap_M1T_Mag2,1],
		[UK_Weap_M1T],
		[UK_Weap_M1T_Mag2,6,"vest"]
		],[50],
		[//Sten Gun
		[UK_Vest_Sten],
		[UK_Weap_Sten_Mag,1],
		[UK_Weap_Sten],
		[UK_Weap_Sten_Mag,6,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Weap_Bren_Mag,1] call FNC_AddItem;
	};

	//Lance Corporal
	case "UK_LCpl" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		[UK_BP] call FNC_AddItem;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield
		[UK_Vest_LeeEn],
		[UK_Weap_LeeEn_Mag,1],
		[UK_Weap_LeeEn],
		[UK_Weap_LeeEn_Mag,5,"vest"]
		],[20],
		[//Thompson
		[UK_Vest_Sten],
		[UK_Weap_M1T_Mag2,1],
		[UK_Weap_M1T],
		[UK_Weap_M1T_Mag2,6,"vest"]
		],[50],
		[//Sten Gun
		[UK_Vest_Sten],
		[UK_Weap_Sten_Mag,1],
		[UK_Weap_Sten],
		[UK_Weap_Sten_Mag,6,"vest"]
		],[30]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Weap_Bren_Mag,1] call FNC_AddItem;
	};

	//Machine Gunner
	case "UK_MG" : {
		[UK_Uni_Cpl] call FNC_AddItem;
		[UK_Vest_Bren] call FNC_AddItem;
		[UK_BP] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[UK_Weap_Bren_Mag,1] call FNC_AddItem;
		[UK_Weap_Bren] call FNC_AddItem;
		[UK_Weap_Bren_Mag,8,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[UK_Weap_M1895_Mag,1] call FNC_AddItem;
		[UK_Weap_M1895] call FNC_AddItem;
		[UK_Weap_M1895_Mag,2] call FNC_AddItem;
	};

	//Machine Gun Assistant
	case "UK_MGA" : {
		[UK_Uni_LCpl] call FNC_AddItem;
		[UK_Vest_Bren] call FNC_AddItem;
		[UK_BP] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield
		[UK_Weap_LeeEn_Mag,1],
		[UK_Weap_LeeEn],
		[UK_Weap_LeeEn_Mag,5,"vest"]
		],[85],
		[//Thompson
		[UK_Weap_M1T_Mag2,1],
		[UK_Weap_M1T],
		[UK_Weap_M1T_Mag2,6,"vest"]
		],[10],
		[//Sten Gun
		[UK_Weap_Sten_Mag,1],
		[UK_Weap_Sten],
		[UK_Weap_Sten_Mag,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Weap_Bren_Mag,4,"backpack"] call FNC_AddItem;
		[UK_Gren_Frag,1] call FNC_AddItem;
	};

	//Rifleman
	case "UK_Rif" : {
		[UK_Uni_Pte] call FNC_AddItem;
		[UK_Face_r] call FNC_AddItemRandom;
		[
		[//Mk2
		[UK_Helmet_Mk2]
		],[33],
		[//Mk3
		[UK_Helmet_Mk3]
		],[34],
		[//Mk3 Net
		[UK_Helmet_Mk3_Net]
		],[33]
		] call FNC_AddItemRandomPercent;
		[UK_BP] call FNC_AddItem;
		
		//Assigned Items
		UK_default_equipment;
		
		//Primary Weapon
		[
		[//Lee Enfield
		[UK_Vest_LeeEn],
		[UK_Weap_LeeEn_Mag,1],
		[UK_Weap_LeeEn],
		[UK_Weap_LeeEn_Mag,5,"vest"]
		],[85],
		[//Thompson
		[UK_Vest_Sten],
		[UK_Weap_M1T_Mag2,1],
		[UK_Weap_M1T],
		[UK_Weap_M1T_Mag2,6,"vest"]
		],[10],
		[//Sten Gun
		[UK_Vest_Sten],
		[UK_Weap_Sten_Mag,1],
		[UK_Weap_Sten],
		[UK_Weap_Sten_Mag,6,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[UK_Gren_Frag,1] call FNC_AddItem;
		[UK_Weap_Bren_Mag,1] call FNC_AddItem;
	};