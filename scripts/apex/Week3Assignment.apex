List <string> ColorsList = new list <string> ();
ColorsList.add('Red');
ColorsList.add('White');
ColorsList.add('Blue');
ColorsList.add('Yellow');
ColorsList.add('Brown');

integer number1 = ColorsList.size();
system.debug('number of list elements ' + number1);

boolean RedBarmy = ColorsList.contains('Red');
system.debug('Red color is available? ' + RedBarmy);

string LastColor = ColorsList.get(number1-1);
string upperCaseLastElement = LastColor.toUpperCase();
system.debug(' Upper case of last color ' + upperCaseLastElement);

ColorsList[4] = ColorsList[4].toUpperCase();
system.debug('convert only fifth element to Upper case ' + ColorsList);

String fullList = ColorsList.toString();
System.debug('Full List of string = ' + fullList);


List <string> colourCodesList = new list <string> ();
colourCodesList.add('ADD8E6');
colourCodesList.add('0000FF');
colourCodesList.add('00FFFF');
colourCodesList.add('FF0000');
colourCodesList.add('FF0001');

system.debug('Color codes = ' + colourCodesList);

boolean equalOrNot = ColorsList.equals(colourCodesList);
system.debug('Is list equal or not? = ' +equalOrNot);

list<string> mergedList = new List <string> ();
mergedList.addAll(colourCodesList);
mergedList.addAll(ColorsList);
system.debug(mergedList);



