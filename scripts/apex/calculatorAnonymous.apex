
calculator.welcomeMessage();
calculator.printNewMessage('This is Begmyrats own calculator');
Integer addInteger = calculator.add(10,15);

Integer addInteger2 = calculator.add(5,50,15);
system.debug('sum is ' + addInteger);
system.debug('sum2 is ' + addInteger2);

list<integer> listInteger = new list<integer>();
        listInteger.add(1);
        listInteger.add(2);
        listInteger.add(3);
integer calcSum = calculator.add(listInteger);