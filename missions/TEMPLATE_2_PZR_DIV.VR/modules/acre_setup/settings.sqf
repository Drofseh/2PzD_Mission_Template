//////////////
//BABEL
//////////////

// set this to true to enable babel
// this scrambles the voices of people who don't speak the same language as your side
FW_enable_babel = true;

/*
 * FNC_SetLanguages
 *
 * Use this function in player's init to set player's custom languages (translator for example)
 * faction setting will be overwritten by this value
 *
 * Examples:
 * [this, ["ru"]] call FNC_SetLanguages;
 * [this, ["fr", "en", "ru"]] call FNC_SetLanguages;
*/

//define languages for different sides
//these use the country code from the list below
//change these to make that side speak a different language
FW_languages_babel = [
    ["de"], //WEST Language
    ["ru"], //EAST Language
    ["en"], //INDEPENDENT Language
    ["fr"]  //CIVILIAN Language
];

// all available languages are defined here
// you can add your own if something one you want is missing
// ["ISO 639-1 country code", "Name of language"]
FW_all_languages = [
    ["sq",  "Albanian"],
    ["ar",  "Arabic"],
    ["be",  "Belarusian"],
    ["my",  "Burmese"],
    ["bn",  "Bengali"],
    ["bs",  "Bosnian"],
    ["bg",  "Bulgarian"],
    ["km",  "Cambodian"],
    ["zh",  "Chinese"],
    ["hr",  "Croatian"],
    ["cs",  "Czech"],
    ["da",  "Danish"],
    ["nl",  "Dutch"],
    ["en",  "English"],
    ["et",  "Estonian"],
    ["fil", "Filipino"],
    ["fi",  "Finnish"],
    ["fr",  "French"],
    ["de",  "German"],
    ["el",  "Greek"],
    ["hi",  "Hindi"],
    ["hu",  "Hungarian"],
    ["id",  "Indonesian"],
    ["it",  "Italian"],
    ["ja",  "Japanese"],
    ["ko",  "Korean"],
    ["lv",  "Latvian"],
    ["lt",  "Lithuanian"],
    ["ms",  "Malay"],
    ["mt",  "Maltese"],
    ["mr",  "Marathi"],
    ["ne",  "Nepali"],
    ["no",  "Norwegian"],
    ["fa",  "Persian"],
    ["pl",  "Polish"],
    ["pa",  "Punjabi"],
    ["ro",  "Romanian"],
    ["ru",  "Russian"],
    ["sr",  "Serbian"],
    ["scn", "Sicilian"],
    ["sk",  "Slovak"],
    ["sl",  "Slovene"],
    ["sv",  "Swedish"],
    ["ta",  "Tamil"],
    ["th",  "Thai"],
    ["tr",  "Turkish"],
    ["uk",  "Ukrainian"]
];


//  Direct Speach Starting Volume
/*
  This setting appears to be non-functinal after an ACRE2 update and is disabled until it can be fixed.

  ACRE2 has a built in direct speech slider allowing you to determine how far your voice in direct speech should travel. The system has five states and by default starts in the middle state. The below table contains an approximated table with empirical testing by Bullhorn.

  Volume state  |  Loud (m)  |  Quiet (m)  |  Barely audible (m)
  -2            |  1         |  2          |  13
  -1            |  3         |  15         |  55
   0            |  8         |  30         |  100
  +1            |  12        |  45         |  145
  +2            |  15        |  55         |  195
*/
//FW_Acre_Volume_Value = -2;


/////////////////
//DEFAULT RADIO CHANNEL
/////////////////

/*
 * FNC_SetRadio
 * use this in player init to set default radio channel and spatial (optional)
 *
 * Examples:
 * [this, "ACRE_PRC343", 2] call FNC_SetRadio;
 * [this, "ACRE_PRC117F", 7, "LEFT"] call FNC_SetRadio;
*/


/////////////
//CHANNEL NAMES
/////////////

FW_enable_channel_names = false;

//define custom radio channel names in following array
//don't change "label" value!

FW_ChannelNames = [
    [//WEST - USE SIDE SETTINGS ONLY IF SCRAMBLE IS ON
        [1, "label", "PLTNET 1"],
        [2, "label", "PLTNET 2"],
        [3, "label", "PLTNET 3"],
        [4, "label", "PLTNET 4"],
        [5, "label", "COY"],
        [6, "label", "CAS"],
        [7, "label", "FIRES"]
    ],
    [//EAST
        [1, "label", "PLTNET 1"],
        [2, "label", "PLTNET 2"],
        [3, "label", "PLTNET 3"],
        [4, "label", "PLTNET 4"],
        [5, "label", "COY"],
        [6, "label", "CAS"],
        [7, "label", "FIRES"]
    ],
    [//INDEPENDENT
        [1, "label", "PLTNET 1"],
        [2, "label", "PLTNET 2"],
        [3, "label", "PLTNET 3"],
        [4, "label", "PLTNET 4"],
        [5, "label", "COY"],
        [6, "label", "CAS"],
        [7, "label", "FIRES"]
    ],
    [//DEFAULT - USE THIS IF SCRAMBLE IS OFF
        [1, "label", "PLTNET 1"],
        [2, "label", "PLTNET 2"],
        [3, "label", "PLTNET 3"],
        [4, "label", "PLTNET 4"],
        [5, "label", "COY"],
        [6, "label", "CAS"],
        [7, "label", "FIRES"]
    ]
];


//////////////////
//RADIO SCRAMBLE
//////////////////

FW_enable_scramble = false;

//If enabled all sides will have different scramble frequencies.
//Function below is to switch one unit to different scramble side.

/*
 * FNC_SetScramble
 * Change unit's scramble so it matches set faction
 *
 * Example:
 * [this, east] call FNC_SetScramble;
 * Will set unit's radio to east's scramble setting.
 * (if following example is used on west unit, that unit will hear east units on radio, but won't hear west)
*/


///////////////////////
//EXTRA SETTINGS
///////////////////////

/*
 * For More info visit:
 * http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home
 * http://acre.idi-systems.com/api/api_general.html
 *
 * Remove // to enable a setting.
*/

/*Specify and value between 1.0 and 0.0 Setting it to 0.0 means the terrain loss model is disabled, 0.5 is default.
  Note this setting only effects loss caused by terrain, loss due to power dissipation over range will always occur.*/
//acre_sys_core_terrainLoss = 0.5;

//  RADIO DUPLEX
/*Sets the duplex of radio transmissions.
  If set to true, it means that you will receive transmissions even while talking and multiple people can speak at the same time.
  If false then when you are speaking you cannot receive.*/
acre_sys_core_fullDuplex = false;


//  Signal Interference
/*Sets whether transmissions will interfere with each other.
  This, by default, causes signal loss when multiple people are transmitting on the same frequency.*/
acre_sys_core_interference = true;


/*Sets whether AI can detect players speaking.
  This utilizes an advanced model of inverse-square volume detection and randomization against the range of the unit, and duration and quantity of speaking.
  In a nutshell, the closer you are to an AI unit and the more you speak - the better chance he has of hearing you.*/
acre_sys_core_revealToAI = true;


//  Antenna Direction
/*This setting can be used to disable the simulation of antenna radiation patterns for both the transmitting and receiving radios.
  It will make all antennas act with perfect omni-directional behaviour. (true/false)*/
acre_sys_core_interference = true;
