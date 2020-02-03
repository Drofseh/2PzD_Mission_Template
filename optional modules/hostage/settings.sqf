// This module allows you to easily manage hostages, all you need is a unit and a marker.
//
// Usage:
// 1) Create a RECTANGLE/ELLIPSE marker that will represent the rescue zone for the hostage.
// 2) Create the hostage unit and give it a name (used for the end conditions).
// 3) In the init field add this line: [this, "RescueMarkerName"] call Olsen_FW_FNC_SetHostage;
// 4) To check if the hostage has been rescued in the end conditions use this line: hostage call Olsen_FW_FNC_IsRescued
//
// Example:
// if (hostage1 call Olsen_FW_FNC_IsRescued && hostage2 call Olsen_FW_FNC_IsRescued) exitWith {
//      "Hostages Rescued" call Olsen_FW_FNC_EndMission;
// };
//
// if (!alive hostage1 && !alive hostage2) exitWith {
//      "Hostages Killed" call Olsen_FW_FNC_EndMission;
// };
