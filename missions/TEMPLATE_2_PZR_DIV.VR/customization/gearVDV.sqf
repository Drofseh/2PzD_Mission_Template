// Info: Red Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Company HQ
//[this,"VDV_CC"] call FNC_GearScript;		Company Commander
//[this,"VDV_CSgt"] call FNC_GearScript;	Company Sergeant

	//Platoon HQ
//[this,"VDV_PC"] call FNC_GearScript;		Platoon Commander
//[this,"VDV_PSgt"] call FNC_GearScript;	Platoon Sergeant
//[this,"VDV_RTO"] call FNC_GearScript;		Radio Operator
//[this,"VDV_Med"] call FNC_GearScript;		Medic
//[this,"VDV_Mess"] call FNC_GearScript;	Messenger

	//Squad
//[this,"VDV_SL"] call FNC_GearScript;		Squad Leader
//[this,"VDV_TL"] call FNC_GearScript;		Team Leader
//[this,"VDV_SMG"] call FNC_GearScript;		Submachine Gunner
//[this,"VDV_Gren"] call FNC_GearScript;	Grenadier
//[this,"VDV_Rif"] call FNC_GearScript;		Rifleman
//[this,"VDV_MG"] call FNC_GearScript;		Machine Gunner
//[this,"VDV_MGA"] call FNC_GearScript;		MG Assistant

//[this,"VDV_RifR"] call FNC_GearScript;	Rifleman Random Late War

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define VDV_Weap_MosM9130		"LIB_M9130"
#define VDV_Weap_MosM38		"LIB_M38"
#define VDV_Weap_SVT40		"LIB_SVT_40"
#define VDV_Weap_AVT40		"LIB_AVT_40_2PzD"
#define VDV_Weap_PPSH_S		"LIB_PPSh41_m"
#define VDV_Weap_PPSH_D		"LIB_PPSh41_d"
#define VDV_Weap_DP			"LIB_DP28"

//Secondary
#define VDV_Weap_TT33			"LIB_TT33"
#define VDV_Weap_M1895			"LIB_M1895"
#define VDV_Weap_C96			"sab_mauser96_handgun"

//Launcher
#define VDV_Weap_Bazoo		"LIB_M1A1_Bazooka"

//Attachments
#define VDV_Weap_MosM9130_Bay	"LIB_ACC_M1891_Bayo"

//Ammo
#define VDV_Weap_Mos_Mag		"LIB_5Rnd_762x54"
#define VDV_Weap_SVT40_Mag		"LIB_10Rnd_762x54"
#define VDV_Weap_PPSH_S_Mag		"LIB_35Rnd_762x25"
#define VDV_Weap_PPSH_D_Mag		"LIB_71Rnd_762x25"
#define VDV_Weap_DP_Mag			"LIB_47Rnd_762x54"
#define VDV_Weap_TT33_Mag		"LIB_8Rnd_762x25"
#define VDV_Weap_M1895_Mag		"LIB_7Rnd_762x38"
#define VDV_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define VDV_Weap_Bazoo_Mag		"LIB_1Rnd_60mm_M6"

//Grenades
#define VDV_Gren_Frag_S			"LIB_rg42"
#define VDV_Gren_Frag_P			"HandGrenade"
#define VDV_Gren_AT				"LIB_rpg6"
#define VDV_Gren_Smoke_W		"SmokeShell"
#define VDV_Gren_Smoke_B		"SmokeShellBlue"
#define VDV_Gren_Smoke_G		"SmokeShellGreen"
#define VDV_Gren_Smoke_O		"SmokeShellOrange"
#define VDV_Gren_Smoke_P		"SmokeShellPurple"
#define VDV_Gren_Smoke_R		"SmokeShellRed"
#define VDV_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define VDV_Uni_CC				"U_LIB_SOV_Stleutenant"
#define VDV_Uni_CSgt			"U_LIB_SOV_Starshina"
#define VDV_Uni_PC				["U_LIB_SOV_Leutenant"],["U_LIB_SOV_Leutenant_inset_pocket"]
#define VDV_Uni_PSgt			"U_LIB_SOV_Stsergeant"
#define VDV_Uni_SL				"U_LIB_SOV_Sergeant_inset_pocket"
#define VDV_Uni_TL				"U_LIB_SOV_Efreitor"
#define VDV_Uni_Rif				"U_LIB_SOV_Strelok"

#define VDV_Uni_VCom			"U_LIB_SOV_Tank_leutenant"
#define VDV_Uni_VCrew			"U_LIB_SOV_Tank_ryadovoi"

//Vests
#define VDV_Vest_PC				"V_LIB_SOV_RA_TankOfficerSet"
#define VDV_Vest_PPSH_O_r		["V_LIB_SOV_RA_OfficerVest"],["V_LIB_SOV_RAZV_OfficerVest"]
#define VDV_Vest_PPSH_D1		"V_LIB_SOV_RA_PPShBelt"
#define VDV_Vest_PPSH_D2		"V_LIB_SOV_RAZV_PPShBelt"
#define VDV_Vest_Mosin			"V_LIB_SOV_RA_MosinBelt"
#define VDV_Vest_SVT			"V_LIB_SOV_RA_SVTBelt"
#define VDV_Vest_MG				["V_LIB_SOV_RA_MGBelt"],["V_LIB_SOV_RAZV_MGBelt"]

#define VDV_Vest_VCrew			"V_LIB_GER_TankPrivateBelt"

//Backpack
#define VDV_BP					"B_LIB_SOV_RA_Rucksack"
#define VDV_BP_Para				"ACE_NonSteerableParachute"
#define VDV_BP_MG				"B_LIB_SOV_RA_MGAmmoBag_Big_Empty"
#define VDV_BP_Med				"B_LIB_SOV_RA_MedicalBag_Big_Empty"
#define VDV_BP_Radio			"B_LIB_SOV_RA_Radio"

//Headgear
#define VDV_Hat_PC				"H_LIB_SOV_RA_OfficerCap"
#define VDV_Hat					"H_LIB_SOV_RA_PrivateCap"
#define VDV_Helmet				"H_LIB_SOV_RA_Helmet"

#define VDV_Hat_VCrew			"H_LIB_SOV_TankHelmet"

//Face
#define VDV_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

#define VDV_Face_Tank_r			["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define VDV_ace_defuse			"ACE_DefusalKit"
#define VDV_ace_earplugs		"ACE_EarPlugs";
#define VDV_ace_firing_device	"ACE_Clacker"
#define VDV_ace_flashlight		"ACE_Flashlight_KSF1"
#define VDV_ace_shovel			"ACE_EntrenchingTool"
#define VDV_ace_sparebarrel		"ACE_SpareBarrel"
#define VDV_ace_wirecutters		"ACE_wirecutter"
#define VDV_ace_carpick			"ACE_key_lockpick"
#define VDV_ace_maptools		"ACE_MapTools"
#define VDV_ace_cabletie		"ACE_CableTie"

//Medical
#define VDV_Bandage				"ACE_fieldDressing";
#define VDV_TQ					"ACE_tourniquet";
#define VDV_Morp				"ACE_morphine";
#define VDV_Epi					"ACE_epinephrine";
#define VDV_Blood1000			"ACE_bloodIV";
#define VDV_Blood500			"ACE_bloodIV_250";
#define VDV_Blood250			"ACE_bloodIV_500";
#define VDV_PAK					"ACE_personalAidKit";
#define VDV_SurgKit				"ACE_surgicalKit";

//Double Misc
#define VDV_Bino				"LIB_Binocular_SU"
#define VDV_Demo				"SatchelCharge_Remote_Mag"
#define VDV_Headset				"LIB_GER_Headset"
#define VDV_Minedetector		"MineDetector"
#define VDV_Toolkit				"ToolKit"

//Radio
//#define VDV_Radio			"ItemRadio"

//=== EQUIPMENT ===

#define VDV_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define VDV_leader_equipment \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define VDV_medic_equipment \
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
	case "VDV_CC" : {
		[VDV_Uni_CC] call FNC_AddItemRandom;
		[VDV_Vest_PC] call FNC_AddItem;
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Hat_PC] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		VDV_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[VDV_Weap_TT33_Mag,1],
		[VDV_Weap_TT33],
		[VDV_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[VDV_Weap_M1895_Mag,1],
		[VDV_Weap_M1895],
		[VDV_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[VDV_Weap_C96_Mag,1],
		[VDV_Weap_C96],
		[VDV_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};
	
	//Company Sergeant
	case "VDV_CSgt" : {
		[VDV_Uni_CSgt] call FNC_AddItem;
		[VDV_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Hat] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		VDV_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[VDV_Weap_TT33_Mag,1],
		[VDV_Weap_TT33],
		[VDV_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[VDV_Weap_M1895_Mag,1],
		[VDV_Weap_M1895],
		[VDV_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[VDV_Weap_C96_Mag,1],
		[VDV_Weap_C96],
		[VDV_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[VDV_Gren_Frag_S,1] call FNC_AddItem;
		[VDV_Gren_Frag_P,1] call FNC_AddItem;
		[VDV_Gren_Smoke_W,1] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "VDV_PC" : {
		[VDV_Uni_PC] call FNC_AddItemRandom;
		[VDV_Vest_PC] call FNC_AddItem;
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Hat_PC] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		VDV_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[VDV_Weap_TT33_Mag,1],
		[VDV_Weap_TT33],
		[VDV_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[VDV_Weap_M1895_Mag,1],
		[VDV_Weap_M1895],
		[VDV_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[VDV_Weap_C96_Mag,1],
		[VDV_Weap_C96],
		[VDV_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};
	
	//Platoon Sergeant
	case "VDV_PSgt" : {
		[VDV_Uni_SL] call FNC_AddItem;
		[VDV_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[VDV_BP] call FNC_AddItem;
		[VDV_Hat] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		VDV_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[VDV_Weap_TT33_Mag,1],
		[VDV_Weap_TT33],
		[VDV_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[VDV_Weap_M1895_Mag,1],
		[VDV_Weap_M1895],
		[VDV_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[VDV_Weap_C96_Mag,1],
		[VDV_Weap_C96],
		[VDV_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[VDV_Gren_Frag_S,1] call FNC_AddItem;
		[VDV_Gren_Frag_P,1] call FNC_AddItem;
		[VDV_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Radio Operator
	case "VDV_RTO" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM9130],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM38],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_SVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_AVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Hat] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		[VDV_Headset] call FNC_AddItem;
	};
	
	//Medic
	case "VDV_Med" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM9130],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM38],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_SVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_AVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Extra
		VDV_medic_equipment;
	};
	
	//Messenger
	case "VDV_Mess" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM9130],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM38],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_SVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_AVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Extra
		[VDV_Gren_Frag_S,1] call FNC_AddItem;
	};

//Squad

	//Squad Leader
	case "VDV_SL" : {
		[VDV_Uni_SL] call FNC_AddItem;
		[VDV_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,6,"vest"]
		],[50],
		[//PPSh-41, Drum
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,2,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[VDV_Gren_Frag_S,1] call FNC_AddItem;
		[VDV_Weap_DP_Mag,1] call FNC_AddItem;
		[VDV_Gren_Smoke_W,2] call FNC_AddItem;
	};
	
	//Team Leader
	case "VDV_TL" : {
		[VDV_Uni_TL] call FNC_AddItem;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[VDV_Vest_PPSH_D1],
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Stick
		[VDV_Vest_PPSH_D2],
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Drum
		[VDV_Vest_PPSH_D1],
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//PPSh-41, Drum
		[VDV_Vest_PPSH_D2],
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,2,"vest"]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Extra
		[VDV_Gren_Smoke_W,2] call FNC_AddItem;
		[VDV_Weap_DP_Mag,2] call FNC_AddItem;
	};
	
	//Submachine Gunner
	case "VDV_SMG" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[VDV_Vest_PPSH_D1],
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Stick
		[VDV_Vest_PPSH_D2],
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Drum
		[VDV_Vest_PPSH_D1],
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//PPSh-41, Drum
		[VDV_Vest_PPSH_D2],
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,2,"vest"]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Extra
		[VDV_Gren_Frag_S,1] call FNC_AddItem;
		[VDV_Weap_DP_Mag,1] call FNC_AddItem;
	};
	
	//Grenadier
	case "VDV_Gren" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM9130],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM38],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_SVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_AVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Extra
		[VDV_Gren_Frag_S,3] call FNC_AddItem;
		[VDV_Gren_Frag_P,3] call FNC_AddItem;
	};
	
	//Rifleman
	case "VDV_Rif" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM9130],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM38],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_SVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_AVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Extra
		[VDV_Gren_Frag_S,1] call FNC_AddItem;
		[VDV_Gren_Frag_P,1] call FNC_AddItem;
		[VDV_Weap_DP_Mag,1] call FNC_AddItem;
	};
	
	//Machine Gunner
	case "VDV_MG" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		[VDV_Vest_MG] call FNC_AddItemRandom;
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Primary Weapon
		[VDV_Weap_DP_Mag,1] call FNC_AddItem;
		[VDV_Weap_DP] call FNC_AddItem;
		[VDV_Weap_DP_Mag,4] call FNC_AddItem;
	};
	
	//MG Assistant
	case "VDV_MGA" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM9130],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM38],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_SVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_AVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Extra
		[VDV_Weap_DP_Mag,4] call FNC_AddItem;
		VDV_leader_equipment;
	};
	
	//Rifleman Random Late War
	case "VDV_RifR" : {
		[VDV_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon
		[//Mosin M91/30
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM9130],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[30],
		[//Mosin M38
		[VDV_Vest_Mosin],
		[VDV_Weap_Mos_Mag,1],
		[VDV_Weap_MosM38],
		[VDV_Weap_Mos_Mag,12,"vest"]
		],[20],
		[//PPSh-41, Stick
		[VDV_Vest_PPSH_D1],
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,6,"vest"]
		],[14],
		[//PPSh-41, Stick
		[VDV_Vest_PPSH_D2],
		[VDV_Weap_PPSH_S_Mag,1],
		[VDV_Weap_PPSH_S],
		[VDV_Weap_PPSH_S_Mag,6,"vest"]
		],[14],
		[//SVT-40
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_SVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[9],
		[//PPSh-41, Drum
		[VDV_Vest_PPSH_D1],
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,2,"vest"]
		],[6],
		[//PPSh-41, Drum
		[VDV_Vest_PPSH_D2],
		[VDV_Weap_PPSH_D_Mag,1],
		[VDV_Weap_PPSH_D],
		[VDV_Weap_PPSH_D_Mag,2,"vest"]
		],[6],
		[//AVT
		[VDV_Vest_SVT],
		[VDV_Weap_SVT40_Mag,1],
		[VDV_Weap_AVT40],
		[VDV_Weap_SVT40_Mag,6,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		[VDV_BP_Para] call FNC_AddItem;
		[VDV_Helmet] call FNC_AddItem;
		[VDV_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		VDV_default_equipment;
		
		//Extra
		[VDV_Gren_Frag_P,1] call FNC_AddItem;
		[VDV_Weap_DP_Mag,2] call FNC_AddItem;
		[VDV_Gren_Smoke_W,1] call FNC_AddItem;
	};