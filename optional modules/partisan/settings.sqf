// This module allows players to be ignored by AI until the player does something to provoke the AI into becoming hostile.
// It does this by manipulating Arma's captive system to change specific players from the civilian side to a hostile side based on their gear and behavior.
// Forbidden behavior includes carrying a visible weapon or binoculars, getting too close to an enemy AI, moving faster than walking speed or the vehicle speed limit.
// If the player is wearing an enemy uniform, vest, backpack, and headgear some restrictions are relaxed but they still cannot be too close to enemy AI, cannot sprint (but can run), and weapons must be lowered.

//==== Partisan Side
// Pick one or more of west, east, or resistance.
// Do not choose civilian.
// More than one can be chosen.
// This must be an array, even if there is only one side chosen (it has to have [] around the sides).
// Having more than one side in the array allows you to have multiple partisan groups for either coop or TvT.
// Make sure that these sides are set to be hostile to the Enemy Side in the editor.
Partisan_sidePartisan = [resistance];

//==== Enemy Side
// Pick one side from west, east, or resistance.
// Do not choose civilian.
// Only one can be chosen
// Must not be an array (don't use [])
// This is the side of the bad guys.
// Make sure that this side is set to be hostile to the Partisan Sides in the editor.
Partisan_sideEnemy = west;

//==== Start Location is Home
// Set this to True if the place each player starts is that players home.
// It will create a map marker just for that player to show them the place they start.
Partisan_startAtHome = false;

//==== Speed Limit
// This is the maximum speed that players are allowed to drive vehicles at, in km/h.
Partisan_speedLimit = 40; // 40 was the German speed limit during WW2.

//==== Safe Distance
// This is the closest players are allowed to come to an enemy before the enemy starts to consider them hostile.
Partisan_safeDistance = 2; // 2 meters for Corona safety.

//==== Gear Restrictions
// These lists should contain strings of allowed gear classnames.
// Items in the enemy lists are those by the enemy faction to identify each other.
// Items in the black lists are things the enemy side has forbidden for civilians to wear at any time.
// If a player wears only unlisted items the AI will be friendly as long the player behaves like a civilian.
// If a player wears any blacklist item the AI will go hostile to the player.
// If a player wears a single enemy item the AI will go hostile to the player.
// If a player wears an enemy uniforms and headgear the AI will be friendly to the player.
// If the player is wearing an enemy uniform and headgear they can also wear enemy vests and backpacks.

// For example: Partisan_blacklistBackpack = ["fow_b_uk_beret"];

Partisan_blacklistUniform = [];
Partisan_blacklistVest = [];
Partisan_blacklistBackpack = [];
Partisan_blacklistHeadgear = [];

Partisan_enemyUniform = [];
Partisan_enemyVest = [];
Partisan_enemyBackpack = [];
Partisan_enemyHeadgear = [];

//==== Vehicle Restrictions
// List of classnames for black list and enemy vehicles.
// The classnames must be strings (wrapped in double quotes "")
// Works similarly to the the gear restrictions.
// To be in a enemy vehicle the player must be wearing an enemy outfit.
// Blacklisted vehicles are always forbidden, even in an enemy outfit.

// For example: Partisan_enemyVehicle = ["fow_v_sdkfz_251_camo_ger_heer"];

Partisan_blacklistVehicle = [];

Partisan_enemyVehicle = [];

//==== Locations Restrictions
// This allows you to set certain locations to be forbidden to the players unless they are wearing an enemy outfit.
// Put any area marker variable, trigger variable, or polygon, that you want to forbid the players to be in.
// Area marker variables must be strings.
// Trigger variables must not be a string.
// Polygons must be arrays of positions
// Don't use too many or performance will start to suffer.

/* For example:
Partisan_blacklistLocations = [
    "marker_name",
    trigger_name,
    [[1000,2500,0],[2500,2500,0],[1000,1000,0]]
];
*/

Partisan_blacklistLocations = [];
