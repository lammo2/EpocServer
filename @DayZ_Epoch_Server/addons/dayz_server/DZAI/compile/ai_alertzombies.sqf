
private["_unit","_distance","_i","_listTalk","_zombie","_targets","_pos"];
//Alert Zed's to noise of shot
_unit = 	_this select 0;
_distance = _this select 1;
_doRun = 	_this select 2;
_pos = 		_this select 3;
_listTalk = _pos nearEntities ["zZombie_Base",_distance];

{
private["_localtargets","_remotetargets","_targets","_dis"];
	/*
	_distance = _distance max floor(_distance*.9);
	
	_dis = _x distance _unit;
	_zombie = _x;
	
	switch (true) do {
		case (_dis < 51): {
			if (_doRun) then {
				_localtargets = _x getVariable ["localtargets",[]];
				_remotetargets = _x getVariable ["remotetargets",[]];
				_targets = _localtargets + _remotetargets;
				if (!(_unit in _targets)) then {
					_remotetargets set [count _remotetargets,_unit];
					_x setVariable ["remotetargets",_remotetargets,true];
				};
			} else {
				_zombie setVariable ["myDest",_pos,true];
			};
		};
		case ((_dis > 50) and (_dis <= 71)): {
			_50 = round(random 100);
			if (_50 < 50) then {
				if (_doRun) then {
					_localtargets = _x getVariable ["localtargets",[]];
					_remotetargets = _x getVariable ["remotetargets",[]];
					_targets = _localtargets + _remotetargets;
					if (!(_unit in _targets)) then {
						_remotetargets set [count _remotetargets,_unit];
						_x setVariable ["remotetargets",_remotetargets,true];
					};
				} else {
					_zombie setVariable ["myDest",_pos,true];
				};
			} else {
				_zombie setVariable ["myDest",_pos,true];
			};
		};
		case (_dis > 70): {
			_zombie setVariable ["myDest",_pos,true];
		};
	};
	*/

	_zombie = _x;
	if (_doRun) then {
		_localtargets = _x getVariable ["localtargets",[]];
		_remotetargets = _x getVariable ["remotetargets",[]];
		_targets = _localtargets + _remotetargets;
		if (!(_unit in _targets)) then {
			_remotetargets set [count _remotetargets,_unit];
			_x setVariable ["remotetargets",_remotetargets,true];
		};
	} else {
		_zombie setVariable ["myDest",_pos,true];
	};

} forEach _listTalk;