system.debug('1) cars  running at max speed : ' + car.carsRunningAtMaxSpeed); 
car bm = new car();
bm.carColor = 'black';
system.debug('car color = ' + bm.carColor);
bm.switchOn();

car lm = new car();
lm.carColor = 'red';
system.debug('lm car color = ' + lm.carColor);
// system.debug('max speed is ' + lm.maxSpeedKMperHour);
lm.switchOn();
lm.driveAtMaxSpeed();

car vw = new car();
vw.carColor = 'white';
vw.carName = 'Polo';
vw.drive();
vw.driveAtMaxSpeed();

 system.debug('2) cars  running at max speed : ' + car.carsRunningAtMaxSpeed); 

system.debug(car.usage());

insert new account();