// Info: German Luftwaffe 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

[this, Luft39_Pilot] call Olsen_FW_FNC_GearScript;      Pilot
*/

//======================== Definitions ========================

//For Officers
#define Luft39_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[53], \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[37], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Enlisted
#define Luft39_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[58], \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[42], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

    //Pilot
    Luft39_Pilot = ["Luft39_Pilot", {
        params ["_unit"];

        [Luft_Uni_Pilot] call Olsen_FW_FNC_AddItem;
        [Luft_Vest_Pilot] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [Luft_Helmet_Pilot] call Olsen_FW_FNC_AddItem;
        [GEN_Face_WatchBrown] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        Ger_Default_Equipment;
        Ger_Leader_Equipment;

        //Secondary Weapon
        Luft39_Weapon_Officer_Secondary;

        //Extra
        [GEN_Gren_Smoke_W,2,"vest"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_B,2,"vest"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_P,2,"vest"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_O,2,"vest"] call Olsen_FW_FNC_AddItem;
    }];