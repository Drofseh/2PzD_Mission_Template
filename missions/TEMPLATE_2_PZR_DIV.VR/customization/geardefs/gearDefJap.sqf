//========================Japanese Equipment Definitions========================

//=== Weapons ===

//Primary
#define IJA_Weap_Type99_R       "fow_w_type99"
#define IJA_Weap_Type99_S       "fow_w_type99_sniper"
#define IJA_Weap_Type100        "fow_w_type100"
#define IJA_Weap_Type10044      "fow_w_type100_44_2PzD"
#define IJA_Weap_Type96         "fow_w_type99_lmg"
#define IJA_Weap_Type99_M       "fow_w_type99_lmg"

//Secondary
#define IJA_Weap_Type14         "fow_w_type14"
#define IJA_Weap_Type10         "fow_w_type10"

//Launcher

//Attachments
#define IJA_Weap_Type99_B       "fow_w_acc_type30_bayo"

//Ammo
#define IJA_Mag_Type99_R        "fow_5Rnd_77x58"
#define IJA_Mag_Type100         "fow_32Rnd_8x22"
#define IJA_Mag_Type99_M        "fow_30Rnd_77x58"
#define IJA_Mag_Type96          "fow_30Rnd_77x58"
#define IJA_Mag_Type14          "fow_8Rnd_8x22"
#define IJA_Mag_Type10_W        "fow_1Rnd_type10"
#define IJA_Mag_RGrn            "fow_1Rnd_type2_40"

//Grenades
#define IJA_Gren_Frag           "fow_e_type97"

//=== Clothes ===

//Uniform
#define IJA_Uni                 "fow_u_ija_type98"
#define IJA_Uni_Short           "fow_u_ija_type98_short"
    //Officers
#define IJA_Uni_Khaki           "fow_u_ija_type98_khakibrown"
    //Snipers
#define IJA_Uni_F               "fow_u_ija_type98_foliage"
    //SNLF (Marines)
#define IJA_Uni_M               "fow_u_ija_type98_snlf"
    //Pilot
#define IJA_Uni_P               "fow_u_ija_pilot"

//Vests
    //bayonet only
#define IJA_Vest_Bayo           "fow_v_ija_bayonet"
    //one rifle pouch, one grenade pouch, bayonet
#define IJA_Vest_Gren           "fow_v_ija_grenadier"
    //one rifle pouch, medic satchel
#define IJA_Vest_Med            "fow_v_ija_medic"
    //pistol holster, MG pouch, bayonet
#define IJA_Vest_MG             "fow_v_ija_mg"
    //two grenade pouches, bayonet
#define IJA_Vest_Mort           "fow_v_ija_mortar"
    //pistol holster, rifle pouch, sword
#define IJA_Vest_NCO            "fow_v_ija_nco"
    //pistol holster, sword, map case
#define IJA_Vest_O              "fow_v_ija_officer"
    //two rifle pouches, bayonet
#define IJA_Vest_Rif            "fow_v_ija_rifle"

//Backpack
#define IJA_BP                  "fow_b_ija_backpack"
#define IJA_BP_F                "fow_b_ija_backpack_foliage"
#define IJA_BP_Ammo_M           "fow_b_ija_ammobox_metal"
#define IJA_BP_Ammo_W           "fow_b_ija_ammobox_wood"

//Headgear
#define IJA_Hat_O               "fow_h_ija_fieldcap_officer"
#define IJA_Hat_O_N             "fow_h_ija_fieldcap_neck"
#define IJA_Hat                 "fow_h_ija_fieldcap"
#define IJA_Hat_Haki            "fow_h_ija_hakimachi"
#define IJA_Helm                "fow_h_ija_type90"
#define IJA_Helm_Net            "fow_h_ija_type90_net"
#define IJA_Helm_N_Net          "fow_h_ija_type90_net_neck"
#define IJA_Helm_F              "fow_h_ija_type90_foliage"

#define IJA_Hat_M_O             "fow_h_ija_fieldcap_marine"
#define IJA_Hat_M_N_O           "fow_h_ija_fieldcap_marine_neck"
#define IJA_Helm_M              "fow_h_ija_type90_snlf"

#define IJA_Helmet_VCrew        "fow_h_ija_tank_helmet"
#define IJA_Helmet_Air          "fow_h_ija_flight_helmet"

//=== EQUIPMENT ===

#define IJA_Default_Equipment \
["ItemMap"] call FNC_AddItem; \
["ItemCompass"] call FNC_AddItem; \
["ItemWatch"]call FNC_AddItem; \
["ACE_Fortify"]call FNC_AddItem; \
["ACE_EntrenchingTool"]call FNC_AddItem; \
["ACE_fieldDressing",4] call FNC_AddItem; \
["ACE_tourniquet",1] call FNC_AddItem; \
["ACE_Flashlight_KSF1"]call FNC_AddItem; \
["ACE_CableTie"]call FNC_AddItem;

#define IJA_Leader_Equipment \
["LIB_Binocular_GER"] call FNC_AddItem; \
["ACE_MapTools"] call FNC_AddItem;

#define IJA_Medic_Equipment \
["ACE_fieldDressing",10,"backpack"] call FNC_AddItem; \
["ACE_elasticBandage",20,"backpack"] call FNC_AddItem; \
["ACE_packingBandage",20,"backpack"] call FNC_AddItem; \
["ACE_morphine",5,"backpack"] call FNC_AddItem; \
["ACE_painkillers",10,"backpack"] call FNC_AddItem; \
["ACE_epinephrine",5,"backpack"] call FNC_AddItem; \
["ACE_tourniquet",2,"backpack"] call FNC_AddItem; \
["ACE_surgicalKit",1,"backpack"] call FNC_AddItem; \
["ACE_salineIV_500",14,"backpack"] call FNC_AddItem;