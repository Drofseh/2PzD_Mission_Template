// Info: German Wehrmacht Eastern Front 1942 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this,"WHREF42Jan_CC"] call FNC_GearScript;     Kompanieführer
[this,"WHREF42Jan_C2"] call FNC_GearScript;     Kompanietruppführer

    //Zugtrupp
[this,"WHREF42Jan_PC"] call FNC_GearScript;     Zugführer
[this,"WHREF42Jan_P2"] call FNC_GearScript;     Zugtruppführer
[this,"WHREF42Jan_RTO"] call FNC_GearScript;    Funker
[this,"WHREF42Jan_Mess"] call FNC_GearScript;   Melder
[this,"WHREF42Jan_MedP"] call FNC_GearScript;   Krankenträger

    //Gruppe
[this,"WHREF42Jan_SL"] call FNC_GearScript;     Gruppenführer
[this,"WHREF42Jan_S2"] call FNC_GearScript;     Stellvertretender Gruppenführer
[this,"WHREF42Jan_S3"] call FNC_GearScript;     Gefreiter
[this,"WHREF42Jan_MG"] call FNC_GearScript;     MG-Richtschütze
[this,"WHREF42Jan_MGA"] call FNC_GearScript;    MG-Hilfsschütze
[this,"WHREF42Jan_MGAB"] call FNC_GearScript;   MG-Munitionsträger
[this,"WHREF42Jan_Gren"] call FNC_GearScript;   Grenadier
[this,"WHREF42Jan_MedS"] call FNC_GearScript;   Hilfs-Krankenträger
[this,"WHREF42Jan_Rif"] call FNC_GearScript;    Gewehrschütze

    //Weapon Truppen
[this,"WHREF42Jan_MortSL"] call FNC_GearScript; Mortar Truppführer
[this,"WHREF42Jan_MortG"] call FNC_GearScript;  Mortar Granatwerferschützen
[this,"WHREF42Jan_MortA"] call FNC_GearScript;  Mortar Munitionsträger

[this,"WHREF42Jan_HMGSL"] call FNC_GearScript;  HMG Truppführer
[this,"WHREF42Jan_HMGG"] call FNC_GearScript;   HMG Richtschütze
[this,"WHREF42Jan_HMGA"] call FNC_GearScript;   HMG Munitionsträger

[this,"WHREF42Jan_ATRSL"] call FNC_GearScript;  Panzerbüchse Truppführer
[this,"WHREF42Jan_ATRG"] call FNC_GearScript;   Panzerbüchse Richtschütze
[this,"WHREF42Jan_ATRA"] call FNC_GearScript;   Panzerbüchse Munitionsträger

    //Tank Crew
[this,"WHREF42Jan_VCom"] call FNC_GearScript;   Besatzungsführer
[this,"WHREF42Jan_VCrew"] call FNC_GearScript;  Besatzung
*/

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    case "WHREF42Jan_CC" : {
        [Ger_Uni_CC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;
        _unit removeItem "TFAR_rf7800str";

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[15],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[43],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[23],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

    //Kompanietruppführer
    case "WHREF42Jan_C2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[15],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[45],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[31],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

//Platoon HQ

    //Zugführer
    case "WHREF42Jan_PC" : {
        [Ger_Uni_PC] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_Hat_Officer] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[15],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[43],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[23],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

    //Zugtruppführer
    case "WHREF42Jan_P2" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[15],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Frag_SC,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Funker
    case "WHREF42Jan_RTO" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Radio] call FNC_AddItem;
        [Ger_Hat] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;
        _unit removeItem "TFAR_rf7800str";

        //Assigned Items
        Ger_default_equipment;
        [GEN_Headset] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;
    };

    //Melder
    case "WHREF42Jan_Mess" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Frag_SC,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Krankenträger
    case "WHREF42Jan_MedP" : {
        [Ger_Uni_Med] call FNC_AddItemRandom;
        [Ger_Vest_Med] call FNC_AddItemRandom;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
        Ger_medicP_equipment;
    };

//Squad

    //Gruppenführer
    case "WHREF42Jan_SL" : {
        [Ger_Uni_SL] call FNC_AddItem;
        [Ger_Vest_SL] call FNC_AddItem;
        [Ger_BP_AF] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[80],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,2,"vest"]
        ],[15],
        [//PPSh-41, Drum
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,2,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Frag_SC,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Stellvertretender Gruppenführer
    case "WHREF42Jan_S2" : {
        [Ger_Uni_S2_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Frag_SC,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Gefreiter
    case "WHREF42Jan_S3" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_MP40] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,6,"vest"]
        ],[80],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,2,"vest"]
        ],[15],
        [//PPSh-41, Drum
        [Rus_Mag_PPSH_D,1],
        [Rus_Weap_PPSH_D],
        [Rus_Mag_PPSH_D,2,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Frag_SC,1] call FNC_AddItem;
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //MG-Richtschütze
    case "WHREF42Jan_MG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[45],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[31],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Primary Weapon
        [Ger_Mag_MG_50,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_50,5,"vest"] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Hilfsschütze
    case "WHREF42Jan_MGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_BinoG] call FNC_AddItem;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50,3] call FNC_AddItem;
    };

    //MG-Munitionsträger
    case "WHREF42Jan_MGAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_MG_B] call FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_50,5] call FNC_AddItem;
    };

    //Grenadier
    case "WHREF42Jan_Gren" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call FNC_AddItem;
        [Ger_Weap_K98] call FNC_AddItem;
        [Ger_Weap_K98_RG] call FNC_AddItem;
        [Ger_Mag_K98,12,"vest"] call FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
    };

    //Hilfs-Krankenträger
    case "WHREF42Jan_MedS" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_Med] call FNC_AddItem;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_medicS_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Frag_SC,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

    //Gewehrschütze
    case "WHREF42Jan_Rif" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_r] call FNC_AddItemRandom;
        [Ger_Helmet] call FNC_AddItem;
        [GEN_Face_r] call FNC_AddItemRandom;
        
        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Gren_Frag_SC,1] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [Ger_Mag_MG_50,2] call FNC_AddItem;
    };

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    case "WHREF42Jan_MortSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;
        [GEN_ace_rangetable,1] call FNC_AddItem;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[45],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[31],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_MortB,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Mortar Granatwerferschützen
    case "WHREF42Jan_MortG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_HGun] call FNC_AddItemRandom;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_ace_maptools,1] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[45],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[31],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_MortT,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //Mortar Munitionsträger
    case "WHREF42Jan_MortA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        [GEN_ace_maptools,1] call FNC_AddItem;
        [GEN_ace_rangetable,1] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_Mort_HE,4] call FNC_AddItem;
    };

    //HMG Team
    //HMG Truppführer
    case "WHREF42Jan_HMGSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_MGA] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;
        [GEN_ace_sparebarrel] call FNC_AddItem;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Launcher
        [Ger_Weap_MG_T,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Richtschütze
    case "WHREF42Jan_HMGG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[45],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[31],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Primary Weapon
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Weap_MG34] call FNC_AddItem;
        [Ger_Mag_MG_250,1] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
    };

    //HMG Munitionsträger
    case "WHREF42Jan_HMGA" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_MG_250,2] call FNC_AddItem;
        [Ger_Mag_MG_150,1] call FNC_AddItem;
    };

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    case "WHREF42Jan_ATRSL" : {
        [Ger_Uni_S3_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call FNC_AddItem;
    };

    //Panzerbüchse Richtschütze
    case "WHREF42Jan_ATRG" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_MG] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[45],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[31],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call FNC_AddItem;
        [Ger_Weap_PzB39] call FNC_AddItem;
        [Ger_Mag_PzB39,20] call FNC_AddItem;
    };

    //Panzerbüchse Munitionsträger
    case "WHREF42Jan_ATRAB" : {
        [Ger_Uni_Rif_r] call FNC_AddItemRandom;
        [Ger_Vest_K98] call FNC_AddItem;
        [Ger_BP_T34] call FNC_AddItem;
        [Ger_Helmet_r] call FNC_AddItemRandom;
        [GEN_Face_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Primary Weapon
        [//K98k
        [Ger_Mag_K98,1],
        [Ger_Weap_K98],
        [Ger_Mag_K98,12,"vest"]
        ],[80],
        [//Mosin M91/30
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM9130],
        [Rus_Weap_Mos_Bayo],
        [Rus_Mag_Mosin,12,"vest"]
        ],[13],
        [//SVT
        [Rus_Mag_SVT40,1],
        [Rus_Weap_SVT40],
        [Rus_Mag_SVT40,6,"vest"]
        ],[6],
        [//Mosin M38
        [Rus_Mag_Mosin,1],
        [Rus_Weap_MosM38],
        [Rus_Mag_Mosin,12,"vest"]
        ],[1]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call FNC_AddItem;
        [GEN_Gren_Frag_P,1] call FNC_AddItem;
    };

//Tank Crew

    //Besatzungsführer
    case "WHREF42Jan_VCom" : {
        [Ger_Uni_VCom] call FNC_AddItem;
        [Ger_Vest_PC] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCom] call FNC_AddItemRandom;
        [Ger_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;
        Ger_leader_equipment;

        [//Primary Weapon
        [//MP40
        [Ger_Mag_MP40,1],
        [Ger_Weap_MP40],
        [Ger_Mag_MP40,3,"vest"]
        ],[80],
        [//PPD-40
        [Rus_Mag_PPD40,1],
        [Rus_Weap_PPD40],
        [Rus_Mag_PPD40,1,"vest"]
        ],[15],
        [//PPSh-41, Stick
        [Rus_Mag_PPSH_S,1],
        [Rus_Weap_PPSH_S],
        [Rus_Mag_PPSH_S,3,"vest"]
        ],[5]
        ] call FNC_AddItemRandomPercent;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[43],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[23],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//PPK
        [Ger_Mag_PPK,1],
        [Ger_Weap_PPK],
        [Ger_Mag_PPK,2]
        ],[10],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;
    };

    //Besatzung
    case "WHREF42Jan_VCrew" : {
        [Ger_Uni_VCrew] call FNC_AddItem;
        [Ger_Vest_VCrew] call FNC_AddItem;
        [Ger_BP_VCrew] call FNC_AddItem;
        [Ger_Hat_VCrew] call FNC_AddItemRandom;
        [Ger_Face_Tank_r] call FNC_AddItemRandom;

        //Assigned Items
        Ger_default_equipment;

        [//Secondary Weapon
        [//P38
        [Ger_Mag_P38,1],
        [Ger_Weap_P38],
        [Ger_Mag_P38,2]
        ],[45],
        [//P08
        [Ger_Mag_P08,1],
        [Ger_Weap_P08],
        [Ger_Mag_P08,2]
        ],[31],
        [//TT-33
        [Rus_Mag_TT33,1],
        [Rus_Weap_TT33],
        [Rus_Mag_TT33,1]
        ],[15],
        [//M1895
        [Rus_Mag_M1895,1],
        [Rus_Weap_M1895],
        [Rus_Mag_M1895,1]
        ],[5],
        [//Radom
        [PHA_Mag_Radom,1],
        [PHA_Weap_Radom],
        [PHA_Mag_Radom,2]
        ],[2],
        [//BHP
        [UK_Mag_HiPower,1],
        [UK_Weap_HiPower],
        [UK_Mag_HiPower,2]
        ],[2]
        ] call FNC_AddItemRandomPercent;

        //Extra
        [GEN_Toolkit] call FNC_AddItem;
    };