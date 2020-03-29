// Info: Soviet NKVD Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon HQ
[this,"NKVD41Nov_LT"] call Olsen_FW_FNC_GearScript;        Leutenant
[this,"NKVD41Nov_Star"] call Olsen_FW_FNC_GearScript;      Starshina
[this,"NKVD41Nov_RTO"] call Olsen_FW_FNC_GearScript;       Radio Operator
[this,"NKVD41Nov_Med"] call Olsen_FW_FNC_GearScript;       Medic

    Squad
[this,"NKVD41Nov_Sgt"] call Olsen_FW_FNC_GearScript;       Sergeant
[this,"NKVD41Nov_Efr"] call Olsen_FW_FNC_GearScript;       Efreitor
[this,"NKVD41Nov_MG"] call Olsen_FW_FNC_GearScript;        Machine Gunner
[this,"NKVD41Nov_MGA"] call Olsen_FW_FNC_GearScript;       Machine Gun Assistant
[this,"NKVD41Nov_Stre"] call Olsen_FW_FNC_GearScript;      Strelok
*/

//======================== Definitions ========================

#define NKVD41Nov_Weapon_Officer \
        [ \
            [/*Pistol Only*/ \
                [NKVD_Vest_O_Pistol] \
            ],[50], \
            [/*PPD-40*/ \
                [NKVD_Vest_O_PPSH], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[25], \
            [/*PPSh-41*/ \
                [NKVD_Vest_O_PPSH], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[25] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD41Nov_Weapon_Starshina \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[30], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[40], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[10], \
            [/*PPD-40*/ \
                [NKVD_Vest_O_PPSH], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[10], \
            [/*PPSh-41*/ \
                [NKVD_Vest_O_PPSH], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD41Nov_Weapon_Sergeant \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[35], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[35], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[10], \
            [/*PPD-40*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[10], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD41Nov_Weapon_Efreitor \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[35], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[30], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[10], \
            [/*PPD-40*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [Rus_Mag_PPD40,1,"vest"] \
            ],[10], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD41Nov_Weapon_MG \
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem; \
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem; \
        [Rus_Mag_DP_Mixed_Ball_Red,9] call Olsen_FW_FNC_AddItem;

#define NKVD41Nov_Weapon_Rifleman_Light \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[60], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[25], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[10], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD41Nov_Weapon_Rifleman \
        [ \
            [/*Mosin M1930*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[70], \
            [/*Mosin M38*/ \
                [NKVD_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM38], \
                [Rus_Mag_Mosin,8,"vest"] \
            ],[15], \
            [/*SVT-40*/ \
                [NKVD_Vest_SVT], \
                [Rus_Mag_SVT40,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT40,5,"vest"] \
            ],[10], \
            [/*PPSh-41*/ \
                [NKVD_Vest_PPSH_D], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH_D], \
                [Rus_Mag_PPSH_D,1,"vest"] \
            ],[5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define NKVD41Nov_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,1,"vest"] \
            ],[75], \
            [/*M1895 Nagant*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,1,"vest"] \
            ],[15], \
            [/*Mauser C-96*/ \
                [Rus_Weap_C96_Mag,1], \
                [Rus_Weap_C96], \
                [Rus_Weap_C96_Mag,1,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Platoon

    //Leutenant
    case "NKVD41Nov_LT" : {
        [NKVD_Uni_LT] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_Officer;

        //Secondary Weapon
        NKVD41Nov_Weapon_Secondary;
    };

    //Starshina
    case "NKVD41Nov_Star" : {
        [NKVD_Uni_Star] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_Starshina;

        //Secondary Weapon
        NKVD41Nov_Weapon_Secondary;
    };

    //Radio Operator
    case "NKVD41Nov_RTO" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_Rifleman_Light;
    };

    //Medic
    case "NKVD41Nov_Med" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_Rifleman_Light;

        //Extra
        NKVD_Medic_Equipment;
    };

    //Sergeant
    case "NKVD41Nov_Sgt" : {
        [NKVD_Uni_Sgt] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        NKVD_Leader_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_Sergeant;
    };

    //Efreitor
    case "NKVD41Nov_Efr" : {
        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_Efreitor;
    };

    //Machine Gunner
    case "NKVD41Nov_MG" : {
        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_HKC] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_MG;

        //Secondary Weapon
        NKVD41Nov_Weapon_Secondary;
    };

    //Machine Gun Assistant
    case "NKVD41Nov_MGA" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        NKVD41Nov_Weapon_Rifleman_Light;

        //Extra
        [Rus_Mag_DP_Mixed_Ball_Red,6] call Olsen_FW_FNC_AddItem;
    };

    //Strelok
    case "NKVD41Nov_Stre" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        NKVD_Default_Equipment;

        //Primary Weapon
        NKVD41Nov_Weapon_Rifleman;
    };
