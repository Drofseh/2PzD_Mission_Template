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

switch (side player) do {
    case WEST : {
        FW_Whitelist_Face = [
            "None",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "fow_g_glasses1","fow_g_glasses2","fow_g_glasses1","fow_g_glasses2", //glasses
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves2","fow_g_gloves1","fow_g_gloves3","G_LIB_GER_Gloves4" //leather gloves
        ];
    };
    case EAST : {
        FW_Whitelist_Face = [
            "None",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "fow_g_glasses1","fow_g_glasses2","fow_g_glasses1","fow_g_glasses2", //glasses
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves2","fow_g_gloves1","fow_g_gloves3","G_LIB_GER_Gloves4" //leather gloves
        ];
    };
    case RESISTANCE : {
        FW_Whitelist_Face = [
            "None",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "fow_g_glasses4", //glasses
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves2","fow_g_gloves1","fow_g_gloves3","G_LIB_GER_Gloves4","G_LIB_GER_Gloves5" //leather gloves
        ];
    };
    default {
        FW_Whitelist_Face = [
            "None",
            "fow_g_watch1","fow_g_watch2","G_LIB_Watch1","G_LIB_Watch2", //watches
            "G_Spectacles","G_LIB_Watch1","G_LIB_Watch2","fow_g_glasses1","fow_g_glasses2","G_Squares_Tinted","G_Squares", //glasses
            "fow_g_gloves4","fow_g_gloves5","fow_g_gloves6","G_LIB_GER_Gloves2","G_LIB_GER_Gloves1","G_LIB_GER_Gloves3", //wool gloves
            "fow_g_gloves2","fow_g_gloves1","fow_g_gloves3","G_LIB_GER_Gloves4" //leather gloves
        ];
    };
};

private _unit = _this;

removeHeadgear _unit;
if (!isPlayer _unit || !((goggles _unit) in FW_Whitelist_Face) || (!isNil "FW_force_remove_facewear" && {FW_force_remove_facewear})) then {
    removeGoggles _unit;
};
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;