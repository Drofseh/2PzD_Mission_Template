// Info: Soviet NKVD Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon HQ
[this, NKVD44Oct_LT] call Olsen_FW_FNC_GearScript;         Leutenant
[this, NKVD44Oct_Star] call Olsen_FW_FNC_GearScript;       Starshina
[this, NKVD44Oct_RTO] call Olsen_FW_FNC_GearScript;        Radio Operator
[this, NKVD44Oct_Med] call Olsen_FW_FNC_GearScript;        Medic

    Squad
[this, NKVD44Oct_Sgt] call Olsen_FW_FNC_GearScript;        Sergeant
[this, NKVD44Oct_Efr] call Olsen_FW_FNC_GearScript;        Efreitor
[this, NKVD44Oct_MG] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this, NKVD44Oct_MGA] call Olsen_FW_FNC_GearScript;        Machine Gun Assistant
[this, NKVD44Oct_Stre] call Olsen_FW_FNC_GearScript;       Strelok
*/

//======================== Definitions ========================

#define NKVD44Oct_Weapon_Officer \
        [ \
            [/*PPD-40*/ \
                [NKVD_Vest_O_Pistol], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_O_Pistol], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[30], \
            [/*PPSh-41*/ \
                [NKVD_Vest_O_PPSH], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[30], \
            [/*PPS-43*/ \
                [NKVD_Vest_O_PPSH], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,3,"vest"] \
            ],[35] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD44Oct_Weapon_Starshina \
        [ \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[40], \
            [/*Mosin M44*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM44], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[15], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_O_Pistol], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[12.5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_O_PPSH], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[12.5], \
            [/*PPS-43*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,3,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD44Oct_Weapon_Sergeant \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[5], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[40], \
            [/*Mosin M44*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM44], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[10], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[12.5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"], \
                [Rus_Mag_PPSH_D,2,"vest"] \
            ],[12.5], \
            [/*PPS-43*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,6,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD44Oct_Weapon_Efreitor \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[10], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[35], \
            [/*Mosin M44*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM44], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[10], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[12.5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"], \
                [Rus_Mag_PPSH_D,2,"vest"] \
            ],[12.5], \
            [/*PPS-43*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,6,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD44Oct_Weapon_MG \
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem; \
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem; \
        [Rus_Mag_DP_Mixed_Ball_Red,9] call Olsen_FW_FNC_AddItem;

#define NKVD44Oct_Weapon_Rifleman_Light \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[15], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[40], \
            [/*Mosin M44*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM44], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[10], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[10], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"], \
                [Rus_Mag_PPSH_D,2,"vest"] \
            ],[10], \
            [/*PPS-43*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,6,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD44Oct_Weapon_Rifleman \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[40], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[25], \
            [/*Mosin M44*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM44], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[5], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[7.5], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH_S], \
                [Rus_Mag_PPSH_S,3,"vest"], \
                [Rus_Mag_PPSH_D,2,"vest"] \
            ],[7.5], \
            [/*PPS-43*/ \
                [NKVD_Vest_PPSH_S], \
                [Rus_Mag_PPS43,1], \
                [Rus_Weap_PPS43], \
                [Rus_Mag_PPS43,6,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD44Oct_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,1,"vest"] \
            ],[90], \
            [/*M1895 Nagant*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,1,"vest"] \
            ],[9], \
            [/*Mauser C-96*/ \
                [Rus_Weap_C96_Mag,1], \
                [Rus_Weap_C96], \
                [Rus_Weap_C96_Mag,1,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Platoon

    //Leutenant
    NKVD44Oct_LT = ["NKVD44Oct_LT", {
        params ["_unit"];

        [NKVD_Uni_LT] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_Officer;

        //Secondary Weapon
        NKVD44Oct_Weapon_Secondary;
    }];

    //Starshina
    NKVD44Oct_Star = ["NKVD44Oct_Star", {
        params ["_unit"];

        [NKVD_Uni_Star] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_Starshina;

        //Secondary Weapon
        NKVD44Oct_Weapon_Secondary;
    }];

    //Radio Operator
    NKVD44Oct_RTO = ["NKVD44Oct_RTO", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_Rifleman_Light;
    }];

    //Medic
    NKVD44Oct_Med = ["NKVD44Oct_Med", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_Rifleman_Light;

        //Extra
        NKVD_Medic_Equipment;
    }];

    //Sergeant
    NKVD44Oct_Sgt = ["NKVD44Oct_Sgt", {
        params ["_unit"];

        [NKVD_Uni_Sgt] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_Sergeant;
    }];

    //Efreitor
    NKVD44Oct_Efr = ["NKVD44Oct_Efr", {
        params ["_unit"];

        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_Efreitor;
    }];

    //Machine Gunner
    NKVD44Oct_MG = ["NKVD44Oct_MG", {
        params ["_unit"];

        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_HKC] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_MG;

        //Secondary Weapon
        NKVD44Oct_Weapon_Secondary;
    }];

    //Machine Gun Assistant
    NKVD44Oct_MGA = ["NKVD44Oct_MGA", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        NKVD44Oct_Weapon_Rifleman_Light;

        //Extra
        [Rus_Mag_DP_Mixed_Ball_Red,6] call Olsen_FW_FNC_AddItem;
    }];

    //Strelok
    NKVD44Oct_Stre = ["NKVD44Oct_Stre", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD44Oct_Weapon_Rifleman;
    }];
