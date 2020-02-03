// This module allows players to be ignored by AI until the player does something to provoke the AI into becoming hostile.
// It does this by manipulating Arma's rating/score system to make friendly AI hostile to specific players by reducing the score of that player.
// Because of this you must make sure that the players and the AI side are set to be friendly in the mission editor.
// You may also want to include a script to make the AI side become hostile to the player side at some point.
// This can be done using the setFriend command.

Covert_side = resistance;
// Pick one of either west, east, resistance, or civilian.
// Make sure that this side is set to be friendly to the AI side in the editor.
// There must also not be any AI units on this side!

Covert_punishAttacking = True;
// If True then shooting or throwing grenades causes AI to become hostile to the player.

Covert_punishVisibleWeapon = True;
// If True then having a visible weapon causes AI to become hostile to the player.
// Holstered pistols and any weapon in the uniform, vest, or backpack are considered hidden.

Covert_punishFastMovement = True;
// If True then running or sprinting will cause the AI to become hostile to the player.
// Walking and Combat Pace are ok.

Covert_punishLocation = False;
// If True then entering a blacklisted area causes the AI to become hostile to the player.
// Set to false by default just in case you forget to add areas to the blacklist.

Covert_blacklistLocations = [];
// Put the variableName of any area marker or any trigger area that you want to forbid the players to be in.
// Don't use too many or performance will start to suffer.
// For example: Covert_blacklistLocations = [marker_1, marker_2];

Covert_punishUniform = False;
Covert_punishVest = False;
Covert_punishBackpack = False;
Covert_punishHeadgear = False;
// If True then having the wrong gear equiped in that slot will cause AI to go hostile to the player.
// Set to false by default just in case you forget to add items to the whitelist.
// Be sure to add correct gear to the whitelist below if you want to use this feature!

Covert_whitelistUniform = [];
Covert_whitelistVest = [""];
Covert_whitelistBackpack = [""];
Covert_whitelistHeadgear = [""];
// These whitelists should contain strings of allowed gear classnames.
// An empty string can be used to indicate that no item is also allowed. ""
// For example: Covert_whitelistBackpack = ["","fow_b_uk_bergenpack"];