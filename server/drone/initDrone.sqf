/* 0 = [this,"mrk_airport_center"] execVM "server\drone\initDrone.sqf"; */

_drone = _this select 0;
_centerPos = getMarkerPos (_this select 1);

_drone setCaptive true; 

_drone flyInHeight 1500; 

_drone disableAI "target"; 

_drone disableAI "autotarget"; 

_wp = (group _drone) addWaypoint [_centerPos, 0];
_wp setWaypointType "LOITER";
_wp setWaypointSpeed "FULL";
_wp setWaypointLoiterRadius 1000;