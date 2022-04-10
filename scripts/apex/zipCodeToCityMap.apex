Map<integer, string> zipCodeToCityMap = new Map<integer, string>();
zipCodeToCityMap.put(100101, 'New Delhi');
zipCodeToCityMap.put(101234, 'Mumbai');
zipCodeToCityMap.put(5690223, 'New York');
zipCodeToCityMap.put(746000, 'Ashgabat');
zipCodeToCityMap.put(900001, 'Abuja');
system.debug('Zip codes of cities = ' + zipCodeToCityMap);

//Check if the above map contains mapping for 204101.
boolean barla = zipCodeToCityMap.containsKey(204101);
system.debug(barla);

//Print all the Zip Codes present in the zipCodeToCityMap
system.debug('Only zip codes = ' + zipCodeToCityMap.keySet());

//5. Print all the City names present in the zipCodeToCityMap
system.debug('City Names = ' + zipCodeToCityMap.values());

//6. Print the number of mappings present in the zipCodeToCityMap
system.debug('Number of mappings = ' + zipCodeToCityMap.size());

// 7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap
set<integer> uniqueZipCodeSet = zipCodeToCityMap.keySet();
system.debug('unique set = ' + uniqueZipCodeSet);

// 8. Create a List as cityNameList and populate it with all the city names from
list<string> cityNameList = zipCodeToCityMap.values();
system.debug('List of city names = ' + cityNameList);

//9. Check if the zipCodeToCityMap is Empty.
boolean zipCodeIsEmpty = zipCodeToCityMap.isempty();
system.debug('zip code is empty? = ' + zipCodeIsEmpty);

// 10. List down the differences between list and Map.

//Part 2 - SOQL Basic Select queries
