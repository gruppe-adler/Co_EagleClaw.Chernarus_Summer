/*
	nomisums light fasttravel
*/

_travelToID = _this select 0;
_targetPositions = ["DevilsCastle","TunnelEntry"];	//These have to be markers!!! - Marker names will be displayed as the name of the location
_markerName = (_targetPositions select _travelToID);
_destPos = getMarkerpos (_targetPositions select _travelToID);
_posPlayer = position player;
_traveltime = 4;

_txt = parseText "<t shadow='true'><t shadowColor='#000000'><t align='center'><t underline='1'><t color='#ffffff'><t size='1.8'>Entering the tunnel system...<br/><br/>";
hint _txt;

player allowDamage false;
showCinemaBorder true;

_camera = "camera" camCreate [position player select 0,position player select 1,1.9];
_camera camSetTarget [position player select 0,position player select 1,1.9];
_camera cameraEffect ["internal","back"];
_camera camCommit 0;




_camera camSetRelPos [0,-5,15];
_camera camCommit 2;
sleep 1;

_randomposition = [_destPos, 0, 5, 0, 0, 2000, 0] call BIS_fnc_findSafePos;


_camera camSetTarget [_randomposition select 0,_randomposition select 1,10]; 
_camera camCommit 0.5;
sleep 0.5;
player setPos _randomposition;
_camera camSetPos [_randomposition select 0,_randomposition select 1,10];
_camera camCommit _traveltime;
sleep _traveltime;
_camera camSetTarget player;
_camera camCommit 0.5;
sleep 0.5;
_camera camSetPos [_randomposition select 0,_randomposition select 1,2];
_camera camCommit 2;
sleep 2;




_camera cameraEffect ["terminate","back"];
camDestroy _camera;
[] spawn {
	sleep 5;
	player allowDamage true;
};

//finish
_txt = parseText (format ["<t shadow='true'><t shadowColor='#000000'><t align='center'><t underline='1'><t color='#ffffff'><t size='1.8'>Tunnel Exit</t></t></t></t></t></t><br/><br/>Welcome to %1!<br/>",_markerName]);
hint _txt;