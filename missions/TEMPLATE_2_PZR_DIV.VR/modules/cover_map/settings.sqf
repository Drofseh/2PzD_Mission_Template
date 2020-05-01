// ===== MUST NOT BE USED AT THE SAME TIME AS THE Cover_Map_Multiple MODULE

//marker for AO. This module won't force AO boundaries, for that use AO module.
_marker = "AO";

//this allows each side to use a seperate marker for its AO, so each side can see different parts of the map.
_useSideSpecificAO = False;

//if _useSideSpecificAO is true then set which markers to use here.
_markerWest = "AO";
_markerEast = "AO";
_markerIndep = "AO";
_markerCiv = _marker;
