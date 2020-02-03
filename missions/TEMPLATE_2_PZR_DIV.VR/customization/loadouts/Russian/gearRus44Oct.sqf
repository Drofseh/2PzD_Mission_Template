// Info: Red Army October 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Company HQ
[this,"R44Oct_CC"] call Olsen_FW_FNC_GearScript;         Company Commander
[this,"R44Oct_CSgt"] call Olsen_FW_FNC_GearScript;       Company Sergeant
[this,"R44Oct_RTO"] call Olsen_FW_FNC_GearScript;        Radio Operator

    //Platoon HQ
[this,"R44Oct_PC"] call Olsen_FW_FNC_GearScript;         Platoon Commander
[this,"R44Oct_PSgt"] call Olsen_FW_FNC_GearScript;       Platoon Sergeant
[this,"R44Oct_Mess"] call Olsen_FW_FNC_GearScript;       Messenger
[this,"R44Oct_Med"] call Olsen_FW_FNC_GearScript;        Medic

    //Squad
[this,"R44Oct_SL"] call Olsen_FW_FNC_GearScript;         Squad Leader
[this,"R44Oct_TL"] call Olsen_FW_FNC_GearScript;         Team Leader
[this,"R44Oct_SMG"] call Olsen_FW_FNC_GearScript;        Submachine Gunner
[this,"R44Oct_Gren"] call Olsen_FW_FNC_GearScript;       Grenadier
[this,"R44Oct_Rif"] call Olsen_FW_FNC_GearScript;        Rifleman
[this,"R44Oct_MG"] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this,"R44Oct_MGA"] call Olsen_FW_FNC_GearScript;        MG Assistant

    //Heavy Weapons Teams
[this,"R44Oct_MortTL"] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this,"R44Oct_MortG"] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this,"R44Oct_MortA"] call Olsen_FW_FNC_GearScript;      Mortar Ammo Bearer

[this,"R44Oct_HMGTL"] call Olsen_FW_FNC_GearScript;      HMG Team Leader
[this,"R44Oct_HMGG"] call Olsen_FW_FNC_GearScript;       HMG Gunner
[this,"R44Oct_HMGA"] call Olsen_FW_FNC_GearScript;       HMG Ammo Bearer

[this,"R44Oct_ATRTL"] call Olsen_FW_FNC_GearScript;      AT Rifle Team Leader
[this,"R44Oct_ATRG"] call Olsen_FW_FNC_GearScript;       AT Rifle Gunner
[this,"R44Oct_ATRA"] call Olsen_FW_FNC_GearScript;       AT Rifle Ammo Bearer

    //Vehicle Crew
[this,"R44Oct_VCom"] call Olsen_FW_FNC_GearScript;       Tank Commander
[this,"R44Oct_VCrew"] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

//For leaders
#define R44Oct_Weapon_Leader \
        [ \
            [/*PPSh-41, Stick*/ \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[48], \
            [/*PPS-43*/ \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,3,"vest"] \
            ],[30], \
            [/*PPSh-41, Drum*/ \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,3,"vest"] \
            ],[20], \
            [/*PPD-40*/ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[2] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For team leaders and submachine gunners
#define R44Oct_Weapon_SMG \
        [ \
            [/*PPSh-41, Stick*/ \
                [Rus_Vest_PPSH_S1], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"], \
                [Rus_Mag_PPSH_D,2,"vest"] \
            ],[48], \
            [/*PPS-43*/ \
                [Rus_Vest_PPSH_S1], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,6,"vest"] \
            ],[30], \
            [/*PPSh-41, Drum*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,3,"vest"] \
            ],[20], \
            [/*PPD-40*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,2,"vest"] \
            ],[2] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For riflemen
#define R44Oct_Weapon_Rifleman \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[49.08], \
            [/*PPSh-41, Stick*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"], \
                [Rus_Mag_PPSH_D,2,"vest"] \
            ],[16.8], \
            [/*PPS-43*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,6,"vest"] \
            ],[10.5], \
            [/*SVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[9.1], \
            [/*PPSh-41, Drum*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,3,"vest"] \
            ],[7], \
            [/*Mosin M44*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM44], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[3.25], \
            [/*Mosin M38*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[2.93], \
            [/*AVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_AVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[0.65], \
            [/*PPD-40*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,2,"vest"] \
            ],[0.4] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For light riflemen
#define R44Oct_Weapon_Rifleman_Light \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[54], \
            [/*Mosin M38*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[30], \
            [/*Mosin M44*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM44], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[10], \
            [/*SVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[5], \
            [/*AVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_AVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For all loadouts with pistols
#define R44Oct_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[77], \
            [/*M1895*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[23] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "R44Oct_CC" : {
        [Rus_Uni_CC] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        R44Oct_Weapon_Leader;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;
    };

    //Company Sergeant
    case "R44Oct_CSgt" : {
        [Rus_Uni_CSgt] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PPSH_O_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        R44Oct_Weapon_Leader;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Radio Operator
    case "R44Oct_RTO" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman_Light;

        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "R44Oct_PC" : {
        [Rus_Uni_PC] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        R44Oct_Weapon_Leader;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;
    };

    //Platoon Sergeant
    case "R44Oct_PSgt" : {
        [Rus_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PPSH_O_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        R44Oct_Weapon_Leader;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "R44Oct_Med" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman_Light;

        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        Rus_Medic_Equipment;
    };

    //Messenger
    case "R44Oct_Mess" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman_Light;

        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
    };

//Squad

    //Squad Leader
    case "R44Oct_SL" : {
        [Rus_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PPSH_O_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        R44Oct_Weapon_Leader;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
    };

    //Team Leader
    case "R44Oct_TL" : {
        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        R44Oct_Weapon_SMG;

        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
    };

    //Submachine Gunner
    case "R44Oct_SMG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        R44Oct_Weapon_SMG;

        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
    };

    //Grenadier
    case "R44Oct_Gren" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon & Vest
        [Rus_Mag_Mosin,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_MosM9130] call Olsen_FW_FNC_AddItem;
        [Rus_Acc_Mos_GL] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mosin,12,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_RGrn_HE,8] call Olsen_FW_FNC_AddItem;
    };

    //Rifleman
    case "R44Oct_Rif" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman;

        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //Machine Gunner
    case "R44Oct_MG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_MG] call Olsen_FW_FNC_AddItemRandom;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,3,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,6,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //MG Assistant
    case "R44Oct_MGA" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman_Light;

        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_DP_Mixed_Ball_Red,6,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Heavy Weapons Teams

    //Mortar Team Leader
    case "R44Oct_MortTL" : {
        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "R44Oct_MortG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "R44Oct_MortA" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman_Light;

        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
        [Rus_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    };

    //HMG Team Leader
    case "R44Oct_HMGTL" : {
        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Launcher

        //Extra
    };

    //HMG Gunner
    case "R44Oct_HMGG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_B] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Launcher

        //Extra
    };

    //HMG Ammo Bearer
    case "R44Oct_HMGA" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman_Light;

        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
    };

    //Anti-Tank Rifle Team Leader
    case "R44Oct_ATRTL" : {
        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        R44Oct_Weapon_SMG;

        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
    };

    //Anti-Tank Rifle Gunner
    case "R44Oct_ATRG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Primary Weapon
        [Rus_Mag_PTRD,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_PTRD] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_PTRD,20] call Olsen_FW_FNC_AddItem;
    };

    //Anti-Tank Rifle Ammo Bearer
    case "R44Oct_ATRA" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44Oct_Weapon_Rifleman_Light;

        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
    };

//Vehicle Crew

    //Tank Commander
    case "R44Oct_VCom" : {
        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        R44Oct_Weapon_Leader;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;
    };

    //Tank Crew
    case "R44Oct_VCrew" : {
        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Hat_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Secondary Weapon
        R44Oct_Weapon_Secondary;

        //Extra
        [Rus_Toolkit] call Olsen_FW_FNC_AddItem;
    };
