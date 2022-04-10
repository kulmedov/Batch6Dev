list<decimal> decimalList = new list<decimal> {11.35,25.2, -56.45, 78.23, 45};
decimal sum = operationsHelper.sumOfListValues(decimalList);
system.debug('sum = ' + sum);
system.debug(operationsHelper.sumOfListValues(decimalList));

decimal average = operationsHelper.averageOfValues(decimalList);
system.debug('average = ' + average);

decimal highest = operationsHelper.highestOfValue(decimalList);
system.debug('highest = ' + highest);

decimal Lowest = operationsHelper.LowestOfValue(decimalList);
system.debug('Lowest = ' + Lowest);

string win = operationsHelper.win('John', new list<decimal>{60,70,80}, 'Messekketyor', new list<decimal>{75,90,70});
system.debug('KAZANAN => ' + win);

string win1 = operationsHelper.win('John', new list<decimal>{60,70,80}, null, new list<decimal>{75,90,70});
system.debug('KAZANAN => ' + win);

List<Decimal> decimalList = new List<Decimal>{11.35, 25.2, -56.45, 78.23, 45};
operationsHelper opHelper1 = new operationsHelper();
opHelper1.reverseMethod(decimalList);

OperationsHelper.fibonacci(8);
OperationsHelper.fibonacci(15);
OperationsHelper.fibonacci(25);
OperationsHelper.fibonacci(19);
OperationsHelper.fibonacci(50);