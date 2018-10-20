author = "PUT_YOUR_NAME_HERE"; //Author of the mission
onLoadName = "PUT_YOUR_MISSION_NAME_HERE"; //Mission Name on loading screen
loadScreen = "Logo.jpg"; //Sets the image displayed during the loading screen, make sure you make an image, or the default template image will appear
onLoadMission = "PUT_YOUR_LOADING_TEXT_HERE"; //Text displayed under the image during the loading screen
overviewPicture = "Logo.jpg"; //Sets the image displayed on the mission selection screen.

// overviewText = "Russians cross a bridge to capture a German HQ. Rus/Ger, 8:1"; //Text displayed on the mission selection screen that describes the mission.
// overviewText doesn't appear to work, must be set in the editor Multiplayer settings.

class Header {

    gameType = Coop;
    minPlayers = 1;
    maxPlayers = 78; //maxPlayers must always be accurate to the amount of playable units, use this code (count playableUnits) in the debug console watch field to get an exact count.

};
