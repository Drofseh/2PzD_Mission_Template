// Info: German Wehrmacht Eastern Front 1942 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHREF42Jan_CC"] call FNC_GearScript;     Kompanieführer
[this,"WHREF42Jan_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"WHREF42Jan_PC"] call FNC_GearScript;     Zugführer
[this,"WHREF42Jan_P2"] call FNC_GearScript;     Zugtruppführer
[this,"WHREF42Jan_RTO"] call FNC_GearScript;    Funker
[this,"WHREF42Jan_Mess"] call FNC_GearScript;   Melder
[this,"WHREF42Jan_MedP"] call FNC_GearScript;   Krankenträger

    //Gruppe
[this,"WHREF42Jan_SL"] call FNC_GearScript;     Gruppenführer
[this,"WHREF42Jan_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"WHREF42Jan_S3"] call FNC_GearScript;     Gefreiter
[this,"WHREF42Jan_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"WHREF42Jan_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"WHREF42Jan_MGAB"] call FNC_GearScript;   MG-Munitionsträger
[this,"WHREF42Jan_Gren"] call FNC_GearScript;   Grenadier
[this,"WHREF42Jan_MedS"] call FNC_GearScript;   Hilfs-Krankenträger
[this,"WHREF42Jan_Rif"] call FNC_GearScript;    Gewehrschütze

    //Weapon Truppen
[this,"WHREF42Jan_MortSL"] call FNC_GearScript; Mortar Truppführer
[this,"WHREF42Jan_MortG"] call FNC_GearScript;  Mortar Granatwerferschützen
[this,"WHREF42Jan_MortA"] call FNC_GearScript;  Mortar Munitionsträger

[this,"WHREF42Jan_HMGSL"] call FNC_GearScript;  HMG Truppführer
[this,"WHREF42Jan_HMGG"] call FNC_GearScript;   HMG Richtschütze
[this,"WHREF42Jan_HMGA"] call FNC_GearScript;   HMG Munitionsträger

[this,"WHREF42Jan_ATRSL"] call FNC_GearScript;  Panzerbüchse Truppführer
[this,"WHREF42Jan_ATRG"] call FNC_GearScript;   Panzerbüchse Richtschütze
[this,"WHREF42Jan_ATRA"] call FNC_GearScript;   Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHREF42Jan_VCom"] call FNC_GearScript;   Besatzungsführer
[this,"WHREF42Jan_VCrew"] call FNC_GearScript;  Besatzung
*/

//======================== Definitions ========================

#define WHREF42Jan_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[80], \
            [ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[15], \
            [ \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[5] \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Jan_Weapon_Gruppe \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[80], \
            [ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,3,"vest"] \
            ],[15], \
            [ \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,6,"vest"] \
            ],[5] \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Jan_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[80], \
            [ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[13], \
            [ \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[6], \
            [ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[1] \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Jan_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"], \
                [Ger_Mag_MG_50_Mixed_SmE,3] \
            ],[90], \
            [ \
                [Rus_Mag_DP_Mixed_Ball_Red,1], \
                [Rus_Weap_DP], \
                [Rus_Mag_DP_Mixed_Ball_Red,5,"vest"], \
                [Rus_Mag_DP_Mixed_Ball_Red,3] \
            ],[10] \
        ] call FNC_AddItemRandomPercent;

//1 for Gruppe leaders, 2 for Gewehrschütze, 3 for MG-Hilfsschütze, 5 for MG-Munitionsträger
#define WHREF42Jan_Weapon_MG_Ammo(COUNT) \
        _weaponsArray = []; \
        { \
            _weapon = primaryWeapon _x; \
            if ( \
                _weapon == Ger_Weap_MG34 || \
                _weapon == Rus_Weap_DP || \
                _weapon == Ger_Weap_MG42 \
            ) then { \
                _weaponsArray pushBack _weapon; \
            }; \
        } forEach units group _unit; \
        if (count _weaponsArray != 0) then { \
            _ammobearer = selectRandom _weaponsArray; \
            switch (_ammobearer) do { \
                case Ger_Weap_MG34: { \
                    [Ger_Mag_MG_50_Mixed_SmE,COUNT,"backpack"] call FNC_AddItem; \
                }; \
                case Rus_Weap_DP: { \
                    [Rus_Mag_DP_Mixed_Ball_Red,COUNT,"backpack"] call FNC_AddItem; \
                }; \
                case Ger_Weap_MG42: { \
                    [Ger_Mag_MG_50_Mixed_SmE,COUNT,"backpack"] call FNC_AddItem; \
                }; \
                case Ger_Weap_MG30: { \
                    [Ger_Mag_MG30_Mixed_sS,COUNT,"backpack"] call FNC_AddItem; \
                }; \
            }; \
        };

#define WHREF42Jan_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[43], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[23], \
            [ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[15], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[5], \
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
        ] call FNC_AddItemRandomPercent;

#define WHREF42Jan_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[45], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[31], \
            [ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[15], \
            [ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[5], \
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
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHREF42Jan_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Officer;

        //Secondary Weapon
        WHREF42Jan_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHREF42Jan_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Officer;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHREF42Jan_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Officer;

        //Secondary Weapon
        WHREF42Jan_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHREF42Jan_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Officer;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHREF42Jan_RTO" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call FNC_AddItem;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;
    };

    //Melder
    case "WHREF42Jan_Mess" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHREF42Jan_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHREF42Jan_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Gruppe;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHREF42Jan_Weapon_MG_Ammo(1);
    };

    //Stellvertretender Gruppenführer
    case "WHREF42Jan_S2" : {
        [Ger_Uni_S2_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHREF42Jan_Weapon_MG_Ammo(1);
    };

    //Gefreiter
    case "WHREF42Jan_S3" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_MP40] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Gruppe;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHREF42Jan_Weapon_MG_Ammo(1);
    };

    //MG-Richtschütze
    case "WHREF42Jan_MG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        WHREF42Jan_Weapon_MG;
    };

    //MG-Hilfsschütze
    case "WHREF42Jan_MGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        WHREF42Jan_Weapon_MG_Ammo(3);
    };

    //MG-Munitionsträger
    case "WHREF42Jan_MGAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        WHREF42Jan_Weapon_MG_Ammo(5);
    };

    //Grenadier
    case "WHREF42Jan_Gren" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Acc_K98_Bayo,1,"uniform"] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Acc_K98_GL,1,"vest"] call FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHREF42Jan_MedS" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHREF42Jan_Rif" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        WHREF42Jan_Weapon_MG_Ammo(2);
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHREF42Jan_MortSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHREF42Jan_MortG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHREF42Jan_MortA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHREF42Jan_HMGSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHREF42Jan_HMGG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_SmE,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_250_Mixed_SmE,1] call FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHREF42Jan_HMGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHREF42Jan_ATRSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHREF42Jan_ATRG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHREF42Jan_ATRAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHREF42Jan_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Officer;

        //Secondary Weapon
        WHREF42Jan_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHREF42Jan_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF42Jan_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };
