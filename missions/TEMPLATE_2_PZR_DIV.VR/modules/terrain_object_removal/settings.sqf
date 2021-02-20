// Automatically removes unsightly modern terrain objects from the mission area.
// Runs in scheduled space so it will take a few seconds after mission start to complete, depending on the size of the removal area.

// Uses the position and size of the AO as the centre and area for object removal.
// If the AO marker is not present the variables below can be used to set a custom centre and radius for the removal area

//==== Centre Position
// This is the position around which modern objects will be removed.
// A custom position must be a possition array with the format [x,y] or [x,y,0];
// terrainObjectRemoval_centre = [7500,6000];

terrainObjectRemoval_centre = getMarkerPos "AO";

//==== Removal Radius
// This is the distance from the centre position that modern objects will be removed.
// A custom radius must be a number;
// terrainObjectRemoval_radius = 4000;

terrainObjectRemoval_radius = 1.25 * _maxMarkerWidthAO;

//==== Object List
// This is the default list of objects that will be removed.
// It's pretty inclusive, removing anything that has a modern design or modern material.
// One large exclusion is town direction and welcome/leaving signs.
// In my testing the vanilla signs are all unique models so finding all of them would be too difficult.
// Any addition to the list must be the model name of the object;

terrainObjectRemoval_objectList = [
    "atm_01_f.p3d",
    "atm_02_f.p3d",
    "attachedsign_01_v2_f.p3d",
    "attachedsign_01_v4_f.p3d",
    "attachedsign_02_v3_f.p3d",
    "attachedsign_03_v1_f.p3d",
    "attachedsign_03_v2_f.p3d",
    "a_statue01.p3d",
    "barrelempty_f.p3d",
    "barrelsand_f.p3d",
    "barrelwater_f.p3d",
    "billboard_01_v1_f.p3d",
    "billboard_02_v1_f.p3d",
    "billboard_02_v2_f.p3d",
    "bulldozer_01_abandoned_f.p3d",
    "bulldozer_01_wreck_f.p3d",
    "campingchair_v1_folded_f.p3d",
    "campingchair_v2_f.p3d",
    "campingtable_f.p3d",
    "campingtable_small_f.p3d",
    "canisterplastic_f.p3d",
    "cargo20_blue_f.p3d",
    "cargo20_brick_red_f.p3d",
    "cargo20_cyan_f.p3d",
    "cargo20_grey_f.p3d",
    "cargo20_light_blue_f.p3d",
    "cargo20_light_green_f.p3d",
    "cargo20_military_green_f.p3d",
    "cargo20_orange_f.p3d",
    "cargo20_red_f.p3d",
    "cargo20_sand_f.p3d",
    "cargo20_white_f.p3d",
    "cargo20_yellow_f.p3d",
    "cargo40_blue_f.p3d",
    "cargo40_brick_red_f.p3d",
    "cargo40_cyan_f.p3d",
    "cargo40_grey_f.p3d",
    "cargo40_light_blue_f.p3d",
    "cargo40_light_green_f.p3d",
    "cargo40_military_green_f.p3d",
    "cargo40_orange_f.p3d",
    "cargo40_red_f.p3d",
    "cargo40_sand_f.p3d",
    "cargo40_white_f.p3d",
    "cargo40_yellow_f.p3d",
    "cargobox_v1_f.p3d",
    "cargo_addon01_v1_f.p3d",
    "cargo_addon01_v2_f.p3d",
    "cargo_addon02_v1_f.p3d",
    "cargo_addon02_v2_f.p3d",
    "cargo_house_slum_f.p3d",
    "cargo_house_v1_f.p3d",
    "cargo_house_v2_f.p3d",
    "cargo_house_v3_f.p3d",
    "cargo_hq_v1_f.p3d",
    "cargo_hq_v2_f.p3d",
    "cargo_hq_v3_f.p3d",
    "cargo_patrol_v1_f.p3d",
    "cargo_patrol_v2_f.p3d",
    "cargo_patrol_v3_f.p3d",
    "cargo_tower_v1_f.p3d",
    "chairplastic_f.p3d",
    "cinderblocks_f.p3d",
    "cncbarrier_f.p3d",
    "cncshelter_f.p3d",
    "coil_f.p3d",
    "communication_anchor_f.p3d",
    "communication_f.p3d",
    "containerline_02_f.p3d",
    "cornerads_01_v1_f.p3d",
    "cornerads_02_v2_f.p3d",
    "crabcages_f.p3d",
    "cratesplastic_f.p3d",
    "datsun01t.p3d",
    "datsun02t.p3d",
    "dome_big_f.p3d",
    "dome_small_f.p3d",
    "dp_smallfactory_f.p3d",
    "dp_transformer_f.p3d",
    "excavator_01_abandoned_f.p3d",
    "fieldtoilet_f.p3d",
    "fishinggear_01_f.p3d",
    "fishinggear_02_f.p3d",
    "flush_light_green_f.p3d",
    "flush_light_red_f.p3d",
    "flush_light_yellow_f.p3d",
    "fort_watchtower_ep1.p3d",
    "fs_price_f.p3d",
    "fs_roof_f.p3d",
    "fs_sign_f.p3d",
    "fuelstation_02_prices_f.p3d",
    "fuelstation_02_roof_f.p3d",
    "fuelstation_02_sign_f.p3d",
    "fuel_tank_small.p3d",
    "garbagebags_f.p3d",
    "garbagebarrel_01_f.p3d",
    "garbagebin_01_f.p3d",
    "garbagebin_02_f.p3d",
    "garbagecontainer_closed_f.p3d",
    "garbagecontainer_open_f.p3d",
    "garbageheap_04_f.p3d",
    "garbagepallet_f.p3d",
    "garbagewashingmachine_f.p3d",
    "garbage_line_f.p3d",
    "garbage_misc.p3d",
    "garbage_paleta.p3d",
    "garbage_square3_f.p3d",
    "garbage_square5_f.p3d",
    "guardhouse_01_f.p3d",
    "hangar_f.p3d",
    "haultruck_01_abandoned_f.p3d",
    "haybale_01_packed_f.p3d",
    "haybale_01_stack_f.p3d",
    "hbarriertower_f.p3d",
    "hbarrier_1_f.p3d",
    "hbarrier_2_f.p3d",
    "hbarrier_3_f.p3d",
    "hbarrier_4_f.p3d",
    "hbarrier_5_f.p3d",
    "hbarrier_big_f.p3d",
    "helipadcircle_f.p3d",
    "helipadsquare_f.p3d",
    "heli_h_army.p3d",
    "hiluxt.p3d",
    "junkpile.p3d",
    "junkpile_f.p3d",
    "kerbisland_01_start_f.p3d",
    "kiosk_blueking_f.p3d",
    "kiosk_gyros_f.p3d",
    "kiosk_papers_f.p3d",
    "kiosk_redburger_f.p3d",
    "kontejner.p3d",
    "lampairport_f.p3d",
    "lampairport_off_f.p3d",
    "lamphalogen_f.p3d",
    "lamphalogen_off_f.p3d",
    "lampsolar_f.p3d",
    "lampsolar_off_f.p3d",
    "lampstreet_02_double_f.p3d",
    "lampstreet_02_f.p3d",
    "lampstreet_f.p3d",
    "metalbarrel_empty_f.p3d",
    "metalbarrel_f.p3d",
    "mil_wallbig_4m_f.p3d",
    "mil_wallbig_corner_f.p3d",
    "misc_cargo1a.p3d",
    "misc_cargo1b.p3d",
    "misc_cargo1bo.p3d",
    "misc_cargo1c.p3d",
    "misc_cargo1d.p3d",
    "misc_cargo2a.p3d",
    "misc_cargo2b.p3d",
    "misc_cargo2c.p3d",
    "misc_cargo2d.p3d",
    "misc_cargo2e.p3d",
    "misc_cargo_cont_net1.p3d",
    "misc_cargo_cont_net2.p3d",
    "misc_cargo_cont_net3.p3d",
    "mobilecrane_01_f.p3d",
    "naviglight.p3d",
    "naviglight_3_f.p3d",
    "phonebooth_01_f.p3d",
    "phonebooth_02_f.p3d",
    "portablelight_double_f.p3d",
    "powergenerator_f.p3d",
    "radar_f.p3d",
    "radar_small_f.p3d",
    "research_house_v1_f.p3d",
    "research_hq_f.p3d",
    "roadbarrier_f.p3d",
    "runway_edgelight.p3d",
    "runway_edgelight_blue_f.p3d",
    "scf_01_heap_bagasse_f.p3d",
    "shed_m02.p3d",
    "signcommand_01_giveway_f.p3d",
    "signinfo_01_pedestriancrossing_f.p3d",
    "signinfo_01_pedestrianzone_f.p3d",
    "signmonolith_01_f.p3d",
    "signm_forsale_f.p3d",
    "signt_commandeddirectionforward.p3d",
    "signt_crosroad.p3d",
    "signt_dangerbendl.p3d",
    "signt_dangerbendr.p3d",
    "signt_dangerbendsl.p3d",
    "signt_dangerbendsr.p3d",
    "signt_deadend.p3d",
    "signt_giveway.p3d",
    "signt_infofirstaid.p3d",
    "signt_infohotel.p3d",
    "signt_infopedcrossing.p3d",
    "signt_infopetrolstation.p3d",
    "signt_inforestaurant.p3d",
    "signt_infotaxirank.p3d",
    "signt_junctionrow.p3d",
    "signt_noparking.p3d",
    "signt_nopassage.p3d",
    "signt_nostopping.p3d",
    "signt_pedestrianzone.p3d",
    "signt_sharpbendleft.p3d",
    "signt_sharpbendright.p3d",
    "signt_speedlimit30.p3d",
    "signt_speedlimit40.p3d",
    "signt_speedlimit50.p3d",
    "signt_speedlimit60.p3d",
    "signt_speedlimit70.p3d",
    "signt_speedlimitend.p3d",
    "signt_stop.p3d",
    "signt_warningaircraft.p3d",
    "signt_warningchippings.p3d",
    "signt_warningother.p3d",
    "signt_warningpedcrossing.p3d",
    "signt_warningrocks.p3d",
    "signt_warningsteepdown.p3d",
    "signt_warningunevenroad.p3d",
    "signt_warningwild.p3d",
    "signwarning_01_roadworks_f.p3d",
    "slidecastle_f.p3d",
    "slide_f.p3d",
    "spp_mirror_f.p3d",
    "spp_tower_f.p3d",
    "sun_chair_f.p3d",
    "sun_chair_green_f.p3d",
    "tableplastic_01_f.p3d",
    "telek1.p3d",
    "tent2_west_ep1.p3d",
    "tenthangar_v1_f.p3d",
    "toiletbox_f.p3d",
    "ttowerbig_1_f.p3d",
    "ttowerbig_2_f.p3d",
    "ttowersmall_1_f.p3d",
    "ttowersmall_2_f.p3d",
    "tyres_f.p3d",
    "tyre_f.p3d",
    "waterbarrel_f.p3d",
    "watertank_02_f.p3d",
    "watertank_04_f.p3d",
    "watertank_f.p3d",
    "wavepowerplantbroken_f.p3d",
    "wavepowerplant_f.p3d",
    "wf_field_hospital_east_ep1.p3d",
    "wf_field_hospital_west_ep1.p3d",
    "wheeliebin_01_f.p3d",
    "wpp_turbine_v2_f.p3d",
    "wreck_bmp2_f.p3d",
    "wreck_car2_f.p3d",
    "wreck_car3_f.p3d",
    "wreck_cardismantled_f.p3d",
    "wreck_car_f.p3d",
    "wreck_offroad2_f.p3d",
    "wreck_offroad_f.p3d",
    "wreck_skodovka_f.p3d",
    "wreck_slammer_f.p3d",
    "wreck_truck_dropside_f.p3d",
    "wreck_truck_f.p3d",
    "wreck_uaz_f.p3d",
    "wreck_van_f.p3d",
    "wreck_ural_f.p3d"
];

//==== Object Model Finder

/*
temp_badObjects = []; //only declare on the first run
*/

/*
_newObjects = [];

{
    private _objectModelInfo = getModelInfo _x;
    private _objectModel = _objectModelInfo select 0;
    if !(_objectModel in temp_badObjects) then {
        _newObjects pushBackUnique _objectModel;
        temp_badObjects pushBackUnique _objectModel;
    };
} forEach (nearestTerrainObjects [
    (getPos player),
    ["BUILDING","HOUSE","CHURCH","CHAPEL","CROSS","BUNKER","FORTRESS","FOUNTAIN","VIEW-TOWER","LIGHTHOUSE","QUAY","FUELSTATION","HOSPITAL","FENCE","WALL","HIDE","BUSSTOP","ROAD","TRANSMITTER","STACK","RUIN","TOURISM","WATERTOWER","TRACK","MAIN ROAD","POWER LINES","RAILWAY","POWERSOLAR","POWERWAVE","POWERWIND","SHIPWRECK"],
    5,
    false,
    false
]);

{
    terrainObjectRemoval_objectList pushBackUnique _x;
} forEach _newObjects;

[] spawn {
    sleep 0.1;

    {
        private _objectModelInfo = getModelInfo _x;
        private _objectModel = _objectModelInfo select 0;

    if (_objectModel in temp_badObjects) then {
            _x hideObject true;
            _x enableSimulation false;
            _x allowDamage false;
        };
        sleep 0.0001;
    } forEach (nearestTerrainObjects [
        [worldSize/2, worldSize/2],
        ["BUILDING","HOUSE","CHURCH","CHAPEL","CROSS","BUNKER","FORTRESS","FOUNTAIN","VIEW-TOWER","LIGHTHOUSE","QUAY","FUELSTATION","HOSPITAL","FENCE","WALL","HIDE","BUSSTOP","ROAD","TRANSMITTER","STACK","RUIN","TOURISM","WATERTOWER","TRACK","MAIN ROAD","POWER LINES","RAILWAY","POWERSOLAR","POWERWAVE","POWERWIND","SHIPWRECK"],
        worldSize,
        false,
        true
    ]);
};

_newObjects
*/
