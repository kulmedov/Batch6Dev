public inherited sharing class WebComponentController {
    @AuraEnabled(cacheable=true)
    public static List<Lead> fetchLeads(){
        List<Lead> leadsList;
        try {
            leadsList = [
                SELECT Id, Name, Company, Title, Email
                FROM Lead
                LIMIT 3
            ];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return leadsList;
    }
    @AuraEnabled(cacheable=true)
    public static List<Lead> apexErrorMethod(){
        List<Lead> leadsList;
        Integer i = 10/0;
        return leadsList;
    }
}