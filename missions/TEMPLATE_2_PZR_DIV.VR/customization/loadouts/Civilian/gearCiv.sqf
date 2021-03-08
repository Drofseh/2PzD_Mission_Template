// Info: Civilian Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

//Loadouts

/*
    //Unit
[this, Civ_Ran] call Olsen_FW_FNC_GearScript;      Random Civs, like either Civ_R1 or Civ_R2
[this, Civ_R1] call Olsen_FW_FNC_GearScript;       Random Civs with Leather Jackets, Turtlenecks, Slacks
[this, Civ_R2] call Olsen_FW_FNC_GearScript;       Random Civs with Fat button up shirt, slacks, rubber boots
[this, Civ_R3] call Olsen_FW_FNC_GearScript;       Random Civs with Suits, Fedora, no backpack
[this, Civ_R4] call Olsen_FW_FNC_GearScript;       Random Civs with Lab Coats
[this, Civ_Priest] call Olsen_FW_FNC_GearScript;   Orthodox Priest
*/

//======================== Loadouts ========================

//Unit

    //Random Civs, like either Civ_R1 or Civ_R2
    Civ_Ran = ["Civ_Ran", {
        params ["_unit"];

        [Civ_Uni_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Hat_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    }];

    //Random Civs with Leather Jackets, Turtlenecks, Slacks
    Civ_R1 = ["Civ_R1", {
        params ["_unit"];

        [Civ_Uni_1_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Hat_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    }];

    //Random Civs with Fat button up shirt, slacks, rubber boots
    Civ_R2 = ["Civ_R2", {
        params ["_unit"];

        [Civ_Uni_2_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_BP_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Hat_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    }];

    //Random Civs with Suits, Fedora, no backpack
    Civ_R3 = ["Civ_R3", {
        params ["_unit"];

        [Civ_Uni_3_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Hat_3_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    }];

    //Random Civs with Lab Coats
    Civ_R4 = ["Civ_R4", {
        params ["_unit"];

        [Civ_Uni_Lab_r] call Olsen_FW_FNC_addItemRandom;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    }];

    //Orthodox Priest
    Civ_Priest = ["Civ_Priest", {
        params ["_unit"];

        [Civ_Uni_Priest_O] call Olsen_FW_FNC_addItem;
        [Civ_Face_r] call Olsen_FW_FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    }];
