/*
 * Author: Jords
 *
 * Sends the message to executes "FW_EndMission" on the server.
 *
 * Arguments:
 * 0: text to display in end screen <string>
 *
 * Return Value:
 * nothing
 *
 * Public: Yes
 */

private _scenario = _this;

callMissionRemote = [_scenario];
publicVariableServer "callMissionRemote";
