// Info: German Wehrmacht Eastern Front 1943 October Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHREF43Oct_CC"] call Olsen_FW_FNC_GearScript;     Kompanieführer
[this,"WHREF43Oct_C2"] call Olsen_FW_FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"WHREF43Oct_PC"] call Olsen_FW_FNC_GearScript;     Zugführer
[this,"WHREF43Oct_P2"] call Olsen_FW_FNC_GearScript;     Zugtruppführer
[this,"WHREF43Oct_RTO"] call Olsen_FW_FNC_GearScript;    Funker
[this,"WHREF43Oct_Mess"] call Olsen_FW_FNC_GearScript;   Melder
[this,"WHREF43Oct_MedP"] call Olsen_FW_FNC_GearScript;   Krankenträger

    //Gruppe
[this,"WHREF43Oct_SL"] call Olsen_FW_FNC_GearScript;     Gruppenführer
[this,"WHREF43Oct_S2"] call Olsen_FW_FNC_GearScript;     Stellvertretender Gruppenführer
[this,"WHREF43Oct_S3"] call Olsen_FW_FNC_GearScript;     Gefreiter
[this,"WHREF43Oct_MG"] call Olsen_FW_FNC_GearScript;     MG-Richtschütze
[this,"WHREF43Oct_MGA"] call Olsen_FW_FNC_GearScript;    MG-Hilfsschütze
[this,"WHREF43Oct_MGAB"] call Olsen_FW_FNC_GearScript;   MG-Munitionsträger
[this,"WHREF43Oct_Gren"] call Olsen_FW_FNC_GearScript;   Grenadier
[this,"WHREF43Oct_MedS"] call Olsen_FW_FNC_GearScript;   Hilfs-Krankenträger
[this,"WHREF43Oct_Rif"] call Olsen_FW_FNC_GearScript;    Gewehrschütze

    //Weapon Truppen
[this,"WHREF43Oct_MortSL"] call Olsen_FW_FNC_GearScript; Mortar Truppführer
[this,"WHREF43Oct_MortG"] call Olsen_FW_FNC_GearScript;  Mortar Granatwerferschützen
[this,"WHREF43Oct_MortA"] call Olsen_FW_FNC_GearScript;  Mortar Munitionsträger

[this,"WHREF43Oct_HMGSL"] call Olsen_FW_FNC_GearScript;  HMG Truppführer
[this,"WHREF43Oct_HMGG"] call Olsen_FW_FNC_GearScript;   HMG Richtschütze
[this,"WHREF43Oct_HMGA"] call Olsen_FW_FNC_GearScript;   HMG Munitionsträger

[this,"WHREF43Oct_ATRSL"] call Olsen_FW_FNC_GearScript;  Panzerbüchse Truppführer
[this,"WHREF43Oct_ATRG"] call Olsen_FW_FNC_GearScript;   Panzerbüchse Richtschütze
[this,"WHREF43Oct_ATRA"] call Olsen_FW_FNC_GearScript;   Panzerbüchse Munitionsträger

[this,"WHREF43Oct_ATSL"] call Olsen_FW_FNC_GearScript;   Panzerschreck Truppführer
[this,"WHREF43Oct_ATG"] call Olsen_FW_FNC_GearScript;    Panzerschreck Richtschütze
[this,"WHREF43Oct_ATA"] call Olsen_FW_FNC_GearScript;    Panzerschreck Munitionsträger

    //Tank Crew
[this,"WHREF43Oct_VCom"] call Olsen_FW_FNC_GearScript;   Besatzungsführer
[this,"WHREF43Oct_VCrew"] call Olsen_FW_FNC_GearScript;  Besatzung
*/

//======================== Definitions ========================

#define WHREF43Oct_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[50], \
            [ \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[37], \
            [ \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,3,"vest"] \
            ],[8], \
            [ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Oct_Weapon_Gruppe \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[50], \
            [ \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,6,"vest"] \
            ],[37], \
            [ \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,6,"vest"] \
            ],[8], \
            [ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,3,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Oct_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[50], \
            [ \
                [Ger_Vest_K98], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[24], \
            [ \
                [Ger_Vest_G43], \
                [Ger_Mag_G41w,1], \
                [Ger_Weap_G43], \
                [Ger_Mag_G41w,6,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_G43], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[9], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_G43], \
                [Ger_Mag_G41w,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_G41w], \
                [Ger_Mag_G41w,6,"vest"] \
            ],[1], \
            [ \
                [Ger_Vest_K98], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Oct_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"], \
                [Ger_Mag_MG_50_Mixed_SmE,3] \
            ],[52], \
            [ \
                [Rus_Mag_DP_Mixed_Ball_Red,1], \
                [Rus_Weap_DP], \
                [Rus_Mag_DP_Mixed_Ball_Red,5,"vest"], \
                [Rus_Mag_DP_Mixed_Ball_Red,3] \
            ],[35], \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG42], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"], \
                [Ger_Mag_MG_50_Mixed_SmE,3] \
            ],[13] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Oct_Weapon_MGA \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[58.82], \
            [ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[28.24], \
            [ \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[10.59], \
            [ \
                [Ger_Mag_G41w,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_G41w], \
                [Ger_Mag_G41w,6,"vest"] \
            ],[1.18], \
            [ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[1.18] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Grenadier
#define WHREF43Oct_Weapon_Grenadier \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_K98,12,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,3], \
                [Ger_Mag_RGrn_ATS,1] \
            ],[95], \
            [ \
                [Ger_Vest_K98], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_GL,1,"vest"], \
                [Rus_Mag_Mosin,24,"vest"], \
                [Rus_Mag_RGrn_HE,8] \
            ],[95], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_StG44,6,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,3], \
                [Ger_Mag_RGrn_ATS,1] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Oct_Weapon_MG_SWT \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[80], \
            [ \
                [Ger_Weap_MG42] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//1 for Gruppe leaders, 2 for Gewehrschütze, 3 for MG-Hilfsschütze, 5 for MG-Munitionsträger
#define WHREF43Oct_Weapon_MG_Ammo(COUNT) \
        _weaponsArray = []; \
        { \
            _weapon = primaryWeapon _x; \
            if ( \
                _weapon == Ger_Weap_MG34 \
                || {_weapon == Ger_Weap_MG42} \
                || {_weapon == Rus_Weap_DP} \
                || {_weapon == Ger_Weap_MG30} \
            ) then { \
                _weaponsArray pushBack _weapon; \
            }; \
        } forEach units group _unit; \
        if (count _weaponsArray != 0) then { \
            _ammobearer = selectRandom _weaponsArray; \
            switch (_ammobearer) do { \
                case Ger_Weap_MG34: { \
                    [Ger_Mag_MG_50_Mixed_SmE,COUNT,"backpack"] call Olsen_FW_FNC_AddItem; \
                }; \
                case Rus_Weap_DP: { \
                    [Rus_Mag_DP_Mixed_Ball_Red,COUNT,"backpack"] call Olsen_FW_FNC_AddItem; \
                }; \
                case Ger_Weap_MG42: { \
                    [Ger_Mag_MG_50_Mixed_SmE,COUNT,"backpack"] call Olsen_FW_FNC_AddItem; \
                }; \
                case Ger_Weap_MG30: { \
                    [Ger_Mag_MG30_Mixed_sS,COUNT,"backpack"] call Olsen_FW_FNC_AddItem; \
                }; \
            }; \
        };

#define WHREF43Oct_Weapon_Officer_Secondary \
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
            ],[14], \
            [ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[16], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[4], \
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

#define WHREF43Oct_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[54], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[22], \
            [ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[16], \
            [ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[4], \
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

#define WHREF43Oct_Weapon_PzFaust \
        [ \
            [ \
                [Ger_Weap_PzFaust_30] \
            ],[75], \
            [ \
                [Ger_Weap_PzFaust_K] \
            ],[25] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHREF43Oct_CC" : {
        [Ger_Uni_CC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Officer;

        //Secondary Weapon
        WHREF43Oct_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHREF43Oct_C2" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Officer;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHREF43Oct_PC" : {
        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Officer;

        //Secondary Weapon
        WHREF43Oct_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHREF43Oct_P2" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        //Primary Weapon
        WHREF43Oct_Weapon_Officer;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Funker
    case "WHREF43Oct_RTO" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;
    };

    //Melder
    case "WHREF43Oct_Mess" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Krankenträger
    case "WHREF43Oct_MedP" : {
        [Ger_Uni_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHREF43Oct_SL" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Gruppe;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        WHREF43Oct_Weapon_MG_Ammo(1);
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "WHREF43Oct_S2" : {
        [Ger_Uni_S2_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        WHREF43Oct_Weapon_MG_Ammo(1);
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Gefreiter
    case "WHREF43Oct_S3" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Gruppe;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        WHREF43Oct_Weapon_MG_Ammo(1);
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //MG-Richtschütze
    case "WHREF43Oct_MG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        WHREF43Oct_Weapon_MG;
    };

    //MG-Hilfsschütze
    case "WHREF43Oct_MGA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Oct_Weapon_MGA;

        //Extra
        WHREF43Oct_Weapon_MG_Ammo(3);
    };

    //MG-Munitionsträger
    case "WHREF43Oct_MGAB" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        WHREF43Oct_Weapon_MG_Ammo(5);
    };

    //Grenadier
    case "WHREF43Oct_Gren" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Grenadier;
    };

    //Hilfs-Krankenträger
    case "WHREF43Oct_MedS" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Gewehrschütze
    case "WHREF43Oct_Rif" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Launcher
        WHREF43Oct_Weapon_PzFaust;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        WHREF43Oct_Weapon_MG_Ammo(2);
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHREF43Oct_MortSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHREF43Oct_MortG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHREF43Oct_MortA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHREF43Oct_HMGSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHREF43Oct_HMGG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        WHREF43Oct_Weapon_MG_SWT;
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHREF43Oct_HMGA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHREF43Oct_ATRSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHREF43Oct_ATRG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHREF43Oct_ATRAB" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerschreck Team
    //Panzerschreck Truppführer
    case "WHREF43Oct_ATSL" : {
        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Gruppe;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerschreck Richtschütze
    case "WHREF43Oct_ATG" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_Pzschrck] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
    };

    //Panzerschreck Munitionsträger
    case "WHREF43Oct_ATA" : {
        [Ger_Uni_Rif_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHREF43Oct_VCom" : {
        [Ger_Uni_VCom] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCom_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Oct_Weapon_Officer;

        //Secondary Weapon
        WHREF43Oct_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHREF43Oct_VCrew" : {
        [Ger_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF43Oct_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
