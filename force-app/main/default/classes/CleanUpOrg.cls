public with sharing class CleanUpOrg {
    @future
    public static void deleteOrphanContacts() {
        List <Contact> DelContact = new List<Contact>();
        DelContact = [Select id FROM Contact WHERE AccountId = NULL];
        if (!DelContact.isEmpty()) 
        delete DelContact;    
        
    }
    @future
    public static void deleteOrphanOpportunities(){
        List <Opportunity> DelOpp = new List<Opportunity>();
        DelOpp = [SELECT id FROM Opportunity WHERE AccountId = NULL];
        if (!DelOpp.isEmpty()) 
        delete DelOpp;    
        
    }
    
}