//_startTextArray Format:
//
//["LINE_TYPE", "LINE_TEXT"], <-- remember to put a comma at the end unless this is the last line
//
//Line Types:
//
//TITLEQUOTE -> "MyTitle"
//TITLE -> MyTitle
//TEXT - > MyText
//TIME -> Displays time (no text required)
//DATE -> Displays date (no text required)
//DATETIME -> Displays date and time (no text required)


switch (side player) do { //Checks what team the player is on

	case west: { //If player is west he receives this message

		_startTextArray = [
			["TITLEQUOTE", "Battle of Kursk"],
			["TEXT", "Unternehmen Zitadelle"],
			["TEXT", "D+0, Northeast of Long_Town_Name"],
			["TEXT", "0530hrs, 05 July 1943"]
		];

	}; //End of west case

	case east: { //If player is east he receives this message

		_startTextArray = [
			["TITLEQUOTE", "OPFOR Time"],
			["TEXT", "Somewhere in Pyrgos"],
			["DATETIME"]
		];

	}; //End of east case
}; //End of switch