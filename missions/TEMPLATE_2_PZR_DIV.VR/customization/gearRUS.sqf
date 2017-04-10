// Info: Red Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

	//Company HQ
//[this,"R_CC"] call FNC_GearScript;	Company Commander
//[this,"R_CSgt"] call FNC_GearScript;	Company Sergeant

	//Platoon HQ
//[this,"R_PC"] call FNC_GearScript;	Platoon Commander
//[this,"R_PSGT"] call FNC_GearScript;	Platoon Sergeant
//[this,"R_RTO"] call FNC_GearScript;	Radio Operator
//[this,"R_Mess"] call FNC_GearScript;	Messenger

	//Squad
//[this,"R_SL"] call FNC_GearScript;	Squad Leader
//[this,"R_TL"] call FNC_GearScript;	Team Leader
//[this,"R_SMG"] call FNC_GearScript;	Submachine Gunner
//[this,"R_Gren"] call FNC_GearScript;	Grenadier
//[this,"R_Rif"] call FNC_GearScript;	Rifleman
//[this,"R_MG"] call FNC_GearScript;	Machine Gunner
//[this,"R_MGA"] call FNC_GearScript;	MG Assistant

//[this,"R_RifR"] call FNC_GearScript;	Rifleman Random Late War

	//Crew
//[this,"R_VCom"] call FNC_GearScript;	Tank Commander
//[this,"R_VCrew"] call FNC_GearScript;	Tank Crew

//========================Equipment Definitions========================
//=== Weapons ===

//Primary
#define R_Weap_MosM9130		"LIB_M9130"
#define R_Weap_MosM38		"LIB_M38"
#define R_Weap_SVT40		"LIB_SVT_40"
#define R_Weap_AVT40		"LIB_AVT_40_2PzD"
#define R_Weap_PPSH_S		"LIB_PPSh41_m"
#define R_Weap_PPSH_D		"LIB_PPSh41_d"
#define R_Weap_DP			"LIB_DP28"

//Secondary
#define R_Weap_TT33			"LIB_TT33"
#define R_Weap_M1895		"LIB_M1895"
#define R_Weap_C96			"sab_mauser96_handgun"

//Launcher
#define R_Weap_Bazoo		"LIB_M1A1_Bazooka"

//Attachments
#define R_Weap_MosM9130_Bay	"LIB_ACC_M1891_Bayo"

//Ammo
#define R_Weap_Mos_Mag		"LIB_5Rnd_762x54"
#define R_Weap_SVT40_Mag	"LIB_10Rnd_762x54"
#define R_Weap_PPSH_S_Mag	"LIB_35Rnd_762x25"
#define R_Weap_PPSH_D_Mag	"LIB_71Rnd_762x25"
#define R_Weap_DP_Mag		"LIB_47Rnd_762x54"
#define R_Weap_TT33_Mag		"LIB_8Rnd_762x25"
#define R_Weap_M1895_Mag	"LIB_7Rnd_762x38"
#define R_Weap_C96_Mag		"sab_wwiplanes_6rnd_mauser_mag"
#define R_Weap_Bazoo_Mag	"LIB_1Rnd_60mm_M6"

//Grenades
#define R_Gren_Frag_S		"LIB_rg42"
#define R_Gren_Frag_P		"HandGrenade"
#define R_Gren_AT			"LIB_rpg6"
#define R_Gren_Smoke_W		"SmokeShell"
#define R_Gren_Smoke_B		"SmokeShellBlue"
#define R_Gren_Smoke_G		"SmokeShellGreen"
#define R_Gren_Smoke_O		"SmokeShellOrange"
#define R_Gren_Smoke_P		"SmokeShellPurple"
#define R_Gren_Smoke_R		"SmokeShellRed"
#define R_Gren_Smoke_Y		"SmokeShellYellow"

//=== Clothes ===

//Uniform
#define R_Uni_CC			"U_LIB_SOV_Stleutenant"
#define R_Uni_CSgt			"U_LIB_SOV_Starshina"
#define R_Uni_PC			["U_LIB_SOV_Leutenant"],["U_LIB_SOV_Leutenant_inset_pocket"]
#define R_Uni_PSgt			"U_LIB_SOV_Stsergeant"
#define R_Uni_SL			"U_LIB_SOV_Sergeant_inset_pocket"
#define R_Uni_TL			"U_LIB_SOV_Efreitor"
#define R_Uni_Rif			"U_LIB_SOV_Strelok"

#define R_Uni_VCom			"U_LIB_SOV_Tank_leutenant"
#define R_Uni_VCrew			"U_LIB_SOV_Tank_ryadovoi"

//Vests
#define R_Vest_PC			"V_LIB_SOV_RA_TankOfficerSet"
#define R_Vest_PPSH_O_r		["V_LIB_SOV_RA_OfficerVest"],["V_LIB_SOV_RAZV_OfficerVest"]
#define R_Vest_PPSH_D1		"V_LIB_SOV_RA_PPShBelt"
#define R_Vest_PPSH_D2		"V_LIB_SOV_RAZV_PPShBelt"
#define R_Vest_Mosin		"V_LIB_SOV_RA_MosinBelt"
#define R_Vest_SVT			"V_LIB_SOV_RA_SVTBelt"
#define R_Vest_MG			["V_LIB_SOV_RA_MGBelt"],["V_LIB_SOV_RAZV_MGBelt"]

#define R_Vest_VCrew		"V_LIB_GER_TankPrivateBelt"

//Backpack
#define R_BP				"B_LIB_SOV_RA_Rucksack"
#define R_BP_MG				"B_LIB_SOV_RA_MGAmmoBag_Big_Empty"
#define R_BP_Med			"B_LIB_SOV_RA_MedicalBag_Big_Empty"
#define R_BP_Radio			"B_LIB_SOV_RA_Radio"

//Headgear
#define R_Hat_PC			"H_LIB_SOV_RA_OfficerCap"
#define R_Hat				"H_LIB_SOV_RA_PrivateCap"
#define R_Helmet			"H_LIB_SOV_RA_Helmet"

#define R_Hat_VCrew			"H_LIB_SOV_TankHelmet"

//Face
#define R_Face_r			["G_LIB_Dienst_Brille"],["G_LIB_Dienst_Brille2"], \
							["G_LIB_Watch2"],["G_LIB_Watch1"], \
							["G_LIB_Watch2"],["G_LIB_Watch1"], \
							["G_LIB_Watch2"],["G_LIB_Watch1"], \
							["G_LIB_Watch2"],["G_LIB_Watch1"], \
							["G_LIB_Watch2"],["G_LIB_Watch1"], \
							["G_LIB_Watch2"],["G_LIB_Watch1"], \
							["G_LIB_Watch2"],["G_LIB_Watch1"]
#define R_Face_Tank_r		["G_LIB_Headwrap"],["G_LIB_Headwrap_gloves"],[],[]

//=== MISC ===
//ACE
#define R_ace_defuse		"ACE_DefusalKit"
#define R_ace_earplugs		"ACE_EarPlugs";
#define R_ace_firing_device	"ACE_Clacker"
#define R_ace_flashlight	"ACE_Flashlight_KSF1"
#define R_ace_shovel		"ACE_EntrenchingTool"
#define R_ace_sparebarrel	"ACE_SpareBarrel"
#define R_ace_wirecutters	"ACE_wirecutter"
#define R_ace_carpick		"ACE_key_lockpick"
#define R_ace_maptools		"ACE_MapTools"
#define R_ace_cabletie		"ACE_CableTie"

//Medical
#define R_Bandage			"ACE_fieldDressing";
#define R_TQ				"ACE_tourniquet";
#define R_Morp				"ACE_morphine";
#define R_Epi				"ACE_epinephrine";
#define R_Blood1000			"ACE_bloodIV";
#define R_Blood500			"ACE_bloodIV_250";
#define R_Blood250			"ACE_bloodIV_500";
#define R_PAK				"ACE_personalAidKit";
#define R_SurgKit			"ACE_surgicalKit";

//Double Misc
#define R_Bino				"LIB_Binocular_SU"
#define R_Demo				"SatchelCharge_Remote_Mag"
#define R_Headset			"LIB_GER_Headset"
#define R_Minedetector		"MineDetector"
#define R_Toolkit			"ToolKit"

//Radio
//#define R_Radio			"ItemRadio"

//=== EQUIPMENT ===

#define R_default_equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define R_leader_equipment \
["LIB_Binocular_SU"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define R_medic_equipment \
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
	case "R_CC" : {
		[R_Uni_CC] call FNC_AddItemRandom;
		[R_Vest_PC] call FNC_AddItem;
		[R_Hat_PC] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		R_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[R_Weap_TT33_Mag,1],
		[R_Weap_TT33],
		[R_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[R_Weap_M1895_Mag,1],
		[R_Weap_M1895],
		[R_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[R_Weap_C96_Mag,1],
		[R_Weap_C96],
		[R_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};
	
	//Company Sergeant
	case "R_CSGT" : {
		[R_Uni_CSgt] call FNC_AddItem;
		[R_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[R_BP] call FNC_AddItem;
		[R_Hat] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		R_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[R_Weap_TT33_Mag,1],
		[R_Weap_TT33],
		[R_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[R_Weap_M1895_Mag,1],
		[R_Weap_M1895],
		[R_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[R_Weap_C96_Mag,1],
		[R_Weap_C96],
		[R_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[R_Gren_Frag_S,1] call FNC_AddItem;
		[R_Gren_Frag_P,1] call FNC_AddItem;
		[R_Gren_Smoke_W,1] call FNC_AddItem;
	};

//Platoon HQ

	//Platoon Commander
	case "R_PC" : {
		[R_Uni_PC] call FNC_AddItemRandom;
		[R_Vest_PC] call FNC_AddItem;
		[R_Hat_PC] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		R_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[R_Weap_TT33_Mag,1],
		[R_Weap_TT33],
		[R_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[R_Weap_M1895_Mag,1],
		[R_Weap_M1895],
		[R_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[R_Weap_C96_Mag,1],
		[R_Weap_C96],
		[R_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};
	
	//Platoon Sergeant
	case "R_PSGT" : {
		[R_Uni_SL] call FNC_AddItem;
		[R_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[R_BP] call FNC_AddItem;
		[R_Hat] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		R_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[R_Weap_TT33_Mag,1],
		[R_Weap_TT33],
		[R_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[R_Weap_M1895_Mag,1],
		[R_Weap_M1895],
		[R_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[R_Weap_C96_Mag,1],
		[R_Weap_C96],
		[R_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[R_Gren_Frag_S,1] call FNC_AddItem;
		[R_Gren_Frag_P,1] call FNC_AddItem;
		[R_Gren_Smoke_W,1] call FNC_AddItem;
	};
	
	//Medic
	case "R_Med" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM9130],
		[R_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM38],
		[R_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_SVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_AVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[R_BP_Med] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Extra
		R_medic_equipment;
	};
	
	//Radio Operator
	case "R_RTO" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM9130],
		[R_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM38],
		[R_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_SVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_AVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[R_BP_Radio] call FNC_AddItem;
		[R_Hat] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		[R_Headset] call FNC_AddItem;
	};
	
	//Messenger
	case "R_Mess" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM9130],
		[R_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM38],
		[R_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_SVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_AVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[R_BP] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Extra
		[R_Gren_Frag_S,1] call FNC_AddItem;
	};

//Squad

	//Squad Leader
	case "R_SL" : {
		[R_Uni_SL] call FNC_AddItem;
		[R_Vest_PPSH_O_r] call FNC_AddItemRandom;
		[R_BP] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,6,"vest"]
		],[50],
		[//PPSh-41, Drum
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,2,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[R_Gren_Frag_S,1] call FNC_AddItem;
		[R_Weap_DP_Mag,1] call FNC_AddItem;
	};
	
	//Team Leader
	case "R_TL" : {
		[R_Uni_TL] call FNC_AddItem;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[R_Vest_PPSH_D1],
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Stick
		[R_Vest_PPSH_D2],
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Drum
		[R_Vest_PPSH_D1],
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//PPSh-41, Drum
		[R_Vest_PPSH_D2],
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,2,"vest"]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		[R_BP] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Extra
		[R_Gren_Frag_S,1] call FNC_AddItem;
		[R_Weap_DP_Mag,1] call FNC_AddItem;
	};
	
	//Submachine Gunner
	case "R_SMG" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon
		[//PPSh-41, Stick
		[R_Vest_PPSH_D1],
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Stick
		[R_Vest_PPSH_D2],
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,6,"vest"]
		],[25],
		[//PPSh-41, Drum
		[R_Vest_PPSH_D1],
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,2,"vest"]
		],[25],
		[//PPSh-41, Drum
		[R_Vest_PPSH_D2],
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,2,"vest"]
		],[25]
		] call FNC_AddItemRandomPercent;
		
		[R_BP] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Extra
		[R_Gren_Frag_S,1] call FNC_AddItem;
		[R_Weap_DP_Mag,1] call FNC_AddItem;
	};
	
	//Grenadier
	case "R_Gren" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM9130],
		[R_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM38],
		[R_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_SVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_AVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[R_BP] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Extra
		[R_Gren_Frag_S,3] call FNC_AddItem;
		[R_Gren_Frag_P,3] call FNC_AddItem;
	};
	
	//Rifleman
	case "R_Rif" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM9130],
		[R_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM38],
		[R_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_SVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_AVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[R_BP] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Extra
		[R_Gren_Frag_S,1] call FNC_AddItem;
		[R_Gren_Frag_P,1] call FNC_AddItem;
		[R_Weap_DP_Mag,1,"backpack"] call FNC_AddItem;
	};
	
	//Machine Gunner
	case "R_MG" : {
		[R_Uni_Rif] call FNC_AddItem;
		[R_Vest_MG] call FNC_AddItemRandom;
		[R_BP_MG] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Primary Weapon
		[R_Weap_DP_Mag,1] call FNC_AddItem;
		[R_Weap_DP] call FNC_AddItem;
		[R_Weap_DP_Mag,3,"vest"] call FNC_AddItem;
		[R_Weap_DP_Mag,6,"backpack"] call FNC_AddItem;
	};
	
	//MG Assistant
	case "R_MGA" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon & Vest
		[//Mosin M91/30
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM9130],
		[R_Weap_Mos_Mag,12,"vest"]
		],[56],
		[//Mosin M38
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM38],
		[R_Weap_Mos_Mag,12,"vest"]
		],[19],
		[//SVT-40
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_SVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[23],
		[//AVT
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_AVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		[R_BP_MG] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		[R_Gren_Frag_S,1] call FNC_AddItem;
		
		//Extra
		[R_Weap_DP_Mag,6,"backpack"] call FNC_AddItem;
	};
	
	//Rifleman Random Late War
	case "R_RifR" : {
		[R_Uni_Rif] call FNC_AddItem;
		
		[//Primary Weapon
		[//Mosin M91/30
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM9130],
		[R_Weap_Mos_Mag,12,"vest"]
		],[30],
		[//Mosin M38
		[R_Vest_Mosin],
		[R_Weap_Mos_Mag,1],
		[R_Weap_MosM38],
		[R_Weap_Mos_Mag,12,"vest"]
		],[20],
		[//PPSh-41, Stick
		[R_Vest_PPSH_D1],
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,6,"vest"]
		],[14],
		[//PPSh-41, Stick
		[R_Vest_PPSH_D2],
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,6,"vest"]
		],[14],
		[//SVT-40
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_SVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[9],
		[//PPSh-41, Drum
		[R_Vest_PPSH_D1],
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,2,"vest"]
		],[6],
		[//PPSh-41, Drum
		[R_Vest_PPSH_D2],
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,2,"vest"]
		],[6],
		[//AVT
		[R_Vest_SVT],
		[R_Weap_SVT40_Mag,1],
		[R_Weap_AVT40],
		[R_Weap_SVT40_Mag,6,"vest"]
		],[1]
		] call FNC_AddItemRandomPercent;
		
		[R_BP] call FNC_AddItem;
		[R_Helmet] call FNC_AddItem;
		[R_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Extra
		[R_Gren_Frag_S,2] call FNC_AddItem;
		[R_Gren_Frag_P,2] call FNC_AddItem;
		[R_Weap_DP_Mag,1,"backpack"] call FNC_AddItem;
	};

//Vehicle Crew

	//Tank Commander
	case "R_VCom" : {
		[R_Uni_VCrew] call FNC_AddItem;
		[R_Vest_PC] call FNC_AddItem;
		[R_Hat_VCrew] call FNC_AddItem;
		[R_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		R_leader_equipment;
		
		//Primary Weapon
		[
		[//PPSh-41, Stick
		[R_Weap_PPSH_S_Mag,1],
		[R_Weap_PPSH_S],
		[R_Weap_PPSH_S_Mag,3,"vest"]
		],[50],
		[//PPSh-41, Drum
		[R_Weap_PPSH_D_Mag,1],
		[R_Weap_PPSH_D],
		[R_Weap_PPSH_D_Mag,1,"vest"]
		],[50]
		] call FNC_AddItemRandomPercent;
		
		//Secondary Weapon
		[
		[//TT-33
		[R_Weap_TT33_Mag,1],
		[R_Weap_TT33],
		[R_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[R_Weap_M1895_Mag,1],
		[R_Weap_M1895],
		[R_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[R_Weap_C96_Mag,1],
		[R_Weap_C96],
		[R_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
	};
	
	//Tank Crew
	case "R_VCrew" : {
		[R_Uni_VCrew] call FNC_AddItem;
		[R_Vest_VCrew] call FNC_AddItem;
		[R_BP] call FNC_AddItem;
		[R_Hat_VCrew] call FNC_AddItem;
		[R_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		R_default_equipment;
		
		//Secondary Weapon
		[
		[//TT-33
		[R_Weap_TT33_Mag,1],
		[R_Weap_TT33],
		[R_Weap_TT33_Mag,1,"vest"]
		],[70],
		[//M1895
		[R_Weap_M1895_Mag,1],
		[R_Weap_M1895],
		[R_Weap_M1895_Mag,1,"vest"]
		],[15],
		[//C96
		[R_Weap_C96_Mag,1],
		[R_Weap_C96],
		[R_Weap_C96_Mag,1,"vest"]
		],[15]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[R_Toolkit] call FNC_AddItem;
	};