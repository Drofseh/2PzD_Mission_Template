// Info: 2. Panzer Division Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Kompanietrupp
//[this,"Ger_CC"] call FNC_GearScript;		Kompanieführer
//[this,"Ger_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
//[this,"Ger_PC"] call FNC_GearScript;		Zugführer
//[this,"Ger_P2"] call FNC_GearScript;		Stellver. Zugführer
//[this,"Ger_RTO"] call FNC_GearScript;		Funker
//[this,"Ger_Mess"] call FNC_GearScript;	Melder
//[this,"Ger_Med"] call FNC_GearScript;		Medic

	//Gruppe
//[this,"Ger_SL"] call FNC_GearScript;		Gruppenführer
//[this,"Ger_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
//[this,"Ger_S3"] call FNC_GearScript;		Gefreiter
//[this,"Ger_MG"] call FNC_GearScript;		MG-Richtschütze
//[this,"Ger_MGA"] call FNC_GearScript;		MG-Schütze
//[this,"Ger_Gren"] call FNC_GearScript;	Grenadier
//[this,"Ger_Rif"] call FNC_GearScript;		Gewehrschütze

	//Tank Crew
//[this,"Ger_VCom"] call FNC_GearScript;	Besatzungsführer
//[this,"Ger_VCrew"] call FNC_GearScript;	Besatzung

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define Ger_Weap_K98			"LIB_K98"
#define Ger_Weap_G43			"LIB_G43"
#define Ger_Weap_MP40			"LIB_MP40"
#define Ger_Weap_MP44			"LIB_MP44"
#define Ger_Weap_MG42			"LIB_MG42"
#define Ger_Weap_K98_S			"LIB_K98ZF39"

#define Ger_Weap_MosM9130		"LIB_M9130"
#define Ger_Weap_MosM38			"LIB_M38"
#define Ger_Weap_SVT40			"LIB_SVT_40"
#define Ger_Weap_AVT40			"LIB_AVT_40_2PzD"
#define Ger_Weap_PPSH_S			"LIB_PPSh41_m"
#define Ger_Weap_PPSH_D			"LIB_PPSh41_d"

//Secondary
#define Ger_Weap_P38			"LIB_P38"
#define Ger_Weap_C96			"sab_mauser96_handgun"

#define Ger_Flare_Pistol		"LIB_FLARE_PISTOL"

#define Ger_Weap_TT33			"LIB_TT33"
#define Ger_Weap_M1895			"LIB_M1895"

//Launcher
#define Ger_Weap_PzFaust		"LIB_PzFaust_30m"
#define Ger_Weap_Pzschrck		"LIB_RPzB"

//Attachments
#define Ger_Weap_K98_RG			"LIB_ACC_GW_SB_Empty"
#define Ger_Weap_K98_Bay		"LIB_ACC_K98_Bayo"
#define Ger_Weap_MosM9130_Bay	"LIB_ACC_M1891_Bayo"

//Ammo
#define Ger_Weap_K98_Mag		"LIB_5Rnd_792x57"
#define Ger_Weap_G43_Mag		"LIB_10Rnd_792x57"
#define Ger_Weap_MP40_Mag		"LIB_32Rnd_9x19"
#define Ger_Weap_MG42_Mag		"LIB_50Rnd_792x57"
#define Ger_Weap_MP44_Mag		"lib_30Rnd_792x33"
#define Ger_Weap_P38_Mag		"LIB_8Rnd_9x19"
#define Ger_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define Ger_Weap_K98_Grn_ATS	"LIB_1Rnd_G_PZGR_30"
#define Ger_Weap_K98_Grn_ATL	"LIB_1Rnd_G_PZGR_40"
#define Ger_Weap_K98_Grn_AP		"LIB_1Rnd_G_SPRGR_30"
#define Ger_Weap_Pzschrck_Mag	"LIB_1Rnd_RPzB"

#define Ger_Flare_W				"LIB_1Rnd_flare_white"
#define Ger_Flare_R				"LIB_1Rnd_flare_red"
#define Ger_Flare_G				"LIB_1Rnd_flare_green"
#define Ger_Flare_Y				"LIB_1Rnd_flare_yellow"

#define Ger_Weap_Mos_Mag		"LIB_5Rnd_762x54"
#define Ger_Weap_SVT40_Mag		"LIB_10Rnd_762x54"
#define Ger_Weap_PPSH_S_Mag		"LIB_35Rnd_762x25"
#define Ger_Weap_PPSH_D_Mag		"LIB_71Rnd_762x25"
#define Ger_Weap_TT33_Mag		"LIB_8Rnd_762x25"
#define Ger_Weap_M1895_Mag		"LIB_7Rnd_762x38"

//Grenades
#define Ger_Gren_Frag_P			"HandGrenade"
#define Ger_Gren_Frag_SF		"fow_e_m24K_spli"
#define Ger_Gren_Frag_SC		"fow_e_m24K"
#define Ger_Gren_Smoke_W		"SmokeShell"
#define Ger_Gren_Smoke_B		"SmokeShellBlue"
#define Ger_Gren_Smoke_G		"SmokeShellGreen"
#define Ger_Gren_Smoke_O		"SmokeShellOrange"
#define Ger_Gren_Smoke_P		"SmokeShellPurple"
#define Ger_Gren_Smoke_R		"SmokeShellRed"
#define Ger_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define Ger_Uni_CC				"U_LIB_GER_Hauptmann"
#define Ger_Uni_C2				"U_LIB_GER_Oberleutnant"
#define Ger_Uni_PC				"U_LIB_GER_Leutnant"
#define Ger_Uni_SL				"U_LIB_GER_Unterofficer"
#define Ger_Uni_S2_r			["fow_u_ger_m43_01_corporal"],["fow_u_ger_m43_02_corporal"]
#define Ger_Uni_S3_r			["fow_u_ger_m43_01_lance_corporal"],["fow_u_ger_m43_02_lance_corporal"]
#define Ger_Uni_Rif_r			["fow_u_ger_m43_01_private"],["fow_u_ger_m43_02_private"],["fow_u_ger_m43_01_frag_private"]
#define Ger_Uni_Med				"U_LIB_GER_Medic"

#define Ger_Uni_VCom			"U_LIB_GER_Tank_crew_unterofficer"
#define Ger_Uni_VCrew			"U_LIB_GER_Tank_crew_private"

//Vests
#define Ger_Vest_CC				"V_LIB_GER_PrivateBelt"
#define Ger_Vest_C2				"V_LIB_GER_OfficerVest"
#define Ger_Vest_PC				"V_LIB_GER_FieldOfficer"
#define Ger_Vest_SL				"V_LIB_GER_VestUnterofficer"
#define Ger_Vest_MP40NCO		"fow_v_heer_mp40_nco"
#define Ger_Vest_Rif_r			["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_k98"],["fow_v_heer_g43"]
#define Ger_Vest_K98			"fow_v_heer_k98"
#define Ger_Vest_G43			"fow_v_heer_g43"
#define Ger_Vest_MP40			"fow_v_heer_mp40"
#define Ger_Vest_MP44			"fow_v_heer_mp44"
#define Ger_Vest_MG				"fow_v_heer_mg"
#define Ger_Vest_Med			"V_LIB_GER_VestKar98"

#define Ger_Vest_VCrew			"V_LIB_GER_TankPrivateBelt"

//Backpack
#define Ger_BP_r				["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_Tonister34_cowhide"]
#define Ger_BP_AF				"B_LIB_GER_A_frame"
#define Ger_BP_AF_Kit			"B_LIB_GER_A_frame_kit"
#define Ger_BP_T34				"B_LIB_GER_Tonister34_cowhide"
#define Ger_BP_MG_r				["fow_b_heer_ammo_belt"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_A_frame_kit"],["B_LIB_GER_Tonister34_cowhide"]
								//use _unit removeItemFromBackpack "fow_50Rnd_792x57";
#define Ger_BP_Radio			"B_LIB_GER_Radio"
#define Ger_BP_VCrew			"B_LIB_GER_SapperBackpack_empty"
#define Ger_BP_Med				"B_LIB_GER_MedicBackpack_Big_Empty"

//Headgear
#define Ger_Hat_Officer			"H_LIB_GER_OfficerCap"
#define Ger_Hat_Wedge			"fow_h_ger_m38_feldmutze"
#define Ger_Hat					"H_LIB_GER_Cap"
#define Ger_Helmet_r			["fow_h_ger_m40_heer_01"],["fow_h_ger_m40_heer_01"],["fow_h_ger_m40_heer_camo"],["H_LIB_GER_Helmet"],["H_LIB_GER_Helmet"],["H_LIB_GER_HelmetCamo2"],["H_LIB_GER_HelmetCamo"],["H_LIB_GER_Helmet_net"],["H_LIB_GER_Helmet_ns"],["H_LIB_GER_Helmet_painted"],["H_LIB_GER_Helmet_net_painted"],["H_LIB_GER_Helmet_ns_painted"]

#define Ger_Hat_VCom			["H_LIB_GER_TankOfficerCap"],["H_LIB_GER_TankOfficerCap2"]
#define Ger_Hat_VCrew			["H_LIB_GER_TankPrivateCap"],["H_LIB_GER_TankPrivateCap2"]

//Face
#define Ger_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

#define Ger_Face_Tank_r			["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define Ger_ace_defuse			"ACE_DefusalKit"
#define Ger_ace_earplugs		"ACE_EarPlugs";
#define Ger_ace_firing_device	"ACE_Clacker"
#define Ger_ace_flashlight		"ACE_Flashlight_KSF1"
#define Ger_ace_shovel			"ACE_EntrenchingTool"
#define Ger_ace_sparebarrel		"ACE_SpareBarrel"
#define Ger_ace_wirecutters		"ACE_wirecutter"
#define Ger_ace_carpick			"ACE_key_lockpick"
#define Ger_ace_maptools		"ACE_MapTools"
#define Ger_ace_cabletie		"ACE_CableTie"

//Medical
#define Ger_Bandage				"ACE_fieldDressing";
#define Ger_TQ					"ACE_tourniquet";
#define Ger_Morp				"ACE_morphine";
#define Ger_Epi					"ACE_epinephrine";
#define Ger_Blood1000			"ACE_bloodIV";
#define Ger_Blood500			"ACE_bloodIV_250";
#define Ger_Blood250			"ACE_bloodIV_500";
#define Ger_PAK					"ACE_personalAidKit";
#define Ger_SurgKit				"ACE_surgicalKit";

//Double Misc
#define Ger_Bino				"LIB_Binocular_GER"
#define Ger_Headset				"LIB_GER_Headset"
#define Ger_Demo				"SatchelCharge_Remote_Mag"
#define Ger_Minedetector		"MineDetector"
#define Ger_Toolkit				"ToolKit"

//Radio
//#define Ger_Radio_Pzr			"ItemRadio"

//=== EQUIPMENT ===

#define Ger_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define Ger_leader_equipment \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define Ger_medic_equipment \
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

	//Kompanieführer
	case "Ger_CC" : {
		[Ger_Uni_CC] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_BP_Radio] call FNC_AddItem;
		[Ger_Hat_Officer] call FNC_AddItem;
		[Ger_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,3,"vest"]
		],[70],
		[//PPSH w/stick mags
		[Ger_Weap_PPSH_S_Mag,1],
		[Ger_Weap_PPSH_S],
		[Ger_Weap_PPSH_S_Mag,3,"vest"]
		],[15],
		[//PPSH w/drum mags
		[Ger_Weap_PPSH_D_Mag,1],
		[Ger_Weap_PPSH_D],
		[Ger_Weap_PPSH_D_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[60],
		[//TT-33
		[Ger_Weap_TT33_Mag,1],
		[Ger_Weap_TT33],
		[Ger_Weap_TT33_Mag,1]
		],[20],
		[//M1895
		[Ger_Weap_M1895_Mag,1],
		[Ger_Weap_M1895],
		[Ger_Weap_M1895_Mag,1]
		],[10],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[10]
		] call FNC_AddItemRandomPercent;
	};

	//Kompanietruppführer
	case "Ger_C2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_Hat_Wedge] call FNC_AddItem;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,3,"vest"]
		],[70],
		[//PPSH w/stick mags
		[Ger_Weap_PPSH_S_Mag,1],
		[Ger_Weap_PPSH_S],
		[Ger_Weap_PPSH_S_Mag,3,"vest"]
		],[15],
		[//PPSH w/drum mags
		[Ger_Weap_PPSH_D_Mag,1],
		[Ger_Weap_PPSH_D],
		[Ger_Weap_PPSH_D_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[60],
		[//TT-33
		[Ger_Weap_TT33_Mag,1],
		[Ger_Weap_TT33],
		[Ger_Weap_TT33_Mag,1]
		],[20],
		[//M1895
		[Ger_Weap_M1895_Mag,1],
		[Ger_Weap_M1895],
		[Ger_Weap_M1895_Mag,1]
		],[10],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[10]
		] call FNC_AddItemRandomPercent;
	};

//Platoon HQ

	//Zugführer
	case "Ger_PC" : {
		[Ger_Uni_PC] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_Hat_Officer] call FNC_AddItem;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,3,"vest"]
		],[70],
		[//PPSH w/stick mags
		[Ger_Weap_PPSH_S_Mag,1],
		[Ger_Weap_PPSH_S],
		[Ger_Weap_PPSH_S_Mag,3,"vest"]
		],[15],
		[//PPSH w/drum mags
		[Ger_Weap_PPSH_D_Mag,1],
		[Ger_Weap_PPSH_D],
		[Ger_Weap_PPSH_D_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[60],
		[//TT-33
		[Ger_Weap_TT33_Mag,1],
		[Ger_Weap_TT33],
		[Ger_Weap_TT33_Mag,1]
		],[20],
		[//M1895
		[Ger_Weap_M1895_Mag,1],
		[Ger_Weap_M1895],
		[Ger_Weap_M1895_Mag,1]
		],[10],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[10]
		] call FNC_AddItemRandomPercent;
	};
	
	//Stellver. Zugführer
	case "Ger_P2" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_SL] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,3,"vest"]
		],[70],
		[//PPSH w/stick mags
		[Ger_Weap_PPSH_S_Mag,1],
		[Ger_Weap_PPSH_S],
		[Ger_Weap_PPSH_S_Mag,3,"vest"]
		],[15],
		[//PPSH w/drum mags
		[Ger_Weap_PPSH_D_Mag,1],
		[Ger_Weap_PPSH_D],
		[Ger_Weap_PPSH_D_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Gren_Frag_P,1] call FNC_AddItem;
		[Ger_Gren_Frag_SF,1] call FNC_AddItem;
		[Ger_Gren_Smoke_W,1] call FNC_AddItem;
		
		//Secondary Weapon
		[Ger_Flare_Pistol] call FNC_AddItem;
		[Ger_Flare_W,2] call FNC_AddItem;
		[Ger_Flare_R,1] call FNC_AddItem;
		[Ger_Flare_G,1] call FNC_AddItem;
		[Ger_Flare_Y,1] call FNC_AddItem;
	};
	
	//Funker
	case "Ger_RTO" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_Radio] call FNC_AddItem;
		[Ger_Hat] call FNC_AddItem;
		[Ger_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		[Ger_Headset] call FNC_AddItem;
		
		//Primary Weapon
		[
		[//K98
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[66],
		[//Mosin M91/30
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM9130],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[17],
		[//SVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_SVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[10],
		[//Mosin M38
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM38],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[5],
		[//AVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_AVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
	};
	
	//Melder
	case "Ger_Mess" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[
		[//K98
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[66],
		[//Mosin M91/30
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM9130],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[17],
		[//SVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_SVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[10],
		[//Mosin M38
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM38],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[5],
		[//AVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_AVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Gren_Frag_SF,1] call FNC_AddItem;
	};
	
	//Medic
	case "Ger_Med" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_Med] call FNC_AddItemRandom;
		[Ger_BP_Med] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[
		[//K98
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[66],
		[//Mosin M91/30
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM9130],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[17],
		[//SVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_SVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[10],
		[//Mosin M38
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM38],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[5],
		[//AVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_AVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Gren_Frag_SF,1] call FNC_AddItem;
		Ger_medic_equipment;
	};

//Squad

	//Gruppenführer
	case "Ger_SL" : {
		[Ger_Uni_SL] call FNC_AddItem;
		[Ger_Vest_SL] call FNC_AddItem;
		[Ger_BP_AF] call FNC_AddItem;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,6,"vest"]
		],[70],
		[//PPSH w/stick mags
		[Ger_Weap_PPSH_S_Mag,1],
		[Ger_Weap_PPSH_S],
		[Ger_Weap_PPSH_S_Mag,6,"vest"]
		],[15],
		[//PPSH w/drum mags
		[Ger_Weap_PPSH_D_Mag,1],
		[Ger_Weap_PPSH_D],
		[Ger_Weap_PPSH_D_Mag,2,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Gren_Frag_SF,1] call FNC_AddItem;
		[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
		
		//Secondary Weapon
		[Ger_Flare_Pistol] call FNC_AddItem;
		[Ger_Flare_W,2] call FNC_AddItem;
		[Ger_Flare_R,1] call FNC_AddItem;
		[Ger_Flare_G,1] call FNC_AddItem;
		[Ger_Flare_Y,1] call FNC_AddItem;
	};
	
	//Stellvertretender Gruppenführer
	case "Ger_S2" : {
		[Ger_Uni_S2_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[
		[//K98
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[37],
		[//SVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_SVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[37],
		[//Mosin M91/30
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM9130],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[14],
		[//AVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_AVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[7],
		[//Mosin M38
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM38],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[5]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Gren_Frag_SF,1] call FNC_AddItem;
		[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
	};
	
	//Gefreiter
	case "Ger_S3" : {
		[Ger_Uni_S3_r] call FNC_AddItemRandom;
		[Ger_Vest_MP40] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,6,"vest"]
		],[70],
		[//PPSH w/stick mags
		[Ger_Weap_PPSH_S_Mag,1],
		[Ger_Weap_PPSH_S],
		[Ger_Weap_PPSH_S_Mag,6,"vest"]
		],[15],
		[//PPSH w/drum mags
		[Ger_Weap_PPSH_D_Mag,1],
		[Ger_Weap_PPSH_D],
		[Ger_Weap_PPSH_D_Mag,2,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Gren_Frag_SF,1] call FNC_AddItem;
		[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
	};
	
	//MG-Richtschütze
	case "Ger_MG" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_MG] call FNC_AddItem;
		[Ger_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		_unit removeItem "ACE_EntrenchingTool";
		
		//Secondary Weapon
		[
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[60],
		[//TT-33
		[Ger_Weap_TT33_Mag,1],
		[Ger_Weap_TT33],
		[Ger_Weap_TT33_Mag,1]
		],[20],
		[//M1895
		[Ger_Weap_M1895_Mag,1],
		[Ger_Weap_M1895],
		[Ger_Weap_M1895_Mag,1]
		],[10],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
		[Ger_Weap_MG42] call FNC_AddItem;
		[Ger_Weap_MG42_Mag,5,"vest"] call FNC_AddItem;
		
		//Extra
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[Ger_Weap_MG42_Mag,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG42_Mag,3] call FNC_AddItem;
			};
		};
	};
	
	//MG-Schütze
	case "Ger_MGA" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_MG_r] call FNC_AddItemRandom;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[
		[//K98
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[66],
		[//Mosin M91/30
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM9130],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[17],
		[//SVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_SVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[10],
		[//Mosin M38
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM38],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[5],
		[//AVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_AVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
		
		switch (backpack _unit) do {
			case ("fow_b_heer_ammo_belt"): {
				[Ger_Weap_MG42_Mag,1] call FNC_AddItem;
			};
			case ("B_LIB_GER_A_frame_kit"): {
				[Ger_Weap_MG42_Mag,2] call FNC_AddItem;
			};
			case ("B_LIB_GER_Tonister34_cowhide"): {
				[Ger_Weap_MG42_Mag,3] call FNC_AddItem;
			};
		};
	};
	
	//Grenadier
	case "Ger_Gren" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Weap_K98_Mag,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Weap_K98_RG] call FNC_AddItem;
		[Ger_Weap_K98_Mag,12,"vest"] call FNC_AddItem;
		[Ger_Weap_K98_Grn_ATS,2,"vest"] call FNC_AddItem;
		[Ger_Weap_K98_Grn_AP,4,"vest"] call FNC_AddItem;
		[Ger_Weap_K98_Grn_ATL,2,"backpack"] call FNC_AddItem;
	};
	
	//Gewehrschütze
	case "Ger_Rif" : {
		[Ger_Uni_Rif_r] call FNC_AddItemRandom;
		[Ger_Vest_K98] call FNC_AddItem;
		[Ger_BP_r] call FNC_AddItemRandom;
		[Ger_Helmet_r] call FNC_AddItemRandom;
		[Ger_Face_r] call FNC_AddItemRandom;
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[
		[//K98
		[Ger_Weap_K98_Mag,1],
		[Ger_Weap_K98],
		[Ger_Weap_K98_Mag,12,"vest"]
		],[66],
		[//Mosin M91/30
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM9130],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[17],
		[//SVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_SVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[10],
		[//Mosin M38
		[Ger_Weap_Mos_Mag,1],
		[Ger_Weap_MosM38],
		[Ger_Weap_Mos_Mag,12,"vest"]
		],[5],
		[//AVT-40
		[Ger_Weap_SVT40_Mag,1],
		[Ger_Weap_AVT40],
		[Ger_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Gren_Frag_SF,2] call FNC_AddItem;
		[Ger_Weap_MG42_Mag,2] call FNC_AddItem;
	};

//Tank Crew

	//Besatzungsführer
	case "Ger_VCom" : {
		[Ger_Uni_VCom] call FNC_AddItem;
		[Ger_Vest_PC] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCom] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[
		[//MP40
		[Ger_Weap_MP40_Mag,1],
		[Ger_Weap_MP40],
		[Ger_Weap_MP40_Mag,6,"vest"]
		],[70],
		[//PPSH w/stick mags
		[Ger_Weap_PPSH_S_Mag,1],
		[Ger_Weap_PPSH_S],
		[Ger_Weap_PPSH_S_Mag,6,"vest"]
		],[15],
		[//PPSH w/drum mags
		[Ger_Weap_PPSH_D_Mag,1],
		[Ger_Weap_PPSH_D],
		[Ger_Weap_PPSH_D_Mag,2,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,1]
		],[60],
		[//TT-33
		[Ger_Weap_TT33_Mag,1],
		[Ger_Weap_TT33],
		[Ger_Weap_TT33_Mag,1]
		],[20],
		[//M1895
		[Ger_Weap_M1895_Mag,1],
		[Ger_Weap_M1895],
		[Ger_Weap_M1895_Mag,1]
		],[10],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,1]
		],[10]
		] call FNC_AddItemRandomPercent;
	};
	
	//Besatzung
	case "Ger_VCrew" : {
		[Ger_Uni_VCrew] call FNC_AddItem;
		[Ger_Vest_VCrew] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[Ger_Hat_VCrew] call FNC_AddItemRandom;
		[Ger_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Secondary Weapon
		[
		[//P38
		[Ger_Weap_P38_Mag,1],
		[Ger_Weap_P38],
		[Ger_Weap_P38_Mag,2]
		],[60],
		[//TT-33
		[Ger_Weap_TT33_Mag,1],
		[Ger_Weap_TT33],
		[Ger_Weap_TT33_Mag,2]
		],[20],
		[//M1895
		[Ger_Weap_M1895_Mag,1],
		[Ger_Weap_M1895],
		[Ger_Weap_M1895_Mag,2]
		],[10],
		[//C96
		[Ger_Weap_C96_Mag,1],
		[Ger_Weap_C96],
		[Ger_Weap_C96_Mag,2]
		],[10]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[Ger_Toolkit] call FNC_AddItem;
	};