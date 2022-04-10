public class SetDemo {
    public static void citySet() {
    set<string> cities = new set<string>();

    cities.add('Tokio');
    cities.add('Abuja');
    cities.add('Ashgabat');
    cities.add('Dubai');
    cities.add('Tokio');
    cities.add('Beijing');
    cities.add('Dubai');

    System.debug('set of cities ' + cities);
    }
    
    public static void randomIntegerSet() {
    set <integer> setInteger = new set<integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(101);
        setInteger.add(105);
        setInteger.add(105);
        setInteger.add(10);
        System.debug('random integer set: ' + setInteger);
        
    set<integer>setInteger1 = new set<integer>{10,23,14,25,36,9,98};
    System.debug('random integer set 2 = ' + setInteger1);

    }
    public static set<integer> setFromList(list<integer> intList) {
        set<integer> intSet = new set<integer>();
        intSet.addAll(intList);
        return intSet;
    }
    public static set<string> capitalizeSet (set<string> setString) {
     set<string>capsSet = new set<string>();
     
     for (string eachStr : setString) {
       string tempStr = eachStr.capitalize();
       capsSet.add(tempStr);  
     }
     return capsSet;
    }
}
