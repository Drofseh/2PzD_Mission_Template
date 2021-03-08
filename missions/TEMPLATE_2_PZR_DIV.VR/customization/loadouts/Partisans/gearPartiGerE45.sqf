// Info: Eastern Pro-German Partisan Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

//Loadouts
/*
    //Unit
[this, PGerE45_PC] call Olsen_FW_FNC_GearScript;        Platoon level or higher leader.
[this, PGerE45_SL] call Olsen_FW_FNC_GearScript;        Squad level leader
[this, PGerE45_MG] call Olsen_FW_FNC_GearScript;        Machine Gunner
[this, PGerE45_MGA] call Olsen_FW_FNC_GearScript;       Machine Gun Assistant
[this, PGerE45_Parti] call Olsen_FW_FNC_GearScript;     Random Partisan
*/

//======================== Loadouts ========================

//Unit

    //Platoon level or higher leader
    PGerE45_PC = ["PGerE45_PC", {
        params ["_unit"];

        [Parti_Uni_r] call Olsen_FW_FNC_addItemRandom;
        [Parti_Vest_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP] call Olsen_FW_FNC_addItem;
        [Civ_Beret] call Olsen_FW_FNC_addItem;
        [Civ_Face_Bino] call Olsen_FW_FNC_addItem;

        //Assigned Items
        Parti_Default_Equipment;
        Parti_Leader_Equipment;

        //Primary Weapon
        [
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[70],
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[20],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [GEN_Flare_W,1] call Olsen_FW_FNC_addItem;
        [GEN_Flare_Pistol] call Olsen_FW_FNC_addItem;
        [GEN_Flare_W,2,"backpack"] call Olsen_FW_FNC_addItem;
        [GEN_Flare_R,2,"backpack"] call Olsen_FW_FNC_addItem;
        [GEN_Flare_G,2,"backpack"] call Olsen_FW_FNC_addItem;
        [GEN_Flare_Y,2,"backpack"] call Olsen_FW_FNC_addItem;

        //Extra
        [GEN_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Squad or team level leader
    PGerE45_SL = ["PGerE45_SL", {
        params ["_unit"];

        [Parti_Uni_r] call Olsen_FW_FNC_addItemRandom;
        [Parti_Vest_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP] call Olsen_FW_FNC_addItem;
        [Civ_Beret] call Olsen_FW_FNC_addItem;
        [Civ_Face_Bino] call Olsen_FW_FNC_addItem;

        //Assigned Items
        Parti_Default_Equipment;
        Parti_Leader_Equipment;

        //Primary Weapon
        [
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[70],
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[20],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [GEN_Flare_W,1] call Olsen_FW_FNC_addItem;
        [GEN_Flare_Pistol] call Olsen_FW_FNC_addItem;
        [GEN_Flare_W,2,"backpack"] call Olsen_FW_FNC_addItem;
        [GEN_Flare_R,2,"backpack"] call Olsen_FW_FNC_addItem;
        [GEN_Flare_G,2,"backpack"] call Olsen_FW_FNC_addItem;
        [GEN_Flare_Y,2,"backpack"] call Olsen_FW_FNC_addItem;

        //Launcher
        [
            [//Nothing
                []
            ],[80],
            [//Panzerfaust
                [Ger_Weap_PzFaust_30]
            ],[20]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    PGerE45_MG = ["PGerE45_MG", {
        params ["_unit"];

        [Parti_Uni_r] call Olsen_FW_FNC_addItemRandom;
        [Parti_Vest_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP_MG_r] call Olsen_FW_FNC_addItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [Civ_Hat_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Parti_Default_Equipment;

        //Primary Weapon
        [
            [//MG43
                [Ger_Mag_MG_50_Mixed_SmE,1],
                [Ger_Weap_MG34],
                [Ger_Mag_MG_50_Mixed_SmE,2]
            ],[50],
            [//MG42
                [Ger_Mag_MG_50_Mixed_SmE,1],
                [Ger_Weap_MG42],
                [Ger_Mag_MG_50_Mixed_SmE,2]
            ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [
            [//P38
                [Ger_Mag_P38,1],
                [Ger_Weap_P38],
                [Ger_Mag_P38,2,"uniform"]
            ],[50],
            [//P38
                [Ger_Mag_P08,1],
                [Ger_Weap_P08],
                [Ger_Mag_P08,2,"uniform"]
            ],[25],
            [//TT33
                [Rus_Mag_TT33,1],
                [Rus_Weap_TT33],
                [Rus_Mag_TT33,2,"uniform"]
            ],[15],
            [//M1895 Nagant
                [Rus_Mag_M1895,1],
                [Rus_Weap_M1895],
                [Rus_Mag_M1895,2,"uniform"]
            ],[10]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,6] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Assistant
    PGerE45_MGA = ["PGerE45_MGA", {
        params ["_unit"];

        [Parti_Uni_r] call Olsen_FW_FNC_addItemRandom;
        [Parti_Vest_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP_MG_r] call Olsen_FW_FNC_addItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [Civ_Hat_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_Bino] call Olsen_FW_FNC_addItem;

        //Assigned Items
        Parti_Default_Equipment;
        Parti_Leader_Equipment;

        //Primary Weapon
        [
            [//K98
                [Ger_Mag_K98,1],
                [Ger_Acc_K98_Bayo,1,"uniform"],
                [Ger_Weap_K98],
                [Ger_Mag_K98,6]
            ],[40],
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[25],
            [//P38
                [Ger_Mag_P38,1],
                [Ger_Weap_P38],
                [Ger_Mag_P38,2,"uniform"]
            ],[10],
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[7],
            [//P08
                [Ger_Mag_P08,1],
                [Ger_Weap_P08],
                [Ger_Mag_P08,3]
            ],[5],
            [//Mosin M9130
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM9130],
                [Rus_Acc_Mos_Bayo,1,"uniform"], \
                [Rus_Mag_Mosin,6]
            ],[4],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[3],
            [//TT33
                [Rus_Mag_TT33,1],
                [Rus_Weap_TT33],
                [Rus_Mag_TT33,2,"uniform"]
            ],[3],
            [//M1895 Nagant
                [Rus_Mag_M1895,1],
                [Rus_Weap_M1895],
                [Rus_Mag_M1895,2,"uniform"]
            ],[2],
            [//Mosin M38
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM38],
                [Rus_Mag_Mosin,6]
            ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        switch TRUE do {
            case (_unit hasWeapon Rus_Weap_MosM9130): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[23],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[12],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[6],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[4]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            }];
            case (_unit hasWeapon Rus_Weap_PPSH_S): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[13],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[6],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[3],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[1]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_MosM38): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[23],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[12],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[6],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[4]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_PPSH_D): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[13],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[6],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[3],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[1]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
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
                        [Ger_Mag_P08,2,"uniform"]
                    ],[1]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Ger_Weap_K98): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[23],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[12],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[6],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[4]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_TT33): {
                [Rus_Mag_TT33,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
            case (_unit hasWeapon Rus_Weap_M1895): {
                [Rus_Mag_M1895,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P38): {
                [Ger_Mag_P38,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P08): {
                [Ger_Mag_P08,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
        };

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,6] call Olsen_FW_FNC_AddItem;
    };

    //Partisan
    PGerE45_Parti = ["PGerE45_Parti", {
        params ["_unit"];

        [Parti_Uni_r] call Olsen_FW_FNC_addItemRandom;
        [Parti_Vest_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Hat_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Parti_Default_Equipment;

        //Primary Weapon
        [
            [//K98
                [Ger_Mag_K98,1],
                [Ger_Acc_K98_Bayo,1,"uniform"],
                [Ger_Weap_K98],
                [Ger_Mag_K98,6]
            ],[40],
            [//MP40
                [Ger_Mag_MP40,1],
                [Ger_Weap_MP40],
                [Ger_Mag_MP40,3]
            ],[25],
            [//P38
                [Ger_Mag_P38,1],
                [Ger_Weap_P38],
                [Ger_Mag_P38,2,"uniform"]
            ],[10],
            [//PPSh41 Stick
                [Rus_Mag_PPSH_S,1],
                [Rus_Weap_PPSH_S],
                [Rus_Mag_PPSH_S,3]
            ],[7],
            [//P08
                [Ger_Mag_P08,1],
                [Ger_Weap_P08],
                [Ger_Mag_P08,3]
            ],[5],
            [//Mosin M9130
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM9130],
                [Rus_Acc_Mos_Bayo,1,"uniform"],
                [Rus_Mag_Mosin,6]
            ],[4],
            [//PPSh41 Drum
                [Rus_Mag_PPSH_D,1],
                [Rus_Weap_PPSH_D],
                [Rus_Mag_PPSH_D,1]
            ],[3],
            [//TT33
                [Rus_Mag_TT33,1],
                [Rus_Weap_TT33],
                [Rus_Mag_TT33,2,"uniform"]
            ],[3],
            [//M1895 Nagant
                [Rus_Mag_M1895,1],
                [Rus_Weap_M1895],
                [Rus_Mag_M1895,2,"uniform"]
            ],[2],
            [//Mosin M38
                [Rus_Mag_Mosin,1],
                [Rus_Weap_MosM38],
                [Rus_Mag_Mosin,6]
            ],[1]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        switch TRUE do {
            case (_unit hasWeapon Rus_Weap_MosM9130): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[23],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[12],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[6],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[4]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            }];
            case (_unit hasWeapon Rus_Weap_PPSH_S): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[13],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[6],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[3],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[1]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_MosM38): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[23],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[12],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[6],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[4]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_PPSH_D): {
                [
                    [//Nothing
                        []
                    ],[77],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[13],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[6],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[3],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[1]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
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
                        [Ger_Mag_P08,2,"uniform"]
                    ],[1]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Ger_Weap_K98): {
                [
                    [//Nothing
                        []
                    ],[55],
                    [//P38
                        [Ger_Mag_P38,1],
                        [Ger_Weap_P38],
                        [Ger_Mag_P38,1]
                    ],[23],
                    [//P38
                        [Ger_Mag_P08,1],
                        [Ger_Weap_P08],
                        [Ger_Mag_P08,2,"uniform"]
                    ],[12],
                    [//TT33
                        [Rus_Mag_TT33,1],
                        [Rus_Weap_TT33],
                        [Rus_Mag_TT33,1]
                    ],[6],
                    [//M1895 Nagant
                        [Rus_Mag_M1895,1],
                        [Rus_Weap_M1895],
                        [Rus_Mag_M1895,1]
                    ],[4]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            case (_unit hasWeapon Rus_Weap_TT33): {
                [Rus_Mag_TT33,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
            case (_unit hasWeapon Rus_Weap_M1895): {
                [Rus_Mag_M1895,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P38): {
                [Ger_Mag_P38,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
            case (_unit hasWeapon Ger_Weap_P08): {
                [Ger_Mag_P08,2,"uniform"] call Olsen_FW_FNC_AddItem;
            };
        };

        //Launcher
        [
            [//Nothing
                []
            ],[80],
            [//Panzerfaust
                [Ger_Weap_PzFaust_30]
            ],[20]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        //Chance to either be grenadier or have a hand grenade and extra MG ammo
        switch TRUE do {
            case (_unit hasWeapon Ger_Weap_K98): {
                [
                    [//Nope!
                        []
                    ],[80],
                    [//Yes!
                        [Civ_BP],
                        [Ger_Acc_K98_GL],
                        [Ger_Weap_K98_Grn_ATS,2],
                        [Ger_Weap_K98_Grn_AP,2],
                        [Ger_Weap_K98_Grn_ATL,1]
                    ],[20]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
            };
            default {
                [//Frag Grenades
                    [
                        [GEN_Gren_Frag_P,1]
                    ],[34],
                    [
                        [Ger_Gren_Frag_SF,1]
                    ],[33],
                    [
                        [Ger_Gren_HE_SC,1]
                    ],[33]
                ] call Olsen_FW_FNC_AddItemRandomPercent;
                [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_addItem;
            };
        };
    };
