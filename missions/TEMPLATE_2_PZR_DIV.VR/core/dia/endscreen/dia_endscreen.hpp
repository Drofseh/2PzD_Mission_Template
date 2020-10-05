//Do not edit unless you know what you are doing
//because you are on the highway to the danger zone!

class DIA_ENDSCREEN {
    idd = 300;
    fadeout = 0;
    fadein = 0;
    duration = 30;
    onLoad = "uiNamespace setVariable ['FW_EndScreen', _this select 0];";
    controlsBackground[] = {BACKGROUND};
    objects[] = {};
    controls[] = {TEXT_TITLE, TEXT_LEFT, TEXT_CENTRE, TEXT_RIGHT, TEXT_BOTTOM_LEFT,TEXT_BOTTOM_MIDDLE, TEXT_BOTTOM_RIGHT};

    class BACKGROUND: RscBackground
    {
        idc = 3000;
        x = safeZoneXAbs;
        y = safeZoneY;
        w = safeZoneWAbs;
        h = safeZoneH;
    };
    class TEXT_TITLE: RscStructuredText
    {
        idc = 3001;
        x = 0.1 * safezoneW + safezoneX;
        y = 0.125 * safezoneH + safezoneY;
        w = 0.525 * safezoneW;
        h = 0.140031 * safezoneH;
    };
    class TEXT_LEFT: RscStructuredText
    {
        idc = 3002;
        x = 0.1 * safezoneW + safezoneX;
        y = 0.25 * safezoneH + safezoneY;
        w = 0.2625 * safezoneW;
        h = 0.560125 * safezoneH;
    };
    class TEXT_CENTRE: RscStructuredText
    {
        idc = 3003;
        x = 0.4 * safezoneW + safezoneX;
        y = 0.25 * safezoneH + safezoneY;
        w = 0.2625 * safezoneW;
        h = 0.560125 * safezoneH;
    };
    class TEXT_RIGHT: RscStructuredText
    {
        idc = 3004;
        x = 0.7 * safezoneW + safezoneX;
        y = 0.25 * safezoneH + safezoneY;
        w = 0.2625 * safezoneW;
        h = 0.560125 * safezoneH;
    };
    class TEXT_BOTTOM_LEFT: RscStructuredText
    {
        idc = 3005;
        x = 0.1 * safezoneW + safezoneX;
        y = 0.57 * safezoneH + safezoneY;
        w = 0.8 * safezoneW;
        h = 0.5 * safezoneH;
    };
    class TEXT_BOTTOM_MIDDLE: RscStructuredText
    {
        idc = 3006;
        x = 0.4 * safezoneW + safezoneX;
        y = 0.57 * safezoneH + safezoneY;
        w = 0.8 * safezoneW;
        h = 0.5 * safezoneH;
    };
    class TEXT_BOTTOM_RIGHT: RscStructuredText
    {
        idc = 3007;
        x = 0.7 * safezoneW + safezoneX;
        y = 0.57 * safezoneH + safezoneY;
        w = 0.8 * safezoneW;
        h = 0.5 * safezoneH;
    };
};
