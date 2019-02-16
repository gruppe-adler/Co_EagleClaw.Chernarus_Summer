_unit = _this select 0;
_unit setCombatMode "RED";
_unit setBehaviour "AWARE";

villager_execution = false;
waitUntil {villager_execution};
sleep 4;
_unit doTarget villager_victim;
_unit doFire villager_victim;
sleep 1.5;

_unit setCombatMode "BLUE";
_unit setBehaviour "CARELESS";
_unit setSpeedMode "LIMITED";
_unit doMove (getMarkerPos "mrk_fob");