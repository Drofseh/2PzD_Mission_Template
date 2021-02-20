//This module allows people who join in progress to teleport to their squad members.
// Settings can be configured for each side.

//JIPDENYTIME
// After how many seconds should a player be considered JIP
// This only applies if you are using JIPTYPE "DENY".
// Set this to -1 if not using the "DENY" JIPTYPE.
FW_JIPDENYTIME = -1;

switch (playerSide) do {

    case west: {
        //JIPTYPE
        //How should JIPs be handled, options are:
        //  DENY: Player is killed and put in spectator.
        //  TELEPORT: Player can teleport to his squad.
        //  TRANSPORT: Player can send a hint to all group leaders requesting transport.
        FW_JIPTYPE = "TELEPORT";

        //JIPDISTANCE
        //When you spawn, if your squad members are more then JIPDISTANCE meters away, you get the option to teleport or request transport.
        FW_JIPDISTANCE = 50;

        //SPAWNDISTANCE
        //If you move SPAWNDISTANCE meters away from your spawn position you loose the option to teleport or request transport.
        FW_SPAWNDISTANCE = 200;
    };

    case east: {
        FW_JIPTYPE = "TELEPORT";

        FW_JIPDISTANCE = 50;

        FW_SPAWNDISTANCE = 200;
    };

    case independent: {
        FW_JIPTYPE = "TELEPORT";

        FW_JIPDISTANCE = 50;

        FW_SPAWNDISTANCE = 200;
    };

    case civilian: {
        FW_JIPTYPE = "TELEPORT";

        FW_JIPDISTANCE = 50;

        FW_SPAWNDISTANCE = 200;
    };
};
