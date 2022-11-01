car99 tesla = new car99();
tesla.carName = 'Cyber truck';
tesla.carColor = 'Silver';
system.debug('tesla instance -> ' + tesla);
tesla.drive();
tesla.drivingAtMaxSpeed();



Car99 bm = new Car99();
// access variable using object (bm)

bm.carColor = 'Black';
system.debug('bmw car ===> ' +bm);
bm.switchOn();

System.debug('BMW car color is ' +bm.carColor);
//system.debug ( ' BMW max speed is ' bm.maxSpeedKmPerHr); doesnt work because it is private variable.



