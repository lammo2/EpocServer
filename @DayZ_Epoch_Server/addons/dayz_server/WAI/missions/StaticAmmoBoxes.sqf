/* Add ammmo boxes to static locations on map and fills it with loot from missionCfg.sqf

creates a ammo box at [0,0,0] then fills it

_box = createVehicle ["BAF_VehicleBox",[0,0,0], [], 0, "CAN_COLLIDE"];
[_box] call spawn_ammo_box;

creates a 2nd ammo box at [1,1,1] then fills it

_box2 = createVehicle ["BAF_VehicleBox",[1,1,1], [], 0, "CAN_COLLIDE"];
[_box2] call spawn_ammo_box;

add custom ammo boxes below this line
*/

_box = createVehicle ["BAF_VehicleBox",[932.71082, 4507.2783, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
[_box] call spawn_ammo_box;

_box2 = createVehicle ["BAF_VehicleBox",[13693.258, 2933.657, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
[_box2] call spawn_ammo_box;
