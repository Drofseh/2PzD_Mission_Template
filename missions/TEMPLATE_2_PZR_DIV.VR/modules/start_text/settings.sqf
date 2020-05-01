//_startTextArray Format:
//
//["LINE_TYPE", "LINE_TEXT"], - remember to put a comma at the end unless this is the last line
//
//Line Types:
//
//TITLEQUOTE - "MyTitle"
//TITLE - MyTitle
//TEXT -  MyText
//TIME - Displays time (no text required)
//DATE - Displays date (no text required)
//DATETIME - Displays date and time (no text required)
/*
The default and all side cases are commented out by default, uncomment the ones you want to use.

Characters with diacritics such as ö will render a blank space instead of the character.
"Operation Sturmmöwe will display as "Operation Sturmm we"
*/

switch (playerSide) do { //Checks what team the player is on
    // If none of the cases below match the player's side then the player will receive the default message
    // Uncomment and use this if you want every single player on the server to receive the same message regardless of the side they are on
    // If you want a different message per side, uncomment and use the side based cases below
/*
    default {

        _startTextArray = [
            ["TITLE", "Battle of Kursk"],
            ["TEXT", "Unternehmen Zitadelle"],
            ["TEXT", "D+0, Northeast of Long_Town_Name"],
            ["DATETIME"]
        ];

    };
*/
/*
    case west: { //If player is west he receives this message

        _startTextArray = [
            ["TITLE", "Battle of Kursk"],
            ["TEXT", "Unternehmen Zitadelle"],
            ["TEXT", "D+2, Northeast of Long_Town_Name"],
            ["DATETIME"]
        ];

    }; //End of west case
*/
/*
    case resistance: { //If player is resistance he receives this message

        _startTextArray = [
            ["TITLE", "Training Day"],
            ["TEXT", "Mouth of the Tenaru River"],
            ["TEXT", "Guadalcanal"],
            ["DATETIME"]
        ];

    }; //End of resistance case
*/
/*
    case east: { //If player is east he receives this message

        _startTextArray = [
            ["TITLE", "Mission_Title_or_something"],
            ["TEXT", "Somewhere in Pyrgos"],
            ["DATETIME"]
        ];

    }; //End of east case
*/
/*
    case civilian: { //If player is civilian he receives this message

        _startTextArray = [
            ["TITLE", "Mission_Title_or_something"],
            ["TEXT", "Somewhere in Pyrgos"],
            ["DATETIME"]
        ];

    }; //End of civilian case
*/
}; //End of switch