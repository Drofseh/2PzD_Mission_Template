// Info: Imperial Japanese Navy Special Naval Landing Forces 1945 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Platoon
[this,"SNLF45_PC"] call FNC_GearScript;         Platoon Commander
[this,"SNLF45_Med"] call FNC_GearScript;        Medic
[this,"SNLF45_Mark"] call FNC_GearScript;       Marksman
[this,"SNLF45_SL"] call FNC_GearScript;         Squad Leader
[this,"SNLF45_TL"] call FNC_GearScript;         Team Leader
[this,"SNLF45_MG"] call FNC_GearScript;         Machine Gunner
[this,"SNLF45_MGA"] call FNC_GearScript;        Machine Gun Assistant
[this,"SNLF45_MGAB"] call FNC_GearScript;       Machine Gun Ammo Bearer
[this,"SNLF45_Gren"] call FNC_GearScript;       Grenadier
[this,"SNLF45_Rif"] call FNC_GearScript;        Rifleman
[this,"SNLF45_KMortG"] call FNC_GearScript;     Type 89 Gunner
[this,"SNLF45_KMortA"] call FNC_GearScript;     Type 89 Assistant
[this,"SNLF45_KMortAB"] call FNC_GearScript;    Type 89 Ammo Bearer
*/

//======================== Loadouts ========================

//Platoon

    //Platoon Commander
    case "SNLF45_PC" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_O] call FNC_AddItem;
        [//Hat
            [ [IJA_Hat_M_O] ],[75],
            [ [IJA_Hat_M_N_O] ],[25]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;
        IJA_Leader_Equipment;

        [//Weapons
            [//Type 14 Pistol Only
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2,"uniform"]
            ],[60],
            [//Type 100 SMG and Type 14 Pistol
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type100],
                [IJA_Mag_Type100,3],
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2,"uniform"]
            ],[25],
            [//Type 100/44 SMG and Type 14 Pistol
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type10044],
                [IJA_Mag_Type100,3],
                [IJA_Mag_Type14,1],
                [IJA_Weap_Type14],
                [IJA_Mag_Type14,2,"uniform"]
            ],[15]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

    //Medic
    case "SNLF45_Med" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_Med] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [IJA_Helm_M] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        IJA_Medic_Equipment;
    };

    //Marksman
    case "SNLF45_Mark" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_Rif] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_S] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

//Squad

    //Squad Leader
    case "SNLF45_SL" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_NCO] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;
        IJA_Leader_Equipment;

        [//Primary Weapon
            [//Type 99 Arisaka
                [IJA_Mag_Type99_R,1],
                [IJA_Weap_Type99_R],
                [IJA_Weap_Type99_B],
                [IJA_Mag_Type99_R,6]
            ],[60],
            [//Type 100 SMG
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type100],
                [IJA_Mag_Type100,3]
            ],[25],
            [//Type 100/44 SMG
                [IJA_Mag_Type100,1],
                [IJA_Weap_Type10044],
                [IJA_Mag_Type100,3]
            ],[15]
        ] call FNC_AddItemRandomPercent;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2,"uniform"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
    };

    //Team Leader
    case "SNLF45_TL" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_MG] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2,"uniform"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,1] call FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gunner
    case "SNLF45_MG" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_MG] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_M_Mixed_Ball,1] call FNC_AddItem;
        [IJA_Weap_Type99_M] call FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,6,"vest"] call FNC_AddItem;

        //Secondary Weapon
        [IJA_Mag_Type14,1] call FNC_AddItem;
        [IJA_Weap_Type14] call FNC_AddItem;
        [IJA_Mag_Type14,2,"uniform"] call FNC_AddItem;

        //Extra
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gun Assistant
    case "SNLF45_MGA" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_Rif] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [GEN_BinoG] call FNC_AddItem;
        [GEN_ace_sparebarrel] call FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call FNC_AddItem;
    };

    //Machine Gun Ammo Bearer
    case "SNLF45_MGAB" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_Rif] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,12,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_Type99_M_Mixed_Ball,10,"backpack"] call FNC_AddItem;
    };

    //Grenadier
    case "SNLF45_Gren" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_Gren] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,6] call FNC_AddItem;
    };

    //Rifleman
    case "SNLF45_Rif" : {
        [IJA_Uni_M] call FNC_AddItem;
        [IJA_Vest_Rif] call FNC_AddItemRandom;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,1,"backpack"] call FNC_AddItem;
    };

    //Type 89 Gunner
    case "SNLF45_KMortG" : {
        [//Uni
            [ [IJA_Uni_M] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Gren] call FNC_AddItem;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Mag_RGrn,10] call FNC_AddItem;
    };

    //Type 89 Assistant
    case "SNLF45_KMortA" : {
        [//Uni
            [ [IJA_Uni_M] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call FNC_AddItemRandom;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        GEN_Mortar_Equipment;
        [IJA_Gren_Frag,2] call FNC_AddItem;
    };

    //Type 89 Ammo Bearer
    case "SNLF45_KMortAB" : {
        [//Uni
            [ [IJA_Uni_M] ],[75],
            [ [IJA_Uni_Short] ],[25]
        ] call FNC_AddItemRandomPercent;
        [IJA_Vest_Rif] call FNC_AddItemRandom;
        [IJA_BP] call FNC_AddItem;
        [//Hat
            [ [IJA_Helm_M] ],[95],
            [ [IJA_Hat_Haki] ],[5]
        ] call FNC_AddItemRandomPercent;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        IJA_Default_Equipment;

        //Primary Weapon
        [IJA_Mag_Type99_R,1] call FNC_AddItem;
        [IJA_Weap_Type99_R] call FNC_AddItem;
        [IJA_Weap_Type99_B] call FNC_AddItem;
        [IJA_Mag_Type99_R,6,"vest"] call FNC_AddItem;

        //Extra
        [IJA_Gren_Frag,2] call FNC_AddItem;
    };
