public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
            string batchName = 'Falcons 4';
    Integer totalCandidates = 40;
    boolean isAdminCompleted = true;

    system.debug(batchName);
    system.debug(totalCandidates);
    system.debug(isAdminCompleted);

    string batchDescription = batchName + ' are the best';
    system.debug(batchDescription);

    decimal decValue = 12.11;
    system.debug(decValue);

    long longValue = 2222555555555555554L;
    system.debug('Long: ' + longValue);

    //object
    Object obj1 = 'this is string in object';
    object obj2 = 90;

    id sfid = '0015j00000ChRhJAAV';
    system.debug(sfid);    
    }

    // create new date
    public void printNewDate(){
        date newDate = Date.newInstance(1995, 3, 15);

        date newDate2 = Date.newInstance (2021, 12, 12);

        system.debug('first date is ' + newDate);
        System.debug('second date is ' + newDate2);

        date todayDate = date.today();
        System.debug('today\'s date is ' + todayDate);
    }

    public void printNewTime(){
        // create new instance of time
        Time myTime = time.newInstance(15,15,30,20);
        Time meTime = time.newInstance (3,15,25,100);

        System.debug('first time is ' + myTime);
        System.debug('second time is ' + meTime);
    }
    public void printNewDateTime(){
        //today's date
        date newDate = date.today();
        System.debug('today date ' + newDate);
        //new time
        time newTime = time.newInstance(11,10,20,30);
        //1. new datetime
        datetime dt1 = datetime.newInstance(newDate, newTime);
        System.debug('1st datetime = ' + dt1);
        //2. new instance with 3 parametrs
        datetime dt2 = datetime.newInstance(2025,1,9);
        System.debug('dt 2 is ' + dt2);
        //3. datetime instance with 6 parameters
        datetime dt3 = datetime.newInstance(2021,12,14,10,10,10);
        System.debug('datetime with 6 parameters ' + dt3);
        //4. new Instance from milliseconds
        long longTime = 1234828183000L;
        datetime dt4 = datetime.newInstance(longTime);
        System.debug('dt 4 is ' + dt4);
        // 5.
        System.debug('current datetime: ' + datetime.now());
    }
}
