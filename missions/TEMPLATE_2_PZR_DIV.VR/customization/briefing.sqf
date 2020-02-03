#include "core\briefingCore.sqf" // DO NOT REMOVE

// ======================== Briefing Formatiing Information ========================

// use // to comment out a line, this will make it no longer appear in the briefing
// use </br> to make a line break, if you don't do this your briefing will all be on one line.

/*
Briefing sections that are commented out are Optional
All other briefing sections are Mandatory
Don't use "double quotes" unless you escape them with more ""double quotes"".
These 'single quotes' are ok, but might break clickable markers.
*/

/*
Heading convensions are as follows:
I. Main Briefing Sections - Captial Roman Numerals, I, II, III, IV, etc
  A. Main Sub-sections - Capital Latin Letters, A, B, C, D, etc
    1. Second Order Sub-sections, Arabic Numerals, 1, 2, 3, 4, etc
      a. Third Order Sub-sections, Lowercase Latin Letters, a, b, c, d, etc
        i. Forth order Sub-sections, Lowercase Roman Numerals, i, ii, iii, iv, etc
*/

/*
Other formatting may be used on text by including it inside <font> </font> tags.
For example:
<font color='#BBBBBB' size='16' face='PuristaBold'>This example formats the colour, size, and font of this text.</font><br/>
    Colour accepts HTML colour codes.
    Size 12 is the default text size.
    When changing the face, the fonts must be available in game.
        Available fonts can be found the in config viewer under configfile >> "CfgFontFamilies"
        EtelkaNarrowMediumPro is broken and should not be used.
*/

/*
To make a word clickable, in order to auto move and zoom the map, you can tie it to a map marker
Example:
<marker name='markername'>description(words or numbers)</marker>
<marker name='obja'>Objective Alpha</marker>
*/

/*
To add an image to the briefing place the image in the customization folder with briefing.sqf
Include the image using the image tag
<img image='ImageName.jpg'/>

Make sure the filesize of your image isn't too large. You don't want to create a huge mission for the players to download.
Don't use too many images or your mission filesize will be too large.
Make sure to put the images in a new annex tab instead of cluttering the normal tabs.
*/

// ======================== Important Sections Not Specific to Side ========================

// ===== Admin Tab =====
// Displays the Admin Tab, which provides some techinical controls for respawn, mission ending, and similar.
// It appears for the Admin, the Zeus, Brauer, Falk, Haas, Madsen, Sauer, Schuttler

_adminState = call BIS_fnc_admin;
_uid = getPlayerUID player;
if (
    (_adminState != 0) ||
    (!isNil "God" && {God isEqualTo player || {group player isEqualTo group God}}) ||
    (_uid == "76561198006804011") || // Brauer
    (_uid == "76561197989925440") || // Falk
    (_uid == "76561197970317496") || // Haas
    (_uid == "76561197983143701") || // Madsen
    (_uid == "76561197985738940") || // Sauer
    (_uid == "76561198096113294")    // Schuttler
) then {
    // This tab has clickable commands to allow the admin or zeus to end the mission.
    // More may be added by makin an entry here and adding a corresponding entry in the settings.sqf
    NEWTAB("Admin Tab")
    <br/>The server admin, the zeus (if present), and all Council members have access to these options.
    <br/>
    <br/><font color='#70db70' size='14'>Respawn Wave:</font>
    <br/>This is used to call a respawn wave on demand, it will give the players in spectator a single respawn with a 10 second timer.
    <br/>
    <br/>If the admin is dead and in spectator they can also trigger a respawn by typing the command <font color='#FF8C00'>#respawnWave</font> in spectator chat.
    <br/>
    <br/>This must NOT be used in missions that already have respawning enabled.
    <br/>   <execute expression=' \
                FW_RespawnTickets = 1; \
                publicVariable ""FW_RespawnTickets""; \
                {setPlayerRespawnTime random 10;} remoteExec [""call""]; \
                [ \
                    { \
                        FW_RespawnTickets = 0; \
                        publicVariable ""FW_RespawnTickets""; \
                        10e10 remoteExec [""setPlayerRespawnTime""]; \
                    }, \
                    [], \
                    30 \
                ] call CBA_fnc_waitAndExecute; \
            '>Call Respawn Wave</execute>
    <br/>
    <br/><font color='#70db70' size='14'>Mission Ending:</font>
    <br/>These are used to call the mission endings that the mission maker has set up
    <br/>
    <br/>Please be careful as a single click will end the mission immediately.
    <br/>
    <br/>   <execute expression='victoryMessage call Olsen_FW_FNC_EndMissionRequest'>Call Mission Victory</execute>
    <br/>
    <br/>   <execute expression='failureMessage call Olsen_FW_FNC_EndMissionRequest'>Call Mission Failure</execute>
    // An example of a custom ending
    // <br/>    <execute expression='myCustomMessage call Olsen_FW_FNC_EndMissionRequest'>Call My Custom Ending Example</execute>
    <br/>
    <br/><font color='#70db70' size='14'>Helper Checks:</font>// Server vars
    <br/>These are anything the mission maker wants to be able to check in game.
    <br/>
    <br/>    <execute expression='systemChat str westCasualty'>Check Bluefor Casualty Percentage</execute>
    <br/>    <execute expression='systemChat str eastCasualty'>Check Opfor Casualty Percentage</execute>
    // <br/>    <execute expression='systemChat str resistanceCasualty'>Check Indfor Casualty Percentage</execute>
    // <br/>    <execute expression='systemChat str civilianCasualty'>Check Civilian Casualty Percentage</execute>
    <br/>    <execute expression='systemChat str testVar'>Test Boolean Handling</execute>
    ENDTAB;
};

// ===== Zeus Notes =====
// Used to find the dedicated Zeus player and put the Zeus notes in their briefing.
// This is only visible to the Zeus and other players in the same group as the dedicated Zeus.

// IMPORTANT - your Zeus unit must have their Variable Name set to God for this to function correctly.
// The Zeus unit in the Essentials composition is currently set to this variable name.
// If you wish to use a different Zeus unit then you will need to set its Variable Name yourself.
// If you wish to use a second Zeus make sure they are in the same group.

// I strongly suggest keeping the Zeus on the Civilian side, or at least on a different side from the players, so they can't see any of the marks or lines the players draw on the map.

if (!isNil "God" && {God isEqualTo player || {group player isEqualTo group God}}) then {
    // All Zeus Notes should go in this tab, only the Zeus player will see them.
    NEWTAB("Zeus Notes")
    <br/><font color='#FF8C00' size='20'>If you are not going to Zeus this mission, do not read this tab.</font>
    <br/>
    <br/>All notes for the Zeus from the mission maker should go in this tab.
    <br/>
    <br/>
    <br/>
    ENDTAB;
};

// ===== Mission Notes =====
// This section is for techincal information about the mission that would be out of place in the briefing proper

NEWTAB("Mission notes:")
// This is shown for everyone and should include any technical information you want to include about the mission
<br/>Time Limit is XX minutes.
// for side missions the time limit should be 60 minutes
// the strict time limit ending is disabled by default
// if you enable a strict time limit make sure you note that the mission will end when the time is up.
// change the XX to what you set the time limit to in settings.sqf
<br/>
<br/><font color='#FF8C00' size='14'>Victory Conditions:</font>
// put win condition here
// Example:
// Victory will be achieved if 2PzD hold at least one capture zone at the end of the mission.
// The more capture zones are held, the better the victory
<br/>
<br/>
<br/><font color='#FF8C00' size='14'>Defeat Conditions:</font>
// put failure conditions here
// Example:
// Defeat will occur if 2PzD is unable to hold any of the capture zones.
<br/>
<br/>
<br/><font color='#FF8C00' size='14'>Additional Information:</font>
// Additional information here
// Example:
// Capture Zones:
// There are three capture zones in the mission area.
// If one is captured by the Allies it may be recaptured by 2PzD.
<br/>
<br/>
<br/>
ENDTAB;

// ===== Game Mastering =====
// This indicates if a Zeus is required for the mission.

NEWTAB("Game Mastering")
// Change this if you want a zeus to guide your mission
// Example:
// This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
This mission requires a dedicated Zeus to play correctly.
ENDTAB;

// ======================== Side Based Briefings ========================

switch (side player) do { // Checks what team the player is on

case west : {
// ===== West =====
// If player is Blufor (Blue) they receive this briefing
// This normally includes German and Japanese units

NEWTAB("I. Lage (Situation):")
// Generally should give an idea of why this mission is happening.
// Things that have happened in the past to lead to this mission.
// Example:
// 3 Kompanie has been stationed at Medenine, guarding the road into the Kasserine Pass.
// At 0400hrs yesterday this morning , started to be heavily shelled by the Allies.
// 15 minutes later we lost communications with them, possible due to their telephone lines being cut by artillery.
// Their final messages indicated the shelling was getting lighter and that there was dust from vehicles approaching to the south east.
<br/>
<br/>
ENDTAB;

NEWTAB("II. Auftrag (Mission):")
// A concise statement that includes the Who, What, Where, When, and Why of the operation to be conducted.
// This is generally a single sentence and there should be no question as to what needs to be done.
// Example:
// 1 Kompanie is to reinforce 3. Kompanie at Medenine, and prevent the Allies from advancing into the Kasserine Pass until releaved.
<br/>
<br/>
<br/>
<br/><font color='#FF8C00' size='16'>A. Concept of the Operation</font>
// A description of the way the operation should unfold.
// Example:
// 1 Kompanie will embark in their trucks and travel east to Medenine.
// 1 Kompanie will make contact with 3 Kompanie and establish a defensive positions in Medenine.
// 1 Kompanie and 3 Kompanie will prevent Allied units from moving into the Kasserine Pass.
// 2 Kompanie and 4 Kompanie will arrive as soon as possible with extra equipment and support.
<br/>
<br/>
<br/><font color='#FF8C00' size='16'>B. Coordinating Instructions</font>
<br/>
<br/><font color='#70db70' size='14'>1. Timings:</font>
// Timing for phases during the mission, can also be timing for expected enemy contact in defence mission
// Example:
// 0430hrs - 1 Kompanie will begin movement towards Medenine.
// 0445hrs - 1 Kompanie will arrive in Medenine, report by radio on the situation, establish defences, and hold aganst attack.
// 0630hrs - 2 Kompanie and 4 Kompanie will arrive to relieve 1 Kompanie and 3 Kompanie
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Control Measures:</font>
// Any specific boundary areas
// Example:
// North and south of Medenine are mixed minefields, ensure 1 Kompanie does not stray into them.
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Rules of Engagement:</font>
// Rules of engagement go here.
// Example:
// All enemy forces approaching Medenine may be engaged at will.
<br/>No one is to engage a target except under the following conditions:
<br/>  You or your Gruppe is being actively engaged by identified enemy targets;
<br/>  Your well being or that of a friendly unit is in imminent danger;
<br/>  You are ordered to by a superior.
ENDTAB;

NEWTAB("III. Aufklärung (Intelligence):")
<font color='#FF8C00' size='16'>A. Overview</font>
<br/>
<br/><font color='#70db70' size='14'>1. Terrain:</font>
// Describe the terrain
// Mountainous, Countryside, open, dense woods
// Example:
// The area around Medenine is desert scrub with small hills and ridges.
// To the south in an area full of sinkholes.
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Weather:</font>
// Describe and weather conditions
// Light/heavy fog, rain, clear skies, etc.
// Example:
// The weather is dry and sunny and is not forecast to change.
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Civilian Presence:</font>
// Are there civilians in the area? Where? Are they friendly to us?
// Example:
// No civilians are allowed in the area.
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Pertinent Information:</font>
// Any extra intelligence about our forces, the enemy, or the terrain that you believe should be included
// Exmaple:
// Three small hills to the east of Medenine provide good positions for enemy observers or commanders and should be closedly watched.
<br/>
<br/>
/*<br/><font color='#70db70' size='14'>5. Logistic Support</font>
// Any special re-supply/repair plans put here, example - Trucks will bring a crate of ammunition after ....
// Exmaple:
// If possible Batallion HQ will send trucks with extra ammunition to Medenine once defensive positions are established.
<br/>
<br/>*/
ENDTAB;

NEWTAB("III. B. Feindliche Kräfte (Enemy Forces):")
// Name of the enemy force(s) here.
// Example:
// <font size='14'>Unites States Army</font>
<font size='14'>ENEMY_NAME_HERE</font>
<br/>
<br/><font color='#70db70' size='14'>1. Composition:</font>
// List strength and equipment that the enemy most likely uses
// Example:
// 1 Infantry Companie armed with small arms, 1 Machine Gun platoon, 1 Tank Platoon
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Location:</font>
// Known location of enemies
// Example:
// Known Locations:
// Approaching by vehicle from the east.
// 
// Possible locatoins:
// Infantry on foot may be approaching from other directions.
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Possible Enemy Actions:</font>
// Possible actions the enemy could take during the mission.
// Example:
// On contact enemy units are expected to return and take cover.
// They will then make small probing attack to determing the strength of our positions and the concentration of our fire.
// Once they have done this will most likely concentrate their forces in the area they believe we are weakest and attempt break through there.
// Alternatively the enemy may attempt to send light infantry through the sinkhole area to the south in an attempt to infiltrate and disrupt our defences.
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Defensive Fires:</font>
// Enemy Artillery is listed here, otherwise put Unknown or N/A
// Example:
// Expect the enemy artillery to shell defensive positions until their own units get too close.
<br/>
<br/>
<br/><font color='#70db70' size='14'>5. Enemy Air Presence:</font>
// Any enemy planes operating in the area, if none put N/A
// Example:
// The Luftwaffe reports an increase in enemy aircraft activity so be prepared for attack from the air.
<br/>
<br/>
<br/><font color='#70db70' size='14'>6. Future intentions:</font>
// What are the goals of the enemy
// Example:
// We expect the Allies are attempting to push up the Kasserine Pass in order to break into northern Tunisia.
<br/>
<br/>
ENDTAB;

NEWTAB("III. C. Eigene Kräfte (Friendly Forces):")
// Name of friendly force(s) here.
<br/><font size='14'>2. Panzer Division</font>
<br/>
<br/><font color='#70db70' size='14'>1. Composition:</font>
// Describe the makeup of the friendly forces.
// Include others as needed
<br/>1x Zug consisting of:
<br/> 1x Zugtrupp
<br/> 3x Gruppen
<br/>
// <br/>1x Kompanie consisting of:
// <br/>
// <br/> 1x Kompanietrupp
// <br/> 1x Ersatztruppen
// <br/>
// <br/> 2x Züge each consisting of:
// <br/>  1x Zugtrupp
// <br/>  3x Gruppen
// <br/>
<br/><font color='#70db70' size='14'>2. Attachments/Detachments:</font>
// Any attached or detached elements or units
// Example:
// 1x Panzerbesatzung from 3 Panzer Regiment
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Assets:</font>
// List any special equipment or vehicles the the friendly side has
// Example:
// 8x Schützenpanzerwagen
// 1x Panzerkampfwagen IV Ausf. H from 3 Panzer Regiment
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Supporting fires:</font>
// Friendly Artillery is listed here
// Example:
// 74 Panzer Artillerie Regiment will provide artillery support as required.
// 100 rounds HE, 50 rounds Smoke and 50 rounds Flare are available.
<br/>
<br/>
<br/><font color='#70db70' size='14'>5. Friendly Air Presence:</font>
// Any friendly planes operating in the area, if none put N/A
// Example:
// The Luftewaffe is occupied with the battle in the air and will be unable to provide air support.
<br/>
<br/>
/*<br/><font color='#70db70' size='14'>6. Higher HQ Mission and Intent:</font>
// Describe the intent of higher, can go up to battalion level
// Example:
// Division command intent is to prevent the Allies from gaining any foothold in Tunisia.
<br/>
<br/>*/
ENDTAB;

NEWTAB("IV. Gefechtssignale (Signals):")
<br/><font color='#FF8C00' size='16'>A. Call Signs:</font>
// Include others as needed
// <br/>
// <br/>HQ - Kompanietrupp
<br/>
<br/>1'0 - 1 Zug Zugtrupp
<br/>  1'1 - 1 Zug 1 Gruppe
<br/>  1'2 - 1 Zug 2 Gruppe
<br/>  1'3 - 1 Zug 3 Gruppe
<br/>
// <br/>2'0 - 2 Zug Zugtrupp
// <br/>  2'1 - 2 Zug 1 Gruppe
// <br/>  2'2 - 2 Zug 2 Gruppe
// <br/>  2'3 - 2 Zug 3 Gruppe
// <br/>
<br/><font color='#FF8C00' size='16'>B. Prowords:</font>
<br/>Ende - Out, reply not required.
<br/>
<br/>Kommen - Over, reply to me.
<br/>
<br/>Actual - Used for the actual commander of the unit.
<br/>Example: 1 Actual would be the 1 Zug Zugführer personally, not his Funker.
<br/>
<br/><font color='#FF8C00' size='16'>C. Radio Frequencies:</font>
// Include others as needed
<br/>Frequency 51.00 mhz - Kompanie Net
<br/>Frequency 31.00 mhz - 1 Zug Sub-Net
<br/>Frequency 54.00 mhz - 2 Zug Sub-Net
<br/>
<br/><font color='#FF8C00' size='16'>D. Special Signals</font>
// Include others as needed
<br/>
<br/><font color='#70db70' size='14'>1. Hand Signals:</font>
<br/>Waving like a idiot - Don't shoot me // '
<br/>Spamming Q and E, aka the 'friendly dance' - Don't shoot me // '
<br/>
<br/><font color='#70db70' size='14'>2. Smoke Signals:</font>
<br/>Green - Go signal
<br/>Red - Stop/halt signal
<br/>Purple - Request support
<br/>Orange - Need a medic
<br/>Blue - Friendly position
<br/>Yellow - Regroup on that position
<br/>White - Used for concealment only
<br/>
/*<br/><font color='#70db70' size='14'>3. Codewords:</font>
// Example:
// Rain Rain Rain - Danger close artillery bombardment
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Passwords:</font>
// Example:
// Challenge: Chaos
// Password: Dancing
// Countersign: Star
<br/>*/
ENDTAB;

}; // End of west case

case east : {
// ===== East =====
// If player is Opfor (Red) they receive this briefing
// This normally includes Russian units.

// See the WEST briefing case above for examples

NEWTAB("I. Ситуация (Situation):")
<br/>
<br/>
ENDTAB;

NEWTAB("II. Задача (Mission):")
<br/>
<br/>
<br/><font color='#FF8C00' size='16'>A. Concept of the Operation</font>
<br/>
<br/>
<br/><font color='#FF8C00' size='16'>B. Coordinating Instructions</font>
<br/>
<br/><font color='#70db70' size='14'>1. Timings:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Control Measures:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Rules of Engagement:</font>
<br/>No one is to engage a target except under the following conditions:
<br/>  You or your squad is being actively engaged by identified enemy targets;
<br/>  Your well being or that of a friendly unit is in imminent danger;
<br/>  You are ordered to by a superior.
ENDTAB;

NEWTAB("III. Разведка (Intelligence):")
<font color='#FF8C00' size='16'>A. Overview</font>
<br/>
<br/><font color='#70db70' size='14'>1. Terrain:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Weather:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Civilian Presence:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Pertinent Information:</font>
<br/>
<br/>
/*<br/><font color='#70db70' size='14'>5. Logistic Support</font>
<br/>
<br/>*/
ENDTAB;

NEWTAB("III. B. Вражеские Силы (Enemy Forces):")
<font size='14'>ENEMY_NAME_HERE</font>
<br/>
<br/><font color='#70db70' size='14'>1. Composition:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Location:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Possible Enemy Actions:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Defensive Fires:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>5. Enemy Air Presence:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>6. Future intentions:</font>
<br/>
<br/>
ENDTAB;

NEWTAB("III. C. Дружественные Силы (Friendly Forces):")
<font size='14'>FRIENDLY_NAME_HERE</font>
<br/>
<br/><font color='#70db70' size='14'>1. Composition:</font>
<br/>1x Platoon consisting of:
<br/> 1x Platoon HQ
<br/> 3x Squads
<br/>
// <br/>1x Company consisting of:
// <br/>
// <br/> 1x Company HQ
// <br/> 1x Reserve Section
// <br/>
// <br/> 2x Platoons each consisting of:
// <br/>  1x Platoon HQ
// <br/>  3x Squads
// <br/>
<br/><font color='#70db70' size='14'>2. Attachments/Detachments:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Assets:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Supporting fires:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>5. Friendly Air Presence:</font>
<br/>
<br/>
/*<br/><font color='#70db70' size='14'>6. Higher HQ Mission and Intent:</font>
<br/>
<br/>*/
ENDTAB;

NEWTAB("IV. Сигнальная (Signals):")
<br/><font color='#FF8C00' size='16'>A. Call Signs:</font>
// <br/>
// <br/>HQ - Company HQ
<br/>
<br/>1'0 - 1 Platoon, Platoon HQ
<br/>  1'1 - 1 Platoon, 1 Squad
<br/>  1'2 - 1 Platoon, 2 Squad
<br/>  1'3 - 1 Platoon, 3 Squad
<br/>
// <br/>2'0 - 2 Platoon, Platoon HQ
// <br/>  2'1 - 2 Platoon, 1 Squad
// <br/>  2'2 - 2 Platoon, 2 Squad
// <br/>  2'3 - 2 Platoon, 3 Squad
// <br/>
<br/><font color='#FF8C00' size='16'>B. Prowords:</font>
<br/>Out - Reply not required.
<br/>
<br/>Over - Reply to me.
<br/>
<br/>Actual - Used for the actual commander of the unit.
<br/>For example 1 Actual would be 1 Platoon Commander personally, not his radio operator.
<br/>
<br/><font color='#FF8C00' size='16'>C. Radio Frequencies:</font>
// Include others as needed
<br/>Frequency 53.00 mhz - Company Net
<br/>Frequency 33.00 mhz - 1 Platoon Sub-Net
<br/>Frequency 56.00 mhz - 2 Platoon Sub-Net
<br/>
<br/><font color='#FF8C00' size='16'>D. Special Signals</font>
// Include others as needed
<br/>
<br/><font color='#70db70' size='14'>1. Hand Signals:</font>
<br/>Waving like a idiot - Don't shoot me // '
<br/>Spamming Q and E, aka the 'friendly dance' - Don't shoot me // '
<br/>
<br/><font color='#70db70' size='14'>2. Smoke Signals:</font>
<br/>Green - Go signal
<br/>Red - Stop/halt signal
<br/>Purple - Request support
<br/>Orange - Need a medic
<br/>Blue - Friendly position
<br/>Yellow - Regroup on that position
<br/>White - Used for concealment only
<br/>
/*<br/><font color='#70db70' size='14'>3. Codewords:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Passwords:</font>
<br/>*/
ENDTAB;

};// End of east case

case resistance : {
// ===== Resistance =====
// If player is Indfor (Green) they receive this briefing
// This normally includes Americans and British units.

// See the WEST briefing case above for examples

NEWTAB("I. Situation:")
<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<br/>
<br/>
<br/><font color='#FF8C00' size='16'>A. Concept of the Operation</font>
<br/>
<br/>
<br/><font color='#FF8C00' size='16'>B. Coordinating Instructions</font>
<br/>
<br/><font color='#70db70' size='14'>1. Timings:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Control Measures:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Rules of Engagement:</font>
<br/>No one is to engage a target except under the following conditions:
<br/>  You or your section is being actively engaged by identified enemy targets;
<br/>  Your well being or that of a friendly unit is in imminent danger;
<br/>  You are ordered to by a superior.
ENDTAB;

NEWTAB("III. Intelligence:")
<font color='#FF8C00' size='16'>A. Overview</font>
<br/>
<br/><font color='#70db70' size='14'>1. Terrain:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Weather:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Civilian Presence:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Pertinent Information:</font>
<br/>
<br/>
/*<br/><font color='#70db70' size='14'>5. Logistic Support</font>
<br/>
<br/>*/
ENDTAB;

NEWTAB("III. B. Enemy Forces:")
<font size='14'>ENEMY_NAME_HERE</font>
<br/>
<br/><font color='#70db70' size='14'>1. Composition:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>2. Location:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Possible Enemy Actions:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Defensive Fires:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>5. Enemy Air Presence:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>6. Future intentions:</font>
<br/>
<br/>
ENDTAB;

NEWTAB("III. C. Friendly Forces:")
<font size='14'>FRIENDLY_NAME_HERE</font>
<br/>
<br/><font color='#70db70' size='14'>1. Composition:</font>
// Americans use the term Squad, Commonwealth (Canada, Australia, etc.) use the term Section
<br/>1x Platoon consisting of:
<br/> 1x Platoon HQ
<br/> 3x Sections
<br/>
// <br/>1x Company consisting of:
// <br/>
// <br/>1x Company HQ
// <br/>1x Reserve Section
// <br/>
// <br/>2x Platoons each consisting of:
// <br/> 1x Platoon HQ
// <br/> 3x Sections
// <br/>
<br/><font color='#70db70' size='14'>2. Attachments/Detachments:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>3. Assets:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Supporting fires:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>5. Friendly Air Presence:</font>
<br/>
<br/>
/*<br/><font color='#70db70' size='14'>6. Higher HQ Mission and Intent:</font>
<br/>
<br/>*/
ENDTAB;

NEWTAB("IV. Signals:")
<br/><font color='#FF8C00' size='16'>A. Call Signs:</font>
// Americans use the term Squad, Commonwealth (Canada, Australia, etc.) use the term Section
// <br/>
// <br/>HQ - Company HQ
<br/>
<br/>1'0 - 1 Platoon, Platoon HQ
<br/>  1'1 - 1 Platoon, 1 Section
<br/>  1'2 - 1 Platoon, 2 Section
<br/>  1'3 - 1 Platoon, 3 Section
<br/>
// <br/>2'0 - 2 Platoon, Platoon HQ
// <br/>  2'1 - 2 Platoon, 1 Section
// <br/>  2'2 - 2 Platoon, 2 Section
// <br/>  2'3 - 2 Platoon, 3 Section
// <br/>
<br/><font color='#FF8C00' size='16'>B. Prowords:</font>
<br/>Out - Reply not required.
<br/>
<br/>Over - Reply to me.
<br/>
<br/>Actual - Used for the actual commander of the unit.
<br/>For example 1 Actual would be 1 Platoon Commander personally, not his radio operator.
<br/>
<br/><font color='#FF8C00' size='16'>C. Radio Frequencies:</font>
// Include others as needed
<br/>Frequency 55.00 mhz - Company Net
<br/>Frequency 35.00 mhz - 1 Platoon Sub-Net
<br/>Frequency 58.00 mhz - 2 Platoon Sub-Net
<br/>
<br/><font color='#FF8C00' size='16'>D. Special Signals</font>
// Include others as needed
<br/>
<br/><font color='#70db70' size='14'>1. Hand Signals:</font>
<br/>Waving like a idiot - Don't shoot me // '
<br/>Spamming Q and E, aka the 'friendly dance' - Don't shoot me // '
<br/>
<br/><font color='#70db70' size='14'>2. Smoke Signals:</font>
<br/>Green - Go signal
<br/>Red - Stop/halt signal
<br/>Purple - Request support
<br/>Orange - Need a medic
<br/>Blue - Friendly position
<br/>Yellow - Regroup on that position
<br/>White - Used for concealment only
<br/>
/*<br/><font color='#70db70' size='14'>3. Codewords:</font>
<br/>
<br/>
<br/><font color='#70db70' size='14'>4. Passwords:</font>
<br/>*/
ENDTAB;

};// End of resistance case

case civilian : {
// ===== Civilian =====
// If player is a Civilian they receive this briefing.
// No layout is specificied, so you will need to make your own tabs.

};// End of civilian case

}; // End of switch

if (!isNil "loggingEnabled" && {loggingEnabled == 1}) then {
    // Persistance system information should go in this tab.
    NEWTAB("Persistence System")
    <br/><font color='#70db70'>To ensure accurate logging of data follow these steps:</font>
    <br/>
    <br/><font color='#FF8C00'>When putting a weapon in a vehicle or container:</font>
    <br/>Remove the magazine and all attachments and put them in separately.
    <br/>Any attachments or magazines left in or on a weapons will be lost.
    <br/>
    <br/><font color='#FF8C00'>When putting a uniform, vest, or backpack in a vehicle or container:</font>
    <br/>Remove all items from inside the uniform/vest/backpack and put them in separately.
    <br/>Any items left inside a uniform/vest/backpack will be lost.
    ENDTAB;
};

DISPLAYBRIEFING();

#include "orbat.sqf" // DO NOT REMOVE
