public class Car {
  //public variable defined directly inside class
  //this can be accessed outside of class
  public string carColor = '';
  public string carName = '';
  public static integer carsRunningAtMaxSpeed = 0 ;
  //private variable
  //this can only be accessed within the class
  public integer maxSpeedKMperHour = 150;
  //method demo
  public void switchOn(){
      Datetime switchOnTime = datetime.now();
      system.debug('Starting the car ' + switchOnTime);
  }
  public void drive(){
    system.debug('driving '+ carName);
    }
  public void driveAtMaxSpeed(){
    string drivingDescription = ' driving ' + carName + ' at ' + maxSpeedKMperHour;
    //static variable is accessible in non-static methods.
    carsRunningAtMaxSpeed++;
    system.debug(drivingDescription);
  }
  public static string usage() {
   string use = 'Car is used for transportation';
   use += ' and Fashion';
   return use; 
  }
}
