string mapMonth6 = mapDemo.retrieveMonth(6);
system.debug('6th month is ' + mapMonth6);

string mapMonth26 = mapDemo.retrieveMonth(26);
system.debug('26 month is ' + mapMonth26);




Map<string, string> mapCntCurrency = new Map<string, string>();
mapCntCurrency.put('USA', 'Usd');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Turkmenistan', 'Manat');
mapCntCurrency.put('Turkmenistan', 'Mnt');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('UK', 'Sterlin');
mapCntCurrency.put('Canada', 'Usd');
System.debug('map of country vs currency = ' + mapCntCurrency);


string UKCurrency = mapCntCurrency.get('UK');
string TurkeyCurrency = mapCntCurrency.get('Turkey');
system.debug('UK currency = ' + UKCurrency);
system.debug('Turkey currency = ' + TurkeyCurrency);

set<string>countrySet = mapCntCurrency.keySet();
system.debug('All countries = ' + countrySet);

list<string>currencyList = mapCntCurrency.values();
system.debug('currencies in map = ' + currencyList); 

set<string> countriesSet = mapCntCurrency.keySet();
for(string eachKey : countriesSet) {
    string printString = 'Country is ' + eachKey;
    system.debug(printString);
    
    string eachCurrency = mapCntCurrency.get(eachKey);
    printString +=' its currency is ' + eachCurrency;
    system.debug(printString);
    }