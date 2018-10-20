// Info: German Wehrmacht Eastern Front 1942 October Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHREF42Oct_CC"] call FNC_GearScript;     Kompanieführer
[this,"WHREF42Oct_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"WHREF42Oct_PC"] call FNC_GearScript;     Zugführer
[this,"WHREF42Oct_P2"] call FNC_GearScript;     Zugtruppführer
[this,"WHREF42Oct_RTO"] call FNC_GearScript;    Funker
[this,"WHREF42Oct_Mess"] call FNC_GearScript;   Melder
[this,"WHREF42Oct_MedP"] call FNC_GearScript;   Krankenträger

    //Gruppe
[this,"WHREF42Oct_SL"] call FNC_GearScript;     Gruppenführer
[this,"WHREF42Oct_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"WHREF42Oct_S3"] call FNC_GearScript;     Gefreiter
[this,"WHREF42Oct_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"WHREF42Oct_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"WHREF42Oct_MGAB"] call FNC_GearScript;   MG-Munitionsträger
[this,"WHREF42Oct_Gren"] call FNC_GearScript;   Grenadier
[this,"WHREF42Oct_MedS"] call FNC_GearScript;   Hilfs-Krankenträger
[this,"WHREF42Oct_Rif"] call FNC_GearScript;    Gewehrschütze

    //Weapon Truppen
[this,"WHREF42Oct_MortSL"] call FNC_GearScript; Mortar Truppführer
[this,"WHREF42Oct_MortG"] call FNC_GearScript;  Mortar Granatwerferschützen
[this,"WHREF42Oct_MortA"] call FNC_GearScript;  Mortar Munitionsträger

[this,"WHREF42Oct_HMGSL"] call FNC_GearScript;  HMG Truppführer
[this,"WHREF42Oct_HMGG"] call FNC_GearScript;   HMG Richtschütze
[this,"WHREF42Oct_HMGA"] call FNC_GearScript;   HMG Munitionsträger

[this,"WHREF42Oct_ATRSL"] call FNC_GearScript;  Panzerbüchse Truppführer
[this,"WHREF42Oct_ATRG"] call FNC_GearScript;   Panzerbüchse Richtschütze
[this,"WHREF42Oct_ATRA"] call FNC_GearScript;   Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHREF42Oct_VCom"] call FNC_GearScript;   Besatzungsführer
[this,"WHREF42Oct_VCrew"] call FNC_GearScript;  Besatzung
*/

//======================== Definitions ========================

#define WHREF42Oct_Weapon_Officer_Primary \
        [                                 \
            [                             \
                [Ger_Mag_MP40,1],         \
                [Ger_Weap_MP40],          \
                [Ger_Mag_MP40,3,"vest"]   \
            ],[70],                       \
            [                             \
                [Rus_Mag_PPD40,1],        \
                [Rus_Weap_PPD40],         \
                [Rus_Mag_PPD40,1,"vest"]  \
            ],[18],                       \
            [                             \
                [Rus_Mag_PPSH_S,1],       \
                [Rus_Weap_PPSH_S],        \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[12]                        \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Jan_Weapon_Gruppe_Primary  \
        [                                 \
            [                             \
                [Ger_Mag_MP40,1],         \
                [Ger_Weap_MP40],          \
                [Ger_Mag_MP40,6,"vest"]   \
            ],[70],                       \
            [                             \
                [Rus_Mag_PPD40,1],        \
                [Rus_Weap_PPD40],         \
                [Rus_Mag_PPD40,3,"vest"]  \
            ],[18],                       \
            [                             \
                [Rus_Mag_PPSH_S,1],       \
                [Rus_Weap_PPSH_S],        \
                [Rus_Mag_PPSH_S,6,"vest"] \
            ],[12]                        \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Oct_Weapon_Rifleman_Primary \
        [                                  \
            [                              \
                [Ger_Mag_K98,1],           \
                [Ger_Weap_K98],            \
                [Ger_Mag_K98,12,"vest"]    \
            ],[69],                        \
            [                              \
                [Rus_Mag_Mosin,1],         \
                [Rus_Weap_MosM9130],       \
                [Rus_Weap_Mos_Bayo],       \
                [Rus_Mag_Mosin,12,"vest"]  \
            ],[20],                        \
            [                              \
                [Rus_Mag_SVT40,1],         \
                [Rus_Weap_SVT40],          \
                [Rus_Mag_SVT40,6,"vest"]  \
            ],[9],                         \
            [                              \
                [Ger_Mag_G41,1],           \
                [Ger_Weap_G41W],           \
                [Ger_Mag_G41,6,"vest"]    \
            ],[1],                         \
            [                              \
                [Rus_Mag_Mosin,1],         \
                [Rus_Weap_MosM38],         \
                [Rus_Mag_Mosin,12,"vest"]  \
            ],[1]                          \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Oct_Weapon_MG_Primary      \
        [                                 \
            [                             \
                [Ger_Mag_MG_50,1],        \
                [Ger_Weap_MG34],          \
                [Ger_Mag_MG_50,5,"vest"], \
                [Ger_Mag_MG_50,3]         \
            ],[72],                       \
            [                             \
                [Rus_Mag_DP,1],           \
                [Rus_Weap_DP],            \
                [Rus_Mag_DP,5,"vest"],    \
                [Rus_Mag_DP,3]            \
            ],[20],                       \
            [                             \
                [Ger_Mag_MG_50,1],        \
                [Ger_Weap_MG42],          \
                [Ger_Mag_MG_50,5,"vest"], \
                [Ger_Mag_MG_50,3]         \
            ],[8]                         \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Oct_Weapon_MG_SWT          \
        [                                 \
            [                             \
                [Ger_Mag_MG_50,1],        \
                [Ger_Weap_MG34],          \
                [Ger_Mag_MG_50,5,"vest"], \
                [Ger_Mag_MG_50,3]         \
            ],[90],                       \
            [                             \
                [Ger_Mag_MG_50,1],        \
                [Ger_Weap_MG42],          \
                [Ger_Mag_MG_50,5,"vest"], \
                [Ger_Mag_MG_50,3]         \
            ],[10]                        \
        ] call FNC_AddItemRandomPercent;

//1 for Gruppe leaders, 2 for Gewehrschütze, 3 for MG-Hilfsschütze, 5 for MG-Munitionsträger
#define WHREF42Oct_Weapon_MG_Ammo(COUNT)                    \
        _weaponsArray = [];                                 \
        {                                                   \
            _weapon = primaryWeapon _x;                     \
            if (                                            \
                _weapon == Ger_Weap_MG34 ||                 \
                _weapon == Rus_Weap_DP ||                   \
                _weapon == Ger_Weap_MG42                    \
            ) then {                                        \
                _weaponsArray pushBack _weapon;             \
            };                                              \
        } forEach units group _unit;                        \
                                                            \
        if (count _weaponsArray != 0) then {                \
            _ammobearer = selectRandom _weaponsArray;       \
            switch (_ammobearer) do {                       \
                case Ger_Weap_MG34: {                       \
                    [Ger_Mag_MG_50,COUNT] call FNC_AddItem; \
                };                                          \
                case Rus_Weap_DP: {                         \
                    [Rus_Mag_DP,COUNT] call FNC_AddItem;    \
                };                                          \
                case Ger_Weap_MG42: {                       \
                    [Ger_Mag_MG_50,COUNT] call FNC_AddItem; \
                };                                          \
            };                                              \
        };

#define WHREF42Oct_Weapon_Officer_Secondary \
        [                                   \
            [                               \
                [Ger_Mag_P38,1],            \
                [Ger_Weap_P38],             \
                [Ger_Mag_P38,2]             \
            ],[46],                         \
            [                               \
                [Ger_Mag_P08,1],            \
                [Ger_Weap_P08],             \
                [Ger_Mag_P08,2]             \
            ],[20],                         \
            [                               \
                [Rus_Mag_TT33,1],           \
                [Rus_Weap_TT33],            \
                [Rus_Mag_TT33,2]            \
            ],[15],                         \
            [                               \
                [Ger_Mag_PPK,1],            \
                [Ger_Weap_PPK],             \
                [Ger_Mag_PPK,2]             \
            ],[10],                         \
            [                               \
                [Rus_Mag_M1895,1],          \
                [Rus_Weap_M1895],           \
                [Rus_Mag_M1895,2]           \
            ],[5],                          \
            [                               \
                [Pol_Mag_Radom,1],          \
                [Pol_Weap_Radom],           \
                [Pol_Mag_Radom,2]           \
            ],[2],                          \
            [                               \
                [UK_Mag_HiPower,1],         \
                [UK_Weap_HiPower],          \
                [UK_Mag_HiPower,2]          \
            ],[2]                           \
        ] call FNC_AddItemRandomPercent;

#define WHREF42Oct_Weapon_Enlisted_Secondary \
        [                                    \
            [                                \
                [Ger_Mag_P38,1],             \
                [Ger_Weap_P38],              \
                [Ger_Mag_P38,2]              \
            ],[45],                          \
            [                                \
                [Ger_Mag_P08,1],             \
                [Ger_Weap_P08],              \
                [Ger_Mag_P08,2]              \
            ],[31],                          \
            [                                \
                [Rus_Mag_TT33,1],            \
                [Rus_Weap_TT33],             \
                [Rus_Mag_TT33,2]             \
            ],[15],                          \
            [                                \
                [Rus_Mag_M1895,1],           \
                [Rus_Weap_M1895],            \
                [Rus_Mag_M1895,2]            \
            ],[5],                           \
            [                                \
                [Pol_Mag_Radom,1],           \
                [Pol_Weap_Radom],            \
                [Pol_Mag_Radom,2]            \
            ],[2],                           \
            [                                \
                [UK_Mag_HiPower,1],          \
                [UK_Weap_HiPower],           \
                [UK_Mag_HiPower,2]           \
            ],[2]                            \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHREF42Oct_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Officer_Primary;

        //Secondary Weapon
        WHREF42Oct_Weapon_Officer_Secondary;
    };

    //Kompanietruppführer
    case "WHREF42Oct_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Officer_Primary;

        //Secondary Weapon
        WHREF42Oct_Weapon_Enlisted_Secondary;
    };

//Platoon HQ

    //Zugführer
    case "WHREF42Oct_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Officer_Primary;

        //Secondary Weapon
        WHREF42Oct_Weapon_Officer_Secondary;
    };

    //Zugtruppführer
    case "WHREF42Oct_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Officer_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHREF42Oct_RTO" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_Headset] call FNC_AddItem;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;
    };

    //Melder
    case "WHREF42Oct_Mess" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHREF42Oct_MedP" : {
        [Ger_Uni_Med] call FNC_AddItem;
        [Ger_Vest_Med] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_MedicP_Equipment;
    };

//Squad

    //Gruppenführer
    case "WHREF42Oct_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Gruppe_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHREF42Oct_Weapon_MG_Ammo(1);
    };

    //Stellvertretender Gruppenführer
    case "WHREF42Oct_S2" : {
        [Ger_Uni_S2_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        [GEN_BinoG] call FNC_AddItem;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHREF42Oct_Weapon_MG_Ammo(1);
    };

    //Gefreiter
    case "WHREF42Oct_S3" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_MP40] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Jan_Weapon_Gruppe_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
        WHREF42Oct_Weapon_MG_Ammo(1);
    };

    //MG-Richtschütze
    case "WHREF42Oct_MG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF42Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        WHREF42Oct_Weapon_MG_Primary;
    };

    //MG-Hilfsschütze
    case "WHREF42Oct_MGA" : {
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
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        WHREF42Oct_Weapon_MG_Ammo(3);
    };

    //MG-Munitionsträger
    case "WHREF42Oct_MGAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_D] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        WHREF42Oct_Weapon_MG_Ammo(5);
    };

    //Grenadier
    case "WHREF42Oct_Gren" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Weap_K98_RG] call FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,3] call FNC_AddItem;
        [Ger_Mag_RGrn_ATL,1] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHREF42Oct_MedS" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_MedicS_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHREF42Oct_Rif" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Gren_HE_SC,1] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        WHREF42Oct_Weapon_MG_Ammo(2);
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHREF42Oct_MortSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF42Oct_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHREF42Oct_MortG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItemRandom;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHREF42Oct_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHREF42Oct_MortA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHREF42Oct_HMGSL" : {
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
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHREF42Oct_HMGG" : {
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
        WHREF42Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        WHREF42Oct_Weapon_MG_SWT;
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHREF42Oct_HMGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        [Ger_mg_neck] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHREF42Oct_ATRSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHREF42Oct_ATRG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        WHREF42Oct_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHREF42Oct_ATRAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Rifleman_Primary;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [Ger_Gren_Frag_P,1] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHREF42Oct_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Primary Weapon
        WHREF42Oct_Weapon_Officer_Primary;

        //Secondary Weapon
        WHREF42Oct_Weapon_Officer_Secondary;
    };

    //Besatzung
    case "WHREF42Oct_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_Default_Equipment;

        //Secondary Weapon
        WHREF42Oct_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };