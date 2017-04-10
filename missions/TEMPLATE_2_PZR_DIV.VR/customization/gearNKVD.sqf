// Info: Soviet NKVD Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Platoon HQ
//[this,"NKVD_LT"] call FNC_GearScript;		Leutenant
//[this,"NKVD_Star"] call FNC_GearScript;	Starshina
//[this,"NKVD_RTO"] call FNC_GearScript;	Radio Operator
//[this,"NKVD_Med"] call FNC_GearScript;	Medic

	//Squad
//[this,"NKVD_Sgt"] call FNC_GearScript;	Sergeant
//[this,"NKVD_Efr"] call FNC_GearScript;	Efreitor
//[this,"NKVD_MG"] call FNC_GearScript;		Machine Gunner
//[this,"NKVD_MGA"] call FNC_GearScript;	Machine Gun Assistant
//[this,"NKVD_Stre"] call FNC_GearScript;	Strelok

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define NKVD_Weap_MosM9130		"LIB_M9130"
#define NKVD_Weap_MosM38		"LIB_M38"
#define NKVD_Weap_SVT40			"LIB_SVT_40"
#define NKVD_Weap_AVT40			"LIB_AVT_40_2PzD"
#define NKVD_Weap_PPSH_S		"LIB_PPSh41_m"
#define NKVD_Weap_PPSH_D		"LIB_PPSh41_d"
#define NKVD_Weap_DP			"LIB_DP28"

//Secondary
#define NKVD_Weap_TT33			"LIB_TT33"
#define NKVD_Weap_M1895			"LIB_M1895"
#define NKVD_Weap_C96			"sab_mauser96_handgun"

//Launcher
#define NKVD_Weap_Bazoo			"LIB_M1A1_Bazooka"

//Attachments
#define NKVD_Weap_MosM9130_Bay	"LIB_ACC_M1891_Bayo"

//Ammo
#define NKVD_Weap_Mos_Mag		"LIB_5Rnd_762x54"
#define NKVD_Weap_SVT40_Mag		"LIB_10Rnd_762x54"
#define NKVD_Weap_PPSH_S_Mag	"LIB_35Rnd_762x25"
#define NKVD_Weap_PPSH_D_Mag	"LIB_71Rnd_762x25"
#define NKVD_Weap_DP_Mag		"LIB_47Rnd_762x54"
#define NKVD_Weap_TT33_Mag		"LIB_8Rnd_762x25"
#define NKVD_Weap_M1895_Mag		"LIB_7Rnd_762x38"
#define NKVD_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define NKVD_Weap_Bazoo_Mag		"LIB_1Rnd_60mm_M6"

//Grenades
#define NKVD_Gren_Frag_S		"LIB_rg42"
#define NKVD_Gren_Frag_P		"HandGrenade"
#define NKVD_Gren_AT			"LIB_rpg6"
#define NKVD_Gren_Smoke_W		"SmokeShell"
#define NKVD_Gren_Smoke_B		"SmokeShellBlue"
#define NKVD_Gren_Smoke_G		"SmokeShellGreen"
#define NKVD_Gren_Smoke_O		"SmokeShellOrange"
#define NKVD_Gren_Smoke_P		"SmokeShellPurple"
#define NKVD_Gren_Smoke_R		"SmokeShellRed"
#define NKVD_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define NKVD_Unit_LT			"U_LIB_NKVD_StLeutenant"
#define NKVD_Unit_Star			"U_LIB_NKVD_Starshina"
#define NKVD_Unit_Sgt			"U_LIB_NKVD_Sergeant"
#define NKVD_Unit_Efr			"U_LIB_NKVD_Efreitor"
#define NKVD_Unit_Stre			"U_LIB_NKVD_Strelok"

#define NKVD_Unit_JLT			"U_LIB_NKVD_Leutenant"
//This JLT uniform has a green jacket and blue pants and is totally different from the other uniforms

//Vests
#define NKVD_Vest_HKC			"V_LIB_SOV_RAZV_MGBelt"
//Holster, Knife, Canteen
#define NKVD_Vest_O_Pistol		"V_LIB_SOV_RA_TankOfficerSet"
//Officer's Holster, Bino, Mapcase
#define NKVD_Vest_O_PPSH		"V_LIB_SOV_RA_OfficerVest"
//Officer's Holster, Bino, Mapcase, PPSH Stick Mags
#define NKVD_Vest_O_PPSH_K		"V_LIB_SOV_RAZV_OfficerVest"
// and knife
#define NKVD_Vest_PPSH			"V_LIB_SOV_RAZV_PPShBelt"
//PPSH Drum Mag, Knife, Pouch
#define NKVD_Vest_Mosin			"V_LIB_SOV_RA_SniperVest"
//Mosin Pouches
#define NKVD_Vest_SVT			"V_LIB_SOV_RAZV_SVTBelt"
//SVT Pouches, Knife, Canteen

//Backpack
#define NKVD_BP					"B_LIB_SOV_RA_Rucksack"
#define NKVD_BP_Square			"B_LIB_SOV_RA_GasBag"
#define NKVD_BP_Round_MG		"B_LIB_SOV_RA_MGAmmoBag_Big_Empty"
#define NKVD_BP_Medic			"B_LIB_SOV_RA_MedicalBag_Big_Empty"
#define NKVD_BP_Radio			"B_LIB_SOV_RA_Radio"

//Headgear
#define NKVD_Hat_O				"H_LIB_NKVD_OfficerCap"
#define NKVD_Hat				"H_LIB_NKVD_PrivateCap"

//Face
#define NKVD_Face_r				["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"], \
								["G_LIB_Watch2"],["G_LIB_Watch1"]

//=== MISC ===
//ACE
#define NKVD_ace_defuse			"ACE_DefusalKit"
#define NKVD_ace_earplugs		"ACE_EarPlugs";
#define NKVD_ace_firing_device	"ACE_Clacker"
#define NKVD_ace_flashlight		"ACE_Flashlight_KSF1"
#define NKVD_ace_shovel			"ACE_EntrenchingTool"
#define NKVD_ace_sparebarrel	"ACE_SpareBarrel"
#define NKVD_ace_wirecutters	"ACE_wirecutter"
#define NKVD_ace_carpick		"ACE_key_lockpick"
#define NKVD_ace_maptools		"ACE_MapTools"
#define NKVD_ace_cabletie		"ACE_CableTie"

//Medical
#define NKVD_Bandage			"ACE_fieldDressing";
#define NKVD_TQ					"ACE_tourniquet";
#define NKVD_Morp				"ACE_morphine";
#define NKVD_Epi				"ACE_epinephrine";
#define NKVD_Blood1000			"ACE_bloodIV";
#define NKVD_Blood500			"ACE_bloodIV_250";
#define NKVD_Blood250			"ACE_bloodIV_500";
#define NKVD_PAK				"ACE_personalAidKit";
#define NKVD_SurgKit			"ACE_surgicalKit";

//Double Misc
#define NKVD_Bino				"LIB_Binocular_GER"
#define NKVD_Demo				"SatchelCharge_Remote_Mag"
#define NKVD_Headset			"LIB_GER_Headset"
#define NKVD_Minedetector		"MineDetector"
#define NKVD_Toolkit			"ToolKit"

//Radio
//#define G_Radio_Pzr			"ItemRadio"

//=== EQUIPMENT ===

#define NKVD_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define NKVD_leader_equipment \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define NKVD_medic_equipment \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",4,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",3,"backpack"] call FNC_AddItem; \
["ACE_fieldDressing",16,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",5,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;

//======================== Loadouts ========================

//Platoon

	//Leutenant
	case "NKVD_LT" : {
		[NKVD_Unit_LT] call FNC_AddItem;
		[NKVD_Hat_O] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		NKVD_leader_equipment;
		
		//Primary Weapon
		[
		[//Pistol
		[NKVD_Vest_O_Pistol]
		],[50],
		[//PPSH
		[NKVD_Vest_O_PPSH],
		[NKVD_Weap_PPSH_S_Mag,1],
		[NKVD_Weap_PPSH_S],
		[NKVD_Weap_PPSH_S_Mag,5,"vest"]
		],[25],
		[//PPSH and Knife
		[NKVD_Vest_O_PPSH_K],
		[NKVD_Weap_PPSH_S_Mag,1],
		[NKVD_Weap_PPSH_S],
		[NKVD_Weap_PPSH_S_Mag,5,"vest"]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[NKVD_Weap_TT33_Mag,1],
		[NKVD_Weap_TT33],
		[NKVD_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[NKVD_Weap_M1895_Mag,1],
		[NKVD_Weap_M1895],
		[NKVD_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[NKVD_Weap_C96_Mag,1],
		[NKVD_Weap_C96],
		[NKVD_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};

	//Starshina
	case "NKVD_Star" : {
		[NKVD_Unit_Star] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		NKVD_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSH
		[NKVD_Vest_O_PPSH],
		[NKVD_Weap_PPSH_S_Mag,1],
		[NKVD_Weap_PPSH_S],
		[NKVD_Weap_PPSH_S_Mag,5,"vest"]
		],[50],
		[//PPSH and Knife
		[NKVD_Vest_O_PPSH_K],
		[NKVD_Weap_PPSH_S_Mag,1],
		[NKVD_Weap_PPSH_S],
		[NKVD_Weap_PPSH_S_Mag,5,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[NKVD_Weap_TT33_Mag,1],
		[NKVD_Weap_TT33],
		[NKVD_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[NKVD_Weap_M1895_Mag,1],
		[NKVD_Weap_M1895],
		[NKVD_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[NKVD_Weap_C96_Mag,1],
		[NKVD_Weap_C96],
		[NKVD_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};

	//Radio Operator
	case "NKVD_RTO" : {
		[NKVD_Unit_Stre] call FNC_AddItem;
		[NKVD_BP_Radio] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		
		//Primary Weapon
		[
		[//Mosin M38
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM38],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//Mosin M9130
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM9130],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//PPSH
		[NKVD_Vest_PPSH],
		[NKVD_Weap_PPSH_D_Mag,1],
		[NKVD_Weap_PPSH_D],
		[NKVD_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//SVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_SVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[22],
		[//AVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_AVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[3]
		] call FNC_AddItemRandomPercent;
	};

	//Medic
	case "NKVD_Med" : {
		[NKVD_Unit_Stre] call FNC_AddItem;
		[NKVD_BP_Medic] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		
		//Primary Weapon
		[
		[//Mosin M38
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM38],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//Mosin M9130
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM9130],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//PPSH
		[NKVD_Vest_PPSH],
		[NKVD_Weap_PPSH_D_Mag,1],
		[NKVD_Weap_PPSH_D],
		[NKVD_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//SVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_SVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[22],
		[//AVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_AVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[3]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		NKVD_medic_equipment;
	};

	//Sergeant
	case "NKVD_Sgt" : {
		[NKVD_Unit_Sgt] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		
		//Primary Weapon
		[
		[//PPSH
		[NKVD_Vest_PPSH],
		[NKVD_Weap_PPSH_D_Mag,1],
		[NKVD_Weap_PPSH_D],
		[NKVD_Weap_PPSH_D_Mag,5,"vest"]
		],[25],
		[//SVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_SVT40],
		[NKVD_Weap_SVT40_Mag,5,"vest"]
		],[75]
		] call FNC_AddItemRandomPercent;
	};

	//Efreitor
	case "NKVD_Efr" : {
		[NKVD_Unit_Efr] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		
		//Primary Weapon
		[
		[//PPSH
		[NKVD_Vest_PPSH],
		[NKVD_Weap_PPSH_D_Mag,1],
		[NKVD_Weap_PPSH_D],
		[NKVD_Weap_PPSH_D_Mag,5,"vest"]
		],[75],
		[//SVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_SVT40],
		[NKVD_Weap_SVT40_Mag,5,"vest"]
		],[25]
		] call FNC_AddItemRandomPercent;
	};

	//Machine Gunner
	case "NKVD_MG" : {
		[NKVD_Unit_Efr] call FNC_AddItem;
		[NKVD_Vest_HKC] call FNC_AddItem;
		[NKVD_BP_Round_MG] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		
		//Primary Weapon
		[NKVD_Weap_DP_Mag,1] call FNC_AddItem;
		[NKVD_Weap_DP] call FNC_AddItem;
		[NKVD_Weap_DP_Mag,9] call FNC_AddItem;
		
		//Secondary Weapon
		[
		[//TT-33
		[NKVD_Weap_TT33_Mag,1],
		[NKVD_Weap_TT33],
		[NKVD_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[NKVD_Weap_M1895_Mag,1],
		[NKVD_Weap_M1895],
		[NKVD_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[NKVD_Weap_C96_Mag,1],
		[NKVD_Weap_C96],
		[NKVD_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};

	//Machine Gun Assistant
	case "NKVD_MGA" : {
		[NKVD_Unit_Stre] call FNC_AddItem;
		[NKVD_BP_Round_MG] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		
		//Primary Weapon
		[
		[//Mosin M38
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM38],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//Mosin M9130
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM9130],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//PPSH
		[NKVD_Vest_PPSH],
		[NKVD_Weap_PPSH_D_Mag,1],
		[NKVD_Weap_PPSH_D],
		[NKVD_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//SVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_SVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[22],
		[//AVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_AVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[3]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[NKVD_Weap_DP_Mag,6] call FNC_AddItem;
	};

	//Strelok
	case "NKVD_Stre" : {
		[NKVD_Unit_Stre] call FNC_AddItem;
		[NKVD_Hat] call FNC_AddItem;
		[NKVD_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		NKVD_default_equipment;
		
		//Primary Weapon
		[
		[//Mosin M38
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM38],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//Mosin M9130
		[NKVD_Vest_Mosin],
		[NKVD_Weap_Mos_Mag,1],
		[NKVD_Weap_MosM9130],
		[NKVD_Weap_Mos_Mag,8,"vest"]
		],[25],
		[//PPSH
		[NKVD_Vest_PPSH],
		[NKVD_Weap_PPSH_D_Mag,1],
		[NKVD_Weap_PPSH_D],
		[NKVD_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//SVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_SVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[22],
		[//AVT
		[NKVD_Vest_SVT],
		[NKVD_Weap_SVT40_Mag,1],
		[NKVD_Weap_AVT40],
		[NKVD_Weap_SVT40_Mag,4,"vest"]
		],[3]
		] call FNC_AddItemRandomPercent;
	};