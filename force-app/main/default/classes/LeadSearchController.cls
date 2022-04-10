public inherited sharing class LeadSearchController {
    
    @AuraEnabled(cacheable=true)
    public static List<Lead> searchLeads(String keyword){
        String soqlKeyword = '%'+keyword+'%';
        //    lead%   => search for record starting with 'lead'
        //    %lead   => search for record ending with 'lead'
        //    %lead%  => search for record containing 'lead'

        List<Lead> leadsList;
        leadsList = leadsList = [
            SELECT Id, Name, Company
            FROM Lead
            WHERE Name LIKE :soqlKeyword
        ];  
        return leadsList;
    }
}