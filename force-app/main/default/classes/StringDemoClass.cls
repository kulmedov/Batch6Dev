public class StringDemoClass {
    public void StringMethod1() {
        // creating a variable.
        string sessionDescription = 'learning string methods in apex language';

        //1. length
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is = ' + lengthOfStr);

        //2. capitalize
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);

        //3. contains 'apex'
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('has apex? ' + containsApex);

        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('has salesforce? ' + containsSalesforce);

        boolean containsApex1 = sessionDescription.containsIgnoreCase('APex');
        system.debug('has APex? ' + containsApex);
    }
}
