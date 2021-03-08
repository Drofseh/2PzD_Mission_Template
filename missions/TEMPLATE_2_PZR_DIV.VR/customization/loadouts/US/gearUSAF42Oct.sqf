// Info: US Air Force 1942 October Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Tank Crew
[this, USAF42Oct_Pil] call Olsen_FW_FNC_GearScript;          Pilot
[this, USAF42Oct_GPil] call Olsen_FW_FNC_GearScript;         Glider Pilot
[this, USAF42Oct_ACrew] call Olsen_FW_FNC_GearScript;        Air Crew
*/

//======================== Loadouts ========================

//Tank Crew

    //Pilot
    USAF42Oct_Pil = ["USAF42Oct_Pil", {
        params ["_unit"];

        [USAF_UniG] call Olsen_FW_FNC_AddItem;
        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [USAF_Helm] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
        USAF_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;
    }];

    //Glider Pilot
    USAF42Oct_GPil = ["USAF42Oct_GPil", {
        params ["_unit"];

        [USAF_UniG] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USAF_Helm] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
        USAF_Leader_Equipment;

        //Secondary Weapon
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [US_Mag_M1C,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_M1A1C] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1C,4] call Olsen_FW_FNC_AddItem;
    }];

    //Air Crew
    USAF42Oct_ACrew = ["USAF42Oct_ACrew", {
        params ["_unit"];

        [USAF_UniG] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [USAF_Helm] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        USAF_Default_Equipment;
    }];