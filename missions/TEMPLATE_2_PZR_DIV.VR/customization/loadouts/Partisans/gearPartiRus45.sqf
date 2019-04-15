// Info: Pro-Soviet Partisan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts
/*
    //Unit
[this,"PRus45_PC"] call FNC_GearScript;       Platoon level or higher leader.
[this,"PRus45_SL"] call FNC_GearScript;       Squad level leader
[this,"PRus45_MG"] call FNC_GearScript;       Machine Gunner
[this,"PRus45_MGA"] call FNC_GearScript;      Machine Gun Assistant
[this,"PRus45_Parti"] call FNC_GearScript;    Random Partisan
*/

//======================== Loadouts ========================

//Unit

    //Platoon level or higher leader
    case "PRus45_PC" : {
        [Civ_Uni_ran] call FNC_addItemRandom;
        [Civ_Uni_r] call FNC_addItemRandom;
        [Civ_BP] call FNC_addItem;
        [Civ_Beret] call FNC_addItem;
        [Civ_Face_Bino] call FNC_addItem;

        //Assigned Items
        Parti_Default_Equipment;
        Parti_Leader_Equipment;

        //Primary Weapon
        [
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[50],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[25],
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[25]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [GEN_Flare_W,1] call FNC_addItem;
        [GEN_Flare_Pistol] call FNC_addItem;
        [GEN_Flare_W,2,"backpack"] call FNC_addItem;
        [GEN_Flare_R,2,"backpack"] call FNC_addItem;
        [GEN_Flare_G,2,"backpack"] call FNC_addItem;
        [GEN_Flare_Y,2,"backpack"] call FNC_addItem;

        //Extra
        [GEN_Gren_Smoke_W,2] call FNC_AddItem;
    };

    //Squad or team level leader
    case "PRus45_SL" : {
        [Civ_Uni_ran] call FNC_addItemRandom;
        [Civ_Uni_r] call FNC_addItemRandom;
        [Civ_BP] call FNC_addItem;
        [Civ_Beret] call FNC_addItem;
        [Civ_Face_Bino] call FNC_addItem;

        //Assigned Items
        Parti_Default_Equipment;
        Parti_Leader_Equipment;

        //Primary Weapon
        [
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[50],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[25],
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[25]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [GEN_Flare_W,1] call FNC_addItem;
        [GEN_Flare_Pistol] call FNC_addItem;
        [GEN_Flare_W,2,"backpack"] call FNC_addItem;
        [GEN_Flare_R,2,"backpack"] call FNC_addItem;
        [GEN_Flare_G,2,"backpack"] call FNC_addItem;
        [GEN_Flare_Y,2,"backpack"] call FNC_addItem;

        //Launcher
        [
            [//Nothing
                []
            ],[90],
            [//Panzerfaust
                [Ger_Weap_PzFaust_30]
            ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,2] call FNC_AddItem;
    };

    //Machine Gunner
    case "PRus45_MG" : {
        [Civ_Uni_ran] call FNC_addItemRandom;
        [Civ_Uni_r] call FNC_addItemRandom;
        [Civ_BP_MG_r] call FNC_addItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [Civ_Hat_r] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Parti_Default_Equipment;

        //Primary Weapon
        [Rus_Mag_DP,1] call FNC_addItem;
        [Rus_Weap_DP] call FNC_addItem;
        [Rus_Mag_DP,2] call FNC_addItem;

        //Secondary Weapon
        [
            [//TT33
                [Rus_Mag_TT33,1],
                [Rus_Weap_TT33],
                [Rus_Mag_TT33,2]
            ],[50],
            [//M1895 Nagant
                [Rus_Mag_M1895,1],
                [Rus_Weap_M1895],
                [Rus_Mag_M1895,2]
            ],[25],
            [//P38
                [Ger_Mag_P38,1],
                [Ger_Weap_P38],
                [Ger_Mag_P38,2]
            ],[15],
            [//P38
                [Ger_Mag_P08,1],
                [Ger_Weap_P08],
                [Ger_Mag_P08,2]
            ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Rus_Mag_DP,6] call FNC_AddItem;
    };

    //Machine Gun Assistant
    case "PRus45_MGA" : {
        [Civ_Uni_ran] call FNC_addItemRandom;
        [Civ_Uni_r] call FNC_addItemRandom;
        [Civ_BP_MG_r] call FNC_addItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [Civ_Hat_r] call FNC_addItemRandom;
        [Civ_Face_Bino] call FNC_addItem;

        //Assigned Items
        Parti_Default_Equipment;
        Parti_Leader_Equipment;

        //Primary Weapon
        [
            [//Mosin M9130
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM9130],
                [Rus_Mag_Mosin,6]
            ],[25],
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[20],
            [//Mosin M38
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM38],
                [Rus_Mag_Mosin,6]
            ],[10],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[10],
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[10],
            [//TT33
                [Rus_Mag_TT33,1],
                [Rus_Weap_TT33],
                [Rus_Mag_TT33,2]
            ],[10],
            [//K98
                [Ger_Mag_K98,1],
                [Ger_Weap_K98],
                [Ger_Mag_K98,6]
            ],[5],
            [//M1895 Nagant
                [Rus_Mag_M1895,1],
                [Rus_Weap_M1895],
                [Rus_Mag_M1895,2]
            ],[5],
            [//P38
                [Ger_Mag_P38,1],
                [Ger_Weap_P38],
                [Ger_Mag_P38,2]
            ],[3],
            [//P08
                [Ger_Mag_P08,1],
                [Ger_Weap_P08],
                [Ger_Mag_P08,3]
            ],[2]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        switch TRUE do {
            case (_unit hasWeapon Rus_Weap_MosM9130): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[23],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[12],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2]
                    ],[4]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_PPSH_S): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[13],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[3],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2]
                    ],[1]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_MosM38): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[23],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[12],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2]
                    ],[4]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_PPSH_D): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[13],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[3],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2]
                    ],[1]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Ger_Weap_MP40): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[13],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[3],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2]
                    ],[1]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Ger_Weap_K98): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[23],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[12],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2]
                    ],[4]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_TT33): {
                [Rus_Mag_TT33,2] call FNC_AddItem;
            };
            case (_unit hasWeapon Rus_Weap_M1895): {
                [Rus_Mag_M1895,2] call FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P38): {
                [Ger_Mag_P38,2] call FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P08): {
                [Ger_Mag_P08,2] call FNC_AddItem;
            };
        };

        //Extra
        [Rus_Mag_DP,6] call FNC_AddItem;
    };

    //Partisan
    case "PRus45_Parti" : {
        [Civ_Uni_ran] call FNC_addItemRandom;
        [Civ_Uni_r] call FNC_addItemRandom;
        [Civ_BP_r] call FNC_addItemRandom;
        [Civ_Hat_r] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Parti_Default_Equipment;

        //Primary Weapon
        [
            [//Mosin M9130
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM9130],
                [Rus_Mag_Mosin,6]
            ],[25],
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[20],
            [//Mosin M38
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM38],
                [Rus_Mag_Mosin,6]
            ],[10],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[10],
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[10],
            [//TT33
                [Rus_Mag_TT33,1],
                [Rus_Weap_TT33],
                [Rus_Mag_TT33,2]
            ],[10],
            [//K98
                [Ger_Mag_K98,1],
                [Ger_Weap_K98],
                [Ger_Mag_K98,6]
            ],[5],
            [//M1895 Nagant
                [Rus_Mag_M1895,1],
                [Rus_Weap_M1895],
                [Rus_Mag_M1895,2]
            ],[5],
            [//P38
                [Ger_Mag_P38,1],
                [Ger_Weap_P38],
                [Ger_Mag_P38,2]
            ],[3],
            [//P08
                [Ger_Mag_P08,1],
                [Ger_Weap_P08],
                [Ger_Mag_P08,3]
            ],[2]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        switch TRUE do {
            case (_unit hasWeapon Rus_Weap_MosM9130): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[23],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[12],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,1]
                    ],[4]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_PPSH_S): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[13],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[3],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,1]
                    ],[1]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_MosM38): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[23],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[12],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,1]
                    ],[4]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_PPSH_D): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[13],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[3],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,1]
                    ],[1]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Ger_Weap_MP40): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[13],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[3],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,1]
                    ],[1]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Ger_Weap_K98): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[23],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[12],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[6],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,1]
                    ],[4]
                ] call FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_TT33): {
                [Rus_Mag_TT33,2] call FNC_AddItem;
            };
            case (_unit hasWeapon Rus_Weap_M1895): {
                [Rus_Mag_M1895,2] call FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P38): {
                [Ger_Mag_P38,2] call FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P08): {
                [Ger_Mag_P08,2] call FNC_AddItem;
            };
        };

        //Launcher
        [
            [//Nothing
                []
            ],[90],
            [//Panzerfaust
                [Ger_Weap_PzFaust_30]
            ],[10]
        ] call FNC_AddItemRandomPercent;

        //Extra
        //Chance to either be grenadier or have a hand grenade and extra MG ammo
        switch TRUE do {
            case (_unit hasWeapon Ger_Weap_K98): {
                [
                    [//Nope!
                        []
                    ],[50],
                    [//Yes!
                        [Civ_BP],
                        [Ger_Acc_K98_GL],
                        [Ger_Weap_K98_Grn_ATS,2],
                        [Ger_Weap_K98_Grn_AP,2],
                        [Ger_Weap_K98_Grn_ATL,1]
                    ],[50]
                ] call FNC_AddItemRandomPercent;
            };
            default {
                [//Frag Grenades
                    [
                        [GEN_Gren_Frag_P,1]
                    ],[66],
                    [
                        [Ger_Gren_Frag_SF,1]
                    ],[19],
                    [
                        [Ger_Gren_HE_SC,1]
                    ],[15]
                ] call FNC_AddItemRandomPercent;
                [Rus_Mag_DP,1] call FNC_addItem;
            };
        };
    };