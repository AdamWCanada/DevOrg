public  class Car99 {
// this is class body
    
public string carColor = '';
public string carName = '';

integer maxSpeedKmPerHr = 150;

//method name = switchOn
public void switchOn(){
    //my functionality will come here.
    system.debug('Starting the CAR NOW.');
}

public void drive(){
    switchOn();
    system.debug('driving ' + carName);
}
public void drivingAtMaxSpeed(){
    string drivingDescription = 'driving ' + carName + ' at ' + maxSpeedKmPerHr + 'km/hr';
    system.debug(drivingDescription);
}

}


//this is outside of class.
