//Author of the mission
author = "PUT_YOUR_NAME_HERE";

//Mission Name on loading screen
onLoadName = "PUT_YOUR_MISSION_NAME_HERE";

//Sets the image displayed during the loading screen, make sure you make an image, or the default template image will appear
//Must be a .jpg or .paa file
//Dimensions should be equal to a power of 2 on each side (256, 512, 1024, etc) and the aspect ratio should be 2:1 (512x256, 1024x512, etc)
loadScreen = "Logo.jpg";

//Text displayed under the image during the loading screen
onLoadMission = "PUT_YOUR_LOADING_TEXT_HERE";

//Sets the image displayed on the mission selection screen.
//By default the template uses the same image as for the loading screen.
//Must be a .jpg or .paa file
//If you want to make a seperate overview picture then make sure it follows the same dimensional rules as the loading image
overviewPicture = "Logo.jpg";

//Text displayed on the mission selection screen that describes the mission.
//This should not be the same as the mission name.
//"2PzD attempts to capture Paris."
overviewText = "MY_COOL_MISSION_DESCRIPTION";

class Header {

    gameType = Coop;
    minPlayers = 1;
    maxPlayers = 78; //maxPlayers must always be accurate to the amount of playable units, use this code (count playableUnits) in the debug console watch field to get an exact count.

};
