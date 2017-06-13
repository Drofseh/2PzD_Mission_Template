//========================British Equipment Definitions========================

//=== Weapons ===

//Primary
#define UK_Weap_LeeEnNo1		"LEN_SMLE_No4Mk1"
#define UK_Weap_LeeEnNo4		"LEN_SMLE_No4Mk1"
#define UK_Weap_LeeEnNo4T		"LEN_SMLE_No4Mk1T"
#define UK_Weap_StenMkI			"LEN_StenMk5"
#define UK_Weap_StenMkII		"LEN_StenMk2"
#define UK_Weap_StenMkIIS		"LEN_StenMk2S"
#define UK_Weap_StenMkIII		"LEN_StenMk2"
#define UK_Weap_StenMkV			"LEN_StenMk5"
#define UK_Weap_StenMkVI		"LEN_StenMk2S"
#define UK_Weap_Bren			"fow_w_bren"

//Secondary
#define UK_Weap_HiPower			"LEN_P640b"
#define UK_Weap_Webley455		"fow_w_webley"
#define UK_Weap_Welrod_1		"LEN_Welrod"

//Launcher
#define UK_Weap_Piat			"fow_w_piat"

//Vickers Backpack
#define UK_Weap_HMG_G			"fow_b_uk_vickers_weapon"
#define UK_Weap_HMG_T			"fow_b_uk_vickers_support"

//Attachments

//Ammo
#define UK_Mag_LeeEn			"fow_10Rnd_303"
#define UK_Mag_Sten				"LEN_32Rnd_9x19"
#define UK_Mag_Bren				"fow_30Rnd_303_bren"
#define UK_Mag_HiPower			"LEN_13Rnd_9x19"
#define UK_Mag_Webley455		"fow_6Rnd_455"
#define UK_Mag_Welrod_1			"LEN_8Rnd_765x17_2PzD"
#define UK_Mag_Piat_HEAT		"fow_1Rnd_piat"
#define UK_Mag_Piat_HE			"fow_1Rnd_piat_HE"

//Grenades
#define UK_Gren_Frag			"fow_e_no36mk1"

//=== Clothes ===

//Uniform
#define UK_Uni_Lt				"fow_u_uk_bd40_lieutenant"
#define UK_Uni_Sgt				"fow_u_uk_bd40_sergeant"
#define UK_Uni_Cpl				"fow_u_uk_bd40_corporal"
#define UK_Uni_LCpl				"fow_u_uk_bd40_lance_corporal"
#define UK_Uni_Pte				"fow_u_uk_bd40_private"

#define UK_UniEsx_Lt			"fow_u_uk_bd40_01_lieutenant"
#define UK_UniEsx_Sgt			"fow_u_uk_bd40_01_sergeant"
#define UK_UniEsx_Cpl			"fow_u_uk_bd40_01_corporal"
#define UK_UniEsx_LCpl			"fow_u_uk_bd40_01_lance_corporal"
#define UK_UniEsx_Pte			"fow_u_uk_bd40_01_private"

#define UK_Uni_Para				"fow_u_uk_parasmock"

#define UK_Uni_Com				"fow_u_uk_bd40_commando_01_private"

#define UK_Uni_Kief_r			["fow_u_uk_bd40_kieffer_01"],["fow_u_uk_bd40_kieffer_02"]

//Vests
#define UK_VestK_LeeEn			"fow_v_uk_base"
#define UK_VestK_Sten			"fow_v_uk_sten"
#define UK_VestK_Bren			"fow_v_uk_bren"
#define UK_VestK_O				"fow_v_uk_officer"

#define UK_VestG_LeeEn			"fow_v_uk_base_green"
#define UK_VestG_Sten			"fow_v_uk_sten_green"
#define UK_VestG_Bren			"fow_v_uk_bren_green"
#define UK_VestG_O				"fow_v_uk_officer_green"

#define UK_VestParaG_LeeEn		"fow_v_uk_para_base"
#define UK_VestParaG_Sten		"fow_v_uk_para_sten"
#define UK_VestParaG_Bren		"fow_v_uk_para_bren"

//Backpack
#define UK_BPK					"fow_b_uk_p37"
#define UK_BPG					"fow_b_uk_p37_blanco"

#define UK_BPG_L				"fow_b_uk_bergenpack"

#define UK_BPK_Radio			"fow_b_us_radio"

//Headgear
#define UK_Helm_r				["fow_h_uk_mk2"],["fow_h_uk_mk2_net"],["fow_h_uk_mk3"],["fow_h_uk_mk3_net_camo"]
#define UK_Helm_Mk2_r			["fow_h_uk_mk2"],["fow_h_uk_mk2_net"]
#define UK_Helm_Mk3_r			["fow_h_uk_mk3"],["fow_h_uk_mk3_net_camo"]
#define UK_Helm_Mk2_P_r			["fow_h_uk_mk2_para"],["fow_h_uk_mk2_para_foliage"]
#define UK_Helm_Mk2				"fow_h_uk_mk2"
#define UK_Helm_Mk2_Net			"fow_h_uk_mk2_net";
#define UK_Helm_Mk2_NetF		"fow_h_uk_mk2_net_camo";
#define UK_Helm_Mk3				"fow_h_uk_mk3"
#define UK_Helm_Mk3_Net			"fow_h_uk_mk3_net_camo"
#define UK_Helm_P_Mk2			"fow_h_uk_mk2_para";
#define UK_Helm_P_Mk2_Fol		"fow_h_uk_mk2_para_foliage";

#define UK_Woolie				"fow_h_uk_woolen_hat";
#define UK_Beret_Com			"fow_h_uk_beret_commando"
#define UK_Beret_Para_P			"fow_h_uk_beret_para"
#define UK_Beret_Para_R			"fow_h_uk_beret_para_2"
#define UK_Beret_Marine			"fow_h_uk_beret_royalmarines"

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
["ACE_fieldDressing",30,"backpack"] call FNC_AddItem; \
["ACE_morphine",10,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",5,"backpack"] call FNC_AddItem; \
["ACE_tourniquet",2,"backpack"] call FNC_AddItem; \
["ACE_surgicalKit",1,"backpack"] call FNC_AddItem; \
["ACE_personalAidKit",5,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",5,"backpack"] call FNC_AddItem;