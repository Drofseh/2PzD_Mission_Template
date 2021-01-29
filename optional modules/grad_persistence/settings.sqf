// If you're using this module then you better fucking know what you're doing.
// It saves data to the profileNamespace of either your profile or the server's profile.
// This CAN BREAK THINGS, so don't fuck around with this unless you're a very experienced mission maker.
// Read ALL of the linked documentation so you don't fuck things up.

//2PzD Settings
warningMessage = true; // This creates a hint-continue to let you know to check this file and make sure you know what the fuck you're doing. Set to false to disable the hint.
testing = true;         // Set this to true when testing locally and to false when the mission is ready to be uploaded to the server.
saveLocal = false;      // Set this to true if you want persistence data to be saved locally during testing or to false if you do not want data saved for this test.
clearLocal = true;      // Set this to true if you want locally saved persistence data to be cleared when the mission ended via framwork end conditions, set this to false to keep local persistence data between tests..
                        // Framework mission ending must be used to clear persistence data.

finalMission = false;   // WARNING - SETTING THIS TO true WILL DELETE YOUR PERSISTENT CAMPAIGN FROM THE SERVER.
                        //Set this to true if it is the final mission of your campaign to clear persistence data from the server. Leave it at false otherwise.


//General Settings - See https://github.com/gruppe-adler/grad-persistence/wiki/Configuration#attributes for more information
missionTag = "my_persistent_campaign_name"; //Use the name for want for your campaign, each campaign MUST have a unique tag or they will overwrite each other. Example: missionTag = "Hass's Jungle Campaign";
loadOnMissionStart = 1;
missionWaitCondition = "true";
playerWaitCondition = "true";

//Objects - See https://github.com/gruppe-adler/grad-persistence/wiki/saving-objects for more information
saveUnits = 2;
saveVehicles = 2;
saveContainers = 2;
saveStatics = 2;

//Players - See https://github.com/gruppe-adler/grad-persistence/wiki/saving-players for more information
savePlayerInventory = 1;
savePlayerDamage = 1;
savePlayerPosition = 1;
savePlayerMoney = 0; //Not supported in our modset

//Other - See https://github.com/gruppe-adler/grad-persistence/wiki/saving-other for more information
saveMarkers = 3;
saveTasks = 0;
saveTriggers = 1;
saveTimeAndDate = 1;
saveTeamAccounts = 0; //Not supported in our modset

//Custom Variables - See https://github.com/gruppe-adler/grad-persistence/wiki/saving-variables for more information
/*
class customVariables {
    class var1 {
        varName = "mcd_myVariable_test";
        varNamespace = "mission";
        public = 0;
    };
    class var2 {
        varName = "mcd_myPublicVariableOnAUnit_test";
        varNamespace = "unit";
        public = 1;
    };
};
*/
