// Info: Red Army January 1941 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/* Loadouts

    //Company HQ
[this,"R41Jan_CC"] call FNC_GearScript;         Company Commander
[this,"R41Jan_CSgt"] call FNC_GearScript;       Company Sergeant
[this,"R41Jan_RTO"] call FNC_GearScript;        Radio Operator

    //Platoon HQ
[this,"R41Jan_PC"] call FNC_GearScript;         Platoon Commander
[this,"R41Jan_PSgt"] call FNC_GearScript;       Platoon Sergeant
[this,"R41Jan_Mess"] call FNC_GearScript;       Messenger
[this,"R41Jan_Med"] call FNC_GearScript;        Medic

    //Squad
[this,"R41Jan_SL"] call FNC_GearScript;         Squad Leader
[this,"R41Jan_TL"] call FNC_GearScript;         Team Leader
[this,"R41Jan_SMG"] call FNC_GearScript;        Submachine Gunner
[this,"R41Jan_Gren"] call FNC_GearScript;       Grenadier
[this,"R41Jan_Rif"] call FNC_GearScript;        Rifleman
[this,"R41Jan_MG"] call FNC_GearScript;         Machine Gunner
[this,"R41Jan_MGA"] call FNC_GearScript;        MG Assistant

    //Heavy Weapons Teams
[this,"R41Jan_MortTL"] call FNC_GearScript;     Mortar Team Leader
[this,"R41Jan_MortG"] call FNC_GearScript;      Mortar Gunner
[this,"R41Jan_MortA"] call FNC_GearScript;      Mortar Ammo Bearer

[this,"R41Jan_HMGTL"] call FNC_GearScript;      HMG Team Leader
[this,"R41Jan_HMGG"] call FNC_GearScript;       HMG Gunner
[this,"R41Jan_HMGA"] call FNC_GearScript;       HMG Ammo Bearer

[this,"R41Jan_ATRTL"] call FNC_GearScript;      AT Rifle Team Leader
[this,"R41Jan_ATRG"] call FNC_GearScript;       AT Rifle Gunner
[this,"R41Jan_ATRA"] call FNC_GearScript;       AT Rifle Ammo Bearer

    //Vehicle Crew
[this,"R41Jan_VCom"] call FNC_GearScript;       Tank Commander
[this,"R41Jan_VCrew"] call FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

//For riflemen
#define R41Jan_Weapon_Rifleman            \
        [                                 \
            [/*Mosin M91/30*/             \
                [Rus_Vest_Mosin],         \
                [Rus_Mag_Mosin,1],        \
                [Rus_Weap_MosM9130],      \
                [Rus_Weap_Mos_Bayo],      \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[78],                       \
            [/*SVT*/                      \
                [Rus_Vest_SVT],           \
                [Rus_Mag_SVT40,1],        \
                [Rus_Weap_SVT40],         \
                [Rus_Mag_SVT40,6,"vest"]  \
            ],[20],                       \
            [/*Mosin M38*/                \
                [Rus_Vest_Mosin],         \
                [Rus_Mag_Mosin,1],        \
                [Rus_Weap_MosM38],        \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[2]                         \
        ] call FNC_AddItemRandomPercent;

//For light riflemen
#define R41Jan_Weapon_Rifleman_Light      \
        [                                 \
            [/*Mosin M91/30*/             \
                [Rus_Vest_Mosin],         \
                [Rus_Mag_Mosin,1],        \
                [Rus_Weap_MosM9130],      \
                [Rus_Weap_Mos_Bayo],      \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[80],                       \
            [/*SVT*/                      \
                [Rus_Vest_SVT],           \
                [Rus_Mag_SVT40,1],        \
                [Rus_Weap_SVT40],         \
                [Rus_Mag_SVT40,6,"vest"]  \
            ],[10],                       \
            [/*Mosin M38*/                \
                [Rus_Vest_Mosin],         \
                [Rus_Mag_Mosin,1],        \
                [Rus_Weap_MosM38],        \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[10]                        \
        ] call FNC_AddItemRandomPercent;

//For submachine gunners
#define R41Jan_Weapon_SMG                \
        [                                \
            [/*PPD-40*/                  \
                [Rus_Vest_PPSH_D1],      \
                [Rus_Mag_PPD40,1],       \
                [Rus_Weap_PPD40],        \
                [Rus_Mag_PPD40,2,"vest"] \
            ],[50],                      \
            [/*PPD-40*/                  \
                [Rus_Vest_PPSH_D2],      \
                [Rus_Mag_PPD40,1],       \
                [Rus_Weap_PPD40],        \
                [Rus_Mag_PPD40,2,"vest"] \
            ],[50]                       \
        ] call FNC_AddItemRandomPercent;

//For all loadouts with pistols
#define R41Jan_Weapon_Secondary    \
        [                          \
            [/*TT-33*/             \
                [Rus_Mag_TT33,1],  \
                [Rus_Weap_TT33],   \
                [Rus_Mag_TT33,2]   \
            ],[56],                \
            [/*M1895*/             \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895],  \
                [Rus_Mag_M1895,2]  \
            ],[44]                 \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "R41Jan_CC" : {
        [Rus_Uni_CC] call FNC_AddItemRandom;
        [Rus_Vest_PC] call FNC_AddItem;
        [Rus_Hat_PC] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon

        //Secondary Weapon
        R41Jan_Weapon_Secondary;
    };

    //Company Sergeant
    case "R41Jan_CSgt" : {
        [Rus_Uni_CSgt] call FNC_AddItem;
        [Rus_BP] call FNC_AddItem;
        [Rus_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call FNC_AddItem;
        [Rus_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Radio Operator
    case "R41Jan_RTO" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        [Rus_BP_Radio] call FNC_AddItem;
        [Rus_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [GEN_Headset] call FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "R41Jan_PC" : {
        [Rus_Uni_PC] call FNC_AddItemRandom;
        [Rus_Vest_PC] call FNC_AddItem;
        [Rus_Hat_PC] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon

        //Secondary Weapon
        R41Jan_Weapon_Secondary;
    };

    //Platoon Sergeant
    case "R41Jan_PSgt" : {
        [Rus_Uni_SL] call FNC_AddItem;
        [Rus_BP] call FNC_AddItem;
        [Rus_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call FNC_AddItem;
        [Rus_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Medic
    case "R41Jan_Med" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        [Rus_BP_Med] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        Rus_Medic_Equipment;
    };

    //Messenger
    case "R41Jan_Mess" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Extra
        [Rus_Gren_Frag_S,1] call FNC_AddItem;
    };

//Squad

    //Squad Leader
    case "R41Jan_SL" : {
        [Rus_Uni_SL] call FNC_AddItem;
        [Rus_BP_r] call FNC_AddItemRandom;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        //Extra
        [Rus_Gren_Frag_S,1] call FNC_AddItem;
        [Rus_Mag_DP,1] call FNC_AddItem;
    };

    //Team Leader
    case "R41Jan_TL" : {
        [Rus_Uni_TL] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        [Rus_BP_r] call FNC_AddItemRandom;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call FNC_AddItem;
        [Rus_Mag_DP,1] call FNC_AddItem;
    };

    //Submachine Gunner
    case "R41Jan_SMG" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon
        R41Jan_Weapon_SMG;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call FNC_AddItem;
        [Rus_Mag_DP,1] call FNC_AddItem;
    };

    //Grenadier
    case "R41Jan_Gren" : {
        [Rus_Uni_Rif] call FNC_AddItem;
        [Rus_Vest_Mosin] call FNC_AddItem;
        [Rus_BP_r] call FNC_AddItemRandom;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [Rus_Mag_Mosin,1] call FNC_AddItem;
        [Rus_Weap_MosM9130] call FNC_AddItem;
        [Rus_Weap_Mos_GL] call FNC_AddItem;
        [Rus_Mag_Mosin,12,"vest"] call FNC_AddItem;

        //Extra
        [Rus_Mag_RGrn_HE,6] call FNC_AddItem;
    };

    //Rifleman
    case "R41Jan_Rif" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman;

        [Rus_BP_r] call FNC_AddItemRandom;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call FNC_AddItem;
        [Rus_Gren_Frag_P,1] call FNC_AddItem;
        [Rus_Mag_DP,1,"backpack"] call FNC_AddItem;
    };

    //Machine Gunner
    case "R41Jan_MG" : {
        [Rus_Uni_Rif] call FNC_AddItem;
        [Rus_Vest_MG] call FNC_AddItemRandom;
        [Rus_BP_MG] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Primary Weapon
        [Rus_Mag_DP,1] call FNC_AddItem;
        [Rus_Weap_DP] call FNC_AddItem;
        [Rus_Mag_DP,3,"vest"] call FNC_AddItem;
        [Rus_Mag_DP,6,"backpack"] call FNC_AddItem;
    };

    //MG Assistant
    case "R41Jan_MGA" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        [Rus_BP_MG] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [Rus_Gren_Frag_S,1] call FNC_AddItem;

        //Extra
        [Rus_Mag_DP,6,"backpack"] call FNC_AddItem;
    };

//Heavy Weapons Teams

    //Mortar Team Leader
    case "R41Jan_MortTL" : {
        [Rus_Uni_TL] call FNC_AddItem;
        [Rus_Vest_HGun] call FNC_AddItem;
        [Rus_BP_GB] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortT] call FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call FNC_AddItem;
    };

    //Mortar Gunner
    case "R41Jan_MortG" : {
        [Rus_Uni_Rif] call FNC_AddItem;
        [Rus_Vest_HGun] call FNC_AddItem;
        [Rus_BP_GB] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortB] call FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "R41Jan_MortA" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        [Rus_BP_GB] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
        [Rus_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team Leader
    case "R41Jan_HMGTL" : {
        [Rus_Uni_TL] call FNC_AddItem;
        [Rus_Vest_HGun] call FNC_AddItem;
        [Rus_Weap_HMG_T] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Launcher

        //Extra
    };

    //HMG Gunner
    case "R41Jan_HMGG" : {
        [Rus_Uni_Rif] call FNC_AddItem;
        [Rus_Vest_HGun] call FNC_AddItem;
        [Rus_Weap_HMG_B] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Launcher

        //Extra
    };

    //HMG Ammo Bearer
    case "R41Jan_HMGA" : {
        [Rus_Uni_Rif] call FNC_AddItem;

        //Primary Weapon & Vest
        R41Jan_Weapon_Rifleman_Light;

        [Rus_BP_GB] call FNC_AddItem;
        [Rus_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
    };

//Vehicle Crew

    //Tank Commander
    case "R41Jan_VCom" : {
        [Rus_Uni_VCrew] call FNC_AddItem;
        [Rus_Vest_PC] call FNC_AddItem;
        [Rus_Hat_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        [Rus_Mag_PPD40,1] call FNC_AddItem;
        [Rus_Weap_PPD40] call FNC_AddItem;
        [Rus_Mag_PPD40,1,"vest"] call FNC_AddItem;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;
    };

    //Tank Crew
    case "R41Jan_VCrew" : {
        [Rus_Uni_VCrew] call FNC_AddItem;
        [Rus_Vest_VCrew] call FNC_AddItem;
        [Rus_BP_r] call FNC_AddItemRandom;
        [Rus_Hat_VCrew] call FNC_AddItem;
        [GEN_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Secondary Weapon
        R41Jan_Weapon_Secondary;

        //Extra
        [Rus_Toolkit] call FNC_AddItem;
    };