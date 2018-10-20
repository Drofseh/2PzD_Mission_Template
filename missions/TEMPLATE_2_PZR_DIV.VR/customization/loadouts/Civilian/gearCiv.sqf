// Info: Civilian Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

/*
    //Unit
[this,"Civ_Ran"] call FNC_GearScript;     Random Civs, like either Civ_R1 or Civ_R2
[this,"Civ_R1"] call FNC_GearScript;      Random Civs with Leather Jackets, Turtlenecks, Slacks
[this,"Civ_R2"] call FNC_GearScript;      Random Civs with Fat button up shirt, slacks, rubber boots
[this,"Civ_R3"] call FNC_GearScript;      Random Civs with Suits, Fedora, no backpack
[this,"Civ_R4"] call FNC_GearScript;      Random Civs with Lab Coats
[this,"Civ_Priest"] call FNC_GearScript;  Orthodox Priest
*/

//======================== Loadouts ========================

//Unit

    //Random Civs, like either Civ_R1 or Civ_R2
    case "Civ_Ran" : {
        [Civ_Uni_ran] call FNC_addItemRandom;
        [Civ_BP_r] call FNC_addItemRandom;
        [Civ_Hat_r] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    };

    //Random Civs with Leather Jackets, Turtlenecks, Slacks
    case "Civ_R1" : {
        [Civ_Uni_1_r] call FNC_addItemRandom;
        [Civ_BP_r] call FNC_addItemRandom;
        [Civ_Hat_r] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    };

    //Random Civs with Fat button up shirt, slacks, rubber boots
    case "Civ_R2" : {
        [Civ_Uni_2_r] call FNC_addItemRandom;
        [Civ_BP_r] call FNC_addItemRandom;
        [Civ_Hat_r] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    };

    //Random Civs with Suits, Fedora, no backpack
    case "Civ_R3" : {
        [Civ_Uni_3_r] call FNC_addItemRandom;
        [Civ_Hat_3_r] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    };

    //Random Civs with Lab Coats
    case "Civ_R4" : {
        [Civ_Uni_Lab_r] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    };

    //Orthodox Priest
    case "Civ_Priest" : {
        [Civ_Uni_Priest_O] call FNC_addItemRandom;
        [Civ_Face_r] call FNC_addItemRandom;

        //Assigned Items
        Civ_Default_Equipment;
    };
    