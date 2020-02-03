["Task Control", "Utility to help with Arma 3 Tasks", "Briland"] call Olsen_FW_FNC_RegisterModule;

//private ["_month", "_hour", "_min", "_startTextArray", "_line", "_unparsedText"];

if (isServer) then {
    serverTaskArray = [];
};

#define ADDTASK(TARGET, DESTINATION, TITLE, DESCRIPTION, WPTITLE) \
[TARGET, DESTINATION, TITLE, DESCRIPTION, WPTITLE] call Olsen_FW_FNC_ADDTASK;

#define COMPLETETASK(TITLE) \
[TITLE, "Succeeded"] call Olsen_FW_FNC_SETTASKSTATE;

#define FAILTASK(TITLE) \
[TITLE, "Failed"] call Olsen_FW_FNC_SETTASKSTATE;

#define CANCELTASK(TITLE) \
[TITLE, "Canceled"] call Olsen_FW_FNC_SETTASKSTATE;

#define RESETTASK(TITLE) \
[TITLE, "Created"] call Olsen_FW_FNC_SETTASKSTATE;

#define ASSIGNTASK(TITLE) \
[TITLE, "Assigned"] call Olsen_FW_FNC_SETTASKSTATE;

#define REMOVETASK(TITLE) \
[TITLE] call Olsen_FW_FNC_REMOVETASK;

if (isServer) then {
    #include "settings.sqf"
};
