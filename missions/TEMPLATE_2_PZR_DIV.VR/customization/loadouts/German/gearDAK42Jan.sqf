// Info: German DAK 1942 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"DAK42Jan_CC"] call Olsen_FW_FNC_GearScript;       Kompanieführer
[this,"DAK42Jan_C2"] call Olsen_FW_FNC_GearScript;       Kompanietruppführer

    //Zugtrupp
[this,"DAK42Jan_PC"] call Olsen_FW_FNC_GearScript;       Zugführer
[this,"DAK42Jan_P2"] call Olsen_FW_FNC_GearScript;       Zugtruppführer
[this,"DAK42Jan_RTO"] call Olsen_FW_FNC_GearScript;      Funker
[this,"DAK42Jan_Mess"] call Olsen_FW_FNC_GearScript;     Melder
[this,"DAK42Jan_MedP"] call Olsen_FW_FNC_GearScript;     Krankenträger

    //Gruppe
[this,"DAK42Jan_SL"] call Olsen_FW_FNC_GearScript;       Gruppenführer
[this,"DAK42Jan_S2"] call Olsen_FW_FNC_GearScript;       Stellvertretender Gruppenführer
[this,"DAK42Jan_S3"] call Olsen_FW_FNC_GearScript;       Gefreiter
[this,"DAK42Jan_MG"] call Olsen_FW_FNC_GearScript;       MG-Richtschütze
[this,"DAK42Jan_MGA"] call Olsen_FW_FNC_GearScript;      MG-Hilfsschütze
[this,"DAK42Jan_MGAB"] call Olsen_FW_FNC_GearScript;     MG-Munitionsträger
[this,"DAK42Jan_Gren"] call Olsen_FW_FNC_GearScript;     Grenadier
[this,"DAK42Jan_MedS"] call Olsen_FW_FNC_GearScript;     Hilfs-Krankenträger
[this,"DAK42Jan_Rif"] call Olsen_FW_FNC_GearScript;      Gewehrschütze

    //Weapon Truppen
[this,"DAK42Jan_MortSL"] call Olsen_FW_FNC_GearScript;   Mortar Truppführer
[this,"DAK42Jan_MortG"] call Olsen_FW_FNC_GearScript;    Mortar Granatwerferschützen
[this,"DAK42Jan_MortA"] call Olsen_FW_FNC_GearScript;    Mortar Munitionsträger

[this,"DAK42Jan_HMGSL"] call Olsen_FW_FNC_GearScript;    HMG Truppführer
[this,"DAK42Jan_HMGG"] call Olsen_FW_FNC_GearScript;     HMG Richtschütze
[this,"DAK42Jan_HMGA"] call Olsen_FW_FNC_GearScript;     HMG Munitionsträger

[this,"DAK42Jan_ATRSL"] call Olsen_FW_FNC_GearScript;    Panzerbüchse Truppführer
[this,"DAK42Jan_ATRG"] call Olsen_FW_FNC_GearScript;     Panzerbüchse Richtschütze
[this,"DAK42Jan_ATRA"] call Olsen_FW_FNC_GearScript;     Panzerbüchse Munitionsträger

    //Tank Crew
[this,"DAK42Jan_VCom"] call Olsen_FW_FNC_GearScript;     Besatzungsführer
[this,"DAK42Jan_VCrew"] call Olsen_FW_FNC_GearScript;    Besatzung
*/

//======================== Definitions ========================

#define DAK42Jan_Weapon_SMG_Off \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Jan_Weapon_SMG_Enl \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Jan_Weapon_Rifle \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[85], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define DAK42Jan_Weapon_Pistol_Off \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[53], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[33], \
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

#define DAK42Jan_Weapon_Pistol_Enl \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[55], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[41], \
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
    case "DAK42Jan_CC" : {
        [DAK_Uni_CC] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Off;
    };

    //Kompanietruppführer
    case "DAK42Jan_C2" : {
        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Enl;
    };

//Platoon HQ

    //Zugführer
    case "DAK42Jan_PC" : {
        [DAK_Uni_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Off;
    };

    //Zugtruppführer
    case "DAK42Jan_P2" : {
        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_SL] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_SMG_Off;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Funker
    case "DAK42Jan_RTO" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [DAK_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;
    };

    //Melder
    case "DAK42Jan_Mess" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    };

    //Krankenträger
    case "DAK42Jan_MedP" : {
        [DAK_Uni_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Enl;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "DAK42Jan_SL" : {
        [DAK_Uni_SL_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_SL] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_SMG_Enl;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "DAK42Jan_S2" : {
        [DAK_Uni_S2_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_addItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Gefreiter
    case "DAK42Jan_S3" : {
        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_SMG_Enl;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Richtschütze
    case "DAK42Jan_MG" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,4,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "DAK42Jan_MGA" : {
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
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    };

    //MG-Munitionsträger
    case "DAK42Jan_MGAB" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
    };

    //Grenadier
    case "DAK42Jan_Gren" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call Olsen_FW_FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "DAK42Jan_MedS" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;;
    };

    //Gewehrschütze
    case "DAK42Jan_Rif" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [DAK_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;;
        [Ger_Mag_MG_50_Mixed_SmE,1,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "DAK42Jan_MortSL" : {
        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "DAK42Jan_MortG" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_addItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Enl;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "DAK42Jan_MortA" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_addItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "DAK42Jan_HMGSL" : {
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
        DAK42Jan_Weapon_Rifle;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Richtschütze
    case "DAK42Jan_HMGG" : {
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
        DAK42Jan_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Munitionsträger
    case "DAK42Jan_HMGA" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "DAK42Jan_ATRSL" : {
        [DAK_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;;
    };

    //Panzerbüchse Richtschütze
    case "DAK42Jan_ATRG" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Enl;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "DAK42Jan_ATRAB" : {
        [DAK_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [DAK_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_Rifle;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "DAK42Jan_VCom" : {
        [DAK_Uni_VCom_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        DAK42Jan_Weapon_SMG_Off;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Off;
    };

    //Besatzung
    case "DAK42Jan_VCrew" : {
        [DAK_Uni_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [DAK_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [DAK_Hat_Pith] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        DAK42Jan_Weapon_Pistol_Enl;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
