// Info: Soviet NKVD Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon HQ
[this, NKVD39_LT] call Olsen_FW_FNC_GearScript;         Leutenant
[this, NKVD39_Star] call Olsen_FW_FNC_GearScript;       Starshina
[this, NKVD39_RTO] call Olsen_FW_FNC_GearScript;        Radio Operator
[this, NKVD39_Med] call Olsen_FW_FNC_GearScript;        Medic

    Squad
[this, NKVD39_Sgt] call Olsen_FW_FNC_GearScript;        Sergeant
[this, NKVD39_Efr] call Olsen_FW_FNC_GearScript;        Efreitor
[this, NKVD39_MG] call Olsen_FW_FNC_GearScript;         Machine Gunner
[this, NKVD39_MGA] call Olsen_FW_FNC_GearScript;        Machine Gun Assistant
[this, NKVD39_Stre] call Olsen_FW_FNC_GearScript;       Strelok
*/

//======================== Definitions ========================

#define NKVD39_Weapon_Starshina \
        [ \
            [/*Mosin M1930*/ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[75], \
            [/*Mosin M38*/ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[25] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD39_Weapon_MG \
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem; \
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem; \
        [Rus_Mag_DP_Mixed_Ball_Red,9] call Olsen_FW_FNC_AddItem;

#define NKVD39_Weapon_Rifleman \
        [ \
            [/*Mosin M1930*/ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[90], \
            [/*Mosin M38*/ \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD39_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,1,"vest"] \
            ],[65], \
            [/*M1895 Nagant*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,1,"vest"] \
            ],[20], \
            [/*Mauser C-96*/ \
                [Rus_Weap_C96_Mag,1], \
                [Rus_Weap_C96], \
                [Rus_Weap_C96_Mag,1,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Platoon

    //Leutenant
    NKVD39_LT = ["NKVD39_LT", {
        params ["_unit"];

        [NKVD_Uni_LT] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_O_Pistol] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Secondary Weapon
        NKVD39_Weapon_Secondary;
    }];

    //Starshina
    NKVD39_Star = ["NKVD39_Star", {
        params ["_unit"];

        [NKVD_Uni_Star] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Primary Weapon
        NKVD39_Weapon_Starshina;

        //Secondary Weapon
        NKVD39_Weapon_Secondary;
    }];

    //Radio Operator
    NKVD39_RTO = ["NKVD39_RTO", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD39_Weapon_Rifleman;
    }];

    //Medic
    NKVD39_Med = ["NKVD39_Med", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD39_Weapon_Rifleman;

        //Extra
        NKVD_Medic_Equipment;
    }];

    //Sergeant
    NKVD39_Sgt = ["NKVD39_Sgt", {
        params ["_unit"];

        [NKVD_Uni_Sgt] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Primary Weapon
        NKVD39_Weapon_Starshina;
    }];

    //Efreitor
    NKVD39_Efr = ["NKVD39_Efr", {
        params ["_unit"];

        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD39_Weapon_Starshina;
    }];

    //Machine Gunner
    NKVD39_MG = ["NKVD39_MG", {
        params ["_unit"];

        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_HKC] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD39_Weapon_MG;

        //Secondary Weapon
        NKVD39_Weapon_Secondary;
    }];

    //Machine Gun Assistant
    NKVD39_MGA = ["NKVD39_MGA", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        NKVD39_Weapon_Rifleman;

        //Extra
        [Rus_Mag_DP_Mixed_Ball_Red,6] call Olsen_FW_FNC_AddItem;
    }];

    //Strelok
    NKVD39_Stre = ["NKVD39_Stre", {
        params ["_unit"];

        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD39_Weapon_Rifleman;
    }];
