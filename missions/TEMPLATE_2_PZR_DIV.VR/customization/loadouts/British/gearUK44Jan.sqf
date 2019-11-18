// Info: British Army 1944 Jan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    Platoon
[this,"UK44Jan_Lt"] call FNC_GearScript;        Lieutenant
[this,"UK44Jan_Sgt"] call FNC_GearScript;       Sergeant
[this,"UK44Jan_Med"] call FNC_GearScript;       Medic
[this,"UK44Jan_Sig"] call FNC_GearScript;       Signaller
[this,"UK44Jan_LMortG"] call FNC_GearScript;    Light Mortar Gunner
[this,"UK44Jan_LMortA"] call FNC_GearScript;    Light Mortar Assistant
[this,"UK44Jan_Cpl"] call FNC_GearScript;       Corporal
[this,"UK44Jan_LCpl"] call FNC_GearScript;      Lance Corporal
[this,"UK44Jan_AR"] call FNC_GearScript;        Bren Gunner
[this,"UK44Jan_AAR"] call FNC_GearScript;       Bren Gun Assistant
[this,"UK44Jan_AAB"] call FNC_GearScript;       Bren Gun Ammo Bearer
[this,"UK44Jan_Rif"] call FNC_GearScript;       Rifleman

    Weapons Teams
[this,"UK44Jan_MGTL"] call FNC_GearScript;      Machine Gun Team Leader
[this,"UK44Jan_MG"] call FNC_GearScript;        Machine Gunner
[this,"UK44Jan_MGA"] call FNC_GearScript;       Machine Gun Assistant
[this,"UK44Jan_MGAB"] call FNC_GearScript;      Machine Gun Ammo Bearer

[this,"UK44Jan_MortTL"] call FNC_GearScript;    Mortar Team Leader
[this,"UK44Jan_MortG"] call FNC_GearScript;     Mortar Gunner
[this,"UK44Jan_MortA"] call FNC_GearScript;     Mortar Assistant
[this,"UK44Jan_MortAB"] call FNC_GearScript;    Mortar Ammo Bearer

[this,"UK44Jan_ATRTL"] call FNC_GearScript;     Boys Rifle Team Leader
[this,"UK44Jan_ATRG"] call FNC_GearScript;      Boys Rifle Gunner
[this,"UK44Jan_ATRAB"] call FNC_GearScript;     Boys Rifle Ammo Bearer

[this,"UK44Jan_ATTL"] call FNC_GearScript;      PIAT Team Leader
[this,"UK44Jan_ATG"] call FNC_GearScript;       PIAT Gunner
[this,"UK44Jan_ATAB"] call FNC_GearScript;      PIAT Ammo Bearer

    Vehicle Crew
[this,"UK44Jan_VCom"] call FNC_GearScript;      Tank Commander
[this,"UK44Jan_VCrew"] call FNC_GearScript;     Tank Crew
*/

//======================== Definitions ========================

#define UK44Jan_LeeEn \
        [ \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo1Mk3s], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[50], \
            [ \
                [UK_Mag_LeeEn,1], \
                [UK_Weap_LeeEnNo4_1], \
                [UK_Mag_LeeEn,5,"vest"] \
            ],[50] \
        ] call FNC_AddItemRandomPercent;

#define UK44Jan_SMG \
        [ \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1928], \
                [US_Mag_M1T_30,2,"vest"], \
                [US_Mag_M1T_20,4,"vest"] \
            ],[35], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkII], \
                [UK_Mag_Sten,6,"vest"] \
            ],[35], \
            [ \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1T], \
                [US_Mag_M1T_30,3,"vest"], \
                [US_Mag_M1T_20,3,"vest"] \
            ],[25], \
            [ \
                [UK_Mag_Sten,1], \
                [UK_Weap_StenMkI], \
                [UK_Mag_Sten,6,"vest"] \
            ],[5] \
        ] call FNC_AddItemRandomPercent;

#define UK44Jan_Webley \
        [UK_Mag_EnfieldNo2,1] call FNC_AddItem; \
        [UK_Weap_EnfieldNo2] call FNC_AddItem; \
        [UK_Mag_EnfieldNo2,3,"uniform"] call FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Lieutenant
    case "UK44Jan_Lt" : {
        [UK_Uni_Lt] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Sergeant
    case "UK44Jan_Sgt" : {
        [UK_Uni_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK44Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [US_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Medic
    case "UK44Jan_Med" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        UK_Medic_Equipment;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Signaller
    case "UK44Jan_Sig" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK_Radio] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Light Mortar Gunner
    case "UK44Jan_LMortG" : {
        [UK_Uni_LCpl] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
        [US_Weap_MortB] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

    //Light Mortar Assistant
    case "UK44Jan_LMortA" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
        [US_Weap_MortT] call FNC_AddItem;
        [US_Mag_Mort_HE,8,"backpack"] call FNC_AddItem;
    };

//Squad

    //Corporal
    case "UK44Jan_Cpl" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK44Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

    //Lance Corporal
    case "UK44Jan_LCpl" : {
        [UK_Uni_LCpl] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_SMG;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

    //Bren Gunner
    case "UK44Jan_AR" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        [UK_Mag_Bren_30_Mixed_Ball,1] call FNC_AddItem;
        [UK_Weap_BrenMkII] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"vest"] call FNC_AddItem;

        //Secondary Weapon
        UK44Jan_Webley;
    };

    //Bren Gun Assistant
    case "UK44Jan_AAR" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [GEN_ace_sparebarrel,1,"backpack"] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,4,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

    //Bren Gun Ammo Bearer
    case "UK44Jan_AAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,10,"backpack"] call FNC_AddItem;
    };

    //Rifleman
    case "UK44Jan_Rif" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Mag_Bren_30_Mixed_Ball,2,"backpack"] call FNC_AddItem;
    };

//Machine Gun Team

    //Machine Gun Team Leader
    case "UK44Jan_MGTL" : {
        [UK_Uni_LCpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Machine Gunner
    case "UK44Jan_MG" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_G] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UK44Jan_Webley;
    };

    //Machine Gun Assistant
    case "UK44Jan_MGA" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestG_Bren] call FNC_AddItem;
        [UK_Weap_HMG_T] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
    };

    //Machine Gun Ammo Bearer
    case "UK44Jan_MGAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
    };

//Mortar Team

    //Mortar Team Leader
    case "UK44Jan_MortTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

    //Mortar Gunner
    case "UK44Jan_MortG" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortB] call FNC_AddItem;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Assistant
    case "UK44Jan_MortA" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        [Rus_Weap_MortT] call FNC_AddItem;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
        [Rus_Mag_Mort_HE,3,"backpack"] call FNC_AddItem;
        GEN_Mortar_Equipment;
    };

    //Mortar Ammo Bearer
    case "UK44Jan_MortAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPG_L] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [Rus_Mag_Mort_HE,5,"backpack"] call FNC_AddItem;
    };

//Boys Rifle Team

    //Boys Rifle Team Leader
    case "UK44Jan_ATRTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Boys Rifle Gunner
    case "UK44Jan_ATRG" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UK44Jan_Webley;

        //Primary Weapon
        [UK_Mag_Boys,1] call FNC_AddItem;
        [UK_Weap_Boys] call FNC_AddItem;
        [UK_Mag_Boys,5] call FNC_AddItem;
    };

    //Boys Rifle Ammo Bearer
    case "UK44Jan_ATRAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Bren] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Mag_Boys,5,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//PIAT Team

    //PIAT Team Leader
    case "UK44Jan_ATTL" : {
        [UK_Uni_Cpl] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BP_P] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //PIAT Gunner
    case "UK44Jan_ATG" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_O] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Secondary Weapon
        UK44Jan_Webley;

        //Primary Weapon
        [UK_Weap_Piat] call FNC_AddItem;
        [UK_Mag_Piat_HEAT,3] call FNC_AddItem;
    };

    //PIAT Ammo Bearer
    case "UK44Jan_ATAB" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_LeeEn] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_LeeEn;

        //Extra
        [UK_Mag_Piat_HEAT,3,"backpack"] call FNC_AddItem;
        [UK_Gren_Frag,1] call FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "UK44Jan_VCom" : {
        [UK_Uni_Sgt] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;
        UK_Leader_Equipment;

        //Primary Weapon
        UK44Jan_SMG;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
        [UK_Gren_Frag,1] call FNC_AddItem;
        [UK_Gren_Smoke_W,1] call FNC_AddItem;
        [UK_Gren_WP,1] call FNC_AddItem;
    };

    //Tank Crew
    case "UK44Jan_VCrew" : {
        [UK_Uni_Pte] call FNC_AddItem;
        [UK_VestK_Sten] call FNC_AddItem;
        [UK_BPK] call FNC_AddItem;
        [UK_Helm_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        UK_Default_Equipment;

        //Primary Weapon
        UK44Jan_SMG;

        //Secondary Weapon
        UK44Jan_Webley;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };
