// Info: German DAK 1942 October Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, DAK42Oct_CC] call Olsen_FW_FNC_GearScript;        Kompanieführer
[this, DAK42Oct_C2] call Olsen_FW_FNC_GearScript;        Kompanietruppführer

    //Zugtrupp
[this, DAK42Oct_PC] call Olsen_FW_FNC_GearScript;        Zugführer
[this, DAK42Oct_P2] call Olsen_FW_FNC_GearScript;        Zugtruppführer
[this, DAK42Oct_RTO] call Olsen_FW_FNC_GearScript;       Funker
[this, DAK42Oct_Mess] call Olsen_FW_FNC_GearScript;      Melder
[this, DAK42Oct_MedP] call Olsen_FW_FNC_GearScript;      Krankenträger

    //Gruppe
[this, DAK42Oct_SL] call Olsen_FW_FNC_GearScript;        Gruppenführer
[this, DAK42Oct_S2] call Olsen_FW_FNC_GearScript;        Stellvertretender Gruppenführer
[this, DAK42Oct_S3] call Olsen_FW_FNC_GearScript;        Gefreiter
[this, DAK42Oct_MG] call Olsen_FW_FNC_GearScript;        MG-Richtschütze
[this, DAK42Oct_MGA] call Olsen_FW_FNC_GearScript;       MG-Hilfsschütze
[this, DAK42Oct_MGAB] call Olsen_FW_FNC_GearScript;      MG-Munitionsträger
[this, DAK42Oct_Gren] call Olsen_FW_FNC_GearScript;      Grenadier
[this, DAK42Oct_MedS] call Olsen_FW_FNC_GearScript;      Hilfs-Krankenträger
[this, DAK42Oct_Rif] call Olsen_FW_FNC_GearScript;       Gewehrschütze

    //Weapon Truppen
[this, DAK42Oct_MortSL] call Olsen_FW_FNC_GearScript;    Mortar Truppführer
[this, DAK42Oct_MortG] call Olsen_FW_FNC_GearScript;     Mortar Granatwerferschützen
[this, DAK42Oct_MortA] call Olsen_FW_FNC_GearScript;     Mortar Munitionsträger

[this, DAK42Oct_HMGSL] call Olsen_FW_FNC_GearScript;     HMG Truppführer
[this, DAK42Oct_HMGG] call Olsen_FW_FNC_GearScript;      HMG Richtschütze
[this, DAK42Oct_HMGA] call Olsen_FW_FNC_GearScript;      HMG Munitionsträger

[this, DAK42Oct_ATRSL] call Olsen_FW_FNC_GearScript;     Panzerbüchse Truppführer
[this, DAK42Oct_ATRG] call Olsen_FW_FNC_GearScript;      Panzerbüchse Richtschütze
[this, DAK42Oct_ATRA] call Olsen_FW_FNC_GearScript;      Panzerbüchse Munitionsträger

    //Tank Crew
[this, DAK42Oct_VCom] call Olsen_FW_FNC_GearScript;      Besatzungsführer
[this, DAK42Oct_VCrew] call Olsen_FW_FNC_GearScript;     Besatzung
*/

//======================== Definitions ========================

#define DAK42Oct_Weapon_SMG_Off \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[80], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Oct_Weapon_SMG_Enl \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[80], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Oct_Weapon_Rifle \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[96], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[4] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Oct_Weapon_MG \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[90], \
            [ \
                [Ger_Weap_MG42] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Oct_Weapon_Pistol_Off \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[56], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[30], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Pol_Mag_Radom,1], \
                [Pol_Weap_Radom], \
                [Pol_Mag_Radom,2,"uniform"] \
            ],[2], \
            [ \
                [UK_Mag_HiPower,1], \
                [UK_Weap_HiPower], \
                [UK_Mag_HiPower,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Oct_Weapon_Pistol_Enl \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[58], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[38], \
            [ \
                [Pol_Mag_Radom,1], \
                [Pol_Weap_Radom], \
                [Pol_Mag_Radom,2,"uniform"] \
            ],[2], \
            [ \
                [UK_Mag_HiPower,1], \
                [UK_Weap_HiPower], \
                [UK_Mag_HiPower,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    DAK42Oct_CC = ["DAK42Oct_CC", {
        params ["_unit"];

        [DAK_Uni_CC] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Off;
    }];

    //Kompanietruppführer
    DAK42Oct_C2 = ["DAK42Oct_C2", {
        params ["_unit"];

        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;
    }];

//Platoon HQ

    //Zugführer
    DAK42Oct_PC = ["DAK42Oct_PC", {
        params ["_unit"];

        [DAK_Uni_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Off;
    }];

    //Zugtruppführer
    DAK42Oct_P2 = ["DAK42Oct_P2", {
        params ["_unit"];

        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_SL] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_SMG_Off;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Funker
    DAK42Oct_RTO = ["DAK42Oct_RTO", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [DAK_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;
    }];

    //Melder
    DAK42Oct_Mess = ["DAK42Oct_Mess", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Krankenträger
    DAK42Oct_MedP = ["DAK42Oct_MedP", {
        params ["_unit"];

        [DAK_Uni_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    }];

//Squad

    //Gruppenführer
    DAK42Oct_SL = ["DAK42Oct_SL", {
        params ["_unit"];

        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_SL] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_SMG_Enl;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    DAK42Oct_S2 = ["DAK42Oct_S2", {
        params ["_unit"];

        [DAK_Uni_S2_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_addItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gefreiter
    DAK42Oct_S3 = ["DAK42Oct_S3", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_SMG_Enl;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    DAK42Oct_MG = ["DAK42Oct_MG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        DAK42Oct_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,4,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    DAK42Oct_MGA = ["DAK42Oct_MGA", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Munitionsträger
    DAK42Oct_MGAB = ["DAK42Oct_MGAB", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    DAK42Oct_Gren = ["DAK42Oct_Gren", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,3] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATL,1] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    DAK42Oct_MedS = ["DAK42Oct_MedS", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Gewehrschütze
    DAK42Oct_Rif = ["DAK42Oct_Rif", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    DAK42Oct_MortSL = ["DAK42Oct_MortSL", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Granatwerferschützen
    DAK42Oct_MortG = ["DAK42Oct_MortG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_addItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Munitionsträger
    DAK42Oct_MortA = ["DAK42Oct_MortA", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_addItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Team
    //HMG Truppführer
    DAK42Oct_HMGSL = ["DAK42Oct_HMGSL", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    DAK42Oct_HMGG = ["DAK42Oct_HMGG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        DAK42Oct_Weapon_MG;
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Munitionsträger
    DAK42Oct_HMGA = ["DAK42Oct_HMGA", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    DAK42Oct_ATRSL = ["DAK42Oct_ATRSL", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Panzerbüchse Richtschütze
    DAK42Oct_ATRG = ["DAK42Oct_ATRG", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Munitionsträger
    DAK42Oct_ATRAB = ["DAK42Oct_ATRAB", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Besatzungsführer
    DAK42Oct_VCom = ["DAK42Oct_VCom", {
        params ["_unit"];

        [DAK_Uni_VCom_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Oct_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Off;
    }];

    //Besatzung
    DAK42Oct_VCrew = ["DAK42Oct_VCrew", {
        params ["_unit"];

        [DAK_Uni_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK42Oct_Weapon_Pistol_Enl;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
