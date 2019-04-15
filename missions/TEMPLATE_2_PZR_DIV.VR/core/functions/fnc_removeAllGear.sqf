/*
 * Author: Olsen
 *
 * Remove all gear.
 *
 * Arguments:
 * 0: unit <object>
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

#define WHITELIST ["None","G_LIB_Dienst_Brille2","G_LIB_Dienst_Brille","fow_g_glasses4","G_LIB_Watch1","G_LIB_Watch2"]

private _unit = _this;

removeHeadgear _unit;
if (!isPlayer _unit || !((goggles _unit) in WHITELIST) || (!isNil "FW_force_remove_facewear" && {FW_force_remove_facewear})) then {
    removeGoggles _unit;
};
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;