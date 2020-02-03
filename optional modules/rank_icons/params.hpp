// Params: https://community.bistudio.com/wiki/Arma_3_Mission_Parameters

class RankIcons_Source {
    title = "Use player's rank from player name or slot?";
    texts[] = {"Player Name", "Slot"};
    values[] = {0,1};
    default = 0;
};

class RankIcons_Military_Bluefor {
    title = "Bluefor Military Force";
    texts[] = {"German Heer","German Luftwaffe (Fallschirmjager)","Japanese Imperial Army","Japanese SNLF"};
    values[] = {0,1,2,3};
    default = 2;
};

class RankIcons_Military_Opfor {
    title = "Opfor Military Force";
    texts[] = {"Soviet NKVD","Soviet Red Army"};
    values[] = {0,1};
    default = 1;
};

class RankIcons_Military_Indep {
    title = "Indep Military Force";
    texts[] = {"Australian Army","British Army","Canadian Army","US Army","US Marine Corp"};
    values[] = {0,1,2,3,5};
    default = 0;
};
