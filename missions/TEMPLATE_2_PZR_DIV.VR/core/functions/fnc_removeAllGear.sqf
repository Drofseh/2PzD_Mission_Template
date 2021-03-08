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

params ["_unit"];

switch (_unit call Olsen_FW_FNC_getOriginalSide) do {
    case WEST : {
        FW_Whitelist_Face = [
            "","None",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "fow_g_glasses1","fow_g_glasses2","G_LIB_Dienst_Brille","G_LIB_Dienst_Brille2", //glasses
            "fow_g_gloves1","fow_g_gloves2","fow_g_gloves3","G_LIB_GER_Gloves1","G_LIB_GER_Gloves2","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves4" //leather gloves
        ];
    };
    case EAST : {
        FW_Whitelist_Face = [
            "","None",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "fow_g_glasses1","fow_g_glasses2","G_LIB_Dienst_Brille","G_LIB_Dienst_Brille2", //glasses
            "fow_g_gloves1","fow_g_gloves2","fow_g_gloves3","G_LIB_GER_Gloves1","G_LIB_GER_Gloves2","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves4" //leather gloves
        ];
    };
    case RESISTANCE : {
        FW_Whitelist_Face = [
            "","None","G_LIB_Mohawk",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "G_Aviator","fow_g_glasses4", //glasses
            "fow_g_gloves1","fow_g_gloves2","fow_g_gloves3","G_LIB_GER_Gloves1","G_LIB_GER_Gloves2","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves4","G_LIB_GER_Gloves5" //leather gloves
        ];
    };
    default {
        FW_Whitelist_Face = [
            "","None",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "G_Aviator","G_Spectacles","G_Squares_Tinted","G_Squares","G_Spectacles_Tinted","fow_g_glasses1","fow_g_glasses2","fow_g_glasses3","G_LIB_Dienst_Brille","G_LIB_Dienst_Brille2", //glasses
            "fow_g_gloves1","fow_g_gloves2","fow_g_gloves3","G_LIB_GER_Gloves1","G_LIB_GER_Gloves2","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves4" //leather gloves
        ];
    };
};

if (
    !isPlayer _unit
    || {!isNil "FW_force_remove_facewear" && {FW_force_remove_facewear}}
    || {!((goggles _unit) in FW_Whitelist_Face)}
) then {
    removeGoggles _unit;
};

removeHeadgear _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;
