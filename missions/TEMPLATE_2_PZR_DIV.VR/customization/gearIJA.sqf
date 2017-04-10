// Info: SIDE Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Unit
//[this,"IJA_PC"] call FNC_GearScript;		Platoon Commander
//[this,"IJA_Med"] call FNC_GearScript;		Medic
//[this,"IJA_Mark"] call FNC_GearScript;	Marksman
//[this,"IJA_SL"] call FNC_GearScript;		Squad Leader
//[this,"IJA_TL"] call FNC_GearScript;		Team Leader
//[this,"IJA_MG"] call FNC_GearScript;		Machine Gunner
//[this,"IJA_MGA"] call FNC_GearScript;		Machine Gun Assistant
//[this,"IJA_Gren"] call FNC_GearScript;	Grenadier
//[this,"IJA_SMG"] call FNC_GearScript;		Submachine Gunner
//[this,"IJA_Rif"] call FNC_GearScript;		Rifleman

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define IJA_Weap_Type99_R		"fow_w_type99"
#define IJA_Weap_Type100		"fow_w_type100"
#define IJA_Weap_Type99_M		"fow_w_type99_lmg"

//Secondary
#define IJA_Weap_Rev			"LIB_M1895"
#define IJA_Weap_Pistol			"sab_mauser96_handgun"

//Launcher

//Attachments

//Ammo
#define IJA_Weap_Type99_R_Mag	"fow_5Rnd_77x58"
#define IJA_Weap_Type100_Mag	"fow_32Rnd_8x22"
#define IJA_Weap_Type99_M_Mag	"fow_30Rnd_77x58"

#define IJA_Weap_Rev_Mag		"LIB_7Rnd_762x38"
#define IJA_Weap_Pistol_Mag		"sab_wwiplanes_6rnd_mauser_mag"

//Grenades
#define IJA_Gren_Frag			"fow_e_type97"
#define IJA_Gren_Smoke_W		"SmokeShell"
#define IJA_Gren_Smoke_B		"SmokeShellBlue"
#define IJA_Gren_Smoke_G		"SmokeShellGreen"
#define IJA_Gren_Smoke_O		"SmokeShellOrange"
#define IJA_Gren_Smoke_P		"SmokeShellPurple"
#define IJA_Gren_Smoke_R		"SmokeShellRed"
#define IJA_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define IJA_Uni					"fow_u_ija_type98"
#define IJA_Uni_Khaki			"fow_u_ija_type98_khakibrown"
#define IJA_Uni_Short			"fow_u_ija_type98_short"
#define IJA_Uni_F				"fow_u_ija_type98_foliage"

#define IJA_Uni_M				"fow_u_ija_type98_snlf"

//Vests
#define IJA_Vest_Bayo			"fow_v_ija_bayonet"
#define IJA_Vest_Gren			"fow_v_ija_grenadier"
#define IJA_Vest_Med			"fow_v_ija_medic"
#define IJA_Vest_MG				"fow_v_ija_mg"
#define IJA_Vest_Mort			"fow_v_ija_mortar"
#define IJA_Vest_NCO			"fow_v_ija_nco"
#define IJA_Vest_O				"fow_v_ija_officer"
#define IJA_Vest_Rif			"fow_v_ija_rifle"

//Backpack
#define IJA_BP					"fow_b_ija_backpack"
#define IJA_BP_F				"fow_b_ija_backpack_foliage"
#define IJA_BP_Ammo_M			"fow_b_ija_ammobox_metal"
#define IJA_BP_Ammo_W			"fow_b_ija_ammobox_wood"

//Headgear
#define IJA_Hat_O				"fow_h_ija_fieldcap_officer"
#define IJA_Hat_O_N				"fow_h_ija_fieldcap_neck"
#define IJA_Hat					"fow_h_ija_fieldcap"
#define IJA_Hat_Haki			"fow_h_ija_hakimachi"
#define IJA_Helm				"fow_h_ija_type90"
#define IJA_Helm_Net			"fow_h_ija_type90_net"
#define IJA_Helm_N_Net			"fow_h_ija_type90_net_neck"
#define IJA_Helm_F				"fow_h_ija_type90_foliage"

#define IJA_Hat_M				"fow_h_ija_fieldcap_marine"
#define IJA_Hat_N_M				"fow_h_ija_fieldcap_marine_neck"
#define IJA_Helm_M				"fow_h_ija_type90_snlf"

#define IJA_Helmet_VCrew		"fow_h_ija_tank_helmet"

//Face
#define IJA_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

//=== MISC ===
//ACE
#define IJA_ace_defuse			"ACE_DefusalKit"
#define IJA_ace_earplugs		"ACE_EarPlugs";
#define IJA_ace_firing_device	"ACE_Clacker"
#define IJA_ace_flashlight		"ACE_Flashlight_KSF1"
#define IJA_ace_shovel			"ACE_EntrenchingTool"
#define IJA_ace_sparebarrel		"ACE_SpareBarrel"
#define IJA_ace_wirecutters		"ACE_wirecutter"
#define IJA_ace_carpick			"ACE_key_lockpick"
#define IJA_ace_maptools		"ACE_MapTools"
#define IJA_ace_cabletie		"ACE_CableTie"

//Medical
#define IJA_Bandage				"ACE_fieldDressing";
#define IJA_TQ					"ACE_tourniquet";
#define IJA_Morp				"ACE_morphine";
#define IJA_Epi					"ACE_epinephrine";
#define IJA_Blood1000			"ACE_bloodIV";
#define IJA_Blood500			"ACE_bloodIV_250";
#define IJA_Blood250			"ACE_bloodIV_500";
#define IJA_PAK					"ACE_personalAidKit";
#define IJA_SurgKit				"ACE_surgicalKit";

//Double Misc
#define IJA_Bino				"LIB_Binocular_GER"
#define IJA_Demo				"SatchelCharge_Remote_Mag"
#define IJA_Headset				"LIB_GER_Headset"
#define IJA_Minedetector		"MineDetector"
#define IJA_Toolkit				"ToolKit"

//Radio
//#define G_Radio_Pzr			"ItemRadio"

//=== EQUIPMENT ===

#define IJA_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define IJA_leader_equipment \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define IJA_medic_equipment \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",4,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;

//======================== Loadouts ========================

//Unit

	//Platoon Commander
	case "IJA_PC" : {
		[IJA_Uni_Khaki] call FNC_AddItem;
		[IJA_Vest_O] call FNC_AddItem;
		[//Hat
		[
		[IJA_Hat_O]
		],[75],
		[
		[IJA_Hat_O_N]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		IJA_leader_equipment;
		
		//Secondary Weapon
		[
		[
		[IJA_Weap_Rev_Mag,1],
		[IJA_Weap_Rev],
		[IJA_Weap_Rev_Mag,2]
		],[50],
		[
		[IJA_Weap_Pistol_Mag,1],
		[IJA_Weap_Pistol],
		[IJA_Weap_Pistol_Mag,2]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[IJA_Gren_Frag,1] call FNC_AddItem;
	};

	//Medic
	case "IJA_Med" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_Med] call FNC_AddItem;
		[IJA_BP] call FNC_AddItem;
		[IJA_Hat] call FNC_AddItem;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type99_R_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type99_R] call FNC_AddItem;
		[IJA_Weap_Type99_R_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		IJA_medic_equipment;
	};

	//Marksman
	case "IJA_Mark" : {
		[IJA_Uni_F] call FNC_AddItem;
		[IJA_Vest_Rif] call FNC_AddItem;
		[IJA_Helm_F] call FNC_AddItem;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type99_R_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type99_R] call FNC_AddItem;
		[IJA_Weap_Type99_R_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[IJA_Gren_Frag,1] call FNC_AddItem;
	};

	//Squad Leader
	case "IJA_SL" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_NCO] call FNC_AddItem;
		[//Hat
		[
		[IJA_Hat]
		],[95],
		[
		[IJA_Hat_Haki]
		],[5]
		] call FNC_AddItemRandomPercent;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		IJA_leader_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type99_R_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type99_R] call FNC_AddItem;
		[IJA_Weap_Type99_R_Mag,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[
		[IJA_Weap_Rev_Mag,1],
		[IJA_Weap_Rev],
		[IJA_Weap_Rev_Mag,2]
		],[50],
		[
		[IJA_Weap_Pistol_Mag,1],
		[IJA_Weap_Pistol],
		[IJA_Weap_Pistol_Mag,2]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[IJA_Gren_Frag,1] call FNC_AddItem;
	};

	//Team Leader
	case "IJA_TL" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_MG] call FNC_AddItem;
		[//Hat
		[
		[IJA_Helm]
		],[32],
		[
		[IJA_Helm_Net]
		],[32],
		[
		[IJA_Helm_N_Net]
		],[31],
		[
		[IJA_Hat_Haki]
		],[5]
		] call FNC_AddItemRandomPercent;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type100_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type100] call FNC_AddItem;
		[IJA_Weap_Type100_Mag,3,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//Revolver
		[IJA_Weap_Rev_Mag,1],
		[IJA_Weap_Rev],
		[IJA_Weap_Rev_Mag,2]
		],[50],
		[//Pistol
		[IJA_Weap_Pistol_Mag,1],
		[IJA_Weap_Pistol],
		[IJA_Weap_Pistol_Mag,2]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[IJA_Gren_Frag,1] call FNC_AddItem;
	};

	//Machine Gunner
	case "IJA_MG" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_MG] call FNC_AddItem;
		[//Hat
		[
		[IJA_Helm]
		],[32],
		[
		[IJA_Helm_Net]
		],[32],
		[
		[IJA_Helm_N_Net]
		],[31],
		[
		[IJA_Hat_Haki]
		],[5]
		] call FNC_AddItemRandomPercent;
		[IJA_BP] call FNC_AddItem;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type99_M_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type99_M] call FNC_AddItem;
		[IJA_Weap_Type99_M_Mag,6,"vest"] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[
		[IJA_Weap_Rev_Mag,1],
		[IJA_Weap_Rev],
		[IJA_Weap_Rev_Mag,2]
		],[50],
		[
		[IJA_Weap_Pistol_Mag,1],
		[IJA_Weap_Pistol],
		[IJA_Weap_Pistol_Mag,2]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[IJA_Weap_Type99_M_Mag,4,"backpack"] call FNC_AddItem;
	};

	//Machine Gun Assistant
	case "IJA_MGA" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_Rif] call FNC_AddItem;
		[//Hat
		[
		[IJA_Helm]
		],[32],
		[
		[IJA_Helm_Net]
		],[32],
		[
		[IJA_Helm_N_Net]
		],[31],
		[
		[IJA_Hat_Haki]
		],[5]
		] call FNC_AddItemRandomPercent;
		[//BP
		[
		[IJA_BP_Ammo_W]
		],[75],
		[
		[IJA_BP_Ammo_M]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type99_R_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type99_R] call FNC_AddItem;
		[IJA_Weap_Type99_R_Mag,12,"vest"] call FNC_AddItem;
		
		//Extra
		[IJA_Weap_Type99_M_Mag,10,"backpack"] call FNC_AddItem;
	};

	//Grenadier
	case "IJA_Gren" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_Gren] call FNC_AddItem;
		[//Hat
		[
		[IJA_Helm]
		],[32],
		[
		[IJA_Helm_Net]
		],[32],
		[
		[IJA_Helm_N_Net]
		],[31],
		[
		[IJA_Hat_Haki]
		],[5]
		] call FNC_AddItemRandomPercent;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type99_R_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type99_R] call FNC_AddItem;
		[IJA_Weap_Type99_R_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[IJA_Gren_Frag,3] call FNC_AddItem;
	};

	//Submachine Gunner
	case "IJA_SMG" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_MG] call FNC_AddItem;
		[//Hat
		[
		[IJA_Helm]
		],[32],
		[
		[IJA_Helm_Net]
		],[32],
		[
		[IJA_Helm_N_Net]
		],[31],
		[
		[IJA_Hat_Haki]
		],[5]
		] call FNC_AddItemRandomPercent;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type100_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type100] call FNC_AddItem;
		[IJA_Weap_Type100_Mag,3,"vest"] call FNC_AddItem;
		
		//Extra
		[IJA_Gren_Frag,1] call FNC_AddItem;
	};

	//Rifleman
	case "IJA_Rif" : {
		[//Uni
		[
		[IJA_Uni]
		],[75],
		[
		[IJA_Uni_Short]
		],[25]
		] call FNC_AddItemRandomPercent;
		[IJA_Vest_Rif] call FNC_AddItemRandom;
		[//Hat
		[
		[IJA_Helm]
		],[32],
		[
		[IJA_Helm_Net]
		],[32],
		[
		[IJA_Helm_N_Net]
		],[31],
		[
		[IJA_Hat_Haki]
		],[5]
		] call FNC_AddItemRandomPercent;
		[IJA_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		IJA_default_equipment;
		
		//Primary Weapon
		[IJA_Weap_Type99_R_Mag,1] call FNC_AddItem;
		[IJA_Weap_Type99_R] call FNC_AddItem;
		[IJA_Weap_Type99_R_Mag,6,"vest"] call FNC_AddItem;
		
		//Extra
		[IJA_Gren_Frag,1] call FNC_AddItem;
	};