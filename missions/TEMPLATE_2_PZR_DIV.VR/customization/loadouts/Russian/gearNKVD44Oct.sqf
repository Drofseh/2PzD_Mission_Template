// Info: Soviet NKVD Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

//Loadouts

    //Platoon HQ
//[this,"NKVD44Oct_LT"] call Olsen_FW_FNC_GearScript;        Leutenant
//[this,"NKVD44Oct_Star"] call Olsen_FW_FNC_GearScript;      Starshina
//[this,"NKVD44Oct_RTO"] call Olsen_FW_FNC_GearScript;       Radio Operator
//[this,"NKVD44Oct_Med"] call Olsen_FW_FNC_GearScript;       Medic

    //Squad
//[this,"NKVD44Oct_Sgt"] call Olsen_FW_FNC_GearScript;       Sergeant
//[this,"NKVD44Oct_Efr"] call Olsen_FW_FNC_GearScript;       Efreitor
//[this,"NKVD44Oct_MG"] call Olsen_FW_FNC_GearScript;        Machine Gunner
//[this,"NKVD44Oct_MGA"] call Olsen_FW_FNC_GearScript;       Machine Gun Assistant
//[this,"NKVD44Oct_Stre"] call Olsen_FW_FNC_GearScript;      Strelok

//======================== Loadouts ========================

//Platoon

    //Leutenant
    case "NKVD44Oct_LT" : {
        [NKVD_Uni_LT] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        [
        [//Pistol
        [NKVD_Vest_O_Pistol]
        ],[50],
        [//PPSH
        [NKVD_Vest_O_PPSH],
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,5,"vest"]
        ],[25],
        [//PPSH and Knife
        [NKVD_Vest_O_PPSH],
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,5,"vest"]
        ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1,"vest"]
        ],[70],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1,"vest"]
        ],[15],
        [//C96
        [Rus_Weap_C96_Mag,1],
        [Rus_Weap_C96],
        [Rus_Weap_C96_Mag,1,"vest"]
        ],[15]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    };

    //Starshina
    case "NKVD44Oct_Star" : {
        [NKVD_Uni_Star] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        Rus_Leader_Equipment;

        //Primary Weapon
        [
        [//PPSH
        [NKVD_Vest_O_PPSH],
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,5,"vest"]
        ],[50],
        [//PPSH and Knife
        [NKVD_Vest_O_PPSH],
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,5,"vest"]
        ],[50]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Secondary Weapon
        [
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1,"vest"]
        ],[70],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1,"vest"]
        ],[15],
        [//C96
        [Rus_Weap_C96_Mag,1],
        [Rus_Weap_C96],
        [Rus_Weap_C96_Mag,1,"vest"]
        ],[15]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    };

    //Radio Operator
    case "NKVD44Oct_RTO" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [
        [//PPSH
        [NKVD_Vest_PPSH],
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,2,"vest"]
        ],[25],
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[22],
        [//SVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[22],
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[20],
        [//Mosin M44
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM44],
        [Rus_Mag_Mosin,8,"vest"]
        ],[11]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    };

    //Medic
    case "NKVD44Oct_Med" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [
        [//PPSH
        [NKVD_Vest_PPSH],
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,2,"vest"]
        ],[25],
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[22],
        [//SVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[22],
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[20],
        [//Mosin M44
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM44],
        [Rus_Mag_Mosin,8,"vest"]
        ],[11]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        Rus_Medic_Equipment;
    };

    //Sergeant
    case "NKVD44Oct_Sgt" : {
        [NKVD_Uni_Sgt] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [
        [//PPSH
        [NKVD_Vest_PPSH],
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,5,"vest"]
        ],[25],
        [//SVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,5,"vest"]
        ],[75]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    };

    //Efreitor
    case "NKVD44Oct_Efr" : {
        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [
        [//PPSH
        [NKVD_Vest_PPSH],
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,5,"vest"]
        ],[75],
        [//SVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,5,"vest"]
        ],[25]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    };

    //Machine Gunner
    case "NKVD44Oct_MG" : {
        [NKVD_Uni_Efr] call Olsen_FW_FNC_AddItem;
        [NKVD_Vest_HKC] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [Rus_Mag_DP_Mixed_Ball_Red,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Mixed_Ball_Red,9] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        [
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1,"vest"]
        ],[70],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1,"vest"]
        ],[15],
        [//C96
        [Rus_Weap_C96_Mag,1],
        [Rus_Weap_C96],
        [Rus_Weap_C96_Mag,1,"vest"]
        ],[15]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    };

    //Machine Gun Assistant
    case "NKVD44Oct_MGA" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;
        [GEN_BinoR] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [
        [//PPSH
        [NKVD_Vest_PPSH],
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,2,"vest"]
        ],[25],
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[22],
        [//SVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[22],
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[20],
        [//Mosin M44
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM44],
        [Rus_Mag_Mosin,8,"vest"]
        ],[11]
        ] call Olsen_FW_FNC_AddItemRandomPercent;

        //Extra
        [Rus_Mag_DP_Mixed_Ball_Red,6] call Olsen_FW_FNC_AddItem;
    };

    //Strelok
    case "NKVD44Oct_Stre" : {
        [NKVD_Uni_Stre] call Olsen_FW_FNC_AddItem;
        [NKVD_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        Rus_Default_Equipment;

        //Primary Weapon
        [
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[22],
        [//PPSH
        [NKVD_Vest_PPSH],
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,2,"vest"]
        ],[25],
        [//SVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[22],
        [//Mosin M44
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM44],
        [Rus_Mag_Mosin,8,"vest"]
        ],[6]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    };
