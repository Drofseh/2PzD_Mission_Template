// Info: German Luftwaffe 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

[this,"Luft39_Pilot"] call FNC_GearScript;     Pilot
*/

//======================== Definitions ========================

//For Officers
#define Luft39_Weapon_Officer_Secondary \
        [                               \
            [                           \
                [Ger_Mag_P08,1],        \
                [Ger_Weap_P08],         \
                [Ger_Mag_P08,2]         \
            ],[53],                     \
            [                           \
                [Ger_Mag_P38,1],        \
                [Ger_Weap_P38],         \
                [Ger_Mag_P38,2]         \
            ],[37],                     \
            [                           \
                [Ger_Mag_PPK,1],        \
                [Ger_Weap_PPK],         \
                [Ger_Mag_PPK,2]         \
            ],[10],                     \
            [                           \
                [Ger_Mag_M1916,1],      \
                [Ger_Weap_M1916],       \
                [Ger_Mag_M1916,2]       \
            ],[1],                      \
            [                           \
                [Ger_Mag_M172_10,1],    \
                [Ger_Weap_M172],        \
                [Ger_Mag_M172_20,2]     \
            ],[0.5]                     \
        ] call FNC_AddItemRandomPercent;

//For Enlisted
#define Luft39_Weapon_Enlisted_Secondary \
        [                                \
            [                            \
                [Ger_Mag_P08,1],         \
                [Ger_Weap_P08],          \
                [Ger_Mag_P08,2]          \
            ],[58],                      \
            [                            \
                [Ger_Mag_P38,1],         \
                [Ger_Weap_P38],          \
                [Ger_Mag_P38,2]          \
            ],[42],                      \
            [                            \
                [Ger_Mag_M1916,1],       \
                [Ger_Weap_M1916],        \
                [Ger_Mag_M1916,2]        \
            ],[1],                       \
            [                            \
                [Ger_Mag_M172_10,1],     \
                [Ger_Weap_M172],         \
                [Ger_Mag_M172_20,2]      \
            ],[0.5]                      \
        ] call FNC_AddItemRandomPercent;

//======================== Loadouts ========================

    //Pilot
    case "Luft39_Pilot" : {
        [Luft_Uni_Pilot] call FNC_AddItem;
        [Luft_Vest_Pilot] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [Luft_Helmet_Pilot] call FNC_AddItem;
        [G_LIB_Watch1] call FNC_AddItem;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        Luft39_Weapon_Officer_Secondary;

        //Extra
        [GEN_Gren_Smoke_W,2] call FNC_AddItem;
        [GEN_Gren_Smoke_B,2] call FNC_AddItem;
        [GEN_Gren_Smoke_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_O,2] call FNC_AddItem;
    };