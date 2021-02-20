// Info: Red Army July 1940 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Company HQ
[this,"R40Jul_CC"] call Olsen_FW_FNC_GearScript;         Company Commander
[this,"R40Jul_CSgt"] call Olsen_FW_FNC_GearScript;       Company Sergeant
[this,"R40Jul_RTO"] call Olsen_FW_FNC_GearScript;        Radio Operator

    //Platoon HQ
[this,"R40Jul_PC"] call Olsen_FW_FNC_GearScript;         Platoon Commander
[this,"R40Jul_PSgt"] call Olsen_FW_FNC_GearScript;       Platoon Sergeant
[this,"R40Jul_Mess"] call Olsen_FW_FNC_GearScript;       Messenger
[this,"R40Jul_Med"] call Olsen_FW_FNC_GearScript;        Medic

    //Squad
[this,"R40Jul_SL"] call Olsen_FW_FNC_GearScript;         Squad Leader
[this,"R40Jul_TL"] call Olsen_FW_FNC_GearScript;         Team Leader
[this,"R40Jul_SMG"] call Olsen_FW_FNC_GearScript;        Submachine Gunner
[this,"R40Jul_Gren"] call Olsen_FW_FNC_GearScript;       Grenadier
[this,"R40Jul_Rif"] call Olsen_FW_FNC_GearScript;        Rifleman
[this,"R40Jul_MG"] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this,"R40Jul_MGA"] call Olsen_FW_FNC_GearScript;        MG Assistant

    //Heavy Weapons Teams
[this,"R40Jul_MortTL"] call Olsen_FW_FNC_GearScript;     Mortar Team Leader
[this,"R40Jul_MortG"] call Olsen_FW_FNC_GearScript;      Mortar Gunner
[this,"R40Jul_MortA"] call Olsen_FW_FNC_GearScript;      Mortar Ammo Bearer

[this,"R40Jul_HMGTL"] call Olsen_FW_FNC_GearScript;      HMG Team Leader
[this,"R40Jul_HMGG"] call Olsen_FW_FNC_GearScript;       HMG Gunner
[this,"R40Jul_HMGA"] call Olsen_FW_FNC_GearScript;       HMG Ammo Bearer

[this,"R40Jul_ATRTL"] call Olsen_FW_FNC_GearScript;      AT Rifle Team Leader
[this,"R40Jul_ATRG"] call Olsen_FW_FNC_GearScript;       AT Rifle Gunner
[this,"R40Jul_ATRA"] call Olsen_FW_FNC_GearScript;       AT Rifle Ammo Bearer

    //Vehicle Crew
[this,"R40Jul_VCom"] call Olsen_FW_FNC_GearScript;       Tank Commander
[this,"R40Jul_VCrew"] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

//For riflemen
#define R40Jul_Weapon_Rifleman \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[88], \
            [/*SVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[10], \
            [/*Mosin M38*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[2] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For light riflemen
#define R40Jul_Weapon_Rifleman_Light \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[90], \
            [/*SVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,6,"vest"] \
            ],[5], \
            [/*Mosin M38*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For submachine gunners
#define R40Jul_Weapon_SMG \
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
#define R40Jul_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[53], \
            [/*M1895*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[47] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Company Commander
    case "R40Jul_CC" : {
        [Rus_Uni_CC] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon

        //Secondary Weapon
        R40Jul_Weapon_Secondary;
    };

    //Company Sergeant
    case "R40Jul_CSgt" : {
        [Rus_Uni_CSgt] call Olsen_FW_FNC_AddItem;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Radio Operator
    case "R40Jul_RTO" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;
    };

//Platoon HQ

    //Platoon Commander
    case "R40Jul_PC" : {
        [Rus_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon

        //Secondary Weapon
        R40Jul_Weapon_Secondary;
    };

    //Platoon Sergeant
    case "R40Jul_PSgt" : {
        [Rus_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    };

    //Medic
    case "R40Jul_Med" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Extra
        Rus_Medic_Equipment;
    };

    //Messenger
    case "R40Jul_Mess" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
    };

//Squad

    //Squad Leader
    case "R40Jul_SL" : {
        [Rus_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
    };

    //Team Leader
    case "R40Jul_TL" : {
        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

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
    case "R40Jul_SMG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        R40Jul_Weapon_SMG;

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
    case "R40Jul_Gren" : {
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
    };

    //Rifleman
    case "R40Jul_Rif" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman;

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
    case "R40Jul_MG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_MG_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Primary Weapon
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,3,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,6,"backpack"] call Olsen_FW_FNC_AddItem;
    };

    //MG Assistant
    case "R40Jul_MGA" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

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
    case "R40Jul_MortTL" : {
        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortT] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Gunner
    case "R40Jul_MortG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Launcher
        [Rus_Weap_MortB] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_Mort_HE,3] call Olsen_FW_FNC_AddItem;
    };

    //Mortar Ammo Bearer
    case "R40Jul_MortA" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

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
    case "R40Jul_HMGTL" : {
        [Rus_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Launcher

        //Extra
    };

    //HMG Gunner
    case "R40Jul_HMGG" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_B] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Launcher

        //Extra
    };

    //HMG Ammo Bearer
    case "R40Jul_HMGA" : {
        [Rus_Uni_Rif] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R40Jul_Weapon_Rifleman_Light;

        [Rus_BP_GB] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Extra
    };

//Vehicle Crew

    //Tank Commander
    case "R40Jul_VCom" : {
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
        R40Jul_Weapon_Secondary;
    };

    //Tank Crew
    case "R40Jul_VCrew" : {
        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Hat_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Secondary Weapon
        R40Jul_Weapon_Secondary;

        //Extra
        [Rus_Toolkit] call Olsen_FW_FNC_AddItem;
    };
