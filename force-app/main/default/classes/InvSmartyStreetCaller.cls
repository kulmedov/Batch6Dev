public with sharing class InvSmartyStreetCaller {
    @invocableMethod(label='Call SmartyStreet' description = 'Makes callout to SmartyStreet API') 
    public static void makeCallout(List<Id> locationIds) {
        run(locationIds[0]);
    }

    @Future(callout=true)
    public static void run(Id locId){
        try{
            SmartyStreetCreds__c apiCreds = SmartyStreetCreds__c.getOrgDefaults();
            Location__c loc = [SELECT street__c, State__c, PostalCode__c FROM Location__c WHERE Id =: locId WITH SECURITY];
            
            String path = 'street-address?'
                + 'street=' + EncodingUtil.urlEncode(loc.street__c, 'UTF-8')
                + '&auth-id=' + apiCreds.AuthId__c
                + '&auth-token=' + apiCreds.AuthToken__c
                +'&state=' + loc.State__c
                + '&zipCode=' + loc.PostalCode__c
                + '&match=enhanced';

            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('callout:SmartyStreet/' + path);
            request.setMethod('GET');
            HttpResponse response = http.send(request);

            System.debug('resp:' + response.getBody());

            Boolean isSuccess = response.getStatusCode() == 200;
            update new Location__c(Id = locId, Verified__c = isSuccess);
        }catch(Exception exc){
            ErrorLogHelper.CreateErrorLog('InvSmartyStreetCaller.makeCallout.run', exc.getMessage());
        }
    }
}
