map <string, decimal> currISOCodeAndExchangeRateMap = new map <string, decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
system.debug(currISOCodeAndExchangeRateMap);

//2. Fetch the currency conversion rate for any one currency ISO code and print it.
system.debug(currISOCodeAndExchangeRateMap.get('CAD'));

//3. Check if the above Map have conversion rate for SAD ISO code.
boolean Check = currISOCodeAndExchangeRateMap.containsKey('SAD');
system.debug('check SAD is there? = ' + Check);

// // 4. collect all the
// curreny ISO codes from currISOCodeAndExchangeRateMap for
// which the conversion rate is >= 1 in one variable and other iso codes in other
// variable.
list<string> BiggerThan1 = new list<string>(); 
list<string> SmallerThan1 = new list<string>(); 
for(string Kette: currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(Kette)>=1){
      BiggerThan1.add(Kette);
    
    } else{
        SmallerThan1.add(Kette);
    }
} 
system.debug('conversion rate is bigger 1 ' + BiggerThan1);
system.debug('conversion rate is smaller 1 ' + SmallerThan1); 