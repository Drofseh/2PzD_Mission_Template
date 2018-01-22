// Info: German Luftwaffe 1945 January Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

//[this,"Luft45Jan_Pilot"] call FNC_GearScript;     Pilot

//======================== Loadouts ========================

    //Pilot
    case "Luft45Jan_Pilot" : {
        ["U_LIB_GER_LW_pilot"] call FNC_AddItem;
        ["V_LIB_GER_TankPrivateBelt"] call FNC_AddItem;
        ["ACE_NonSteerableParachute"] call FNC_AddItem;
        ["H_LIB_GER_LW_PilotHelmet"] call FNC_AddItem;
        ["G_LIB_Watch1"] call FNC_AddItem;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2,"vest"]
        ],[74],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2,"vest"]
        ],[12],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2,"vest"]
        ],[10],
        [//PPK
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2,"vest"]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2,"vest"]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,2] call FNC_AddItem;
        [GEN_Gren_Smoke_B,2] call FNC_AddItem;
        [GEN_Gren_Smoke_P,2] call FNC_AddItem;
        [GEN_Gren_Smoke_O,2] call FNC_AddItem;
    };