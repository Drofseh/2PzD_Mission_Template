// Info: German DAK 1941 February Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, DAK41Feb_CC] call Olsen_FW_FNC_GearScript;        Kompanieführer
[this, DAK41Feb_C2] call Olsen_FW_FNC_GearScript;        Kompanietruppführer

    //Zugtrupp
[this, DAK41Feb_PC] call Olsen_FW_FNC_GearScript;        Zugführer
[this, DAK41Feb_P2] call Olsen_FW_FNC_GearScript;        Zugtruppführer
[this, DAK41Feb_RTO] call Olsen_FW_FNC_GearScript;       Funker
[this, DAK41Feb_Mess] call Olsen_FW_FNC_GearScript;      Melder
[this, DAK41Feb_MedP] call Olsen_FW_FNC_GearScript;      Krankenträger

    //Gruppe
[this, DAK41Feb_SL] call Olsen_FW_FNC_GearScript;        Gruppenführer
[this, DAK41Feb_S2] call Olsen_FW_FNC_GearScript;        Stellvertretender Gruppenführer
[this, DAK41Feb_S3] call Olsen_FW_FNC_GearScript;        Gefreiter
[this, DAK41Feb_MG] call Olsen_FW_FNC_GearScript;        MG-Richtschütze
[this, DAK41Feb_MGA] call Olsen_FW_FNC_GearScript;       MG-Hilfsschütze
[this, DAK41Feb_MGAB] call Olsen_FW_FNC_GearScript;      MG-Munitionsträger
[this, DAK41Feb_Gren] call Olsen_FW_FNC_GearScript;      Grenadier
[this, DAK41Feb_MedS] call Olsen_FW_FNC_GearScript;      Hilfs-Krankenträger
[this, DAK41Feb_Rif] call Olsen_FW_FNC_GearScript;       Gewehrschütze

    //Weapon Truppen
[this, DAK41Feb_MortSL] call Olsen_FW_FNC_GearScript;    Mortar Truppführer
[this, DAK41Feb_MortG] call Olsen_FW_FNC_GearScript;     Mortar Granatwerferschützen
[this, DAK41Feb_MortA] call Olsen_FW_FNC_GearScript;     Mortar Munitionsträger

[this, DAK41Feb_HMGSL] call Olsen_FW_FNC_GearScript;     HMG Truppführer
[this, DAK41Feb_HMGG] call Olsen_FW_FNC_GearScript;      HMG Richtschütze
[this, DAK41Feb_HMGA] call Olsen_FW_FNC_GearScript;      HMG Munitionsträger

[this, DAK41Feb_ATRSL] call Olsen_FW_FNC_GearScript;     Panzerbüchse Truppführer
[this, DAK41Feb_ATRG] call Olsen_FW_FNC_GearScript;      Panzerbüchse Richtschütze
[this, DAK41Feb_ATRA] call Olsen_FW_FNC_GearScript;      Panzerbüchse Munitionsträger

    //Tank Crew
[this, DAK41Feb_VCom] call Olsen_FW_FNC_GearScript;      Besatzungsführer
[this, DAK41Feb_VCrew] call Olsen_FW_FNC_GearScript;     Besatzung
*/

//======================== Definitions ========================

#define DAK41Feb_Weapon_SMG_Off \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK41Feb_Weapon_SMG_Enl \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK41Feb_Weapon_Rifle \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[66], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[34] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK41Feb_Weapon_Pistol_Off \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[50], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[36], \
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

#define DAK41Feb_Weapon_Pistol_Enl \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[52], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[44], \
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
    DAK41Feb_CC = ["DAK41Feb_CC", {
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
        DAK41Feb_Weapon_SMG_Off;

        //Secondary Weapon
        DAK41Feb_Weapon_Pistol_Off;
    }];

    //Kompanietruppführer
    DAK41Feb_C2 = ["DAK41Feb_C2", {
        params ["_unit"];

        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK41Feb_Weapon_SMG_Off;

        //Secondary Weapon
        DAK41Feb_Weapon_Pistol_Enl;
    }];

//Platoon HQ

    //Zugführer
    DAK41Feb_PC = ["DAK41Feb_PC", {
        params ["_unit"];

        [DAK_Uni_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK41Feb_Weapon_SMG_Off;

        //Secondary Weapon
        DAK41Feb_Weapon_Pistol_Off;
    }];

    //Zugtruppführer
    DAK41Feb_P2 = ["DAK41Feb_P2", {
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
        DAK41Feb_Weapon_SMG_Off;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Funker
    DAK41Feb_RTO = ["DAK41Feb_RTO", {
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
        DAK41Feb_Weapon_Rifle;
    }];

    //Melder
    DAK41Feb_Mess = ["DAK41Feb_Mess", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Krankenträger
    DAK41Feb_MedP = ["DAK41Feb_MedP", {
        params ["_unit"];

        [DAK_Uni_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK41Feb_Weapon_Pistol_Enl;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    }];

//Squad

    //Gruppenführer
    DAK41Feb_SL = ["DAK41Feb_SL", {
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
        DAK41Feb_Weapon_SMG_Enl;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    DAK41Feb_S2 = ["DAK41Feb_S2", {
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
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gefreiter
    DAK41Feb_S3 = ["DAK41Feb_S3", {
        params ["_unit"];

        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK41Feb_Weapon_SMG_Enl;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    DAK41Feb_MG = ["DAK41Feb_MG", {
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
        DAK41Feb_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,4,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    DAK41Feb_MGA = ["DAK41Feb_MGA", {
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
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Munitionsträger
    DAK41Feb_MGAB = ["DAK41Feb_MGAB", {
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
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    DAK41Feb_Gren = ["DAK41Feb_Gren", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    DAK41Feb_MedS = ["DAK41Feb_MedS", {
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
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Gewehrschütze
    DAK41Feb_Rif = ["DAK41Feb_Rif", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_sS,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    DAK41Feb_MortSL = ["DAK41Feb_MortSL", {
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
        DAK41Feb_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Granatwerferschützen
    DAK41Feb_MortG = ["DAK41Feb_MortG", {
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
        DAK41Feb_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Munitionsträger
    DAK41Feb_MortA = ["DAK41Feb_MortA", {
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
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Team
    //HMG Truppführer
    DAK41Feb_HMGSL = ["DAK41Feb_HMGSL", {
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
        DAK41Feb_Weapon_Rifle;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    DAK41Feb_HMGG = ["DAK41Feb_HMGG", {
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
        DAK41Feb_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_250_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_sS,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Munitionsträger
    DAK41Feb_HMGA = ["DAK41Feb_HMGA", {
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
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    DAK41Feb_ATRSL = ["DAK41Feb_ATRSL", {
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
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    }];

    //Panzerbüchse Richtschütze
    DAK41Feb_ATRG = ["DAK41Feb_ATRG", {
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
        DAK41Feb_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Munitionsträger
    DAK41Feb_ATRAB = ["DAK41Feb_ATRAB", {
        params ["_unit"];

        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK41Feb_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Besatzungsführer
    DAK41Feb_VCom = ["DAK41Feb_VCom", {
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
        DAK41Feb_Weapon_SMG_Off;

        //Secondary Weapon
        DAK41Feb_Weapon_Pistol_Off;
    }];

    //Besatzung
    DAK41Feb_VCrew = ["DAK41Feb_VCrew", {
        params ["_unit"];

        [DAK_Uni_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK41Feb_Weapon_Pistol_Enl;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
