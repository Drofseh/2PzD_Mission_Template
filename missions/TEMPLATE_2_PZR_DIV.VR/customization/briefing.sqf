#include "core\briefingCore.sqf" // DO NOT REMOVE
switch (side player) do { // Checks what team the player is on

// use // to comment out a line, this will make it no longer appear in the briefing
// use </br> to make a line break, if you don't do this your briefing will all be on one line.
// To make a word clickable, in order to auto move and zoom the map, you can tie it to a map marker, ex:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='obja'>Objective Alpha</marker>]

// Briefing is default west only, for east, ind, and civ go to the cases near the bottom of this file.
// Some options that are applicable to our current eastern front setting are included by default.

case west: { // If player is west he receives this briefing

NEWTAB("I. Lage (Situation):") 
// Give a brief description of the current situation. Ex. what has happened that led up to this mission. Generally should give an idea of why this mission is happening.
<br/>
<br/>
ENDTAB;

NEWTAB("II. Auftrag (Mission):")
// A concise statement that includes the Who, What, Where, When, and Why of the operation to be conducted. This is generally a single sentence and there should be no question as to what needs to be done.
// Ex. 1 Kompanie is to SECURE the town of Tottah and DESTROY any enemy assets.
<br/>
ENDTAB;

NEWTAB("III. Aufklärung (Intelligence):")
<br/>A. Overview
<br/>
<br/><font color='#FF8C00'>1. Terrain:</font>
// Describe the terrain
// Mountainous, Countryside, open, dense woods
<br/>
<br/>
<br/><font color='#FF8C00'>2. Weather:</font>
// Describe and weather conditions
// Light/heavy fog, rain, clear skies, etc.
<br/>
<br/>
<br/><font color='#FF8C00'>3. Points of Interest:</font>
//Any locations on the map that can be of interest to either us or the enemy
<br/>
<br/>
<br/><font color='#FF8C00'>4. Areas of Interest:</font>
// That area of interest/concern to the commander, including the area of influence, areas adjacent thereto, and extending into enemy territory to the objectives of current or planned operations.
// This area also includes areas occupied by enemy forces who could jeopardize the accomplishment of the mission.
<br/>
<br/>
<br/><font color='#FF8C00'>5. Civilians:</font>
// Are there civilians in the area? Where? Are they friendly to us?
<br/>
<br/>
ENDTAB;

NEWTAB("B. Feindliche Kräfte (Enemy Forces):")
// Name of the enemy force(s) here.
// Ex. Armed Forces of the Russian Federation (MSV)
<br/>Red Army
<br/>
<br/><font color='#FF8C00'>1. Equipment:</font>
// List equipment that the enemy most likely uses
<br/>Standard Red Army small arms
<br/>
<br/><font color='#FF8C00'>2. Strength:</font>
// An approximation of enemy strength
<br/>
<br/>
<br/><font color='#FF8C00'>3. Location:</font>
// Known location of enemies
<br/>
<br/>
<br/><font color='#FF8C00'>4. Expected Enemy Actions:</font>
// Most Likely Course Of Action for the enemy, example:
// On contact, EN will initially attempt to return fire. After determining the situation untenable, the EN will attempt to fix and attrition with massed direct fires and reinforce from adjacent elements.
<br/>
<br/>
<br/><font color='#FF8C00'>5. Most Dangerous Enemy Actions:</font>
// Most Dangerous Course Of Action for the enemy to take against us
<br/>
<br/>
<br/><font color='#FF8C00'>6. Defensive Fires:</font>
// Enemy Artillery is listed here, otherwise put Unknown or N/A
<br/>
<br/>
<br/><font color='#FF8C00'>7. Enemy Air Presence:</font>
// Any enemy planes operating in the area, if none put N/A
<br/>
<br/>
<br/><font color='#FF8C00'>8. Future intentions:</font>
// What are the goals of the enemy
// example - To restore the train to working order and continue the relocation of the experimental T-80s.
<br/>
<br/>
ENDTAB;

NEWTAB("C. Eigene Kräfte (Friendly Forces):")
// Name of friendly force(s) here.
<br/>2. Panzer Division
<br/>
<br/><font color='#FF8C00'>1. Higher HQ Mission and Intent:</font>
// Describe the intent of higher, can go up to battalion level
// eg. 1UP intent is to take airfield, 2UP intent is create a forward landing zone for follow on forces.
<br/>
<br/>
<br/><font color='#FF8C00'>2. Composition:</font>
// Describe the makeup of the friendly forces.
<br/>1x Kompanie consisting of:
<br/>
<br/>1x Kompanietrupp
<br/>1x Ersatztruppen
<br/>
<br/>2x Züge each consisting of:
<br/>1x Zugtrupp
<br/>3x Gruppen
<br/>
<br/><font color='#FF8C00'>3. Supporting fires:</font>
// Friendly Artillery is listed here
<br/>None
<br/>
<br/><font color='#FF8C00'>4. Attachments/Detachments:</font>
// Any attached or detached elements or units
<br/>1x Panzerbesatzung
<br/>
<br/><font color='#FF8C00'>5. Assets:</font>
// List any vehicles or other special equipment the the friendly side has
<br/>8x Schützenpanzerwagen
<br/>1x Panzerkampfwagen IV Ausf. H
ENDTAB;


NEWTAB("IV. Durchführung (Execution):")
<br/><font color='#FF8C00'>A. Concept of the Operation</font>
// A description of the way the operation should unfold.
// Example:
// USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
// transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.
<br/>
<br/>
<br/><font color='#FF8C00'>B. Scheme of Manoeuvre</font>
// How the units will move, usually left up-to the company/platoon commander to decide
// Example:
// USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
// Further movement will be be at the direction of the Zugführer.
<br/>
<br/>
<br/><font color='#FF8C00'>C. Main Effort</font>
// Which units will provide the main effort and which will provide support
// example: 1 Zug will provide the main force for the assault, supported by 2 Zug and Eva, with the Kompanietrupp overseeing the operation.
<br/>
<br/>
<br/><font color='#FF8C00'>D. Tasks to Subordinate Units</font>
// Usually companies tasking to their platoons.
// Example: 1 Zug will provide a blocking force at grid 123456 in order to allow 2 Zug to assault and destroy enemy elements
<br/>
<br/>
<br/><font color='#FF8C00'>E. Coordinating Instructions</font>
<br/>
<br/><font color='#70db70'>1. Timings:</font>
// Timing for phases during the mission, can also be timing for expected enemy contact in defence mission
// Example -  We will commence the attack at 0500hrs and must have completed the assault no later than 0620hrs.
<br/>
<br/>
<br/><font color='#70db70'>2. Control Measures:</font>
// Any specific boundary areas, etc. usually set by the Kompanie
<br/>As per the direction of the Kompanieführer.
<br/>
<br/><font color='#70db70'>3. Rules of Engagement</font>
// Rules of engagement go here.
<br/>All enemy forces may be engaged at will.
<br/>
ENDTAB;

NEWTAB("V. Logistik (Sustainment):")
<br/><font color='#FF8C00'>A. Equipment Variations</font>
// Any changes from standard to any of the following.
<br/>Dress: None
<br/>Equipment: None
<br/>Weapons: None
<br/>Vehicle Loading: None
<br/>
<br/><font color='#FF8C00'>B. Logistic Support</font>
// Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
<br/>Replen Plan: Supplies for each Gruppe are carried in their Schützenpanzerwagen.
<br/>Ammunition: Each man carries his own ammunition.
<br/>Protective Equipment: Helmets are to be worn at all times.
<br/>
<br/><font color='#FF8C00'>C. Medical</font>
<br/>Stretchers: None
<br/>Med Packs and Morphine: Supplies for each Gruppe are carried in their Schützenpanzerwagen.
ENDTAB;

NEWTAB("VI. Führung & Gefechtssignale (Command & Signal):")
<br/><font color='#FF8C00'>A. Command</font>
<br/>
<br/><font color='#70db70'>1. Succession of Command:</font>
//Who will take over when casualties occur among leadership elements
<br/>1 Kompanieführer
<br/>1 Zug Zugführer
<br/>2 Zug Zugführer
//<br/>1 Zug Stellver. Zugführer
//<br/>2 Zug Stellver. Zugführer
<br/>1 Zug 1 Gruppe Gruppenführer
<br/>2 Zug 1 Gruppe Gruppenführer
<br/>1 Zug 2 Gruppe Gruppenführer
<br/>2 Zug 2 Gruppe Gruppenführer
<br/>1 Zug 3 Gruppe Gruppenführer
<br/>2 Zug 3 Gruppe Gruppenführer
<br/>
<br/><font color='#70db70'>2. Higher Level Command Post:</font>
// Company or Division HQ location, mostly useful for campaign so comment it out with // if not needed.
<br/>
<br/>
<br/><font color='#FF8C00'>B. Signals</font>
<br/>
<br/><font color='#70db70'>1. Call Signs:</font>
//Include others as needed
<br/>
<br/>HQ - 1 Kompanietrupp
<br/>
<br/>1'0 - 1 Zug Zugtrupp
<br/>1'1 - 1 Zug 1 Gruppe
<br/>1'2 - 1 Zug 2 Gruppe
<br/>1'3 - 1 Zug 3 Gruppe
<br/>
<br/>2'0 - 2 Zug Zugtrupp
<br/>2'1 - 2 Zug 1 Gruppe
<br/>2'2 - 2 Zug 2 Gruppe
<br/>2'3 - 2 Zug 3 Gruppe
<br/>
<br/>Actual - Used for the actual commander of the unit.
<br/>For example 1'0 Actual would be 1 Zug Zugführer, not his radio operator. //'
<br/>
<br/>Ende - Out, do not reply.
<br/>
<br/>Kommen - Over, reply to me.
<br/>
<br/><font color='#70db70'>2. Radio Frequencies:</font>
//Include others as needed
<br/>
<br/>Frequency 40 - Kompanie Net
<br/>Frequency 60 - 1 Zug Schützenpanzerwagenen
<br/>Frequency 80 - 2 Zug Schützenpanzerwagenen
<br/>
<br/><font color='#70db70'>3. Special Signals</font>
//Include others as needed
<br/>Waving like a idiot - Don't shoot me //'
<br/>Spamming Q and E, aka the 'friendly dance' - Don't shoot me //'
<br/>
<br/>Smoke:
<br/>Green - Go signal
<br/>Red - Stop/halt signal
<br/>Purple - Request support
<br/>Orange - Need a medic
<br/>Blue - Friendly position
<br/>Yellow - Regroup on that position
<br/>White - Used for concealment only
//<br/>
//<br/><font color='#70db70'>4. Codewords:</font>
//Include and uncomment as needed
//<br/>
//<br/>
//<br/><font color='#70db70'>5. Passwords:</font>
//Include and uncomment as needed
//<br/>
ENDTAB;

}; // End of west case

case east: { // Briefing for Opfor goes here if needed

NEWTAB("I. Ситуация (Situation):") 
// Give a brief description of the current situation. Ex. what has happened that led up to this mission. Generally should give an idea of why this mission is happening.
<br/>
<br/>
ENDTAB;

NEWTAB("II. Задача (Mission):")
// A concise statement that includes the Who, What, Where, When, and Why of the operation to be conducted. This is generally a single sentence and there should be no question as to what needs to be done.
// Ex. 1 Kompanie is to SECURE the town of Tottah and DESTROY any enemy assets.
<br/>
ENDTAB;

NEWTAB("III. Разведка (Intelligence):")
<br/>A. Overview
<br/>
<br/><font color='#FF8C00'>1. Terrain:</font>
// Describe the terrain
// Mountainous, Countryside, open, dense woods
<br/>
<br/>
<br/><font color='#FF8C00'>2. Weather:</font>
// Describe and weather conditions
// Light/heavy fog, rain, clear skies, etc.
<br/>
<br/>
<br/><font color='#FF8C00'>3. Points of Interest:</font>
//Any locations on the map that can be of interest to either us or the enemy
<br/>
<br/>
<br/><font color='#FF8C00'>4. Areas of Interest:</font>
// That area of interest/concern to the commander, including the area of influence, areas adjacent thereto, and extending into enemy territory to the objectives of current or planned operations.
// This area also includes areas occupied by enemy forces who could jeopardize the accomplishment of the mission.
<br/>
<br/>
<br/><font color='#FF8C00'>5. Civilians:</font>
// Are there civilians in the area? Where? Are they friendly to us?
<br/>
<br/>
ENDTAB;

NEWTAB("B. Вражеские Силы (Enemy Forces):")
// Name of the enemy force(s) here.
// Ex. Armed Forces of the Russian Federation (MSV)
<br/>German Wehrmacht
<br/>
<br/><font color='#FF8C00'>1. Equipment:</font>
// List equipment that the enemy most likely uses
<br/>Standard German small arms
<br/>
<br/><font color='#FF8C00'>2. Strength:</font>
// An approximation of enemy strength
<br/>
<br/>
<br/><font color='#FF8C00'>3. Location:</font>
// Known location of enemies
<br/>
<br/>
<br/><font color='#FF8C00'>4. Expected Enemy Actions:</font>
// Most Likely Course Of Action for the enemy, example:
// On contact, EN will initially attempt to return fire. After determining the situation untenable, the EN will attempt to fix and attrition with massed direct fires and reinforce from adjacent elements.
<br/>
<br/>
<br/><font color='#FF8C00'>5. Most Dangerous Enemy Actions:</font>
// Most Dangerous Course Of Action for the enemy to take against us
<br/>
<br/>
<br/><font color='#FF8C00'>6. Defensive Fires:</font>
// Enemy Artillery is listed here, otherwise put Unknown or N/A
<br/>
<br/>
<br/><font color='#FF8C00'>7. Enemy Air Presence:</font>
// Any enemy planes operating in the area, if none put N/A
<br/>
<br/>
<br/><font color='#FF8C00'>8. Future intentions:</font>
// What are the goals of the enemy
// example - To restore the train to working order and continue the relocation of the experimental T-80s.
<br/>
<br/>
ENDTAB;

NEWTAB("C. Дружественные Силы (Friendly Forces):")
// Name of friendly force(s) here.
<br/>The Red Army
<br/>
<br/><font color='#FF8C00'>1. Higher HQ Mission and Intent:</font>
// Describe the intent of higher, can go up to battalion level
// eg. 1UP intent is to take airfield, 2UP intent is create a forward landing zone for follow on forces.
<br/>
<br/>
<br/><font color='#FF8C00'>2. Composition:</font>
// Describe the makeup of the friendly forces.
<br/>1x Company consisting of:
<br/>
<br/>1x Company HQ
<br/>1x Reserve Squad
<br/>
<br/>2x Platoons each consisting of:
<br/>1x Platoon HQ
<br/>3x Squad
<br/>
<br/><font color='#FF8C00'>3. Supporting fires:</font>
// Friendly Artillery is listed here
<br/>None
<br/>
<br/><font color='#FF8C00'>4. Attachments/Detachments:</font>
// Any attached or detached elements or units
<br/>1x Tank Crew
<br/>
<br/><font color='#FF8C00'>5. Assets:</font>
// List any vehicles or other special equipment the the friendly side has
<br/>8x Trucks
<br/>1x T-34
ENDTAB;


NEWTAB("IV. Исполнение (Execution):")
<br/><font color='#FF8C00'>A. Concept of the Operation</font>
// A description of the way the operation should unfold.
// Example:
// USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
// transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.
<br/>
<br/>
<br/><font color='#FF8C00'>B. Scheme of Manoeuvre</font>
// How the units will move, usually left up-to the company/platoon commander to decide
// Example:
// USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
// Further movement will be be at the direction of the Zugführer.
<br/>
<br/>
<br/><font color='#FF8C00'>C. Main Effort</font>
// Which units will provide the main effort and which will provide support
// example: 1 Zug will provide the main force for the assault, supported by 2 Zug and Eva, with the Kompanietrupp overseeing the operation.
<br/>
<br/>
<br/><font color='#FF8C00'>D. Tasks to Subordinate Units</font>
// Usually companies tasking to their platoons.
// Example: 1 Zug will provide a blocking force at grid 123456 in order to allow 2 Zug to assault and destroy enemy elements
<br/>
<br/>
<br/><font color='#FF8C00'>E. Coordinating Instructions</font>
<br/>
<br/><font color='#70db70'>1. Timings:</font>
// Timing for phases during the mission, can also be timing for expected enemy contact in defence mission
// Example -  We will commence the attack at 0500hrs and must have completed the assault no later than 0620hrs.
<br/>
<br/>
<br/><font color='#70db70'>2. Control Measures:</font>
// Any specific boundary areas, etc. usually set by the Kompanie
<br/>As per the direction of the Company Commander.
<br/>
<br/><font color='#70db70'>3. Rules of Engagement</font>
// Rules of engagement go here.
<br/>All enemy forces may be engaged at will.
<br/>
ENDTAB;

NEWTAB("V. поддержка (Sustainment):")
<br/><font color='#FF8C00'>A. Equipment Variations</font>
// Any changes from standard to any of the following.
<br/>Dress: None
<br/>Equipment: None
<br/>Weapons: None
<br/>Vehicle Loading: None
<br/>
<br/><font color='#FF8C00'>B. Logistic Support</font>
// Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
<br/>Replen Plan: Supplies for each squad are carried in their own truck.
<br/>Ammunition: Each man carries his own ammunition.
<br/>Protective Equipment: Helmets are to be worn at all times.
<br/>
<br/><font color='#FF8C00'>C. Medical</font>
<br/>Stretchers: None
<br/>Med Packs and Morphine: Supplies for each squad are carried in their own truck.
ENDTAB;

NEWTAB("VI. Командная и сигнальная (Command & Signal):")
<br/><font color='#FF8C00'>A. Command</font>
<br/>
<br/><font color='#70db70'>1. Succession of Command:</font>
//Who will take over when casualties occur among leadership elements
<br/>1 Company Commander
<br/>1 Platoon, Platoon Commander
<br/>2 Platoon, Platoon Commander
//<br/>1 Platoon, Platoon Sergeant
//<br/>2 Platoon, Platoon Sergeant
<br/>1 Platoon, 1 Squad, Squad Leader
<br/>2 Platoon, 1 Squad, Squad Leader
<br/>1 Platoon, 2 Squad, Squad Leader
<br/>2 Platoon, 2 Squad, Squad Leader
<br/>1 Platoon, 3 Squad, Squad Leader
<br/>2 Platoon, 3 Squad, Squad Leader
<br/>
<br/><font color='#70db70'>2. Higher Level Command Post:</font>
// Company or Division HQ location, mostly useful for campaign so comment it out with // if not needed.
<br/>
<br/>
<br/><font color='#FF8C00'>B. Signals</font>
<br/>
<br/><font color='#70db70'>1. Call Signs:</font>
//Include others as needed
<br/>
<br/>HQ - 1 Company HQ
<br/>
<br/>1'0 - 1 Platoon, Platoon HQ
<br/>1'1 - 1 Platoon, 1 Squad
<br/>1'2 - 1 Platoon, 2 Squad
<br/>1'3 - 1 Platoon, 3 Squad
<br/>
<br/>2'0 - 2 Platoon, Platoon HQ
<br/>2'1 - 2 Platoon, 1 Squad
<br/>2'2 - 2 Platoon, 2 Squad
<br/>2'3 - 2 Platoon, 3 Squad
<br/>
<br/>Actual - Used for the actual commander of the unit.
<br/>For example 1'0 Actual would be 1 Platoon, Platoon Commander, not his radio operator. //'
<br/>
<br/>Ende - Out, do not reply.
<br/>
<br/>Kommen - Over, reply to me.
<br/>
<br/><font color='#70db70'>2. Radio Frequencies:</font>
//Include others as needed
<br/>
<br/>Frequency 45 - Company Net
<br/>Frequency 65 - 1 Platoon Net
<br/>Frequency 85 - 2 Platoon Net
<br/>
<br/><font color='#70db70'>3. Special Signals</font>
//Include others as needed
<br/>Waving like a idiot - Don't shoot me //'
<br/>Spamming Q and E, aka the 'friendly dance' - Don't shoot me //'
<br/>
<br/>Smoke:
<br/>Green - Go signal
<br/>Red - Stop/halt signal
<br/>Purple - Request support
<br/>Orange - Need a medic
<br/>Blue - Friendly position
<br/>Yellow - Regroup on that position
<br/>White - Used for concealment only
//<br/>
//<br/><font color='#70db70'>4. Codewords:</font>
//Include and uncomment as needed
//<br/>
//<br/>
//<br/><font color='#70db70'>5. Passwords:</font>
//Include and uncomment as needed
//<br/>
ENDTAB;

};// End of east case

case resistance: { // Briefing for Indfor goes here if needed

NEWTAB("I. Situation:") 
// Give a brief description of the current situation. Ex. what has happened that led up to this mission. Generally should give an idea of why this mission is happening.
<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
// A concise statement that includes the Who, What, Where, When, and Why of the operation to be conducted. This is generally a single sentence and there should be no question as to what needs to be done.
// Ex. 1 Kompanie is to SECURE the town of Tottah and DESTROY any enemy assets.
<br/>
ENDTAB;

NEWTAB("III. Intelligence:")
<br/>A. Overview
<br/>
<br/><font color='#FF8C00'>1. Terrain:</font>
// Describe the terrain
// Mountainous, Countryside, open, dense woods
<br/>
<br/>
<br/><font color='#FF8C00'>2. Weather:</font>
// Describe and weather conditions
// Light/heavy fog, rain, clear skies, etc.
<br/>
<br/>
<br/><font color='#FF8C00'>3. Points of Interest:</font>
//Any locations on the map that can be of interest to either us or the enemy
<br/>
<br/>
<br/><font color='#FF8C00'>4. Areas of Interest:</font>
// That area of interest/concern to the commander, including the area of influence, areas adjacent thereto, and extending into enemy territory to the objectives of current or planned operations.
// This area also includes areas occupied by enemy forces who could jeopardize the accomplishment of the mission.
<br/>
<br/>
<br/><font color='#FF8C00'>5. Civilians:</font>
// Are there civilians in the area? Where? Are they friendly to us?
<br/>
<br/>
ENDTAB;

NEWTAB("B. Enemy Forces:")
// Name of the enemy force(s) here.
// Ex. Armed Forces of the Russian Federation (MSV)
<br/>German Wehrmacht
<br/>
<br/><font color='#FF8C00'>1. Equipment:</font>
// List equipment that the enemy most likely uses
<br/>Standard German small arms
<br/>
<br/><font color='#FF8C00'>2. Strength:</font>
// An approximation of enemy strength
<br/>
<br/>
<br/><font color='#FF8C00'>3. Location:</font>
// Known location of enemies
<br/>
<br/>
<br/><font color='#FF8C00'>4. Expected Enemy Actions:</font>
// Most Likely Course Of Action for the enemy, example:
// On contact, EN will initially attempt to return fire. After determining the situation untenable, the EN will attempt to fix and attrition with massed direct fires and reinforce from adjacent elements.
<br/>
<br/>
<br/><font color='#FF8C00'>5. Most Dangerous Enemy Actions:</font>
// Most Dangerous Course Of Action for the enemy to take against us
<br/>
<br/>
<br/><font color='#FF8C00'>6. Defensive Fires:</font>
// Enemy Artillery is listed here, otherwise put Unknown or N/A
<br/>
<br/>
<br/><font color='#FF8C00'>7. Enemy Air Presence:</font>
// Any enemy planes operating in the area, if none put N/A
<br/>
<br/>
<br/><font color='#FF8C00'>8. Future intentions:</font>
// What are the goals of the enemy
// example - To restore the train to working order and continue the relocation of the experimental T-80s.
<br/>
<br/>
ENDTAB;

NEWTAB("C. Friendly Forces:")
// Name of friendly force(s) here.
<br/>The British Army and Allied Forces
<br/>
<br/><font color='#FF8C00'>1. Higher HQ Mission and Intent:</font>
// Describe the intent of higher, can go up to battalion level
// eg. 1UP intent is to take airfield, 2UP intent is create a forward landing zone for follow on forces.
<br/>
<br/>
<br/><font color='#FF8C00'>2. Composition:</font>
// Describe the makeup of the friendly forces.
<br/>1x Company consisting of:
<br/>
<br/>1x Company HQ
<br/>1x Reserve Section
<br/>
<br/>2x Platoons each consisting of:
<br/>1x Platoon HQ
<br/>3x Sections
<br/>
<br/><font color='#FF8C00'>3. Supporting fires:</font>
// Friendly Artillery is listed here
<br/>None
<br/>
<br/><font color='#FF8C00'>4. Attachments/Detachments:</font>
// Any attached or detached elements or units
<br/>1x Tank Crew
<br/>
<br/><font color='#FF8C00'>5. Assets:</font>
// List any vehicles or other special equipment the the friendly side has
<br/>8x Trucks
<br/>1x Tank
ENDTAB;


NEWTAB("IV. Execution:")
<br/><font color='#FF8C00'>A. Concept of the Operation</font>
// A description of the way the operation should unfold.
// Example:
// USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
// transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.
<br/>
<br/>
<br/><font color='#FF8C00'>B. Scheme of Manoeuvre</font>
// How the units will move, usually left up-to the company/platoon commander to decide
// Example:
// USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
// Further movement will be be at the direction of the Zugführer.
<br/>
<br/>
<br/><font color='#FF8C00'>C. Main Effort</font>
// Which units will provide the main effort and which will provide support
// example: 1 Zug will provide the main force for the assault, supported by 2 Zug and Eva, with the Kompanietrupp overseeing the operation.
<br/>
<br/>
<br/><font color='#FF8C00'>D. Tasks to Subordinate Units</font>
// Usually companies tasking to their platoons.
// Example: 1 Zug will provide a blocking force at grid 123456 in order to allow 2 Zug to assault and destroy enemy elements
<br/>
<br/>
<br/><font color='#FF8C00'>E. Coordinating Instructions</font>
<br/>
<br/><font color='#70db70'>1. Timings:</font>
// Timing for phases during the mission, can also be timing for expected enemy contact in defence mission
// Example -  We will commence the attack at 0500hrs and must have completed the assault no later than 0620hrs.
<br/>
<br/>
<br/><font color='#70db70'>2. Control Measures:</font>
// Any specific boundary areas, etc. usually set by the Kompanie
<br/>As per the direction of the Company Commander.
<br/>
<br/><font color='#70db70'>3. Rules of Engagement</font>
// Rules of engagement go here.
<br/>All enemy forces may be engaged at will.
<br/>
ENDTAB;

NEWTAB("V. Sustainment:")
<br/><font color='#FF8C00'>A. Equipment Variations</font>
// Any changes from standard to any of the following.
<br/>Dress: None
<br/>Equipment: None
<br/>Weapons: None
<br/>Vehicle Loading: None
<br/>
<br/><font color='#FF8C00'>B. Logistic Support</font>
// Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
<br/>Replen Plan: Supplies for each section are carried in their own truck.
<br/>Ammunition: Each man carries his own ammunition.
<br/>Protective Equipment: Helmets are to be worn at all times.
<br/>
<br/><font color='#FF8C00'>C. Medical</font>
<br/>Stretchers: None
<br/>Med Packs and Morphine: Supplies for each section are carried in their own truck.
ENDTAB;

NEWTAB("VI. Command & Signal:")
<br/><font color='#FF8C00'>A. Command</font>
<br/>
<br/><font color='#70db70'>1. Succession of Command:</font>
//Who will take over when casualties occur among leadership elements
<br/>1 Company Commander
<br/>1 Platoon, Platoon Commander
<br/>2 Platoon, Platoon Commander
//<br/>1 Platoon, Platoon Sergeant
//<br/>2 Platoon, Platoon Sergeant
<br/>1 Platoon, 1 Section, Section Leader
<br/>2 Platoon, 1 Section, Section Leader
<br/>1 Platoon, 2 Section, Section Leader
<br/>2 Platoon, 2 Section, Section Leader
<br/>1 Platoon, 3 Section, Section Leader
<br/>2 Platoon, 3 Section, Section Leader
<br/>
<br/><font color='#70db70'>2. Higher Level Command Post:</font>
// Company or Division HQ location, mostly useful for campaign so comment it out with // if not needed.
<br/>
<br/>
<br/><font color='#FF8C00'>B. Signals</font>
<br/>
<br/><font color='#70db70'>1. Call Signs:</font>
//Include others as needed
<br/>
<br/>HQ - 1 Company HQ
<br/>
<br/>1'0 - 1 Platoon, Platoon HQ
<br/>1'1 - 1 Platoon, 1 Section
<br/>1'2 - 1 Platoon, 2 Section
<br/>1'3 - 1 Platoon, 3 Section
<br/>
<br/>2'0 - 2 Platoon, Platoon HQ
<br/>2'1 - 2 Platoon, 1 Section
<br/>2'2 - 2 Platoon, 2 Section
<br/>2'3 - 2 Platoon, 3 Section
<br/>
<br/>Actual - Used for the actual commander of the unit.
<br/>For example 1'0 Actual would be 1 Platoon, Platoon Commander, not his radio operator. //'
<br/>
<br/>Out - Do not reply.
<br/>
<br/>Over - Reply to me.
<br/>
<br/><font color='#70db70'>2. Radio Frequencies:</font>
//Include others as needed
<br/>
<br/>Frequency 50 - Company Net
<br/>Frequency 70 - 1 Platoon Net
<br/>Frequency 90 - 2 Platoon Net
<br/>
<br/><font color='#70db70'>3. Special Signals</font>
//Include others as needed
<br/>Waving like a idiot - Don't shoot me //'
<br/>Spamming Q and E, aka the 'friendly dance' - Don't shoot me //'
<br/>
<br/>Smoke:
<br/>Green - Go signal
<br/>Red - Stop/halt signal
<br/>Purple - Request support
<br/>Orange - Need a medic
<br/>Blue - Friendly position
<br/>Yellow - Regroup on that position
<br/>White - Used for concealment only
//<br/>
//<br/><font color='#70db70'>4. Codewords:</font>
//Include and uncomment as needed
//<br/>
//<br/>
//<br/><font color='#70db70'>5. Passwords:</font>
//Include and uncomment as needed
//<br/>
ENDTAB;

};// End of resistance case

case civilian: { // Briefing for Zeus or Civilians goes here if needed
};// End of civilian case

}; // End of switch

NEWTAB("Mission notes:")
// This is shown for everyone
<br/>Time Limit is XX minutes.
// change the XX to what you set the time limit to
<br/>
<br/>Victory is achieved when
// put win condition here
<br/>Defeat occurs when
// put failure conditions here, example - Russian forces secure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.
ENDTAB;

NEWTAB("Game Mastering")
// Change this if you want a zeus to guide your mission
//This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
This mission requires a dedicated Zeus to play correctly.
ENDTAB;

// Used to find the dedicated Zeus player and put the Zeus notes in their briefing.
// IMPORTANT - your Zeus unit must have their Variable Name set to God for this to function correctly.
// The Zeus unit in the Essentials composition is currently set to this variable name.
// If you wish to use a different Zeus unit then you will need to set its Variable Name yourself.
// I strongly suggest keeping the Zeus on the Civilian side however, so they can't see any of the marks or lines the players draw on the map.
// If no unit is named God then every player will see the first message below.
if (isNil {God}) then {
    //If no Zeus is slotted then the God variable is set to 0 and no message is shown.
    //Note, non-Zeus players will never see the Zeus Notes tab either way
    //Once a Zeus is slotted then the if statement below will take effect for them.
    God = 0;
};
if (God isEqualTo player) then {
    //All Zeus Notes should go in this tab, only the Zeus player will see them.
    NEWTAB("Zeus Notes")
    <br/>All notes for the Zeus from the mission maker should go in this tab.
    <br/>
    <br/><font color='#FF8C00'>If you are not going to Zeus this mission, do not read this tab.</font>
    <br/>
    <br/>
    ENDTAB;
};

//Displays the Admin Tab for the admin, the Zeus, Haas, Madsen, Schuttler, Sauer, Schmidt, and Brauer
_adminState = call BIS_fnc_admin;
_uid = getPlayerUID player;
if ((_adminState != 0) || (God isEqualTo player) || (_uid == "76561197970317496") || (_uid == "76561197983143701") || (_uid == "76561198096113294") || (_uid == "76561197985738940") || (_uid == "76561198007878058") || (_uid == "76561198006804011")) then {
	//This tab has clickable commands to allow the admin or zeus to end the mission.
	//More may be added by makin an entry here and adding a corresponding entry in the settings.sqf
    NEWTAB("Admin Tab") 
    <br/>The server admin and the zeus (if present) both have access to these options.
    <br/>
    <br/>This is used to call mission endings, please be careful since if you press it once it will end the mission.
    <br/>
    <br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Call Mission Victory</execute>  
    <br/>
    <br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call Mission Failure</execute>
    <br/>
    <br/>Helper checks are: //Server vars
    <br/><execute expression='systemChat str westCasualty'>Check Bluefor Casualty Percentage</execute>
    <br/><execute expression='systemChat str eastCasualty'>Check Opfor Casualty Percentage</execute>
    //<br/><execute expression='systemChat str resistanceCasualty'>Check Indfor Casualty Percentage</execute>
    //<br/><execute expression='systemChat str civilianCasualty'>Check Civilian Casualty Percentage</execute>
    <br/><execute expression='systemChat str testVar'>Test Boolean Handling</execute>
    ENDTAB;
};

DISPLAYBRIEFING();

#include "orbat.sqf" // DO NOT REMOVE