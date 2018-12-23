// Info: German Luftwaffe 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

[this,"Luft44_Pilot"] call FNC_GearScript;     Pilot
*/

//======================== Definitions ========================

//For Officers
#define Luft44Jan_Weapon_Officer_Secondary \
        [                                  \
            [                              \
                [Ger_Mag_P38,1],           \
                [Ger_Weap_P38],            \
                [Ger_Mag_P38,2]            \
            ],[68],                        \
            [                              \
                [Ger_Mag_P08,1],           \
                [Ger_Weap_P08],            \
                [Ger_Mag_P08,2]            \
            ],[18],                        \
            [                              \
                [Ger_Mag_PPK,1],           \
                [Ger_Weap_PPK],            \
                [Ger_Mag_PPK,2]            \
            ],[10],                        \
            [                              \
                [Pol_Mag_Radom,1],         \
                [Pol_Weap_Radom],          \
                [Pol_Mag_Radom,2]          \
            ],[2],                         \
            [                              \
                [UK_Mag_HiPower,1],        \
                [UK_Weap_HiPower],         \
                [UK_Mag_HiPower,2]         \
            ],[2]                          \
        ] call FNC_AddItemRandomPercent;

//For Enlisted
#define Luft44Jan_Weapon_Enlisted_Secondary \
        [                                   \
            [                               \
                [Ger_Mag_P38,1],            \
                [Ger_Weap_P38],             \
                [Ger_Mag_P38,2]             \
            ],[70],                         \
            [                               \
                [Ger_Mag_P08,1],            \
                [Ger_Weap_P08],             \
                [Ger_Mag_P08,2]             \
            ],[26],                         \
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

//======================== Loadouts ========================

    //Pilot
    case "Luft44_Pilot" : {
        [Luft_Uni_Pilot] call FNC_AddItem;
        [Luft_Vest_Pilot] call FNC_AddItem;
        [GEN_BP_Para] call FNC_AddItem;
        [Luft_Helmet_Pilot] call FNC_AddItem;
        [G_LIB_Watch1] call FNC_AddItem;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        Luft44Jan_Weapon_Officer_Secondary;

        //Extra
        [GEN_Gren_Smoke_W,2] call FNC_AddItem;
        [GEN_Gren_Smoke_B,2] call FNC_AddItem;
        [GEN_Gren_Smoke_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_O,2] call FNC_AddItem;
    };