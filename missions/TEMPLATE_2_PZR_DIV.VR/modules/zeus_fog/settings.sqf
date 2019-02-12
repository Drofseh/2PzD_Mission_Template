// This module adds a fog of war system for the Zeus player, preventing them from seeing the units of any side that isn't whitelisted unless a whitelisted side has sufficient knowledge of those units.
// For this to work correctly there must be a zeus module called zeusCommander with a unit called God assigned to it as Zeus.
// This module and unit are stardard in the 2PzD essentials template.

// ==== Tracking Settings ====

// Whitelisted sides reporting to the Zeus, to check which units the Zeus can see on other sides
zeusFog_zeusSides = [];

// Whitelisted sides never hidden from the Zeus. Sides in zeusFog_zeusSides are automatically added as well.
zeusFog_visibleSides = [civilian];
// Options for these are as follows:
/*
west
east
resistance
civilian
*/
/*
In this example Civilians are always visible but west and east units are hidden unless resistance units know enough about them.
zeusFog_zeusSides = [resistance]; // The Resistance side will be used to spot the other sides and Resistance units will always be visible to the Zeus.
zeusFog_visibleSides = [civilian]; // Civilians will also always be visible to the Zeus, even if no Resistance units can see the civilians.
*/

// Vehicles that should be checked in addition to units.
// Any preplaced player vehicles should be given a variable name and added to this list.
zeusFog_vicList = [];

// ==== Zeus Editing/Spawning Settings ====

// Whitelisted addons for the Zeus to be able to spawn things from.
// Leave empty to allow the Zeus to spawn any unit from any addon.
zeusFog_allowedAddons = [];

// The Zeus will always be able to give units orders but editing/spawning area will be limited to 300m around where the Zeus spawns.
// You can add additional areas where the zeus can edit/spawn units by adding them to this array.
// Each area will need an array that includes a position and a radius, [location,number].
// The location can be a position array, or it can be the location of a unit or marker.
// The number will be the radius of the editing area in meters.
zeusFog_editingAreas = [];
/*Example:
zeusFog_editingAreas = [
    [[1000,3000,0],300], // An editing area with a radius of 300m located at 1000,3000
    [(getPosATL Bob),100], // An editing area with a 100m radius at the location of an object called Bob.
    [(getMarkerPos "marker_1"),200] // An editing area with a 200m radius at the location of marker_1.
];
*/

// ==== Zeus Vision Settings ====

// Camera areas
// It's possible to restrict the area in which the Zeus is allowed to move their zeus camera.
// If this is left empty the Zeus can move their camera anywhere on the map.
// Add position and radius arrays to this array just like with zeusFog_editingAreas to limit the Zeus camera to those areas.
// Use the same format as zeusFog_editingAreas, [location,number].
zeusFog_cameraAreas = [];
/*Example:
zeusFog_cameraAreas = [
    [[1000,3000,0],300], // An camera area with a radius of 300m located at 1000,3000
    [(getPosATL Bob),100], // An camera area with a 100m radius at the location of an object called Bob.
    [(getMarkerPos "marker_1"),200] // An camera area with a 200m radius at the location of marker_1.
];
*/

// Camera Ceiling
// It's possible to limit the height the Zeus can raise their camera to.
// Set this to a value greater than 0 to set the maximum height of the zeus camera in meters.
// It may not be less that 50m.
// Leave as -1 for no height limit.
zeusFog_cameraHeight = -1;

// Vision modes that the zeus is allowed to have when in Zeus mode.
// Normal vision is the only one allowed by default.
// I don't recommend it, but you can add more by including their number in the array [-1,-2,4,7] etc.
zeusFog_visionModes = [-1];
/*
Options include:
-2 - NVG
-1 - Normal
0 - White Hot
1 - Black Hot
2 - Light Green Hot / Darker Green cold
3 - Black Hot / Darker Green cold
4 - Light Red Hot /Darker Red Cold
5 - Black Hot / Darker Red Cold
6 - White Hot / Darker Red Cold
7 - Thermal (Shade of Red and Green, Bodies are white)
*/