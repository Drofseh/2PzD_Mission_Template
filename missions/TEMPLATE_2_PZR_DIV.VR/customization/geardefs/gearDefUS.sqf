//========================US Equipment Definitions========================

//=== Weapons ===

//Primary
#define US_Weap_M1903A1         "fow_w_m1903A1"
#define US_Weap_M1903A1_S       "fow_w_m1903A1_sniper"
#define US_Weap_M1903A3         "LIB_M1903A3_Springfield"
#define US_Weap_M1903A4         "LIB_M1903A4_Springfield"
#define US_Weap_M1G             "LIB_M1_Garand"
#define US_Weap_M1C             "fow_w_m1_carbine"
#define US_Weap_M1A1C           "LIB_M1A1_Carbine"
#define US_Weap_M2C             "fow_w_m2_carbine_2PzD"
#define US_Weap_M1928           "LIB_M1928_Thompson"
#define US_Weap_M1928_D         "LIB_M1928_Thompson_d"
#define US_Weap_M1928A1         "LIB_M1928A1_Thompson"
#define US_Weap_M1T             "fow_w_m1_thompson"
#define US_Weap_M1A1T           "fow_w_m1a1_thompson"
#define US_Weap_M3GG            "fow_w_m3"
#define US_Weap_M3A1GG          "LEN_M3a1"
#define US_Weap_M50             "fow_w_m55_reising"
#define US_Weap_M55             "fow_w_m55_reising"
#define US_Weap_BAR             "LIB_M1918A2_BAR"
#define US_Weap_M1919A4         "LIB_M1919A4"
#define US_Weap_M1919A6         "fow_w_m1919a6"
#define US_Weap_M12             "fow_w_M1912"
#define US_Weap_M37             "fow_w_ithaca37"
#define US_Weap_Flame           "LIB_M2_Flamethrower"
/* To use the flamethrower weapon, ammo, and backpack use this code:

        //Primary Weapon
        [US_BP_Flame] call FNC_AddItem;
        [US_Mag_Flame,1,"backpack"] call FNC_AddItem;
        [US_Weap_Flame] call FNC_AddItem;
        _unit removeItem US_BP_Flame;
        [US_BP_Flame_Final] call FNC_AddItem;

This will give them a backpack large enough to hold the ammo, which is very large, then give them the mag and the weapon (which will automatically load the mag)
Then it removes the large backpack and gives them a backpack that can't hold anything extra,
Letting them keep the large backpack would allow them to put other items in the backpack, since the ammo is a 'magazine' and gets loaded into the weapon.
*/

//Secondary
#define US_Weap_M1911           "LIB_Colt_M1911"

//Launcher
#define US_Weap_Bazoo           "fow_w_m1a1_bazooka"
#define US_Weap_MortB           "LIB_M2_60_Barrel"
#define US_Weap_MortT           "LIB_M2_60_Tripod"
#define US_Weap_M1919A4_T       "LIB_M2_Tripod"

//Attachments
#define US_Acc_M1_Bayo          "LIB_ACC_M1_Bayo"
#define US_Acc_M1G_GL           "LIB_ACC_GL_M7"
#define US_Weap_BAR_Bipod       "LIB_M1918A2_BAR_Bipod"

//Ammo
#define US_Mag_M1903            "LIB_5Rnd_762x63"
#define US_Mag_M1G              "LIB_8Rnd_762x63"
#define US_Mag_M1C              "LIB_15Rnd_762x33"
#define US_Mag_M2C              "LIB_30Rnd_762x33_2PzD"
#define US_Mag_M1T_1            "LIB_30Rnd_45ACP"
#define US_Mag_M1T_2            "LIB_20Rnd_45ACP_M1_2PzD"
#define US_Mag_M1T_3            "LIB_50Rnd_45ACP"
#define US_Mag_M3GG             "LIB_30Rnd_M3_GreaseGun_45ACP"
#define US_Mag_M50_1            "fow_20Rnd_45acp"
#define US_Mag_M50_2            "fow_12Rnd_45acp_2PzD"
#define US_Mag_BAR              "LIB_20Rnd_762x63"
#define US_Mag_M1919_50         "LIB_50Rnd_762x63"
#define US_Mag_M1919_100        "LIB_100Rnd_762x63"
#define US_Mag_M1919_150        "LIB_150Rnd_762x63_2PzD"
#define US_Mag_M1919_200        "LIB_200Rnd_762x63_2PzD"
#define US_Mag_M1919_250        "LIB_250Rnd_762x63_2PzD"
#define US_Mag_M12_Buck         "fow_6Rnd_12G_Pellets"
#define US_Mag_M12_Slug         "fow_6Rnd_12G_Slug"
#define US_Mag_M37_Buck         "fow_5Rnd_12G_Pellets"
#define US_Mag_M37_Slug         "fow_5Rnd_12G_Slug"
#define US_Mag_M1911            "LIB_7Rnd_45ACP"
#define US_Mag_RGrn_AT          "fow_1Rnd_m9a1"
//#define US_Mag_RGrn_AT          "LIB_1Rnd_G_M9A1"
#define US_Mag_RGrn_HE          "LIB_1Rnd_G_Mk2"
#define US_Mag_Bazoo            "LIB_1Rnd_60mm_M6"
#define US_Mag_Mort_HE          "LIB_1Rnd_60mm_Mo_HE"
#define US_Mag_Mort_Smoke       "LIB_1Rnd_60mm_Mo_Smoke"
#define US_Mag_Mort_Illum       "LIB_1Rnd_60mm_Mo_Illum"
#define US_Mag_Flame            "LIB_M2_Flamethrower_Mag"

//Grenades
#define US_Gren_Frag            "fow_e_mk2"

//Radio

//===== US Army Equipment Definitions =====

//=== Clothes ===

//Uniform
#define US_Uni_CPT              "fow_u_us_m41_01_private"
#define US_Uni_LT               "fow_u_us_m41_01_private"
#define US_Uni_SGT              "fow_u_us_m41_01_private"
#define US_Uni_CPL              "fow_u_us_m41_01_private"
#define US_Uni_PFC              "fow_u_us_m41_01_private"
#define US_Uni_PVT              "fow_u_us_m41_01_private"
#define US_Uni_Med              "fow_u_us_m41_01_private"
#define US_Uni_Tec5             "fow_u_us_m41_01_private"
#define US_Uni_VCrew1           "fow_u_us_m41_01_private"
#define US_Uni_VCrew2           "fow_u_us_m41_01_private"

//Early Uniform
#define US_UniE_CPT             "fow_u_us_m37_01_private"
#define US_UniE_LT              "fow_u_us_m37_01_private"
#define US_UniE_SGT             "fow_u_us_m37_01_private"
#define US_UniE_CPL             "fow_u_us_m37_01_private"
#define US_UniE_PFC             "fow_u_us_m37_01_private"
#define US_UniE_PVT             "fow_u_us_m37_01_private"
#define US_UniE_Med             "fow_u_us_m37_01_private"
#define US_UniE_Tec5            "fow_u_us_m37_01_private"
#define US_UniE_VCrew1          "fow_u_us_m37_01_private"
#define US_UniE_VCrew2          "fow_u_us_m37_01_private"

    //North Africa Uniform
#define US_UniNA_CPT            "fow_u_us_m41_01_private"
#define US_UniNA_LT             "fow_u_us_m41_01_private"
#define US_UniNA_SGT            "fow_u_us_m41_01_private"
#define US_UniNA_CPL            "fow_u_us_m41_01_private"
#define US_UniNA_PFC            "fow_u_us_m41_01_private"
#define US_UniNA_PVT            "fow_u_us_m41_01_private"
#define US_UniNA_Med            "fow_u_us_m41_01_private"
#define US_UniNA_VCrew1         "fow_u_us_m41_01_private"
#define US_UniNA_VCrew2         "fow_u_us_m41_01_private"

    //North Africa Op Torch Uniform
#define US_UniOT_CPT            "fow_u_us_m41_01_private"
#define US_UniOT_LT             "fow_u_us_m41_01_private"
#define US_UniOT_SGT            "fow_u_us_m41_01_private"
#define US_UniOT_CPL            "fow_u_us_m41_01_private"
#define US_UniOT_PFC            "fow_u_us_m41_01_private"
#define US_UniOT_PVT            "fow_u_us_m41_01_private"
#define US_UniOT_Med            "fow_u_us_m41_01_private"
#define US_UniOT_VCrew1         "fow_u_us_m41_01_private"
#define US_UniOT_VCrew2         "fow_u_us_m41_01_private"

    //Ranger Uniform
#define US_UniR_CPT             "fow_u_us_m41_01_private"
#define US_UniR_LT              "fow_u_us_m41_01_private"
#define US_UniR_SGT             "fow_u_us_m41_01_private"
#define US_UniR_CPL             "fow_u_us_m41_01_private"
#define US_UniR_PFC             "fow_u_us_m41_01_private"
#define US_UniR_PVT             "fow_u_us_m41_01_private"
#define US_UniR_Med             "fow_u_us_m41_01_private"
#define US_UniR_Tec5            "fow_u_us_m41_01_private"
#define US_UniR_VCrew1          "fow_u_us_m41_01_private"
#define US_UniR_VCrew2          "fow_u_us_m41_01_private"

    //Pacific Uniform 1937
#define US_UniP37_CPT           "fow_u_us_m37_02_private"
#define US_UniP37_LT            "fow_u_us_m37_02_private"
#define US_UniP37_SGT           "fow_u_us_m37_02_private"
#define US_UniP37_CPL           "fow_u_us_m37_02_private"
#define US_UniP37_PFC           "fow_u_us_m37_02_private"
#define US_UniP37_PVT           "fow_u_us_m37_02_private"
#define US_UniP37_Med           "fow_u_us_m37_02_private"
#define US_UniP37_Tec5          "fow_u_us_m37_02_private"
#define US_UniP37_VCrew1        "fow_u_us_m37_02_private"
#define US_UniP37_VCrew2        "fow_u_us_m37_02_private"

    //Pacific Uniforms 1943
#define US_UniP43_1_CPT         "fow_u_us_hbt_01_private"
#define US_UniP43_1_LT          "fow_u_us_hbt_01_private"
#define US_UniP43_1_SGT         "fow_u_us_hbt_01_private"
#define US_UniP43_1_CPL         "fow_u_us_hbt_01_private"
#define US_UniP43_1_PFC         "fow_u_us_hbt_01_private"
#define US_UniP43_1_PVT         "fow_u_us_hbt_01_private"
#define US_UniP43_1_Med         "fow_u_us_hbt_01_private"
#define US_UniP43_1_Tec5        "fow_u_us_hbt_01_private"
#define US_UniP43_1_VCrew1      "fow_u_us_hbt_01_private"
#define US_UniP43_1_VCrew2      "fow_u_us_hbt_01_private"

#define US_UniP43_2_CPT         "fow_u_us_hbt_02_private"
#define US_UniP43_2_LT          "fow_u_us_hbt_02_private"
#define US_UniP43_2_SGT         "fow_u_us_hbt_02_private"
#define US_UniP43_2_CPL         "fow_u_us_hbt_02_private"
#define US_UniP43_2_PFC         "fow_u_us_hbt_02_private"
#define US_UniP43_2_PVT         "fow_u_us_hbt_02_private"
#define US_UniP43_2_Med         "fow_u_us_hbt_02_private"
#define US_UniP43_2_Tec5        "fow_u_us_hbt_02_private"
#define US_UniP43_2_VCrew1      "fow_u_us_hbt_02_private"
#define US_UniP43_2_VCrew2      "fow_u_us_hbt_02_private"

    //Winter Uniform
#define US_UniW_CPT             "fow_u_us_m41_01_private"
#define US_UniW_LT              "fow_u_us_m41_01_private"
#define US_UniW_SGT             "fow_u_us_m41_01_private"
#define US_UniW_CPL             "fow_u_us_m41_01_private"
#define US_UniW_PFC             "fow_u_us_m41_01_private"
#define US_UniW_PVT             "fow_u_us_m41_01_private"
#define US_UniW_Med             "fow_u_us_m41_01_private"
#define US_UniW_VCrew1          "fow_u_us_m41_01_private"
#define US_UniW_VCrew2          "fow_u_us_m41_01_private"

//Vests
#define US_Vest_Pistol          "fow_v_us_45"
#define US_Vest_NCO_M1C         "fow_v_us_carbine_nco"
#define US_Vest_NCO_M1T         "fow_v_us_thompson_nco"
#define US_Vest_M1G             "fow_v_us_garand"
#define US_Vest_M1G_Frag        "fow_v_us_Grenade"
#define US_Vest_M1G_Gren        "fow_v_us_grenade"
#define US_Vest_M1C             "fow_v_us_carbine"
#define US_Vest_M1C_Eng         "fow_v_us_carbine_eng"
#define US_Vest_M1T             "fow_v_us_thompson"
#define US_Vest_BAR             "fow_v_us_bar"
#define US_Vest_MGA             "fow_v_us_asst_mg"
#define US_Vest_Mort            "fow_v_us_asst_mg"
#define US_Vest_Med             "fow_v_us_medic"

//Backpack
#define US_BP_r                 ["fow_b_us_m1928"],["fow_b_us_m1928"],["fow_b_us_m1928"],["fow_b_us_m1944"]
#define US_BP_M1928             "fow_b_us_m1928"
#define US_BP_M36               "fow_b_us_m1944"
#define US_BP_M36R              "B_LIB_US_M36_Rope"
#define US_BP_AT                "fow_b_us_rocket_bag"
#define US_BP_Med               "B_LIB_US_MedicBackpack_Big_Empty"
#define US_BP_MG                "B_LIB_US_MGbag_Big_Empty"
#define US_BP_Radio             "fow_b_US_Radio"
#define US_BP_Flame             "B_LIB_US_M2Flamethrower"
#define US_BP_Flame_Final       "B_LIB_US_M2Flamethrower_noLoad"
#define US_Bando                "fow_b_us_bandoleer"

//Headgear
#define US_Helm_CPT             "H_LIB_US_Helmet_Cap"
#define US_Helm_LT              "H_LIB_US_Helmet_First_lieutenant"
#define US_Helm_2LT             "H_LIB_US_Helmet_Second_lieutenant"
#define US_Helm_Off_r           ["fow_h_us_m1_officer_closed"],["fow_h_us_m1_officer_folded"],["fow_h_us_m1_officer"]
#define US_Helm_NCO_r           ["fow_h_us_m1_nco"],["fow_h_us_m1_nco_closed"],["fow_h_us_m1_nco_folded"]
#define US_Helm_r               ["fow_h_us_m1"],["fow_h_us_m1"],["fow_h_us_m1"],["fow_h_us_m1_closed"],["fow_h_us_m1_closed"],["fow_h_us_m1_closed"],["fow_h_us_m1_folded"],["fow_h_us_m1_folded"],["fow_h_us_m1_folded"],["fow_h_us_m1_net"],["fow_h_us_m1_net"],["fow_h_us_m1_net"],["H_LIB_US_Helmet"],["H_LIB_US_Helmet_os"],["H_LIB_US_Helmet_ns"],["H_LIB_US_Helmet_Net"],["H_LIB_US_Helmet_Net_os"],["H_LIB_US_Helmet_Net_ns"]
#define US_Helm_Med_r           ["fow_h_us_m1_medic"],["fow_h_us_m1_medic"],["H_LIB_US_Helmet_Med"],["H_LIB_US_Helmet_Med_os"],["H_LIB_US_Helmet_Med_ns"]

#define US_Hat_DM               "fow_h_us_daisy_mae_01"
#define US_Hat_DM_f             "fow_h_us_daisy_mae_03"
#define US_Hat_DM_fF            "fow_h_us_daisy_mae_02"

#define US_Helm_VCrew           "H_LIB_US_Helmet_Tank"
#define US_Helm_Air             "fow_h_us_flight_helmet"

    //Ranger Headgear
#define US_HelmR_CPT            "H_LIB_US_Rangers_Helmet_Cap"
#define US_HelmR_LT             "H_LIB_US_Rangers_Helmet_First_lieutenant"
#define US_HelmR_2LT            "H_LIB_US_Rangers_Helmet_Second_lieutenant"
#define US_HelmR_Med_r          ["H_LIB_US_Helmet_Med"],["H_LIB_US_Helmet_Med_os"],["H_LIB_US_Helmet_Med_ns"]
                                //strap, open strap, no strap
#define US_HelmR_r              ["H_LIB_US_Rangers_Helmet_ns"],["H_LIB_US_Rangers_Helmet_os"]
                                //no strap, open strap

#define US_HelmR_VCrew          "H_LIB_US_Helmet_Tank"
#define US_HelmR_Air            "fow_h_us_flight_helmet"

    //Winter Headgear
#define US_HelmW_CPT            "H_LIB_US_Helmet_Cap_w"
#define US_HelmW_LT             "H_LIB_US_Helmet_First_lieutenant_w"
#define US_HelmW_2LT            "H_LIB_US_Helmet_Second_lieutenant_w"
#define US_HelmW_Med_r          ["H_LIB_US_Helmet_Med_w"],["H_LIB_US_Helmet_Med_w"],["H_LIB_US_Helmet_Med_w"]
                                //strap, open strap, no strap
#define US_HelmW_r              ["H_LIB_US_Helmet_w"],["H_LIB_US_Helmet_Net_w"],["H_LIB_US_Helmet_Cover_w"]
                                //strap, open strap, no strap, camo strap, camo open strap, camo no strap

#define US_HelmW_VCrew          "H_LIB_US_Helmet_Tank"
#define US_HelmW_Air            "fow_h_us_flight_helmet"

//Face

//=== EQUIPMENT ===

#define US_Default_Equipment                             \
    [                                                    \
        [[GEN_ace_ration_Lamb]],[1],                     \
        [[GEN_ace_ration_Beef]],[1],                     \
        [[GEN_ace_ration_TSoup]],[1],                    \
        [[GEN_ace_ration_CSoup]],[1],                    \
        [[GEN_ace_ration_Tikka]],[1],                    \
        [[GEN_ace_ration_Steak]],[1],                    \
        [[GEN_ace_ration_Pasta]],[1],                    \
        [[GEN_ace_ration_Dumpling]],[1]                  \
    ] call FNC_AddItemRandomPercent;                     \
    [GEN_Map] call FNC_AddItem;                          \
    [GEN_Compass] call FNC_AddItem;                      \
    [GEN_Watch] call FNC_AddItem;                        \
    [GEN_ace_hammer,1,"uniform"] call FNC_AddItem;       \
    [GEN_ace_shovel,1,"uniform"] call FNC_AddItem;       \
    [GEN_BandageField,4,"uniform"] call FNC_AddItem;     \
    [GEN_TQ,1,"uniform"] call FNC_AddItem;               \
    [GEN_ace_flashlightNA,1,"uniform"] call FNC_AddItem; \
    [GEN_ace_cabletie,1,"uniform"] call FNC_AddItem;     \
    [GEN_ace_canteen_F,1,"uniform"] call FNC_AddItem;

#define US_Leader_Equipment                          \
    [GEN_BinoUS] call FNC_AddItem;                   \
    [GEN_ace_maptools,1,"uniform"] call FNC_AddItem; \
    [GEN_Whistle,1,"uniform"] call FNC_AddItem;

#define US_Medic_Equipment                               \
    [GEN_BandageField,10,"backpack"] call FNC_AddItem;   \
    [GEN_BandageElastic,20,"backpack"] call FNC_AddItem; \
    [GEN_BandagePacking,20,"backpack"] call FNC_AddItem; \
    [GEN_Morp,5,"backpack"] call FNC_AddItem;            \
    [GEN_Pain,10,"backpack"] call FNC_AddItem;           \
    [GEN_Epi,5,"backpack"] call FNC_AddItem;             \
    [GEN_TQ,2,"backpack"] call FNC_AddItem;              \
    [GEN_SurgKit,1,"backpack"] call FNC_AddItem;         \
    [GEN_Saline500,14,"backpack"] call FNC_AddItem;

//===== US Army Airborne Equipment Definitions =====

//=== Clothes ===

//Airborne Uniform
#define USAB_UniK_CPT           "fow_u_us_m42_ab_01_private"
#define USAB_UniK_LT            "fow_u_us_m42_ab_01_private"
#define USAB_UniK_SSGT          "fow_u_us_m42_ab_01_staffsergeant"
#define USAB_UniK_SGT           "fow_u_us_m42_ab_01_sergeant"
#define USAB_UniK_CPL           "fow_u_us_m42_ab_01_corporal"
#define USAB_UniK_PFC           "fow_u_us_m42_ab_01_private"
#define USAB_UniK_PVT           "fow_u_us_m42_ab_01_private"
#define USAB_UniK_Med           "fow_u_us_m42_ab_01_private"
#define USAB_UniK_VCrew1        "fow_u_us_m42_ab_01_private"
#define USAB_UniK_VCrew2        "fow_u_us_m42_ab_01_private"

#define USAB_UniG_CPT           "fow_u_us_m42_ab_01_private"
#define USAB_UniG_LT            "fow_u_us_m42_ab_01_private"
#define USAB_UniG_SSGT          "fow_u_us_m42_ab_01_staffsergeant"
#define USAB_UniG_SGT           "fow_u_us_m42_ab_01_sergeant"
#define USAB_UniG_CPL           "fow_u_us_m42_ab_01_corporal"
#define USAB_UniG_PFC           "fow_u_us_m42_ab_01_private"
#define USAB_UniG_PVT           "fow_u_us_m42_ab_01_private"
#define USAB_UniG_Med           "fow_u_us_m42_ab_01_private"
#define USAB_UniG_VCrew1        "fow_u_us_m42_ab_01_private"
#define USAB_UniG_VCrew2        "fow_u_us_m42_ab_01_private"

//82nd Airborne Uniform
#define USAB_Uni82_CPT          "fow_u_us_m42_ab_01_82_private"
#define USAB_Uni82_LT           "fow_u_us_m42_ab_01_82_private"
#define USAB_Uni82_SSGT         "fow_u_us_m42_ab_01_82_staffsergeant"
#define USAB_Uni82_SGT          "fow_u_us_m42_ab_01_82_sergeant"
#define USAB_Uni82_CPL          "fow_u_us_m42_ab_01_82_corporal"
#define USAB_Uni82_PFC          "fow_u_us_m42_ab_01_82_private"
#define USAB_Uni82_PVT          "fow_u_us_m42_ab_01_82_private"
#define USAB_Uni82_Med          "fow_u_us_m42_ab_01_82_private"
#define USAB_Uni82_VCrew1       "fow_u_us_m42_ab_01_82_private"
#define USAB_Uni82_VCrew2       "fow_u_us_m42_ab_01_82_private"

//82nd Airborne Uniform w/ Flag
#define USAB_Uni82F_CPT         "fow_u_us_m42_ab_01_82_flag_private"
#define USAB_Uni82F_LT          "fow_u_us_m42_ab_01_82_flag_private"
#define USAB_Uni82F_SSGT        "fow_u_us_m42_ab_01_82_flag_staffsergeant"
#define USAB_Uni82F_SGT         "fow_u_us_m42_ab_01_82_flag_sergeant"
#define USAB_Uni82F_CPL         "fow_u_us_m42_ab_01_82_flag_corporal"
#define USAB_Uni82F_PFC         "fow_u_us_m42_ab_01_82_flag_private"
#define USAB_Uni82F_PVT         "fow_u_us_m42_ab_01_82_flag_private"
#define USAB_Uni82F_Med         "fow_u_us_m42_ab_01_82_flag_private"
#define USAB_Uni82F_VCrew1      "fow_u_us_m42_ab_01_82_flag_private"
#define USAB_Uni82F_VCrew2      "fow_u_us_m42_ab_01_82_flag_private"

//101st Airborne Uniform
#define USAB_Uni101_CPT         "fow_u_us_m42_ab_01_101_private"
#define USAB_Uni101_LT          "fow_u_us_m42_ab_01_101_private"
#define USAB_Uni101_SSGT        "fow_u_us_m42_ab_01_101_staffsergeant"
#define USAB_Uni101_SGT         "fow_u_us_m42_ab_01_101_sergeant"
#define USAB_Uni101_CPL         "fow_u_us_m42_ab_01_101_corporal"
#define USAB_Uni101_PFC         "fow_u_us_m42_ab_01_101_private"
#define USAB_Uni101_PVT         "fow_u_us_m42_ab_01_101_private"
#define USAB_Uni101_Med         "fow_u_us_m42_ab_01_101_private"
#define USAB_Uni101_VCrew1      "fow_u_us_m42_ab_01_101_private"
#define USAB_Uni101_VCrew2      "fow_u_us_m42_ab_01_101_private"

//101st Airborne Uniform w/ Flag
#define USAB_Uni101F_CPT        "fow_u_us_m42_ab_01_101_flag_private"
#define USAB_Uni101F_LT         "fow_u_us_m42_ab_01_101_flag_private"
#define USAB_Uni101F_SSGT       "fow_u_us_m42_ab_01_101_flag_staffsergeant"
#define USAB_Uni101F_SGT        "fow_u_us_m42_ab_01_101_flag_sergeant"
#define USAB_Uni101F_CPL        "fow_u_us_m42_ab_01_101_flag_corporal"
#define USAB_Uni101F_PFC        "fow_u_us_m42_ab_01_101_flag_private"
#define USAB_Uni101F_PVT        "fow_u_us_m42_ab_01_101_flag_private"
#define USAB_Uni101F_Med        "fow_u_us_m42_ab_01_101_flag_private"
#define USAB_Uni101F_VCrew1     "fow_u_us_m42_ab_01_101_flag_private"
#define USAB_Uni101F_VCrew2     "fow_u_us_m42_ab_01_101_flag_private"

//Winter Uniform
#define USAB_UniW_CPT           "fow_u_us_m42_ab_01_private"
#define USAB_UniW_LT            "fow_u_us_m42_ab_01_private"
#define USAB_UniW_SSGT          "fow_u_us_m42_ab_01_staffsergeant"
#define USAB_UniW_SGT           "fow_u_us_m42_ab_01_sergeant"
#define USAB_UniW_CPL           "fow_u_us_m42_ab_01_corporal"
#define USAB_UniW_PFC           "fow_u_us_m42_ab_01_private"
#define USAB_UniW_PVT           "fow_u_us_m42_ab_01_private"
#define USAB_UniW_Med           "fow_u_us_m42_ab_01_private"
#define USAB_UniW_VCrew1        "fow_u_us_m42_ab_01_private"
#define USAB_UniW_VCrew2        "fow_u_us_m42_ab_01_private"

//Airborne Vests
#define USAB_Vest_Pistol        "fow_v_us_45"
#define USAB_Vest_NCO_M1C       "V_LIB_US_AB_Vest_Carbine_nco"
#define USAB_Vest_NCO_M1T       "V_LIB_US_AB_Vest_Thompson_nco"
#define USAB_Vest_M1G           "V_LIB_US_AB_Vest_Garand"
#define USAB_Vest_M1G_Frag      "fow_v_us_Grenade"
#define USAB_Vest_M1G_Gren      "V_LIB_US_AB_Vest_Grenadier"
#define USAB_Vest_M1C           "V_LIB_US_AB_Vest_Carbine"
#define USAB_Vest_M1C_Eng       "fow_v_us_carbine_eng"
#define USAB_Vest_M1T           "V_LIB_US_AB_Vest_Thompson"
#define USAB_Vest_BAR           "V_LIB_US_AB_Vest_Bar"
#define USAB_Vest_MGA           "V_LIB_US_AB_Vest_Grenadier"
#define USAB_Vest_Mort          "V_LIB_US_Vest_Medic"
#define USAB_Vest_Med           "fow_v_us_medic"

//Airborne Backpack
#define USAB_BP_r               ["B_LIB_US_M36"],["B_LIB_US_M36"],["B_LIB_US_M36_Rope"],["B_LIB_US_M36_Rope"]
#define USAB_BP_M1928           "B_LIB_US_Backpack"
#define USAB_BP_M36             "B_LIB_US_M36"
#define USAB_BP_M36R            "B_LIB_US_M36_Rope"
#define USAB_BP_AT              "B_LIB_US_RocketBag_Big_Empty"
#define USAB_BP_Med             "B_LIB_US_MedicBackpack_Big_Empty"
#define USAB_BP_MG              "B_LIB_US_MGbag_Big_Empty"
#define USAB_BP_Radio           "fow_b_US_Radio"
#define USAB_Bando              "B_LIB_US_Bandoleer"

//Airborne Headgear
#define USAB_Helm_CPT_r         ["H_LIB_US_AB_Helmet_CO_1"],["H_LIB_US_AB_Helmet_CO_2"]
#define USAB_Helm_LT_r          ["H_LIB_US_AB_Helmet_CO_1"],["H_LIB_US_AB_Helmet_CO_2"]
#define USAB_Helm_2LT_r         ["H_LIB_US_AB_Helmet_CO_1"],["H_LIB_US_AB_Helmet_CO_2"]
#define USAB_Helm_Med_r         ["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["H_LIB_US_AB_Helmet_Medic_1"],["fow_h_us_m2"],["fow_h_us_m2_camo_open"],["fow_h_us_m2_camo"],["fow_h_us_m2_fak_camo"],["fow_h_us_m2_fak_net"],["fow_h_us_m2_net"]
#define USAB_Helm_NCO_r         ["H_LIB_US_AB_Helmet_NCO_1"],["H_LIB_US_AB_Helmet_NCO_2"]
#define USAB_Helm_r             ["fow_h_us_m2"],["fow_h_us_m2_camo_open"],["fow_h_us_m2_camo"],["fow_h_us_m2_fak_camo"],["fow_h_us_m2_fak_net"],["fow_h_us_m2_net"]

#define USAB_Helm_VCrew         "H_LIB_US_Helmet_Tank"
#define USAB_Helm_Air           "fow_h_us_flight_helmet"

    //Winter Headgear
#define USAB_HelmW_CPT          "H_LIB_US_Helmet_Cap_w"
#define USAB_HelmW_LT           "H_LIB_US_Helmet_First_lieutenant_w"
#define USAB_HelmW_2LT          "H_LIB_US_Helmet_Second_lieutenant_w"
#define USAB_HelmW_Med_r        ["H_LIB_US_Helmet_Med_w"],["H_LIB_US_Helmet_Med_w"],["H_LIB_US_Helmet_Med_w"]
                                //strap, open strap, no strap
#define USAB_HelmW_r            ["H_LIB_US_Helmet_w"],["H_LIB_US_Helmet_Net_w"],["H_LIB_US_Helmet_Cover_w"]
                                //strap, open strap, no strap, camo strap, camo open strap, camo no strap

#define USAB_HelmW_VCrew        "H_LIB_US_Helmet_Tank"

//===== USMC Equipment Definitions =====

//=== Clothes ===

//Uniform
#define USMC_Uni_CPT            "fow_u_usmc_p41_01_private"
#define USMC_Uni_LT             "fow_u_usmc_p41_01_private"
#define USMC_Uni_SGT            "fow_u_usmc_p41_01_private"
#define USMC_Uni_CPL            "fow_u_usmc_p41_01_private"
#define USMC_Uni_PFC            "fow_u_usmc_p41_01_private"
#define USMC_Uni_PVT            "fow_u_usmc_p41_01_private"
#define USMC_Uni_Med            "fow_u_usmc_p41_01_private"
#define USMC_Uni_Tec5           "fow_u_usmc_p41_01_private"
#define USMC_Uni_VCrew1         "fow_u_usmc_p41_01_private"
#define USMC_Uni_VCrew2         "fow_u_usmc_p41_01_private"

//Green Camo Uniform
#define USMC_UniG_CPT           "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_LT            "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_SGT           "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_CPL           "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_PFC           "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_PVT           "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_Med           "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_Tec5          "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_VCrew1        "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_VCrew2        "fow_u_usmc_p42_01_camo01_1_private"
#define USMC_UniG_r             ["fow_u_usmc_p41_01_private"],["fow_u_usmc_p42_01_camo01_1_private"],["fow_u_usmc_p42_01_camo01_1_private"],["fow_u_usmc_p42_01_camo01_2_private"],["fow_u_usmc_p42_01_camo01_3_private"]

//Brown Camo Uniform
#define USMC_UniB_CPT           "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_LT            "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_SGT           "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_CPL           "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_PFC           "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_PVT           "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_Med           "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_Tec5          "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_VCrew1        "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_VCrew2        "fow_u_usmc_p42_01_camo02_1_private"
#define USMC_UniB_r             ["fow_u_usmc_p41_01_private"],["fow_u_usmc_p42_01_camo02_1_private"],["fow_u_usmc_p42_01_camo02_1_private"],["fow_u_usmc_p42_01_camo02_2_private"],["fow_u_usmc_p42_01_camo02_3_private"]

//Vests
#define USMC_Vest_Pistol        "fow_v_usmc_45"
#define USMC_Vest_NCO_M1C       "fow_v_us_carbine_nco"
#define USMC_Vest_NCO_M1T       "fow_v_usmc_thompson_nco"
#define USMC_Vest_M1G           "fow_v_usmc_garand"
#define USMC_Vest_M1G_Gren      "fow_v_us_Grenade"
#define USMC_Vest_M1G_Frag      "fow_v_us_Grenade"
#define USMC_Vest_M1C           "fow_v_usmc_carbine"
#define USMC_Vest_M1C_Eng       "fow_v_us_carbine_eng"
#define USMC_Vest_M1T           "fow_v_usmc_thompson"
#define USMC_Vest_BAR           "fow_v_usmc_bar"
#define USMC_Vest_MGA           "fow_v_us_asst_mg"
#define USMC_Vest_Mort          "fow_v_us_asst_mg"
#define USMC_Vest_Med           "fow_v_us_medic"

//Backpack
#define USMC_BP_r               ["fow_b_usmc_m1928"],["fow_b_usmc_m1928"],["fow_b_usmc_m1928"],["fow_b_usmc_m1928"],["B_LIB_US_M36"]
#define USMC_BP_M1928           "fow_b_usmc_m1928"
#define USMC_BP_O               "B_LIB_US_M36"

//Headgear
#define USMC_Helm_CPT           "H_LIB_US_Helmet_Cap"
#define USMC_Helm_LT            "H_LIB_US_Helmet_First_lieutenant"
#define USMC_Helm_2LT           "H_LIB_US_Helmet_Second_lieutenant"
#define USMC_Helm_e_r           ["fow_h_us_m1"],["fow_h_us_m1_closed"],["fow_h_us_m1_net"]
#define USMC_Helm_r             ["fow_h_us_m1"],["fow_h_us_m1_closed"],["fow_h_us_m1_net"],["fow_h_usmc_m1"],["fow_h_usmc_m1_camo_01"],["fow_h_usmc_m1_camo_02"]
                                //after 42 Aug
#define USMC_Helm_Med_r         ["H_LIB_US_Helmet_Med"],["H_LIB_US_Helmet_Med_os"],["H_LIB_US_Helmet_Med_ns"]
                                //strap, open strap, no strap

#define USMC_Helm_VCrew         "H_LIB_US_Helmet_Tank"

//=== EQUIPMENT ===

#define USMC_Default_Equipment                           \
    [                                                    \
        [[GEN_ace_ration_Lamb]],[1],                     \
        [[GEN_ace_ration_Beef]],[1],                     \
        [[GEN_ace_ration_TSoup]],[1],                    \
        [[GEN_ace_ration_CSoup]],[1],                    \
        [[GEN_ace_ration_Tikka]],[1],                    \
        [[GEN_ace_ration_Steak]],[1],                    \
        [[GEN_ace_ration_Pasta]],[1],                    \
        [[GEN_ace_ration_Dumpling]],[1]                  \
    ] call FNC_AddItemRandomPercent;                     \
    [GEN_Map] call FNC_AddItem;                          \
    [GEN_Compass] call FNC_AddItem;                      \
    [GEN_Watch] call FNC_AddItem;                        \
    [GEN_ace_hammer,1,"uniform"] call FNC_AddItem;       \
    [GEN_ace_shovel,1,"uniform"] call FNC_AddItem;       \
    [GEN_BandageField,4,"uniform"] call FNC_AddItem;     \
    [GEN_TQ,1,"uniform"] call FNC_AddItem;               \
    [GEN_ace_flashlightNA,1,"uniform"] call FNC_AddItem; \
    [GEN_ace_cabletie,1,"uniform"] call FNC_AddItem;     \
    [GEN_ace_canteen_F,1,"uniform"] call FNC_AddItem;

#define USMC_Leader_Equipment                        \
    [GEN_BinoUS] call FNC_AddItem;                   \
    [GEN_ace_maptools,1,"uniform"] call FNC_AddItem; \
    [GEN_Whistle,1,"uniform"] call FNC_AddItem;

#define USMC_Medic_Equipment                             \
    [GEN_BandageField,10,"backpack"] call FNC_AddItem;   \
    [GEN_BandageElastic,20,"backpack"] call FNC_AddItem; \
    [GEN_BandagePacking,20,"backpack"] call FNC_AddItem; \
    [GEN_Morp,10,"backpack"] call FNC_AddItem;           \
    [GEN_Epi,5,"backpack"] call FNC_AddItem;             \
    [GEN_TQ,2,"backpack"] call FNC_AddItem;              \
    [GEN_SurgKit,1,"backpack"] call FNC_AddItem;         \
    [GEN_Saline500,14,"backpack"] call FNC_AddItem;

//===== US Air Force Equipment Definitions =====

//=== Clothes ===

//Uniform
#define USAF_UniG               "fow_u_us_pilot_02"
#define USAF_UniK               "fow_u_us_pilot_01"

//Headgear
#define USAF_Helm               "H_LIB_US_Helmet_Pilot"

#define USAF_Default_Equipment                           \
    [                                                    \
        [[GEN_ace_ration_Lamb]],[1],                     \
        [[GEN_ace_ration_Beef]],[1],                     \
        [[GEN_ace_ration_TSoup]],[1],                    \
        [[GEN_ace_ration_CSoup]],[1],                    \
        [[GEN_ace_ration_Tikka]],[1],                    \
        [[GEN_ace_ration_Steak]],[1],                    \
        [[GEN_ace_ration_Pasta]],[1],                    \
        [[GEN_ace_ration_Dumpling]],[1]                  \
    ] call FNC_AddItemRandomPercent;                     \
    [GEN_Map] call FNC_AddItem;                          \
    [GEN_Compass] call FNC_AddItem;                      \
    [GEN_Watch] call FNC_AddItem;                        \
    [GEN_ace_hammer,1,"uniform"] call FNC_AddItem;       \
    [GEN_BandageField,4,"uniform"] call FNC_AddItem;     \
    [GEN_TQ,1,"uniform"] call FNC_AddItem;               \
    [GEN_ace_flashlightNA,1,"uniform"] call FNC_AddItem; \
    [GEN_ace_cabletie,1,"uniform"] call FNC_AddItem;     \
    [GEN_ace_canteen_F,1,"uniform"] call FNC_AddItem;

#define USAF_Leader_Equipment                        \
    [GEN_BinoUS] call FNC_AddItem;                   \
    [GEN_ace_maptools,1,"uniform"] call FNC_AddItem; \
    [GEN_Whistle,1,"uniform"] call FNC_AddItem;
