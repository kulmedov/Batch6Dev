SetDemo.citySet();

SetDemo.randomIntegerSet();

list<integer> listInteger = new list <integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(20);
    listInteger.add(10);
    listInteger.add(15);
set<integer> sInt = SetDemo.setFromList(listInteger);
system.debug('set is = ' + sInt);

set<string> cities = new set<string>();
    cities.add('tokio');
    cities.add('abuja');
    cities.add('ashgabat');
    cities.add('dubai');
    cities.add('tokio');
    cities.add('beijing');
    cities.add('dubai');
    System.debug('cities set = ' + cities);
    set<string> capsCities = SetDemo.capitalizeSet(cities);
    System.debug('caps cities : ' + capsCities);