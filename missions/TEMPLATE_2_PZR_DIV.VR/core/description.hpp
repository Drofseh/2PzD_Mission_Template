#ifdef description

    #include "dia\rscdefinitions.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load

    respawn = "BASE"; //Do not change
    respawndelay = 10e10; //How long it takes a player to respawn in seconds - 10e10 is 10 billion seconds, only change this if you want players to respawn
    disabledAI = 1; //disabledAI so unslotted playable units do not spawn as ai
    respawnButton = 0; //Disables the respawn button
    respawnDialog = 0; //Disables the score screen while respawning
    respawnTemplates[] = {"ace_spectator","Base","Counter"}; //Disables respawn countdown // "ace_spectator","Base","Counter","Tickets","Wave",
    enableDebugConsole[] = {"76561197970317496","76561197983143701","76561198096113294","76561197985738940","76561198006804011"};
    // debug console is enabled for Haas, Madsen, Schuttler, Sauer, and Brauer by default. Add your UID to the list if you want to access the debug console during your mission
    // enableDebugConsole = 1; // 1 = Only for logged-in admins - This setting is superseded by the array above.
    enableTargetDebug = 1; //Enable CBA Target Debugging - This allows debugging on non-local machines.

    class Extended_PreInit_EventHandlers {

        class Mission {

            init = "'' call compile preprocessFileLineNumbers 'preinit.sqf'; FNC_GearScript = compile preprocessFileLineNumbers 'customization\gear.sqf'; FNC_VehicleGearScript = compile preprocessFileLineNumbers 'customization\vehGear.sqf';"; //Compiles the gear script for the server and client

        };
    };

    class CfgDebriefingSections {
        class acex_killTracker {
            title = "Acex Killed Events";
            variable = "acex_killTracker_outputText";
        };
    };

#endif

#ifdef description_titles

    #include "dia\debug\dia_debug.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load
    #include "dia\endscreen\dia_endscreen.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load

#endif
