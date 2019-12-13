#ifdef preinit

    #include "preInit.sqf"

#endif

#ifdef framework

    #include "init.sqf"

#endif

#ifdef debriefing_sections

    class shot_Count {
        title = "Munitions Expended";
        variable = "aCount_textFinal";
    };

/*
    class aCount_textBLU {
        title = "BLUFOR Munitions Expended";
        variable = "aCount_textBLU";
    };

    class aCount_textOP {
        title = "OPFOR Munitions Expended";
        variable = "aCount_textRED";
    };

    class aCount_textRES {
        title = "RESISTANCE Munitions Expended";
        variable = "aCount_textRES";
    };
*/

#endif