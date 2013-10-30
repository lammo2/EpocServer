if(!isServer) exitWith {};

diag_log format["Starting Weapon Cache Script...."];

_cachearray = ["Zub","Capgolovapvp","Skanky","WestPavlovo","Bolotacastlepvp","Devilsacastlepve","Devilscastlepvp","Skankypvp","Zubpve","WestPavlovopvp"];

weaponcaherunning = false;
_startTime = floor(time);
_result = 0;

while {true} do
{
	_cnt = {alive _x} count playableUnits;
	_currTime = floor(time);
	if((_currTime - _startTime >= 60) AND (!weaponcaherunning)) then {_result = 1};
	
	if(weaponcaherunning) then
	{
		_startTime = floor(time);
	};
	
	if((_result == 1) AND (_cnt >= 1))  then
    {
		sleep 10;
        _mission = _cachearray select (random (count _cachearray - 1));
        execVM format ["\z\addons\dayz_server\compile\missions\%1.sqf",_mission];
		weaponcaherunning = true;
        diag_log format["Starting Weapon Cache Mission...."];
        _startTime = floor(time);
        _result = 0;
    } else {
    	sleep 1;  
    };    
};
