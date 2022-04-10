public class ValidateAddress {
    public void validateHomeAddress() {
    string houseName = 'Oguzhan Palace';
    string streetName = 'Ashgabat';
    string cityName = 'Merv';
    string stateName = 'Mary';
    string stateIsoCode = 'Mr';
    string countryName = 'Turkmenistan';
    string countryIsoCode = 'Tkm';

    integer streetNameLength = streetName.length();
    system.debug('Number of characters of my street name= ' + streetNameLength);

    boolean streetNameContains = streetName.contains (houseName);
    system.debug('Street name contains house name = ' + streetNameContains );

    boolean streetNameContains1 = streetName.contains (stateIsoCode);
    system.debug('Street name contains the state iso code= ' + streetNameContains1);

    string Uppercase = stateIsoCode.toUpperCase();
    system.debug('state Iso Code in Upper Case= ' + Uppercase);

    string Uppercase1 = countryIsoCode.toUpperCase();
    system.debug('country Iso Code in Upper Case =' + Uppercase1);

    string Uppercase2 = countryName.toUpperCase();
    system.debug('country Name in Upper Case =' + Uppercase2);

    string Lowercase = cityName.toLowerCase();
    system.debug('City name in Lower Case =' + Lowercase);

    string Lowercase1 = stateName.toLowerCase();
    system.debug('State Name in Lower Case = ' + Lowercase1);

    string fullAddress = houseName + ' ' + streetName;
    system.debug('Full Address = ' + fullAddress);
    }
}
