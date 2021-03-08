// Info: Red Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Company HQ
[this, R39_CC] call Olsen_FW_FNC_GearScript;         Company Commander
[this, R39_CSgt] call Olsen_FW_FNC_GearScript;       Company Sergeant
[this, R39_RTO] call Olsen_FW_FNC_GearScript;        Radio Operator

    //Platoon HQ
[this, R39_PC] call Olsen_FW_FNC_GearScript;         Platoon Commander
[this, R39_PSgt] call Olsen_FW_FNC_GearScript;       Platoon Sergeant
[this, R39_Mess] call Olsen_FW_FNC_GearScript;       Messenger
[this, R39_Med] call Olsen_FW_FNC_GearScript;        Medic

    //Squad
[this, R39_SL] call Olsen_FW_FNC_GearScript;         Squad Leader
[this, R39_TL] call Olsen_FW_FNC_GearScript;         Team Leader
[this, R39_SMG] call Olsen_FW_FNC_GearScript;        Submachine Gunner
[this, R39_Gren] call Olsen_FW_FNC_GearScript;       Grenadier
[this, R39_Rif] call Olsen_FW_FNC_GearScript;        Rifleman
[this, R39_MG] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this, R39_MGA] call Olsen_FW_FNC_GearScript;        MG Assistant

    //Heavy Weapons Teams
[this, R39_MortTL] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this, R39_MortG] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this, R39_MortA] call Olsen_FW_FNC_GearScript;      Mortar Ammo Bearer

[this, R39_HMGTL] call Olsen_FW_FNC_GearScript;      HMG Team Leader
[this, R39_HMGG] call Olsen_FW_FNC_GearScript;       HMG Gunner
[this, R39_HMGA] call Olsen_FW_FNC_GearScript;       HMG Ammo Bearer

[this, R39_ATRTL] call Olsen_FW_FNC_GearScript;      AT Rifle Team Leader
[this, R39_ATRG] call Olsen_FW_FNC_GearScript;       AT Rifle Gunner
[this, R39_ATRA] call Olsen_FW_FNC_GearScript;       AT Rifle Ammo Bearer

    //Vehicle Crew
[this, R39_VCom] call Olsen_FW_FNC_GearScript;       Tank Commander
[this, R39_VCrew] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

//For riflemen
#define R39_Weapon_Rifleman \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[99], \
            [/*Mosin M38*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For light riflemen
#define R39_Weapon_Rifleman_Light \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[95], \
            [/*Mosin M38*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For submachine gunners
#define R39_Weapon_SMG \
        [ \
            [/*PPD-40*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,2,"vest"] \
            ],[50], \
            [/*PPD-40*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,2,"vest"] \
            ],[50] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For all loadouts with pistols
#define R39_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[50], \
            [/*M1895*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[50] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    R39_CC = ["R39_CC", {
        params ["_unit"];

        [Rus_Uni_CC] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //Company Sergeant
    R39_CSgt = ["R39_CSgt", {
        params ["_unit"];

        [Rus_Uni_CSgt] call Olsen_FW_FNC_AddItem;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Radio Operator
    R39_RTO = ["R39_RTO", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;
    }];

//Platoon HQ

    //Platoon Commander
    R39_PC = ["R39_PC", {
        params ["_unit"];

        [Rus_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //Platoon Sergeant
    R39_PSgt = ["R39_PSgt", {
        params ["_unit"];

        [Rus_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    R39_Med = ["R39_Med", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        Rus_Medic_Equipment;
    }];

    //Messenger
    R39_Mess = ["R39_Mess", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Squad Leader
    R39_SL = ["R39_SL", {
        params ["_unit"];

        [Rus_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
    }];

    //Team Leader
    R39_TL = ["R39_TL", {
        params ["_unit"];

        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
    }];

    //Submachine Gunner
    R39_SMG = ["R39_SMG", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_SMG;

        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    R39_Gren = ["R39_Gren", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [Rus_Mag_Mosin,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_MosM9130] call Olsen_FW_FNC_AddItem;
        [Rus_Acc_Mos_GL] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mosin,12,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_RGrn_HE,8] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    R39_Rif = ["R39_Rif", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    R39_MG = ["R39_MG", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_MG_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Primary Weapon
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,3,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,6,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //MG Assistant
    R39_MGA = ["R39_MGA", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_DP_Mixed_Ball_Red,6,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Heavy Weapons Teams

    //Mortar Team Leader
    R39_MortTL = ["R39_MortTL", {
        params ["_unit"];

        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Gunner
    R39_MortG = ["R39_MortG", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Ammo Bearer
    R39_MortA = ["R39_MortA", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
        [Rus_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Team Leader
    R39_HMGTL = ["R39_HMGTL", {
        params ["_unit"];

        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Launcher

        //Extra
    }];

    //HMG Gunner
    R39_HMGG = ["R39_HMGG", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_B] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Launcher

        //Extra
    }];

    //HMG Ammo Bearer
    R39_HMGA = ["R39_HMGA", {
        params ["_unit"];

        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman_Light;

        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
    }];

//Vehicle Crew

    //Tank Commander
    R39_VCom = ["R39_VCom", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        [Rus_Mag_PPD40,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_PPD40] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_PPD40,1,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //Tank Crew
    R39_VCrew = ["R39_VCrew", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Hat_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Extra
        [Rus_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
