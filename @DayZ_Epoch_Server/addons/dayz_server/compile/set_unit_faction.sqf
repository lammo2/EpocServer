waitUntil{initialized};
//0Day
createCenter east;
createCenter resistance;
//Survivors
WEST setFriend [RESISTANCE,.7];
WEST setFriend [EAST,0];
//AI Units
RESISTANCE setFriend [WEST,.7];
RESISTANCE setFriend [EAST,0];
//AI Units 2
EAST setFriend [WEST,0];
EAST setFriend [RESISTANCE,0];