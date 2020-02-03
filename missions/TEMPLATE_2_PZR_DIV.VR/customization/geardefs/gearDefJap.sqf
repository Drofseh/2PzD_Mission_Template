//========================Japanese Equipment Definitions========================

//=== Weapons ===

//Primary
#define IJA_Weap_Type99_R               "fow_w_type99"
#define IJA_Weap_Type99_S               "fow_w_type99_sniper"
#define IJA_Weap_Type100                "fow_w_type100"
#define IJA_Weap_Type10044              "fow_w_type100_44_2PzD"
#define IJA_Weap_Type96                 "fow_w_type99_lmg"
#define IJA_Weap_Type99_M               "fow_w_type99_lmg"

//Secondary
#define IJA_Weap_Type14                 "fow_w_type14"
#define IJA_Weap_Type10                 "fow_w_type10"

//Launcher

//Attachments
#define IJA_Weap_Type99_B               "fow_w_acc_type30_bayo"

//Ammo
#define IJA_Mag_Type99_R                "fow_5Rnd_77x58"
#define IJA_Mag_Type99_R_Tracer         "fow_5Rnd_77x58_Tracer_2PzD"
#define IJA_Mag_Type99_R_Mixed_Ball      "fow_5Rnd_77x58_Mixed_2PzD"

#define IJA_Mag_Type100                 "fow_32Rnd_8x22"

#define IJA_Mag_Type99_M_Mixed_Ball      "fow_30Rnd_77x58"
#define IJA_Mag_Type99_M_Tracer         "fow_30Rnd_77x58_Tracer_2PzD"
#define IJA_Mag_Type99_M_Ball           "fow_30Rnd_77x58_noTrace_2PzD"

#define IJA_Mag_Type96                  "fow_30Rnd_77x58"
#define IJA_Mag_Type96                  "fow_30Rnd_77x58"
#define IJA_Mag_Type96                  "fow_30Rnd_77x58"

#define IJA_Mag_Type14                  "fow_8Rnd_8x22"

#define IJA_Mag_Type10_W                "fow_1Rnd_type10"
#define IJA_Mag_RGrn                    "fow_1Rnd_type2_40"

//Grenades
#define IJA_Gren_Frag                   "fow_e_type97"

//=== Clothes ===

//Uniform
#define IJA_Uni                         "fow_u_ija_type98"
#define IJA_Uni_Short                   "fow_u_ija_type98_short"
    //Officers
#define IJA_Uni_Khaki                   "fow_u_ija_type98_khakibrown"
    //Snipers
#define IJA_Uni_F                       "fow_u_ija_type98_foliage"
    //SNLF (Marines)
#define IJA_Uni_M                       "fow_u_ija_type98_snlf"
    //Pilot
#define IJA_Uni_P                       "fow_u_ija_pilot"

//Vests
    //bayonet only
#define IJA_Vest_Bayo                   "fow_v_ija_bayonet"
    //one rifle pouch, one grena        de pouch, bayonet
#define IJA_Vest_Gren                   "fow_v_ija_grenadier"
    //one rifle pouch, medic sat        chel
#define IJA_Vest_Med                    "fow_v_ija_medic"
    //pistol holster, MG pouch,         bayonet
#define IJA_Vest_MG                     "fow_v_ija_mg"
    //two grenade pouches, bayon        et
#define IJA_Vest_Mort                   "fow_v_ija_mortar"
    //pistol holster, rifle pouc        h, sword
#define IJA_Vest_NCO                    "fow_v_ija_nco"
    //pistol holster, sword, map         case
#define IJA_Vest_O                      "fow_v_ija_officer"
    //two rifle pouches, bayonet
#define IJA_Vest_Rif                    "fow_v_ija_rifle"

//Backpack
#define IJA_BP                          "fow_b_ija_backpack"
#define IJA_BP_F                        "fow_b_ija_backpack_foliage"
#define IJA_BP_Ammo_M                   "fow_b_ija_ammobox_metal"
#define IJA_BP_Ammo_W                   "fow_b_ija_ammobox_wood"

//Headgear
#define IJA_Hat_O                       "fow_h_ija_fieldcap_officer"
#define IJA_Hat_O_N                     "fow_h_ija_fieldcap_neck"
#define IJA_Hat                         "fow_h_ija_fieldcap"
#define IJA_Hat_Haki                    "fow_h_ija_hakimachi"
#define IJA_Helm                        "fow_h_ija_type90"
#define IJA_Helm_Net                    "fow_h_ija_type90_net"
#define IJA_Helm_N_Net                  "fow_h_ija_type90_net_neck"
#define IJA_Helm_F                      "fow_h_ija_type90_foliage"

#define IJA_Hat_M_O                     "fow_h_ija_fieldcap_marine"
#define IJA_Hat_M_N_O                   "fow_h_ija_fieldcap_marine_neck"
#define IJA_Helm_M                      "fow_h_ija_type90_snlf"

#define IJA_Helmet_VCrew                "fow_h_ija_tank_helmet"
#define IJA_Helmet_Air                  "fow_h_ija_flight_helmet"

//=== EQUIPMENT ===

#define IJA_Default_Equipment \
    [ \
        [[GEN_ace_ration_Lamb]],[1], \
        [[GEN_ace_ration_Beef]],[1], \
        [[GEN_ace_ration_CSoup]],[1], \
        [[GEN_ace_ration_Dumpling]],[1] \
    ] call Olsen_FW_FNC_AddItemRandomPercent; \
    [GEN_Map] call Olsen_FW_FNC_AddItem; \
    [GEN_Compass] call Olsen_FW_FNC_AddItem; \
    [GEN_Watch] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_hammer,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_shovel,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandageField,4,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_TQ,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_flashlightEU,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_cabletie,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_canteen_F,1,"uniform"] call Olsen_FW_FNC_AddItem;

#define IJA_Leader_Equipment \
    [GEN_BinoG] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_maptools,1,"uniform"] call Olsen_FW_FNC_AddItem;

#define IJA_Medic_Equipment \
    [GEN_BandageField,10,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandageElastic,20,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandagePacking,20,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Morp,5,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Pain,10,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Epi,5,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_TQ,2,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_SurgKit,1,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Saline500,14,"backpack"] call Olsen_FW_FNC_AddItem;
