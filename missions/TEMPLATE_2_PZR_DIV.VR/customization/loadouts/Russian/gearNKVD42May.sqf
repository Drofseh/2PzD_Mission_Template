// Info: Soviet NKVD Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

//Loadouts

    //Platoon HQ
//[this,"NKVD42May_LT"] call FNC_GearScript;        Leutenant
//[this,"NKVD42May_Star"] call FNC_GearScript;      Starshina
//[this,"NKVD42May_RTO"] call FNC_GearScript;       Radio Operator
//[this,"NKVD42May_Med"] call FNC_GearScript;       Medic

    //Squad
//[this,"NKVD42May_Sgt"] call FNC_GearScript;       Sergeant
//[this,"NKVD42May_Efr"] call FNC_GearScript;       Efreitor
//[this,"NKVD42May_MG"] call FNC_GearScript;        Machine Gunner
//[this,"NKVD42May_MGA"] call FNC_GearScript;       Machine Gun Assistant
//[this,"NKVD42May_Stre"] call FNC_GearScript;      Strelok

//======================== Loadouts ========================

//Platoon

    //Leutenant
    case "NKVD42May_LT" : {
        [NKVD_Uni_LT] call FNC_AddItem;
        [NKVD_Hat_O] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;
        Rus_leader_equipment;

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
        [NKVD_Vest_O_PPSH_K],
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,5,"vest"]
        ],[25]
        ] call FNC_AddItemRandomPercent;

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
        ] call FNC_AddItemRandomPercent;
    };

    //Starshina
    case "NKVD42May_Star" : {
        [NKVD_Uni_Star] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;
        Rus_leader_equipment;

        //Primary Weapon
        [
        [//PPSH
        [NKVD_Vest_O_PPSH],
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,5,"vest"]
        ],[50],
        [//PPSH and Knife
        [NKVD_Vest_O_PPSH_K],
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,5,"vest"]
        ],[50]
        ] call FNC_AddItemRandomPercent;

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
        ] call FNC_AddItemRandomPercent;
    };

    //Radio Operator
    case "NKVD42May_RTO" : {
        [NKVD_Uni_Stre] call FNC_AddItem;
        [Rus_BP_Radio] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;

        //Primary Weapon
        [
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
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
        [//AVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_AVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[3]
        ] call FNC_AddItemRandomPercent;
    };

    //Medic
    case "NKVD42May_Med" : {
        [NKVD_Uni_Stre] call FNC_AddItem;
        [Rus_BP_Med] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;

        //Primary Weapon
        [
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
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
        [//AVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_AVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[3]
        ] call FNC_AddItemRandomPercent;

        //Extra
        Rus_medic_equipment;
    };

    //Sergeant
    case "NKVD42May_Sgt" : {
        [NKVD_Uni_Sgt] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;

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
        ] call FNC_AddItemRandomPercent;
    };

    //Efreitor
    case "NKVD42May_Efr" : {
        [NKVD_Uni_Efr] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;

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
        ] call FNC_AddItemRandomPercent;
    };

    //Machine Gunner
    case "NKVD42May_MG" : {
        [NKVD_Uni_Efr] call FNC_AddItem;
        [NKVD_Vest_HKC] call FNC_AddItem;
        [Rus_BP_MG] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;

        //Primary Weapon
        [Rus_Mag_DP,1] call FNC_AddItem;
        [Rus_Weap_DP] call FNC_AddItem;
        [Rus_Mag_DP,9] call FNC_AddItem;

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
        ] call FNC_AddItemRandomPercent;
    };

    //Machine Gun Assistant
    case "NKVD42May_MGA" : {
        [NKVD_Uni_Stre] call FNC_AddItem;
        [Rus_BP_MG] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;
        [GEN_BinoR] call FNC_AddItem;

        //Primary Weapon
        [
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
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
        [//AVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_AVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[3]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Rus_Mag_DP,6] call FNC_AddItem;
    };

    //Strelok
    case "NKVD42May_Stre" : {
        [NKVD_Uni_Stre] call FNC_AddItem;
        [NKVD_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Rus_default_equipment;

        //Primary Weapon
        [
        [//Mosin M38
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
        [//Mosin M9130
        [NKVD_Vest_Mosin],
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Mag_Mosin,8,"vest"]
        ],[25],
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
        [//AVT
        [NKVD_Vest_SVT],
        [Rus_Mag_SVT40,1],
        [Rus_Weap_AVT40],
        [Rus_Mag_SVT40,4,"vest"]
        ],[3]
        ] call FNC_AddItemRandomPercent;
    };