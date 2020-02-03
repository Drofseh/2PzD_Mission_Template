// Info: German Wehrmacht Eastern Front 1943 March Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHREF43Mar_CC"] call Olsen_FW_FNC_GearScript;     Kompanieführer
[this,"WHREF43Mar_C2"] call Olsen_FW_FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"WHREF43Mar_PC"] call Olsen_FW_FNC_GearScript;     Zugführer
[this,"WHREF43Mar_P2"] call Olsen_FW_FNC_GearScript;     Zugtruppführer
[this,"WHREF43Mar_RTO"] call Olsen_FW_FNC_GearScript;    Funker
[this,"WHREF43Mar_Mess"] call Olsen_FW_FNC_GearScript;   Melder
[this,"WHREF43Mar_MedP"] call Olsen_FW_FNC_GearScript;   Krankenträger

    //Gruppe
[this,"WHREF43Mar_SL"] call Olsen_FW_FNC_GearScript;     Gruppenführer
[this,"WHREF43Mar_S2"] call Olsen_FW_FNC_GearScript;     Stellvertretender Gruppenführer
[this,"WHREF43Mar_S3"] call Olsen_FW_FNC_GearScript;     Gefreiter
[this,"WHREF43Mar_MG"] call Olsen_FW_FNC_GearScript;     MG-Richtschütze
[this,"WHREF43Mar_MGA"] call Olsen_FW_FNC_GearScript;    MG-Hilfsschütze
[this,"WHREF43Mar_MGAB"] call Olsen_FW_FNC_GearScript;   MG-Munitionsträger
[this,"WHREF43Mar_Gren"] call Olsen_FW_FNC_GearScript;   Grenadier
[this,"WHREF43Mar_MedS"] call Olsen_FW_FNC_GearScript;   Hilfs-Krankenträger
[this,"WHREF43Mar_Rif"] call Olsen_FW_FNC_GearScript;    Gewehrschütze

    //Weapon Truppen
[this,"WHREF43Mar_MortSL"] call Olsen_FW_FNC_GearScript; Mortar Truppführer
[this,"WHREF43Mar_MortG"] call Olsen_FW_FNC_GearScript;  Mortar Granatwerferschützen
[this,"WHREF43Mar_MortA"] call Olsen_FW_FNC_GearScript;  Mortar Munitionsträger

[this,"WHREF43Mar_HMGSL"] call Olsen_FW_FNC_GearScript;  HMG Truppführer
[this,"WHREF43Mar_HMGG"] call Olsen_FW_FNC_GearScript;   HMG Richtschütze
[this,"WHREF43Mar_HMGA"] call Olsen_FW_FNC_GearScript;   HMG Munitionsträger

[this,"WHREF43Mar_ATRSL"] call Olsen_FW_FNC_GearScript;  Panzerbüchse Truppführer
[this,"WHREF43Mar_ATRG"] call Olsen_FW_FNC_GearScript;   Panzerbüchse Richtschütze
[this,"WHREF43Mar_ATRA"] call Olsen_FW_FNC_GearScript;   Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHREF43Mar_VCom"] call Olsen_FW_FNC_GearScript;   Besatzungsführer
[this,"WHREF43Mar_VCrew"] call Olsen_FW_FNC_GearScript;  Besatzung
*/

//======================== Definitions ========================

#define WHREF43Mar_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[28], \
            [ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[12] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Mar_Weapon_Gruppe \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60], \
            [ \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,6,"vest"] \
            ],[28], \
            [ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,3,"vest"] \
            ],[12] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Mar_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[64], \
            [ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[20], \
            [ \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[12], \
            [ \
                [Ger_Mag_G41w,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_G41w], \
                [Ger_Mag_G41w,6,"vest"] \
            ],[3], \
            [ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Mar_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"], \
                [Ger_Mag_MG_50_Mixed_SmE,3] \
            ],[60], \
            [ \
                [Rus_Mag_DP_Mixed_Ball_Red,1], \
                [Rus_Weap_DP], \
                [Rus_Mag_DP_Mixed_Ball_Red,5,"vest"], \
                [Rus_Mag_DP_Mixed_Ball_Red,3] \
            ],[30], \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG42], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"], \
                [Ger_Mag_MG_50_Mixed_SmE,3] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHREF43Mar_Weapon_MG_SWT \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[85], \
            [ \
                [Ger_Weap_MG42] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//1 for Gruppe leaders, 2 for Gewehrschütze, 3 for MG-Hilfsschütze, 5 for MG-Munitionsträger
#define WHREF43Mar_Weapon_MG_Ammo(COUNT) \
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

#define WHREF43Mar_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[49], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[17], \
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

#define WHREF43Mar_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[51], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[25], \
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

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHREF43Mar_CC" : {
        [Ger_Uni_CC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Officer;

        //Secondary Weapon
        WHREF43Mar_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHREF43Mar_C2" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Officer;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHREF43Mar_PC" : {
        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Officer;

        //Secondary Weapon
        WHREF43Mar_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHREF43Mar_P2" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Officer;

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
    case "WHREF43Mar_RTO" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;
    };

    //Melder
    case "WHREF43Mar_Mess" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

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
    case "WHREF43Mar_MedP" : {
        [Ger_Uni_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHREF43Mar_SL" : {
        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Gruppe;

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
        WHREF43Mar_Weapon_MG_Ammo(1);
    };

    //Stellvertretender Gruppenführer
    case "WHREF43Mar_S2" : {
        [Ger_Uni_S2_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

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
        WHREF43Mar_Weapon_MG_Ammo(1);
    };

    //Gefreiter
    case "WHREF43Mar_S3" : {
        [Ger_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Gruppe;

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
        WHREF43Mar_Weapon_MG_Ammo(1);
    };

    //MG-Richtschütze
    case "WHREF43Mar_MG" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;

        //Primary Weapon
        WHREF43Mar_Weapon_MG;
    };

    //MG-Hilfsschütze
    case "WHREF43Mar_MGA" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

        //Extra
        WHREF43Mar_Weapon_MG_Ammo(3);
    };

    //MG-Munitionsträger
    case "WHREF43Mar_MGAB" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

        //Extra
        WHREF43Mar_Weapon_MG_Ammo(5);
    };

    //Grenadier
    case "WHREF43Mar_Gren" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem;
        [Ger_Acc_K98_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_K98] call Olsen_FW_FNC_AddItem;
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATL,2] call Olsen_FW_FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHREF43Mar_MedS" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

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
    case "WHREF43Mar_Rif" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

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
        WHREF43Mar_Weapon_MG_Ammo(2);
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHREF43Mar_MortSL" : {
        [Ger_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHREF43Mar_MortG" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHREF43Mar_MortA" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHREF43Mar_HMGSL" : {
        [Ger_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHREF43Mar_HMGG" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        WHREF43Mar_Weapon_MG_SWT;
        [Ger_Mag_MG_250_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHREF43Mar_HMGA" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHREF43Mar_ATRSL" : {
        [Ger_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHREF43Mar_ATRG" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHREF43Mar_ATRAB" : {
        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHREF43Mar_VCom" : {
        [Ger_Uni_VCom] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCom] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF43Mar_Weapon_Officer;

        //Secondary Weapon
        WHREF43Mar_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHREF43Mar_VCrew" : {
        [Ger_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCrew] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF43Mar_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    };
